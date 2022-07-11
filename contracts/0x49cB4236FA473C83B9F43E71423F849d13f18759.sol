contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_e2111586;
mapping of uint256 update;
mapping of uint256 stor3;

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return update[arg1]
}

function owner() payable {
    return owner
}

function sub_e2111586(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e2111586[arg1]
}

function _fallback() payable {
    revert
}

function isClaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return (stor3[address(arg1)][stor2[address(arg1)]][Mask(248, 8, arg2)] and 1 << uint8(arg2) == 1 << uint8(arg2))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateMerkleRoot(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if update[address(arg1)] > -2:
        revert with 'NH{q', 17
    update[address(arg1)]++
    sub_e2111586[address(arg1)] = arg2
    emit MerkleRootUpdated(arg1, arg2, update[address(arg1)]);
}

function sub_12d18ed6(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if not sub_e2111586[address(arg1)]:
        revert with 0, 'frozen'
    if stor3[address(arg1)][stor2[address(arg1)]][Mask(248, 8, arg2)] and 1 << uint8(arg2) == 1 << uint8(arg2):
        revert with 0, 'Drop already claimed.'
    mem[128] = arg2
    mem[160] = address(arg3)
    mem[180] = arg4
    mem[96] = 84
    mem[64] = (32 * arg5.length) + 244
    mem[212] = arg5.length
    mem[244 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 244] = 0
    mem[0] = address(arg1)
    mem[32] = 1
    idx = 0
    s = 0
    while idx < arg5.length:
        if idx >= mem[212]:
            revert with 'NH{q', 50
        _126 = mem[(32 * idx) + 244]
        if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
            mem[mem[64] + 32] = mem[(32 * idx) + 244]
            mem[mem[64] + 64] = s + sha3(mem[128 len 84])
            _131 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_131 + 32 len mem[_131]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _126
        _134 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_134 + 32 len mem[_134]])
        continue 
    if s != sub_e2111586[address(arg1)]:
        revert with 0, 'Invalid proof.'
    mem[0] = arg2 / 256
    mem[32] = sha3(update[address(arg1)], sha3(address(arg1), 3))
    stor3[address(arg1)][stor2[address(arg1)]][Mask(248, 8, arg2)] = 1
    _145 = mem[64]
    mem[mem[64] + 36] = address(arg3)
    mem[mem[64] + 68] = arg4
    _146 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_145 + 100] = 32
    mem[_145 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    _152 = mem[_146]
    mem[_145 + 164 len ceil32(mem[_146])] = mem[_146 + 32 len ceil32(mem[_146])]
    if ceil32(_152) > _152:
        mem[_145 + _152 + 164] = 0
    call address(arg1) with:
         gas gas_remaining wei
        args mem[_145 + 168 len _152 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96] > 0:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_145 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[_145 + 196] == bool(mem[_145 + 196])
            if not mem[_145 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Claimed(arg2, arg4, address(arg1), address(arg3), update[address(arg1)]);
}

function sub_20ce64de(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 163
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 163
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 163
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 163
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * idx) + 36)] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)])
        if not sub_e2111586[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])]:
            revert with 0, 'frozen'
        mem[0] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] / 256
        mem[32] = sha3(update[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])], sha3(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]), 3))
        if stor3[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])][stor2[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])]][Mask(248, 8, cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)])] and 1 << uint8(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]) == 1 << uint8(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]):
            revert with 0, 'Drop already claimed.'
        _131 = mem[64]
        mem[mem[64] + 32] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]
        mem[mem[64] + 64] = address(cd[4])
        mem[mem[64] + 84] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]
        _134 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _136 = sha3(mem[_134 + 32 len mem[_134]])
        mem[64] = _131 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]) + 148
        mem[_131 + 116] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]
        mem[_131 + 148 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]]
        mem[_131 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]) + 148] = 0
        mem[0] = address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        mem[32] = 1
        s = 0
        t = _136
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 132)] + 36)]:
            if s >= mem[_131 + 116]:
                revert with 'NH{q', 50
            _249 = mem[(32 * s) + _131 + 148]
            if t > mem[(32 * s) + _131 + 148]:
                mem[mem[64] + 32] = mem[(32 * s) + _131 + 148]
                mem[mem[64] + 64] = t
                _254 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = sha3(mem[_254 + 32 len mem[_254]])
                continue 
            mem[mem[64] + 32] = t
            mem[mem[64] + 64] = _249
            _257 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = sha3(mem[_257 + 32 len mem[_257]])
            continue 
        if t != sub_e2111586[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])]:
            revert with 0, 'Invalid proof.'
        mem[0] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] / 256
        mem[32] = sha3(update[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])], sha3(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]), 3))
        stor3[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])][stor2[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])]][Mask(248, 8, cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)])] = 1
        _268 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]
        _269 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_269 + 32] = mem[_269 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _268 + 164
        mem[_268 + 100] = 32
        mem[_268 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _275 = mem[_269]
        s = 0
        while s < _275:
            mem[_268 + s + 164] = mem[_269 + s + 32]
            s = s + 32
            continue 
        if ceil32(_275) > _275:
            mem[_268 + _275 + 164] = 0
        call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]).mem[_268 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_268 + 168 len _275 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_268 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_268 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_268 + idx + 232] = mem[_268 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_268 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[0] = address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            mem[32] = 2
            mem[_268 + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]
            mem[_268 + 196] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]
        else:
            mem[64] = _268 + ceil32(return_data.size) + 165
            mem[_268 + 164] = return_data.size
            mem[_268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_268 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_268 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_268 + ceil32(return_data.size) + idx + 233] = mem[_268 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_268 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_268 + 196] == bool(mem[_268 + 196])
                if not mem[_268 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[0] = address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            mem[32] = 2
            mem[_268 + ceil32(return_data.size) + 165] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]
            mem[_268 + ceil32(return_data.size) + 197] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)]
        emit Claimed(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)], cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 100)], address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]), address(cd[4]), update[address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
