contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 stor2;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
address stor12;
mapping of uint8 stor13;
array of address stor16;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stopPreSale() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor5 = 0
}

function register(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value >= 10^17
    stor16.length++
    stor16[stor16.length] = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_42743944(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor13[address(arg1)] = 0
}

function sub_a4695425(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor13[address(arg1)] = 1
}

function sub_469a727e(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor18 = arg1
    stor19 = arg2
    stor20 = arg3
    # nil
}

function retrieve(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_a723afc9(?) {
    require calldata.size - 4 >= 64
    if stor13[address(arg1)]:
        if not arg2:
            return 0
        if stor6 * arg2 / arg2 != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (stor6 * arg2 / 100)
    if stor6 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -stor6 + 100:
        if block.number - stor2[address(arg1)] >= 0:
            if not arg2:
                return 0
            if stor6 * arg2 / arg2 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (stor6 * arg2 / 100)
    else:
        if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if block.number - stor2[address(arg1)] >= (100 * stor7) - (stor6 * stor7) / 100:
            if not arg2:
                return 0
            if stor6 * arg2 / arg2 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (stor6 * arg2 / 100)
    if not arg2:
        if not stor7:
            revert with 0, 'SafeMath: division by zero'
        return (0 / stor7)
    if (stor7 * arg2) - (block.number * arg2) + (stor2[address(arg1)] * arg2) / arg2 != stor7 - block.number + stor2[address(arg1)]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    return ((stor7 * arg2) - (block.number * arg2) + (stor2[address(arg1)] * arg2) / stor7)
}

function sub_cf55015b(?) {
    require calldata.size - 4 >= 32
    if stor13[address(arg1)]:
        if 100 * stor6 / 100 != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor13[stor12]:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return 100 * stor6 / 100, 100 * stor6 / 100
        if stor6 > 100:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -stor6 + 100:
            if block.number - stor2[stor12] >= 0:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
        else:
            if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
        if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor7:
            revert with 0, 'SafeMath: division by zero'
        return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    if stor6 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -stor6 + 100:
        if block.number - stor2[address(arg1)] >= 0:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor13[stor12]:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
            if stor6 > 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor6 + 100:
                if block.number - stor2[stor12] >= 0:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            else:
                if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    else:
        if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if block.number - stor2[address(arg1)] >= (100 * stor7) - (stor6 * stor7) / 100:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor13[stor12]:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
            if stor6 > 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor6 + 100:
                if block.number - stor2[stor12] >= 0:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            else:
                if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    if (100 * stor7) - (100 * block.number) + (100 * stor2[address(arg1)]) / 100 != stor7 - block.number + stor2[address(arg1)]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    if stor13[stor12]:
        if 100 * stor6 / 100 != stor6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (100 * stor7) - (100 * block.number) + (100 * stor2[address(arg1)]) / stor7, 100 * stor6 / 100
    if stor6 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -stor6 + 100:
        if block.number - stor2[stor12] >= 0:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (100 * stor7) - (100 * block.number) + (100 * stor2[address(arg1)]) / stor7, 100 * stor6 / 100
    else:
        if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (100 * stor7) - (100 * block.number) + (100 * stor2[address(arg1)]) / stor7, 100 * stor6 / 100
    if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    return (100 * stor7) - (100 * block.number) + (100 * stor2[address(arg1)]) / stor7, 
           (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
}

function sub_9838f442(?) {
    if stor13[address(msg.sender)]:
        if 100 * stor6 / 100 != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor13[stor12]:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return 100 * stor6 / 100, 100 * stor6 / 100
        if stor6 > 100:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -stor6 + 100:
            if block.number - stor2[stor12] >= 0:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
        else:
            if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
        if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor7:
            revert with 0, 'SafeMath: division by zero'
        return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    if stor6 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -stor6 + 100:
        if block.number - stor2[address(msg.sender)] >= 0:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor13[stor12]:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
            if stor6 > 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor6 + 100:
                if block.number - stor2[stor12] >= 0:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            else:
                if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    else:
        if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if block.number - stor2[address(msg.sender)] >= (100 * stor7) - (stor6 * stor7) / 100:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if stor13[stor12]:
                if 100 * stor6 / 100 != stor6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return 100 * stor6 / 100, 100 * stor6 / 100
            if stor6 > 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor6 + 100:
                if block.number - stor2[stor12] >= 0:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            else:
                if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
                    if 100 * stor6 / 100 != stor6:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 100 * stor6 / 100, 100 * stor6 / 100
            if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            return 100 * stor6 / 100, (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
    if (100 * stor7) - (100 * block.number) + (100 * stor2[address(msg.sender)]) / 100 != stor7 - block.number + stor2[address(msg.sender)]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    if stor13[stor12]:
        if 100 * stor6 / 100 != stor6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return (100 * stor7) - (100 * block.number) + (100 * stor2[address(msg.sender)]) / stor7, 100 * stor6 / 100
    if stor6 > 100:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -stor6 + 100:
        if block.number - stor2[stor12] >= 0:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (100 * stor7) - (100 * block.number) + (100 * stor2[address(msg.sender)]) / stor7, 100 * stor6 / 100
    else:
        if (100 * stor7) - (stor6 * stor7) / -stor6 + 100 != stor7:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if block.number - stor2[stor12] >= (100 * stor7) - (stor6 * stor7) / 100:
            if 100 * stor6 / 100 != stor6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (100 * stor7) - (100 * block.number) + (100 * stor2[address(msg.sender)]) / stor7, 100 * stor6 / 100
    if (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / 100 != stor7 - block.number + stor2[stor12]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    return (100 * stor7) - (100 * block.number) + (100 * stor2[address(msg.sender)]) / stor7, 
           (100 * stor7) - (100 * block.number) + (100 * stor2[stor12]) / stor7
}



}
