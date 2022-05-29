contract main {




// =====================  Runtime code  =====================


address owner;
uint256 cost;
array of uint256 message;
address authorAddress;

function cost() {
    return cost
}

function owner() {
    return owner
}

function author() {
    return authorAddress
}

function message() {
    return message[0 len message.length]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withdraw failed.'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function write(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if msg.value < cost:
        revert with 0, 'Insufficient payment.'
    if arg1.length >= 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734d657373616765206d75737420626520736d616c6c6572207468616e20323030206279746573,
                    mem[203 len 25]
    message.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        message[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while message.length + 31 / 32 > idx:
        message[idx] = 0
        idx = idx + 1
        continue 
    call authorAddress with:
       value 109 * msg.value / 110 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x2e5472616e7366657220746f2070726576696f757320617574686f72206661696c6564,
                        mem[199 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x2e5472616e7366657220746f2070726576696f757320617574686f72206661696c6564,
                        mem[ceil32(return_data.size) + 200 len 29]
    ('bool', 'ext_call.success')
    authorAddress = msg.sender
    cost += cost / 10
    emit 0x20462fec: Array(len=arg1.length, data=arg1[all]), msg.sender, cost
}



}
