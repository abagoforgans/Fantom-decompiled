contract main {




// =====================  Runtime code  =====================


const BalanceOf = eth.balance(this.address)


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function invest() payable {
    stor0[address(msg.sender)] += msg.value
}

function Withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
