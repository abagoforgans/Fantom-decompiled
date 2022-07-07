contract main {




// =====================  Runtime code  =====================


const name = 'Rarity Crafting Material ERC20', 0

const decimals = 0

const symbol = 'eMAT', 0

const proxy = 3


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
uint256 stor4;
address lpAddr;
uint256 base;
uint256 initial;

function totalSupply() payable {
    return totalSupply
}

function base() payable {
    return base
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function lpAddr() payable {
    return lpAddr
}

function initial() payable {
    return initial
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_00ee418f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    initial = arg1
}

function setBase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    base = arg1
}

function setLpAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor3
    require stor4 < 1
    lpAddr = arg1
    if stor4 == -1:
        revert with 'NH{q', 17
    stor4++
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require balanceOf[address(arg1)] >= arg3
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transfer(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 3, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg2, msg.sender, arg1);
    emit Transfer(arg2, msg.sender, 0);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 3, arg1, 3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 / 20 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg2 / 20:
        revert with 'NH{q', 17
    require ext_code.size(0x95870880dd56dc79dba77e506b25e0b391bb3e77)
    staticcall 0x95870880dd56dc79dba77e506b25e0b391bb3e77.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if base and 10^18 > -1 / base:
        revert with 'NH{q', 17
    if 10^18 * base <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * base:
        revert with 'NH{q', 18
    if ext_call.return_data[0] / 10^18 * base > -initial - 1:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] / 10^18 * base) + initial < ext_call.return_data[0] / 10^18 * base:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if 0 <= arg2 - (arg2 / 20):
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 < 0:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] > -1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor5] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[stor5] + arg2 < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg2
            emit Deposit(arg2, msg.sender, arg1);
            emit Transfer(0, 0, msg.sender);
            emit Transfer(arg2, 0, lpAddr);
        else:
            if arg2 - (arg2 / 20) > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 < arg2 - (arg2 / 20):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] > -arg2 + (arg2 / 20) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + arg2 - (arg2 / 20) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg2 - (arg2 / 20)
            if balanceOf[stor5] > -(arg2 / 20) - 1:
                revert with 'NH{q', 17
            if balanceOf[stor5] + (arg2 / 20) < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg2 / 20
            emit Deposit(arg2, msg.sender, arg1);
            emit Transfer((arg2 - (arg2 / 20)), 0, msg.sender);
            emit Transfer((arg2 / 20), 0, lpAddr);
    else:
        if arg2 and (ext_call.return_data[0] / 10^18 * base) + initial > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / arg2 != (ext_call.return_data[0] / 10^18 * base) + initial:
            revert with 0, 'SafeMath: multiplication overflow'
        if (ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100 <= arg2 - (arg2 / 20):
            if (ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 < (ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] > -((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + ((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += (ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100
            if balanceOf[stor5] > -arg2 + ((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100) - 1:
                revert with 'NH{q', 17
            if balanceOf[stor5] + arg2 - ((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100) < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] = balanceOf[stor5] + arg2 - ((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100)
            emit Deposit(arg2, msg.sender, arg1);
            emit Transfer(((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100), 0, msg.sender);
            emit Transfer((arg2 - ((ext_call.return_data[0] / 10^18 * base * arg2) + (initial * arg2) / 100)), 0, lpAddr);
        else:
            if arg2 - (arg2 / 20) > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 < arg2 - (arg2 / 20):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] > -arg2 + (arg2 / 20) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + arg2 - (arg2 / 20) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg2 - (arg2 / 20)
            if balanceOf[stor5] > -(arg2 / 20) - 1:
                revert with 'NH{q', 17
            if balanceOf[stor5] + (arg2 / 20) < balanceOf[stor5]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor5] += arg2 / 20
            emit Deposit(arg2, msg.sender, arg1);
            emit Transfer((arg2 - (arg2 / 20)), 0, msg.sender);
            emit Transfer((arg2 / 20), 0, lpAddr);
}



}
