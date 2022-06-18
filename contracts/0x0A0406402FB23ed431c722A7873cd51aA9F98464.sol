contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function batchSend(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 'length error'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        if eth.balance(mem[(32 * idx) + 128]) < 1:
            require idx < arg1.length
            require idx < arg2.length
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if msg.value < s:
        revert with 0, 'balance error'
    if msg.value - s:
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
