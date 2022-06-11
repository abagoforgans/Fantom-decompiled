contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_c502d2d0;
address stor2;

function getOwner() payable {
    return owner
}

function sub_c502d2d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_c502d2d0.length
    return sub_c502d2d0[arg1]
}

function _fallback() payable {
    revert
}

function sub_ae100c01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = address(arg1)
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
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
        require ext_code.size(stor2)
        call stor2.adventurers_log(uint256 arg1) with:
             gas gas_remaining wei
            args sub_c502d2d0[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        require mem[_16] == mem[_16]
        if block.timestamp <= mem[_16]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[_16]
            continue 
        if idx >= sub_c502d2d0.length:
            revert with 'NH{q', 50
        mem[0] = 1
        mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sub_c502d2d0[idx]
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
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
        t = _17
        continue 
    return s
}



}
