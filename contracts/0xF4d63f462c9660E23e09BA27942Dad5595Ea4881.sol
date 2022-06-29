contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;

function close() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not allowed'
    stor1.length++
    stor1[stor1.length] = arg1
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed'
}

function _fallback() payable {
    require stor1.length
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        call stor1[idx] with:
           value (msg.value / stor1.length) - 1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bb2a9c5d(?) payable {
    require calldata.size - 4 >= 32
    require stor1.length
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        call stor1[idx] with:
           value (arg1 / stor1.length) - 1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
