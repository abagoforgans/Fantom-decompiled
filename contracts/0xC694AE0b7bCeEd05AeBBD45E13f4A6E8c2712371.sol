contract main {




// =====================  Runtime code  =====================


#
#  - sub_18f138d2(?)
#  - _fallback()
#
address owner;

function owner() {
    return owner
}

function renounceOwnership() {
    revert with 0, 'can't renounceOwnership'
}

function withdrawMatic(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5860ee3c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'not enough balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_097c2ffe(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[132]
    mem[132] = 64
    mem[164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 4).length, data=mem[196 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _25 = mem[96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < return_data.size + 96
    _26 = mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _26
    require return_data.size >= _25 + (32 * _26) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _26] = mem[_25 + 128 len 32 * _26]
    if _26 < 1:
        revert with 'NH{q', 17
    if _26 - 1 >= _26:
        revert with 'NH{q', 50
    _47 = mem[(32 * _26 - 1) + ceil32(return_data.size) + 128]
    _48 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _47
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 100
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _48 + (32 * ('cd', 36).length) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] <= test266151307()
    require _61 + mem[_61] + 31 < _61 + return_data.size
    _63 = mem[_61 + mem[_61]]
    if mem[_61 + mem[_61]] > test266151307():
        revert with 'NH{q', 65
    if _61 + ceil32(return_data.size) + ceil32(32 * mem[_61 + mem[_61]]) + 1 > test266151307() or ceil32(32 * mem[_61 + mem[_61]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _61 + ceil32(return_data.size) + ceil32(32 * mem[_61 + mem[_61]]) + 1
    mem[_61 + ceil32(return_data.size)] = _63
    require return_data.size >= _62 + (32 * _63) + 32
    mem[_61 + ceil32(return_data.size) + 32 len 32 * _63] = mem[_61 + _62 + 32 len 32 * _63]
    if _63 < 1:
        revert with 'NH{q', 17
    if _63 - 1 >= _63:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(32 * _63 - 1) + _61 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}



}
