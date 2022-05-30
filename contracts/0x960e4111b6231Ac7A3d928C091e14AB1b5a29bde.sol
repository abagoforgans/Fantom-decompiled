contract main {




// =====================  Runtime code  =====================


address sub_d4384dbeAddress;
address sub_9f09f9d3Address;

function sub_9f09f9d3(?) payable {
    return sub_9f09f9d3Address
}

function sub_d4384dbe(?) payable {
    return sub_d4384dbeAddress
}

function _fallback() payable {
    revert
}

function getToken1Price(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[50 len 14]
    return (ext_call.return_data[18 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[50 len 14])
}

function getToken0Price(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[18 len 14]
    return (ext_call.return_data[50 len 14] * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[18 len 14])
}

function sub_17876a37(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = arg1
    mem[160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[164] = 1
    mem[196] = 64
    mem[228] = 1
    mem[260 len 0] = None
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1, Array(len=1, data=mem[260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _21 = mem[160 len 4], 0
    require mem[160 len 4], 0 <= 4294967296
    require mem[160 len 4], 0 + 32 <= return_data.size
    require mem[mem[160 len 4], 0 + 160] <= 4294967296 and mem[160 len 4], 0 + (32 * mem[mem[160 len 4], 0 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], 0 + 160]
    _24 = mem[_21 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[_21 + 160])] = mem[_21 + 192 len floor32(mem[_21 + 160])]
    require 0 < mem[ceil32(return_data.size) + 160]
    mem[(32 * _24) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 192]
    return memory
      from (32 * _24) + ceil32(return_data.size) + 192
       len 32
}

function sub_619d4e2f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = 'spooky'
    mem[ceil32(arg1.length) + 128] = 6
    _5 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 198 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 230 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 198 len arg1.length % 32]) == _5:
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
    else:
        mem[arg1.length + ceil32(arg1.length) + 267 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 299 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 267 len arg1.length % 32]) != sha3('hyper'):
            return 0
        require ext_code.size(0x991152411a7b5a14a8cf0cdde8439435328070df)
        staticcall 0x991152411a7b5a14a8cf0cdde8439435328070df.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
