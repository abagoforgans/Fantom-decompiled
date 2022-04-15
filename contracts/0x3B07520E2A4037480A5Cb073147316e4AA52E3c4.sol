contract main {




// =====================  Runtime code  =====================


uint256 sub_c29d8fed;
uint256 balance;
uint256 sub_537b465c;
uint256 sub_f5f6f07f;
array of struct values;
array of address player;

function sub_537b465c(?) {
    return sub_537b465c
}

function values(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < values.length
    return values[arg1].field_0
}

function player(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < player.length
    return player[arg1]
}

function balance() {
    return balance
}

function sub_c29d8fed(?) {
    return sub_c29d8fed
}

function sub_f5f6f07f(?) {
    return sub_f5f6f07f
}

function _fallback() payable {
    revert
}

function sub_09d823be(?) payable {
    player.length++
    player[player.length] = msg.sender
    if sub_537b465c > -2:
        revert with 'NH{q', 17
    sub_537b465c++
    if sub_537b465c < 1:
        revert with 'NH{q', 17
    if sub_537b465c - 1 >= values.length:
        revert with 'NH{q', 50
    if values[stor4].field_0 > -msg.value - 1:
        revert with 'NH{q', 17
    values.length++
    values[values.length].field_0 = values[stor4].field_0 + msg.value
    if balance > -msg.value - 1:
        revert with 'NH{q', 17
    balance += msg.value
    emit 0x8b21619f: msg.sender, msg.value
}

function sub_a58be47a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_537b465c:
        if idx >= values.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if arg1 <= values[idx].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= values.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if arg1 >= values[idx].field_256:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= player.length:
            revert with 'NH{q', 50
        call player[idx] with:
           value balance wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1025617d: player[idx], balance
        balance = 0
        if sub_c29d8fed > -2:
            revert with 'NH{q', 17
        sub_c29d8fed++
        sub_537b465c = 0
        values.length = 0
        idx = sha3(6)
        while sha3(6) + values.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        player.length = 0
        idx = sha3(7)
        while sha3(7) + player.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
