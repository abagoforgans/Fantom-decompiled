contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1221]
}



// =====================  Runtime code  =====================


const sub_a2136640(?) = address(this.address)


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sendEth(address[] arg1) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length < 256
    require arg1.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value msg.value / arg1.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}

function claim(address arg1) {
    require owner == msg.sender
    if arg1 == msg.sender:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_cee0318e(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length < 256
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _15 = mem[(32 * uint8(idx)) + 128]
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = address(_15)
        mem[(32 * arg1.length) + 196] = arg2
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_15), arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require 1 == bool(ext_call.return_data[0])
        idx = idx + 1
        continue 
    return 1
}



}
