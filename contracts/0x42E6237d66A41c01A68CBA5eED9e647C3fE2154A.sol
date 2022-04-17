contract main {




// =====================  Runtime code  =====================


address minterAddress;
mapping of uint256 balances;

function minter() payable {
    return minterAddress
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == minterAddress
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 'Insufficient Balance'
    if balances[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg2
    if balances[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balances[address(arg1)] += arg2
    emit Sent(msg.sender, address(arg1), arg2);
}



}
