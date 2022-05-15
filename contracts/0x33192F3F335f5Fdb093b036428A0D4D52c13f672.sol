contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
address sub_12ee98bbAddress;

function sub_12ee98bb(?) payable {
    return sub_12ee98bbAddress
}

function _fallback() payable {
    revert
}

function sub_8a4c998b(?) payable {
    require calldata.size - 4 >= 32
    return ('signextend', 15, ('signextend', 15, ('stor', ('map', ('param', 'arg1'), ('name', 'stor0', 0)))))
}

function swap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_12ee98bbAddress)
    staticcall sub_12ee98bbAddress.get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor0', 0))))), ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor0', 0))))), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
