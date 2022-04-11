contract main {




// =====================  Runtime code  =====================


uint256 bal;

function getBalance() payable {
    return bal
}

function bal() payable {
    return bal
}

function _fallback() payable {
    revert
}

function sub_d83b066e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    bal = arg1
}

function deposit(int256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only deposit positive amounts'
    if bal >= 0 and arg1 > -bal + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if bal < 0 and arg1 < -bal - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    bal += arg1
}

function withdraw(int256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Not enough balance to withdraw'
    if arg1 > bal:
        revert with 0, 'Not enough balance to withdraw'
    if arg1 >= 0 and bal < arg1 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if arg1 < 0 and bal > arg1 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    bal -= arg1
}



}
