contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferETH(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length <= 0:
        revert with 0, 'NO ADDRESS'
    if msg.value <= arg2 * arg1.length:
        revert with 0, 'NOT ENOUGH'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_7a728217(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length <= 0:
        revert with 0, 'NO ADDRESS'
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3 * arg2.length:
        revert with 0, 'NOT ENOUGH'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_21)
        mem[(32 * arg2.length) + 196] = arg3
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_21), arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
