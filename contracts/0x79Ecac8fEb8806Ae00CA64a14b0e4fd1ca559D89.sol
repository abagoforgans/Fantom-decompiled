contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 sub_49a6a335;
uint256 sub_723f65b6;
uint256 sub_b7f97038;
address vaultAddress;

function sub_49a6a335(?) {
    return sub_49a6a335
}

function sub_723f65b6(?) {
    return sub_723f65b6
}

function owner() {
    return owner
}

function sub_b7f97038(?) {
    return sub_b7f97038
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_21b387b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_49a6a335 = arg1
}

function sub_8f6213a6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_723f65b6 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    vaultAddress = arg1
}

function sub_24e6fac8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if eth.balance(this.address) < arg1:
        revert with 0, 'insufficient FTM balance'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function rescueTokens(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require msg.value
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_call.return_data[0] <= sub_723f65b6
        if msg.value + sub_b7f97038 < sub_b7f97038:
            revert with 0, 'SafeMath: addition overflow'
        sub_b7f97038 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if sub_49a6a335 * msg.value / msg.value != sub_49a6a335:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (sub_49a6a335 * msg.value / 12 * 10^10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require (sub_49a6a335 * msg.value / 12 * 10^10) + ext_call.return_data[0] <= sub_723f65b6
        if msg.value + sub_b7f97038 < sub_b7f97038:
            revert with 0, 'SafeMath: addition overflow'
        sub_b7f97038 += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), sub_49a6a335 * msg.value / 12 * 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
