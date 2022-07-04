contract main {




// =====================  Runtime code  =====================


#
#  - sendERC20(address arg1, uint256 arg2)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96 len arg3.length] = arg3[all]
    mem[arg3.length + 96] = 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not return_data.size:
        if mem[96] < 68:
            if not ext_call.success:
                revert with 0, 'Transaction reverted silently', 0
            return bool(ext_call.success), 64, 29, 'Transaction reverted silently', 0
        _8 = mem[100]
        require mem[100] >= 32
        require mem[132] <= test266151307()
        require mem[132] + 163 < mem[100] + 132
        _18 = mem[mem[132] + 132]
        if mem[mem[132] + 132] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[mem[132] + 132])) + 97 < 96 or ceil32(ceil32(mem[mem[132] + 132])) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = ceil32(ceil32(mem[mem[132] + 132])) + 97
        mem[96] = mem[mem[132] + 132]
        require mem[132] + mem[mem[132] + 132] + 164 <= _8 + 132
        mem[128 len ceil32(mem[mem[132] + 132])] = mem[mem[132] + 164 len ceil32(mem[mem[132] + 132])]
        if ceil32(_18) > _18:
            mem[_18 + 128] = 0
        if ext_call.success:
            mem[mem[64]] = bool(ext_call.success)
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) > mem[96]:
                mem[mem[64] + mem[96] + 96] = 0
            return bool(ext_call.success), Array(len=mem[96], data=mem[mem[64] + 96 len ceil32(mem[96])])
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[64] + mem[96] + 68] = 0
        revert with 0, 32, mem[96], mem[mem[64] + 68 len ceil32(mem[96])]
    mem[96] = return_data.size
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        if not ext_call.success:
            revert with 0, 'Transaction reverted silently', 0
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    _10 = Mask(224, 0, return_data.size), mem[128 len 4]
    require Mask(224, 0, return_data.size), mem[128 len 4] >= 32
    _14 = mem[132]
    require mem[132] <= test266151307()
    require mem[132] + 163 < Mask(224, 0, return_data.size), mem[128 len 4] + 132
    _20 = mem[mem[132] + 132]
    if mem[mem[132] + 132] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[132] + 132])) + 98 < 97 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[132] + 132])) + 98
    mem[ceil32(return_data.size) + 97] = mem[mem[132] + 132]
    require _14 + _20 + 68 <= _10 + 36
    mem[ceil32(return_data.size) + 129 len ceil32(_20)] = mem[_14 + 164 len ceil32(_20)]
    if ceil32(_20) <= _20:
        if ext_call.success:
            mem[mem[64]] = bool(ext_call.success)
            mem[mem[64] + 32] = 64
            mem[mem[64] + 64] = return_data.size
            mem[mem[64] + 96 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[return_data.size + 128 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[mem[64] + return_data.size + 96] = 0
            return bool(ext_call.success), Array(len=return_data.size, data=mem[mem[64] + 96 len ceil32(return_data.size)])
        _91 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _20
        mem[mem[64] + 68 len ceil32(_20)] = mem[ceil32(return_data.size) + 129 len ceil32(_20)]
        if ceil32(_20) <= _20:
            revert with 0, 32, _20, mem[mem[64] + 68 len ceil32(_20)]
        mem[mem[64] + _20 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_20) + _91 + -mem[64] + 68
    mem[ceil32(return_data.size) + _20 + 129] = 0
    if ext_call.success:
        mem[mem[64]] = bool(ext_call.success)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = return_data.size
        mem[mem[64] + 96 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[return_data.size + 128 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[mem[64] + return_data.size + 96] = 0
        return bool(ext_call.success), Array(len=return_data.size, data=mem[mem[64] + 96 len ceil32(return_data.size)])
    _98 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _20
    mem[mem[64] + 68 len ceil32(_20)] = mem[ceil32(return_data.size) + 129 len ceil32(_20)]
    if ceil32(_20) <= _20:
        revert with 0, 32, _20, mem[mem[64] + 68 len ceil32(_20)]
    mem[mem[64] + _20 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_20) + _98 + -mem[64] + 68
}



}
