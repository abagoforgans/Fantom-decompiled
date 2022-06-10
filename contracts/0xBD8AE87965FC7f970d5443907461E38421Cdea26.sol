contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function adventure() payable {
    idx = 0
    while idx < 50:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = stor1[idx]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args stor1[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
