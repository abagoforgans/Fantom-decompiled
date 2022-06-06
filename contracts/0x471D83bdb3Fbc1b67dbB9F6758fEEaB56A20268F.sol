contract main {




// =====================  Runtime code  =====================


const name = 'PUMPKINS'

const decimals = 18

const symbol = 'KINS'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 totalSupply;
uint256 totalFees;
uint256 totalBurn;
address wDevAddress;
address wFarmAddress;
address wKinsIlpAddress;
address wKinsmasterAddress;
uint8 takeFee; offset 160
uint128 stor12; offset 160
address wMarketingAddress;

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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function WMarketing() payable {
    return wMarketingAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function WKinsmaster() payable {
    return wKinsmasterAddress
}

function TakeFee() payable {
    return bool(takeFee)
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

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        revert with 0, 'Account is not excluded From Fee'
    stor3[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function setTakeFee(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if wDevAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
    return 1
}

function setWKinsIlp(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if wDevAddress != msg.sender:
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
        if wDevAddress != msg.sender:
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
        if wDevAddress != msg.sender:
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
        if wDevAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wKinsmasterAddress = arg1
    stor3[address(arg1)] = 1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654163636f756e7420697320616c7265616479206578636c756465642046726f6d204665,
                    mem[200 len 28]
    stor3[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if totalBurn + arg1 < totalBurn:
        revert with 0, 'SafeMath: addition overflow'
    totalBurn += arg1
    emit Transfer(arg1, msg.sender, 0);
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

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
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
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'amount 0'
    if stor3[address(msg.sender)]:
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
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor3[address(arg1)]:
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
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not takeFee:
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
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
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
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
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
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2 + (3 * 10 * arg2 / 1000):
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 2 * 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if 10 * arg2 / arg2 != 10:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2 + (3 * 10 * arg2 / 1000):
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 2 * 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 2 * 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2 + (3 * 10 * arg2 / 1000):
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 2 * 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 4 * 10 * arg2 / 1000 < 2 * 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 4 * 10 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2 + (6 * 10 * arg2 / 1000):
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (4 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 4 * 10 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (4 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (4 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (4 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (4 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (4 * 10 * arg2 / 1000)), msg.sender, arg1);
                    else:
                        require arg2
                        if 20 * arg2 / arg2 != 20:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 20 * arg2 / 1000 < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 20 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 20 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 20 * arg2 / 1000 < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 20 * arg2 / 1000 < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 20 * arg2 / 1000 < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if 10 * arg2 / arg2 != 10:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 20 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (10 * arg2 / 1000) < 20 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 3 * 10 * arg2 / 1000 < 2 * 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor9] < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000)), msg.sender, arg1);
                else:
                    require arg2
                    if 50 * arg2 / arg2 != 50:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg2:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 50 * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += 50 * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if 10 * arg2 / arg2 != 10:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 50 * arg2 / 1000 < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (10 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 3 * 10 * arg2 / 1000 < 2 * 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (3 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (3 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (3 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (3 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (3 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (3 * 10 * arg2 / 1000)), msg.sender, arg1);
                    else:
                        require arg2
                        if 20 * arg2 / arg2 != 20:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor10] < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                        else:
                            require arg2
                            if 10 * arg2 / arg2 != 10:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor8] < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                            else:
                                require arg2
                                if 10 * arg2 / arg2 != 10:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (2 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (2 * 10 * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    require arg2
                                    if 10 * arg2 / arg2 != 10:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) < 50 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 10 * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 2 * 10 * arg2 / 1000 < 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 3 * 10 * arg2 / 1000 < 2 * 10 * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (50 * arg2 / 1000) + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000) < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = totalFees + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 20 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= 20 * arg2 / 1000
                                    if 20 * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= 20 * arg2 / 1000
                                    if totalBurn + (20 * arg2 / 1000) < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += 20 * arg2 / 1000
                                    emit Transfer((20 * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 50 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= 50 * arg2 / 1000
                                    if balanceOf[stor9] + (50 * arg2 / 1000) < balanceOf[stor9]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor9] += 50 * arg2 / 1000
                                    emit Transfer((50 * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor10] + (10 * arg2 / 1000) < balanceOf[stor10]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor10] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[stor8] + (10 * arg2 / 1000) < balanceOf[stor8]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor8] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 10 * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= 10 * arg2 / 1000
                                    if balanceOf[address(stor12.field_0)] + (10 * arg2 / 1000) < balanceOf[address(stor12.field_0)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(stor12.field_0)] += 10 * arg2 / 1000
                                    emit Transfer((10 * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (50 * arg2 / 1000) + (20 * arg2 / 1000) + (3 * 10 * arg2 / 1000)
                                    if balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000)
                                    emit Transfer((arg2 - (50 * arg2 / 1000) - (20 * arg2 / 1000) - (3 * 10 * arg2 / 1000)), msg.sender, arg1);
    return 1
}



}
