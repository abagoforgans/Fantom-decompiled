contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 price;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Wallet can't be the zero address'
    walletAddress = arg1
}

function sub_8bd37902(?) payable {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary can't be the zero address'
    if msg.value < price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sent coin must be greater than or equal to service price'
    require price <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x568d67e3 with:
         gas gas_remaining wei
        args msg.value - price, msg.sender, address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value - price, ext_call.return_data[0], msg.sender, arg1);
    if price > 0:
        call walletAddress with:
           value price wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if msg.value - price > 0:
        call arg1 with:
           value msg.value - price wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
