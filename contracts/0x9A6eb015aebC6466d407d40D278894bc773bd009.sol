contract main {




// =====================  Runtime code  =====================


const po = (eth.balance(this.address) - (eth.balance(this.address) / 10))


uint256 sub_ab4f9718;
uint256 sub_8f05cdf5;
address deAddress;
array of struct degens;

function sub_63f18472(?) {
    require calldata.size - 4 >= 32
    require arg1 < degens.length
    return degens[arg1].field_0
}

function sub_6e622389(?) {
    return degens.length
}

function sub_8f05cdf5(?) {
    return sub_8f05cdf5
}

function de() {
    return deAddress
}

function sub_ab4f9718(?) {
    return sub_ab4f9718
}

function degens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < degens.length
    return degens[arg1].field_0
}

function _fallback() payable {
    revert
}

function bet() payable {
    require msg.value == sub_8f05cdf5
    degens.length++
    degens[degens.length].field_0 = msg.sender
    if degens.length >= sub_ab4f9718:
        require degens.length
        mem[192] = address(degens.field_0)
        idx = 192
        s = 0
        while (32 * degens.length) + 192 > idx + 32:
            mem[idx + 32] = degens[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * degens.length) + 192] = gas_remaining
        require degens.length
        call deAddress with:
           value eth.balance(this.address) / 10 wei
             gas gas_remaining wei
        require sha3(block.hash(block.number), block.timestamp, mem[192 len (32 * degens.length) + 32]) % degens.length < degens.length
        call degens[sha3(block.hash(block.number), block.timestamp, mem[192 len (32 * degens.length) + 32]) % degens.length].field_0 with:
           value eth.balance(this.address) - (eth.balance(this.address) / 10) wei
             gas gas_remaining wei
        require sha3(block.hash(block.number), block.timestamp, mem[192 len (32 * degens.length) + 32]) % degens.length < degens.length
        emit Winner(degens[sha3(block.hash(block.number), block.timestamp, mem[192 len (32 * degens.length) + 32]) % degens.length].field_0);
        degens.length = 0
        idx = 0
        while degens.length > idx:
            degens[idx].field_0 = 0
            idx = idx + 1
            continue 
        if not ext_call.success:
            revert with 0, 'e1'
}



}
