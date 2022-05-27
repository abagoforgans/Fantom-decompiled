contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiSend(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 32
    while idx < arg1.length:
        require not Mask(256, -248, mem[idx + 96])
        call address(mem[idx + 97]) >> 96.mem[idx + 181 len 4] with:
           value mem[idx + 117] wei
             gas gas_remaining wei
            args mem[idx + 185 len mem[idx + 149] - 4]
        require ext_call.success
        idx = idx + mem[idx + 149] + 85
        continue 
}



}
