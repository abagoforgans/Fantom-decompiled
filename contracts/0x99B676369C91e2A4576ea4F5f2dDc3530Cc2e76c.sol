contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function ok() payable {
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, 1, 10^18, 1
    return 32, 160, 0x3df0212400000000000000000000000000000000000000000000000000000000, 0, 1, 10^18, 1
}



}
