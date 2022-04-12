contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    delegate arg1 with:
       funct uint32(arg2)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
}



}
