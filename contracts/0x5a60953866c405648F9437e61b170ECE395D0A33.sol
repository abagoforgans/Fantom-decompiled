contract main {




// =====================  Runtime code  =====================


uint256 test;
address tokenAddress;
address sub_2c1ba839Address;

function sub_2c1ba839(?) payable {
    return sub_2c1ba839Address
}

function test() payable {
    return test
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function deserializeUint(bytes arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = arg2
    while idx < arg2 + arg3:
        require idx < arg1.length
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function deserializeAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(this.address)
    staticcall this.address with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), arg2, 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[12 len 20]
    return 0, 
           Mask(8 * -ceil32(arg1.length) + arg1.length + 28, 0, 0),
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_e96da838(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len arg1.length] = arg1[all]
    mem[arg1.length + 196] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x96013dc6 with:
            gas gas_remaining wei
           args 64, 0, arg1.length, arg1[all], mem[arg1.length + 196 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x96013dc6 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len arg1.length] = arg1[all]
    mem[arg1.length + 228] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args 0, 96, 40, 32, arg1.length, arg1[all], mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenAddress = address(ext_call.return_data[0])
    sub_2c1ba839Address = address(ext_call.return_data[0])
    test = ext_call.return_data[0]
}



}
