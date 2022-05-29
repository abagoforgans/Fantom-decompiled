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

function getTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    return block.timestamp
}

function sub_11515c26(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[50 len 14]
}

function sub_7ef649f6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function sub_11a36823(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if sha3(arg1[all]) == 0x2db2a5dd4d174314766d6e5fd54b6c1a3a2f5d6635c5ef440a2e40c4c3640e9:
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
    else:
        if sha3(arg1[all]) != 0x2b286c9237a2708e8b8e1c0bb5ea311c264f4c83fbd027d63be190067acae5cc:
            mem[ceil32(arg1.length) + 128] = 0
            return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        require ext_code.size(0x991152411a7b5a14a8cf0cdde8439435328070df)
        staticcall 0x991152411a7b5a14a8cf0cdde8439435328070df.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[12 len 20]
    return 0, mem[ceil32(arg1.length) + 132 len 28]
}



}
