contract main {




// =====================  Runtime code  =====================


uint256 balance;

function getBalance() payable {
    return balance
}

function _fallback() payable {
    revert
}

function deposit(int256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only deposity positive amounts'
    if balance >= 0 and arg1 > -balance + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if balance < 0 and arg1 < -balance - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    balance += arg1
}

function withdraw(int256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Not enough balance to withdraw'
    if arg1 > balance:
        revert with 0, 'Not enough balance to withdraw'
    if arg1 >= 0 and balance < arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg1 < 0 and balance > arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    balance -= arg1
}



}
