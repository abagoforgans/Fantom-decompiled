contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function next_summoner() payable {
    require ext_code.size(stor0)
    staticcall stor0.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_f4a68672(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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
        staticcall stor0.mem[var87003 len 4] with:
                gas gas_remaining wei
               args mem[var87003 + 4 len var87004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var91002 - var91001 >= 32
        require var101002 == var101001
        if var109002 >= var109001:
            return Array(len=ext_call.return_data[0], data=call.data[calldata.size len 32 * ext_call.return_data[0]])
        # nil
    else:
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        staticcall stor0.mem[var86003 len 4] with:
                gas gas_remaining wei
               args mem[var86003 + 4 len var86004 - 4]
        mem[var86005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var90002 - var90001 >= 32
        require var100002 == var100001
        if var108002 < var108001:
            # nil
        else:
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]]
            return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]])
}



}
