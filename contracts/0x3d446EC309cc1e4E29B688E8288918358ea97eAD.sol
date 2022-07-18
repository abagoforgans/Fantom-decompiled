contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claimStuckTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function spamkontol(address arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 and arg3 > -1 / arg2:
        revert with 'NH{q', 17
    if msg.value < arg2 * arg3:
        revert with 0, 'Not enough BNB to trade'
    mem[96] = 2
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg1
    idx = 0
    while uint8(idx) < arg3:
        if block.timestamp > -301:
            revert with 'NH{q', 17
        _14 = mem[64]
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        _15 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < _15:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_14 + 68] = tx.origin
        mem[_14 + 100] = block.timestamp + 300
        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _14 + (32 * _15) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}



}
