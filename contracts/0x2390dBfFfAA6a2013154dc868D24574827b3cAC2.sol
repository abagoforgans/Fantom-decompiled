contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_c502d2d0;
uint256 sub_8a7bb697;
address stor3;

function getOwner() payable {
    return owner
}

function sub_8a7bb697(?) payable {
    return sub_8a7bb697
}

function sub_c502d2d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_c502d2d0.length
    return sub_c502d2d0[arg1]
}

function getTotalTokens() payable {
    return sub_c502d2d0.length
}

function _fallback() payable {
    revert
}

function sub_ae100c01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3 = address(arg1)
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_c040f85f(?) payable {
    if block.timestamp < sub_8a7bb697:
        revert with 'NH{q', 17
    if 24 * 3600 < block.timestamp - sub_8a7bb697:
        revert with 'NH{q', 17
    return (-block.timestamp + sub_8a7bb697 + (24 * 3600))
}

function removeAllTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_c502d2d0.length = 0
    idx = 0
    while sub_c502d2d0.length > idx:
        sub_c502d2d0[idx] = 0
        idx = idx + 1
        continue 
}

function sub_ee7387ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(stor3)
    call stor3.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < sub_c502d2d0.length:
        mem[0] = 1
        if sub_c502d2d0[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx < 0:
            sub_c502d2d0.length++
            sub_c502d2d0[sub_c502d2d0.length] = arg1
        return idx
    sub_c502d2d0.length++
    sub_c502d2d0[sub_c502d2d0.length] = arg1
    return -1
}

function removeToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < sub_c502d2d0.length:
        mem[0] = 1
        if sub_c502d2d0[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= 0:
            if sub_c502d2d0.length < 1:
                revert with 'NH{q', 17
            if sub_c502d2d0.length - 1 >= sub_c502d2d0.length:
                revert with 'NH{q', 50
            if idx >= sub_c502d2d0.length:
                revert with 'NH{q', 50
            sub_c502d2d0[idx] = sub_c502d2d0[sub_c502d2d0.length]
            if not sub_c502d2d0.length:
                revert with 'NH{q', 49
            sub_c502d2d0[sub_c502d2d0.length] = 0
            sub_c502d2d0.length--
        return idx
    return -1
}

function sub_1d2249d2(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    t = 0
    while idx < sub_c502d2d0.length:
        mem[0] = 1
        mem[mem[64] + 4] = sub_c502d2d0[idx]
        require ext_code.size(stor3)
        call stor3.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args sub_c502d2d0[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_17]
        require mem[_17] == mem[_17]
        if block.timestamp <= mem[_17]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[_17]
            continue 
        if idx >= sub_c502d2d0.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_c502d2d0[idx]
        require ext_code.size(stor3)
        call stor3.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_c502d2d0[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = _20
        continue 
    emit 0x7b5320e0: s, sub_c502d2d0.length
    if s > 0:
        sub_8a7bb697 = block.timestamp
    return s
}



}
