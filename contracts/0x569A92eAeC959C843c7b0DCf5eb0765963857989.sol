contract main {




// =====================  Runtime code  =====================


#
#  - buy()
#
address owner;
address tokenAddress;
uint256 START_TIME;
uint256 END_TIME;
uint256 price;
uint256 sold;

function sold() {
    return sold
}

function END_TIME() {
    return END_TIME
}

function owner() {
    return owner
}

function price() {
    return price
}

function START_TIME() {
    return START_TIME
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function returnTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
