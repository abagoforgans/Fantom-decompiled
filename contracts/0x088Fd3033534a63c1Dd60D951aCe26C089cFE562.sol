contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_ecc52cb9(?) payable {
    if not stor1[msg.sender]:
        require msg.sender == owner
    stor2 = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
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

function sub_15d2cfca(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = stor2
            _49 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            if sha3(mem[_49 + 32 len mem[_49]]) % 66 > -76:
                revert with 0, 17
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = (sha3(mem[_49 + 32 len mem[_49]]) % 66) + 75
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _58 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _58] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _58]
        return 32, mem[mem[64] + 32 len (32 * _58) + 32]
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 32] = idx
        mem[mem[64] + 64] = cd[36]
        mem[mem[64] + 96] = stor2
        _53 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        if sha3(mem[_53 + 32 len mem[_53]]) % 66 > -76:
            revert with 0, 17
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = (sha3(mem[_53 + 32 len mem[_53]]) % 66) + 75
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _59 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _59] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _59]
    return 32, mem[mem[64] + 32 len (32 * _59) + 32]
}



}
