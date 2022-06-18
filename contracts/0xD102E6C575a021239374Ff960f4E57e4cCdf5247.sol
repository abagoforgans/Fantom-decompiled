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

function sub_edb90f39(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor0)
    staticcall stor0.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if var125002 >= arg2 + arg3:
        mem[ceil32(return_data.size) + 96] = 32
        _158 = mem[var125004]
        mem[ceil32(return_data.size) + 128] = mem[var125004]
        mem[ceil32(return_data.size) + 160 len ceil32(_158)] = mem[var125004 + 32 len ceil32(_158)]
        if ceil32(_158) > _158:
            mem[ceil32(return_data.size) + _158 + 160] = 0
        return 32, mem[ceil32(return_data.size) + 128 len ceil32(_158) + 32]
    if var137003 > -2:
        revert with 'NH{q', 17
    if var141001 < ext_call.return_data[0]:
        # nil
    else:
        mem[ceil32(return_data.size) + 96] = 32
        _399 = mem[var141005]
        mem[ceil32(return_data.size) + 128] = mem[var141005]
        mem[ceil32(return_data.size) + 160 len ceil32(_399)] = mem[var141005 + 32 len ceil32(_399)]
        if ceil32(_399) > _399:
            mem[ceil32(return_data.size) + _399 + 160] = 0
        return 32, mem[ceil32(return_data.size) + 128 len ceil32(_399) + 32]
}



}
