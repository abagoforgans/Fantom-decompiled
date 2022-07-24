contract main {




// =====================  Runtime code  =====================


uint256 contractBalance;
mapping of uint256 accountBalance;

function getAccountBalance() {
    return accountBalance[address(msg.sender)]
}

function getContractBalance() {
    return contractBalance
}

function _fallback() payable {
    revert
}

function addBalance() payable {
    accountBalance[address(msg.sender)] = msg.value
    if contractBalance > -msg.value - 1:
        revert with 'NH{q', 17
    contractBalance += msg.value
}

function withdrawAll() payable {
    if accountBalance[address(msg.sender)] <= 0:
        revert with 0, 'You dont have enough funds'
    call msg.sender with:
       value accountBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    accountBalance[address(msg.sender)] = 0
}

function withdraw() payable {
    if accountBalance[address(msg.sender)] <= 0:
        revert with 0, 'You dont have enough funds'
    if msg.value > accountBalance[address(msg.sender)]:
        revert with 0, 'Amount is over the allowed'
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if accountBalance[address(msg.sender)] < msg.value:
        revert with 'NH{q', 17
    accountBalance[address(msg.sender)] -= msg.value
    if contractBalance < msg.value:
        revert with 'NH{q', 17
    contractBalance -= msg.value
}



}
