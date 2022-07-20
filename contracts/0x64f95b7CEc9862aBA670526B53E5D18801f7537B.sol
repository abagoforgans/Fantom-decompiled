contract main {




// =====================  Runtime code  =====================


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

function buy() payable {
    require block.timestamp >= START_TIME
    require block.timestamp <= END_TIME
    require 10^9 * price
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / 10^9 * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    sold += msg.value / 10^9 * price
}

function returnTokens() {
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
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
