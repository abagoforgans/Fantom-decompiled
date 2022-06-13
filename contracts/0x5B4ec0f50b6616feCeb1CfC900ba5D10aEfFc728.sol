contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_f45869a9(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 32000] = call.data[calldata.size len 32000]
    idx = arg1
    while idx < arg1 + 1000:
        mem[32100] = idx
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[32096] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - arg1 < 1000
        mem[(32 * idx - arg1) + 96] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    s = 0
    while arg1 + 1000 < 32000:
        mem[arg1 + 33096] = mem[arg1 + 1096]
        s = arg1 + 1032
        continue 
    return memory
      from 32096
       len 32000
}



}
