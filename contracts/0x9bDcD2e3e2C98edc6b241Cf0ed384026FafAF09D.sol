contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'must be owner'
    mem[196 len 96] = 1204246998, arg2, arg3, mem[196 len 28]
    delegate arg1.mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
}



}
