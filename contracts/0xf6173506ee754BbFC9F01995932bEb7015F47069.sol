contract main {




// =====================  Runtime code  =====================


address stor0;

function depositETH() payable {
    require ext_code.size(stor0)
    call stor0.0x88fe2be8 with:
       value msg.value wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require ext_code.size(stor0)
    call stor0.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
            require unknown_0xf6326fb3(?????) == uint32(call.func_hash) >> 224
            require ext_code.size(stor0)
            call stor0.0x88fe2be8 with:
               value msg.value wei
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require not msg.value
            require ext_code.size(stor0)
            call stor0.0xe9fad8ee with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}



}
