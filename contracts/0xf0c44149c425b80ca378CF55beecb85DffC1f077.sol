contract main {




// =====================  Runtime code  =====================


#
#  - sub_bdc93681(?)
#
address owner;
address stor1;

function owner() payable {
    return owner
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

function sub_0040578e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _29 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _30 = mem[mem[128] + 96]
    if mem[mem[128] + 96] > test266151307():
        revert with 'NH{q', 65
    _31 = mem[64]
    if mem[64] + floor32(mem[mem[128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[mem[128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[mem[128] + 96]) + 1
    mem[_31] = _30
    require _29 + (32 * _30) + 32 <= return_data.size
    idx = 0
    s = _29 + 128
    t = _31 + 32
    while idx < _30:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[160] == mem[160]
    idx = 0
    s = 0
    t = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg2):
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= _30:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + _31 + 32]
            t = t
            continue 
        if idx >= _30:
            revert with 'NH{q', 50
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[(32 * idx) + _31 + 32]
            continue 
        if idx >= _30:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + _31 + 32]
        t = mem[(32 * idx) + _31 + 32]
        continue 
    return t, s
}



}
