contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const sub_82ee0d1d(?) = 10^18


mapping of uint256 lastWithdrawTime;
mapping of uint256 balances;

function lastWithdrawTime(address arg1) {
    require calldata.size - 4 >= 32
    return lastWithdrawTime[arg1]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function _fallback() payable {
    revert
}

function deposit() payable {
    balances[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require balances[address(msg.sender)] > arg1
    require arg1 <= 10^18
    require block.timestamp >= lastWithdrawTime[address(msg.sender)] + (168 * 24 * 3600)
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send FTM'
    balances[address(msg.sender)] -= arg1
    lastWithdrawTime[address(msg.sender)] = block.timestamp
}



}
