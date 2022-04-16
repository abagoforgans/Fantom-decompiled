contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_44fbbd62(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_85886d2c(?)
#
address stor0;

function sub_41dcbd24(?) payable {
    require stor0 == msg.sender
    selfdestruct(0xd697e41cb97bb437457e1e5b37d398074214a9e0)
}

function _fallback() payable {
    revert
}

function approveTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _18 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b6db909d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
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
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if not ('cd', 36).length:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130] = cd[4]
        if var221003 < 1:
            revert with 'NH{q', 17
        if var225002 >= var225001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length]), 
        if var227001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var229006 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var241003 > -2:
            revert with 'NH{q', 17
        # nil
    else:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130] = cd[4]
        if var222003 < 1:
            revert with 'NH{q', 17
        if var226002 >= var226001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length]), 
        if var228001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var230006 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var242003 > -2:
            revert with 'NH{q', 17
        # nil
}



}
