contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f4a68672(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.mem[var90003 len 4] with:
                gas gas_remaining wei
               args mem[var90003 + 4 len var90004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var94002 - var94001 >= 32
        require var104002 == var104001
        if var112002 >= var112001:
            return Array(len=ext_call.return_data[0], data=call.data[calldata.size len 32 * ext_call.return_data[0]])
        # nil
    else:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.mem[var89003 len 4] with:
                gas gas_remaining wei
               args mem[var89003 + 4 len var89004 - 4]
        mem[var89005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var93002 - var93001 >= 32
        require var103002 == var103001
        if var111002 < var111001:
            # nil
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]]
            return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]])
}



}
