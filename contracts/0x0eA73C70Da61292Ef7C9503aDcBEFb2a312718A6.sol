contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 basePrice;
uint256 sub_3bdcd32f;

function sub_3bdcd32f(?) {
    return sub_3bdcd32f
}

function basePrice() {
    return basePrice
}

function _fallback() payable {
    revert
}

function pixels(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 1000
    require arg2 < 1000
    return address(stor[(3 * arg2) + (3000 * arg1)]), 
           uint256(stor[(3 * arg2) + (3000 * arg1) + 1]),
           Mask(24, 232, stor[(3 * arg2) + (3000 * arg1) + 2] % 16777216)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == 0x170573117343922cc767913e4421c107e428161b
    call 0x170573117343922cc767913e4421c107e428161b with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function colorPixel(uint256 arg1, uint256 arg2, bytes3 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(24, 232, arg3)
    if arg1 >= 1000:
        revert with 'NH{q', 50
    if arg2 >= 1000:
        revert with 'NH{q', 50
    if uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) > -(uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 5) - 1:
        revert with 'NH{q', 17
    require msg.value >= uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) + (uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 5)
    if not address(stor[(3 * arg2) + (3000 * arg1)]):
        require msg.value >= basePrice
        address(stor[(3 * arg2) + (3000 * arg1)]) = msg.sender
        uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) = basePrice
        uint256(stor[(3 * arg2) + (3000 * arg1) + 2]) = arg3 % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * arg2) + (3000 * arg1) + 2]))
    else:
        address(stor[(3 * arg2) + (3000 * arg1)]) = msg.sender
        uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) = msg.value
        uint256(stor[(3 * arg2) + (3000 * arg1) + 2]) = arg3 % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * arg2) + (3000 * arg1) + 2]))
        if uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) > -(uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 10) - 1:
            revert with 'NH{q', 17
        call address(stor[(3 * arg2) + (3000 * arg1)]) with:
           value uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) + (uint256(stor[(3 * arg2) + (3000 * arg1) + 1]) / 10) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x7a4fe4a4: arg1, arg2, address(stor[(3 * arg2) + (3000 * arg1)]), uint256(stor[(3 * arg2) + (3000 * arg1) + 1]), Mask(24, 232, stor[(3 * arg2) + (3000 * arg1) + 2] % 16777216)
    if sub_3bdcd32f == -1:
        revert with 'NH{q', 17
    sub_3bdcd32f++
}

function sub_321bd145(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
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
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == Mask(24, 232, cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _61 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _63 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] >= 1000:
            revert with 'NH{q', 50
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] >= 1000:
            revert with 'NH{q', 50
        if uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) > -(uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) / 5) - 1:
            revert with 'NH{q', 17
        address(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128])]) = msg.sender
        if not address(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128])]):
            uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) = basePrice
            if s > -basePrice - 1:
                revert with 'NH{q', 17
            uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 2]) = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 2]))
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = _63
            mem[mem[64] + 64] = address(stor[(3 * _63) + (3000 * _61)])
            mem[mem[64] + 96] = uint256(stor[(3 * _63) + (3000 * _61) + 1])
            mem[mem[64] + 128] = Mask(24, 232, stor[(3 * _63) + (3000 * _61) + 2] % 16777216)
            emit 0x7a4fe4a4: mem[mem[64]], _63, address(stor[(3 * _63) + (3000 * _61)]), uint256(stor[(3 * _63) + (3000 * _61) + 1]), Mask(24, 232, stor[(3 * _63) + (3000 * _61) + 2] % 16777216)
            if sub_3bdcd32f == -1:
                revert with 'NH{q', 17
            sub_3bdcd32f++
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + basePrice
            continue 
        uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) += uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) / 5
        uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 2]) = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] % 16777216 >> 232 or Mask(232, 24, uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 2]))
        if uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) > -(uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) / 10) - 1:
            revert with 'NH{q', 17
        call address(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128])]) with:
           value uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) + (uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) / 10) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > -uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) + -(uint256(stor[(3 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]) + (3000 * mem[(32 * idx) + 128]) + 1]) / 5) - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = _63
        mem[mem[64] + 64] = address(stor[(3 * _63) + (3000 * _61)])
        mem[mem[64] + 96] = uint256(stor[(3 * _63) + (3000 * _61) + 1])
        mem[mem[64] + 128] = Mask(24, 232, stor[(3 * _63) + (3000 * _61) + 2] % 16777216)
        emit 0x7a4fe4a4: mem[mem[64]], _63, address(stor[(3 * _63) + (3000 * _61)]), uint256(stor[(3 * _63) + (3000 * _61) + 1]), Mask(24, 232, stor[(3 * _63) + (3000 * _61) + 2] % 16777216)
        if sub_3bdcd32f == -1:
            revert with 'NH{q', 17
        sub_3bdcd32f++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + uint256(stor[(3 * _63) + (3000 * _61) + 1]) + (uint256(stor[(3 * _63) + (3000 * _61) + 1]) / 5)
        continue 
    require msg.value >= s
}



}
