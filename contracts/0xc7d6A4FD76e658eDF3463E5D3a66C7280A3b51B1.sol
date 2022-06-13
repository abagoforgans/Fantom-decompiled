contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_f45869a9(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 3200] = call.data[calldata.size len 3200]
    idx = arg1
    while idx < arg1 + 100:
        mem[3300] = idx
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[3296] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - arg1 < 100
        mem[(32 * idx - arg1) + 96] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    s = 0
    while arg1 + 100 < 3200:
        mem[arg1 + 3396] = mem[arg1 + 196]
        s = arg1 + 132
        continue 
    return memory
      from 3296
       len 3200
}



}
