contract main {




// =====================  Runtime code  =====================


array of address stor0;

function withdraw() {
    if not stor0.length:
        revert with 0, 18
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        call stor0[idx] with:
           value eth.balance(this.address) / stor0.length wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'Payment failed.'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        require unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        if not stor0.length:
            revert with 0, 18
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            call stor0[idx] with:
               value eth.balance(this.address) / stor0.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'Payment failed.'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
