contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address sub_bea293afAddress;
address sub_a8d3fd88Address;

function sub_a8d3fd88(?) {
    return sub_a8d3fd88Address
}

function sub_bea293af(?) {
    return sub_bea293afAddress
}

function _fallback() payable {
    call sub_bea293afAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_a8d3fd88Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
