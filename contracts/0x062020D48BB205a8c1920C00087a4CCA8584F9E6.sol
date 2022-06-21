contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowance;

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balances[address(msg.sender)] < arg2:
        revert with 0, 'balance too low'
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balances[address(arg1)] += arg2
    if balances[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if balances[address(arg1)] < arg3:
        revert with 0, 'balance too low'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'allowance too low'
    if balances[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balances[address(arg2)] += arg3
    if balances[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balances[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
