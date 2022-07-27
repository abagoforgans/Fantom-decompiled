contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function arm() payable {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'e1'
    Mask(96, 0, stor0.field_160) = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'e1'
    call address(stor0.field_0) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWallets(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
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
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'e1'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_cd6cb131(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1[address(msg.sender)]:
        if not uint8(stor0.field_160):
            revert with 0, 'e3'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(('cd', 100).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + 101] = cd[68]
        mem[floor32(('cd', 100).length) + 133] = 128
        mem[floor32(('cd', 100).length) + 229] = ('cd', 100).length
        idx = 0
        s = 128
        t = floor32(('cd', 100).length) + 261
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + 165] = address(stor0.field_0)
        mem[floor32(('cd', 100).length) + 197] = block.timestamp + 120
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 261 len 32 * ('cd', 100).length]), address(stor0.field_0), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _58 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
        _60 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
        if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
        require _58 + (32 * _60) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 100).length) + _58 + 129
        t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
        while idx < _60:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if address(stor0.field_0) != msg.sender:
            revert with 0, 'e2'
        if not uint8(stor0.field_160):
            revert with 0, 'e3'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(('cd', 100).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + 101] = cd[68]
        mem[floor32(('cd', 100).length) + 133] = 128
        mem[floor32(('cd', 100).length) + 229] = ('cd', 100).length
        idx = 0
        s = 128
        t = floor32(('cd', 100).length) + 261
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + 165] = address(stor0.field_0)
        mem[floor32(('cd', 100).length) + 197] = block.timestamp + 120
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 261 len 32 * ('cd', 100).length]), address(stor0.field_0), block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _59 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
        _61 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
        if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
        mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
        require _59 + (32 * _61) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 100).length) + _59 + 129
        t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
        while idx < _61:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    Mask(96, 0, stor0.field_160) = 0
}



}
