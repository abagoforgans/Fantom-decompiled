contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function airdrop() payable {
    require ext_code.size(stor1)
    call stor1.airdrop(address arg1) with:
         gas gas_remaining wei
        args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
