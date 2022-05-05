contract main {




// =====================  Runtime code  =====================


address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getAirdrop() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
