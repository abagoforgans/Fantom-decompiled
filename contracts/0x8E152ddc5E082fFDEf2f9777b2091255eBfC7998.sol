contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0x4c5d539183dbba15dca9769940c8752ea507c9d6
    require eth.balance(this.address) > arg1
    call 0x4c5d539183dbba15dca9769940c8752ea507c9d6 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return arg1
}

function withdraw() {
    require msg.sender == 0x4c5d539183dbba15dca9769940c8752ea507c9d6
    if eth.balance(this.address) < 10:
        revert with 'NH{q', 17
    call 0x4c5d539183dbba15dca9769940c8752ea507c9d6 with:
       value eth.balance(this.address) - 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (eth.balance(this.address) - 10)
}



}
