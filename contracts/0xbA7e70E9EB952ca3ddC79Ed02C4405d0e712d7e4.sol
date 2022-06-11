contract main {




// =====================  Runtime code  =====================


#
#  - sub_879b4b88(?)
#  - sub_b575e5cc(?)
#
function _fallback() payable {
    revert
}

function claimTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[164 len 64] = deposit(uint256 arg1), 0, 0, mem[164 len 28]
    staticcall arg1.mem[164 len 4] with:
            gas gas_remaining wei
           args mem[168]
}



}
