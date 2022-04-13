contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function balanceOfThis() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOutBalance() {
    require msg.sender == stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function airdropTokens(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require arg2 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Token balance insufficient'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Airdrop(address(arg1), arg2);
}

function setToken(address arg1) {
    require msg.sender == stor0
    if tokenAddress == arg1:
        revert with 0, 'Token has been set'
    require msg.sender == stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    tokenAddress = arg1
}

function airdropTokensBatch(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == stor0
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 0, 'Token balance insufficient'
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _26
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _26
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = address(_24)
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _26
        emit Airdrop(address(_24), _26);
        idx = idx + 1
        continue 
}



}
