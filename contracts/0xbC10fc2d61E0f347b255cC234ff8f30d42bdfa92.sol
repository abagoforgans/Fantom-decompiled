contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint8 sub_59ab0048; offset 160
uint128 stor4; offset 160
address stakeContractAddress;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
uint256 taxFee;
uint256 totalTaxes;

function name() payable {
    return name[0 len name.length]
}

function sub_09d655e9(?) payable {
    return totalTaxes
}

function totalSupply() payable {
    return totalSupply
}

function stakeContract() payable {
    return stakeContractAddress
}

function totalTaxes() payable {
    return totalTaxes
}

function decimals() payable {
    return decimals
}

function sub_59ab0048(?) payable {
    return bool(sub_59ab0048)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function taxFee() payable {
    return taxFee
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getStakeContract() payable {
    return stakeContractAddress
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

function setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxFee = arg1
}

function sub_4885a5f9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function setExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function setStakeContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.field_160) = 1
    stakeContractAddress = arg1
    stor3[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
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

function approve(address arg1, uint256 arg2) payable {
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
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x775472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if stor3[address(msg.sender)]:
        if arg2:
            require arg2
            if arg2 * taxFee / arg2 != taxFee:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if arg2:
            require arg2
            if (100 * arg2) - (taxFee * arg2) / arg2 != -taxFee + 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor3[address(arg1)]:
            if arg2:
                require arg2
                if arg2 * taxFee / arg2 != taxFee:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if arg2:
                require arg2
                if (100 * arg2) - (taxFee * arg2) / arg2 != -taxFee + 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if not arg2:
                    if sub_59ab0048:
                        if totalTaxes < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = 0
                        emit Approval(0, this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                    if sub_59ab0048:
                        emit Transfer(0, msg.sender, arg1);
                    else:
                        emit Transfer(arg2, msg.sender, arg1);
                else:
                    require arg2
                    if (100 * arg2) - (taxFee * arg2) / arg2 != -taxFee + 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if sub_59ab0048:
                        if totalTaxes < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = 0
                        emit Approval(0, this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg1)] + ((100 * arg2) - (taxFee * arg2) / 100) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += (100 * arg2) - (taxFee * arg2) / 100
                    else:
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                    if sub_59ab0048:
                        emit Transfer(((100 * arg2) - (taxFee * arg2) / 100), msg.sender, arg1);
                    else:
                        emit Transfer(arg2, msg.sender, arg1);
            else:
                require arg2
                if arg2 * taxFee / arg2 != taxFee:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if not arg2:
                    if sub_59ab0048:
                        if totalTaxes + (arg2 * taxFee / 100) < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTaxes += arg2 * taxFee / 100
                        if balanceOf[address(this.address)] + (arg2 * taxFee / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * taxFee / 100
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = arg2 * taxFee / 100
                        emit Approval((arg2 * taxFee / 100), this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args (arg2 * taxFee / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                    if sub_59ab0048:
                        emit Transfer(0, msg.sender, arg1);
                    else:
                        emit Transfer(arg2, msg.sender, arg1);
                else:
                    require arg2
                    if (100 * arg2) - (taxFee * arg2) / arg2 != -taxFee + 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if sub_59ab0048:
                        if totalTaxes + (arg2 * taxFee / 100) < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTaxes += arg2 * taxFee / 100
                        if balanceOf[address(this.address)] + (arg2 * taxFee / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg2 * taxFee / 100
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = arg2 * taxFee / 100
                        emit Approval((arg2 * taxFee / 100), this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args (arg2 * taxFee / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg1)] + ((100 * arg2) - (taxFee * arg2) / 100) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += (100 * arg2) - (taxFee * arg2) / 100
                    else:
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                    if sub_59ab0048:
                        emit Transfer(((100 * arg2) - (taxFee * arg2) / 100), msg.sender, arg1);
                    else:
                        emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x775472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6f42455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if stor3[address(arg1)]:
        if arg3:
            require arg3
            if arg3 * taxFee / arg3 != taxFee:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if arg3:
            require arg3
            if (100 * arg3) - (taxFee * arg3) / arg3 != -taxFee + 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor3[address(arg2)]:
            if arg3:
                require arg3
                if arg3 * taxFee / arg3 != taxFee:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if arg3:
                require arg3
                if (100 * arg3) - (taxFee * arg3) / arg3 != -taxFee + 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if not arg3:
                if not arg3:
                    if sub_59ab0048:
                        if totalTaxes < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = 0
                        emit Approval(0, this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                    if sub_59ab0048:
                        emit Transfer(0, arg1, arg2);
                    else:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    require arg3
                    if (100 * arg3) - (taxFee * arg3) / arg3 != -taxFee + 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if sub_59ab0048:
                        if totalTaxes < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = 0
                        emit Approval(0, this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg2)] + ((100 * arg3) - (taxFee * arg3) / 100) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += (100 * arg3) - (taxFee * arg3) / 100
                    else:
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                    if sub_59ab0048:
                        emit Transfer(((100 * arg3) - (taxFee * arg3) / 100), arg1, arg2);
                    else:
                        emit Transfer(arg3, arg1, arg2);
            else:
                require arg3
                if arg3 * taxFee / arg3 != taxFee:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                if not arg3:
                    if sub_59ab0048:
                        if totalTaxes + (arg3 * taxFee / 100) < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTaxes += arg3 * taxFee / 100
                        if balanceOf[address(this.address)] + (arg3 * taxFee / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg3 * taxFee / 100
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = arg3 * taxFee / 100
                        emit Approval((arg3 * taxFee / 100), this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args (arg3 * taxFee / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                    if sub_59ab0048:
                        emit Transfer(0, arg1, arg2);
                    else:
                        emit Transfer(arg3, arg1, arg2);
                else:
                    require arg3
                    if (100 * arg3) - (taxFee * arg3) / arg3 != -taxFee + 100:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                    if sub_59ab0048:
                        if totalTaxes + (arg3 * taxFee / 100) < totalTaxes:
                            revert with 0, 'SafeMath: addition overflow'
                        totalTaxes += arg3 * taxFee / 100
                        if balanceOf[address(this.address)] + (arg3 * taxFee / 100) < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += arg3 * taxFee / 100
                        if not this.address:
                            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not stakeContractAddress:
                            revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][address(stor4.field_0)] = arg3 * taxFee / 100
                        emit Approval((arg3 * taxFee / 100), this.address, stakeContractAddress);
                        require ext_code.size(stakeContractAddress)
                        call stakeContractAddress.donatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args (arg3 * taxFee / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if sub_59ab0048:
                        if balanceOf[address(arg2)] + ((100 * arg3) - (taxFee * arg3) / 100) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += (100 * arg3) - (taxFee * arg3) / 100
                    else:
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                    if sub_59ab0048:
                        emit Transfer(((100 * arg3) - (taxFee * arg3) / 100), arg1, arg2);
                    else:
                        emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
