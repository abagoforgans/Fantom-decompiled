contract main {




// =====================  Runtime code  =====================


#
#  - put(bytes arg1, bytes arg2)
#
mapping of struct price;

function getPrice(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    return price[address(arg1)][arg2[all]].field_64
}

function _fallback() payable {
    revert
}

function get(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    return price[address(arg1)][arg2[all]].field_0, price[address(arg1)][arg2[all]].field_64
}

function source(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg2.length >= 96
    _4 = mem[ceil32(arg1.length) + 160]
    _5 = mem[ceil32(arg1.length) + 192]
    _6 = mem[ceil32(arg1.length) + 224]
    require mem[ceil32(arg1.length) + 224] == mem[ceil32(arg1.length) + 255 len 1]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 220] = sha3(arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 60
    signer = erecover(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]), _6 << 248, _4, _5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
