contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_3439fdf1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if msg.value < arg2.length * arg1:
        revert with 0, 'not enough money'
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
