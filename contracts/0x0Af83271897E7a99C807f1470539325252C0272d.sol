contract main {




// =====================  Runtime code  =====================


address owner;
address token0Address;

function token0() payable {
    return token0Address
}

function sub_6e0e0e80(?) payable {
    return owner
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_0759abb5(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    call 0x5cc61a78f164885776aa610fb0fe1257df78e59b.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5cc61a78f164885776aa610fb0fe1257df78e59b)
    staticcall 0x5cc61a78f164885776aa610fb0fe1257df78e59b.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        return ext_call.return_data[12 len 20]
    else:
        return 0
}



}
