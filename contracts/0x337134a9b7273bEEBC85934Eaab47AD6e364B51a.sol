contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function sub_737385ac(?) payable {
    idx = 1
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] <= stor1:
            idx = idx + 1
            continue 
        require idx < stor0.length
        stor1 = stor0[idx]
        return stor1
    return 0
}



}
