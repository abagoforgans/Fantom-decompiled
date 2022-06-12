contract main {




// =====================  Runtime code  =====================


array of uint256 text;
uint256 number;
uint8 stor2; offset 160
uint128 stor2; offset 160
address userAddress;
mapping of uint256 sub_8187f846;
mapping of uint256 balances;

function text() {
    return text[0 len text.length]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function sub_8187f846(?) {
    require calldata.size - 4 >= 32
    return sub_8187f846[arg1]
}

function number() {
    return number
}

function answer() {
    return bool(uint8(stor2.field_160))
}

function sub_defa4052(?) {
    return balances[address(msg.sender)]
}

function userAddress() {
    return userAddress
}

function _fallback() payable {
    revert
}

function sub_8eb35811(?) {
    sub_8187f846[address(msg.sender)]++
}

function sum(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (arg1 + number)
}

function sub_62dd4554(?) {
    userAddress = msg.sender
    sub_8187f846[address(msg.sender)]++
}

function sum(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return (arg1 + arg2)
}

function div(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2
    return (arg1 / arg2)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    balances[address(msg.sender)] += arg1
    require arg1 >= 10
}

function sub_f01b7dd2(?) {
    require calldata.size - 4 >= 32
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    sub_8187f846[address(msg.sender)]++
}

function setNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < 10:
        revert with 0, 'ETH Insuficiente.'
    balances[address(msg.sender)] += msg.value
    number = arg1
    sub_8187f846[address(msg.sender)]++
}

function sendETH(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setText(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    text[] = Array(len=arg1.length, data=arg1[all])
    sub_8187f846[address(msg.sender)]++
}

function withdraw() {
    if balances[address(msg.sender)] <= 0:
        revert with 0, 'Sem saldo a retirar'
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
