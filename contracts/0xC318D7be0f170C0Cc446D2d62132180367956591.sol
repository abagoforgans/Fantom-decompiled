contract main {




// =====================  Runtime code  =====================


uint256 sub_8f05cdf5;
uint8 stor1;
uint256 sub_c8cbdedc;
address deAddress;
address sub_9e96f821Address;
address stor5;

function sub_8f05cdf5(?) {
    return sub_8f05cdf5
}

function de() {
    return deAddress
}

function sub_9e96f821(?) {
    return sub_9e96f821Address
}

function sub_c8cbdedc(?) {
    return sub_c8cbdedc
}

function fund() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_cf96f94e(?) {
    require calldata.size - 4 >= 32
    if sub_9e96f821Address != msg.sender:
        revert with 0, 'OO'
    deAddress = arg1
}

function rug() {
    call deAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Unable to rug.. hmmm...'
}

function bet() payable {
    if tx.origin != msg.sender:
        revert with 0, 'Secured && 0xBA5ED'
    if stor1:
        revert with 0, 'Refunded: Do NOT re-enter!'
    stor1 = 1
    if sub_c8cbdedc == block.number:
        revert with 0, 'Refunded: Try again.'
    sub_c8cbdedc = block.number
    if sub_8f05cdf5 != msg.value:
        revert with 0, 'Refunded: Wrong Bet Amount'
    stor5 = msg.sender
    if sha3(block.hash(block.number), eth.balance(this.address), eth.balance(tx.origin), block.timestamp, stor5, gas_remaining) % 97 >= 47:
        emit 0xfa533acb: stor5, 0
    else:
        call stor5 with:
           value 2 * sub_8f05cdf5 wei
             gas gas_remaining wei
        emit 0xfa533acb: stor5, 1
        if not ext_call.success:
            revert with 0, 'Refunded: Payout failed :/'
    stor1 = 0
}



}
