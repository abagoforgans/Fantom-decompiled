contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 sub_c502d2d0;

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



}
