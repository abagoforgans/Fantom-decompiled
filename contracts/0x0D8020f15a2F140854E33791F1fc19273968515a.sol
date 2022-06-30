contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 sub_e908c717;

function owner() payable {
    return owner
}

function sub_e908c717(?) payable {
    require calldata.size - 4 >= 32
    return sub_e908c717[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_85e53e27(?) payable {
    require calldata.size - 4 >= 32
    if not sub_e908c717[arg1]:
        return '', 0
    if 1 == sub_e908c717[arg1]:
        return '', 0
    if 2 == sub_e908c717[arg1]:
        return 'Mountains', 0
    if 3 == sub_e908c717[arg1]:
        return '', 0
    if 4 == sub_e908c717[arg1]:
        return '', 0
    if sub_e908c717[arg1] != 5:
        return '', 0
    return '', 0
}

function sub_1e37acff(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx > !cd[36]:
            revert with 0, 17
        mem[0] = idx + cd[36]
        mem[32] = 1
        sub_e908c717[idx + cd[36]] = mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
