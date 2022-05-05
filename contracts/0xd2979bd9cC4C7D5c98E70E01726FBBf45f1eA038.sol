contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function ok() payable {
    mem[260 len 160] = 0, 0, 1, 10^18, 1, mem[260 len 28]
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.mem[260 len 4] with:
         gas gas_remaining wei
        args mem[264 len 128]
    if not return_data.size:
        return 32, 132, 0, 0, 1, 10^18, 1, 0 >> 800, 0
    return 32, 132, 0, 0, 1, 10^18, 1, Mask(224, 32, return_data.size) >> 32 >> 800, 0
}



}
