contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_ff74ef30(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 206 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0
    while idx > 1:
        if s + sha3(0, arg1, 4207666) % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(return_data.size) + 206 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if sha3(0, arg1, 4207666) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    return 32, 66, mem[ceil32(return_data.size) + 270 len 66], 0
}



}
