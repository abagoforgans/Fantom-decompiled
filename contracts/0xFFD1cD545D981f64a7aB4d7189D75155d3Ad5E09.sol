contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;

function _fallback() payable {
  stop
}

function sendTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require tx.origin == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
