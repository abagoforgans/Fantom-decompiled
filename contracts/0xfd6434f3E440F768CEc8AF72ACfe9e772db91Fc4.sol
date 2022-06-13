contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_30616c5d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'ERR1'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _39 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _41 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0x71e950300000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = _39
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = _41
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mine(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args _39, _41
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
