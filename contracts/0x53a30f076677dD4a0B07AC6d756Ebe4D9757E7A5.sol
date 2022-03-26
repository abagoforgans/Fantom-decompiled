contract main {




// =====================  Runtime code  =====================


address owner;
uint256 betCounter;
uint256 sub_b696f787;
uint256 bankRoll;
uint256 sub_bf02cb91;
uint256 contractCreated;

function contractCreated() {
    return contractCreated
}

function bankRoll() {
    return bankRoll
}

function owner() {
    return owner
}

function betCounter() {
    return betCounter
}

function sub_b696f787(?) {
    return sub_b696f787
}

function sub_bf02cb91(?) {
    return sub_bf02cb91
}

function deposit() payable {
    require msg.sender == owner
    bankRoll += msg.value
}

function kill() {
    require msg.sender == owner
    bankRoll = 0
    call owner with:
       value bankRoll wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bet() payable {
    require msg.value <= 10^18
    require msg.value >= 1
    require msg.value <= bankRoll
    betCounter++
    sub_b696f787 = block.timestamp
    sub_bf02cb91 = sha3(sub_b696f787) % 100
    if sub_bf02cb91 >= 49:
        bankRoll += msg.value
    else:
        bankRoll -= msg.value
        call msg.sender with:
           value 2 * msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value <= 10^18
    require msg.value >= 1
    require msg.value <= bankRoll
    betCounter++
    sub_b696f787 = block.timestamp
    sub_bf02cb91 = sha3(sub_b696f787) % 100
    if sub_bf02cb91 >= 49:
        bankRoll += msg.value
    else:
        bankRoll -= msg.value
        call msg.sender with:
           value 2 * msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
