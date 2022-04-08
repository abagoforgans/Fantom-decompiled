contract main {




// =====================  Runtime code  =====================


address owner;
uint256 txFee;

function owner() {
    return owner
}

function txFee() {
    return txFee
}

function _fallback() payable {
  stop
}

function setTxFee(uint256 arg1) {
    require msg.sender == owner
    txFee = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0bd3c979(?) payable {
    create contract with 0 wei
                    code: code.data[1247 len 6974], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xaf5370db: msg.sender, address(create.new_address)
    return address(create.new_address)
}



}
