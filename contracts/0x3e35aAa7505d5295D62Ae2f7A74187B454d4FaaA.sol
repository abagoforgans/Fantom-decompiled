contract main {




// =====================  Runtime code  =====================


address owner;
address rarityAddress;
address sub_c714999eAddress;
array of uint256 sub_4a2fc9e8;
mapping of uint256 stor4;

function sub_4a2fc9e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_4a2fc9e8.length:
        revert with 'NH{q', 50
    return sub_4a2fc9e8[arg1]
}

function owner() payable {
    return owner
}

function sub_c714999e(?) payable {
    return sub_c714999eAddress
}

function sub_dfad1b51(?) payable {
    return sub_4a2fc9e8.length
}

function rarity() payable {
    return rarityAddress
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

function sub_558c9265(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c714999eAddress = address(arg1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_fa620c56(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _22 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _22
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == mem[_25]
        if block.timestamp > mem[_25]:
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _22
            require ext_code.size(rarityAddress)
            call rarityAddress.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _22
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e92526bf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _76 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _76
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _80 = mem[_79]
        require mem[_79] == mem[_79 + 12 len 20]
        if this.address == mem[_79 + 12 len 20]:
            mem[0] = _76
            mem[32] = 4
            if not stor4[_76]:
                sub_4a2fc9e8.length++
                sub_4a2fc9e8[sub_4a2fc9e8.length] = _76
                mem[0] = _76
                mem[32] = 4
                stor4[_76] = sub_4a2fc9e8.length
            mem[mem[64]] = _76
            emit 0xa35d91e7: _76
        else:
            mem[mem[64] + 4] = _76
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args _76
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86 + 12 len 20]
            if mem[_86 + 12 len 20] == this.address:
                mem[0] = _76
                mem[32] = 4
                if not stor4[_76]:
                    sub_4a2fc9e8.length++
                    sub_4a2fc9e8[sub_4a2fc9e8.length] = _76
                    mem[0] = _76
                    mem[32] = 4
                    stor4[_76] = sub_4a2fc9e8.length
                mem[mem[64]] = _76
                emit 0xa35d91e7: _76
            else:
                mem[mem[64] + 4] = address(_80)
                mem[mem[64] + 36] = this.address
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_80), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_101] == bool(mem[_101])
                if mem[_101]:
                    mem[0] = _76
                    mem[32] = 4
                    if not stor4[_76]:
                        sub_4a2fc9e8.length++
                        sub_4a2fc9e8[sub_4a2fc9e8.length] = _76
                        mem[0] = _76
                        mem[32] = 4
                        stor4[_76] = sub_4a2fc9e8.length
                    mem[mem[64]] = _76
                    emit 0xa35d91e7: _76
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_8b56341c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _64 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 128]]:
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _64
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] == mem[_68]
            if block.timestamp > mem[_68]:
                mem[mem[64] + 4] = _64
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.0x6352211e with:
                        gas gas_remaining wei
                       args _64
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _72 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _73 = mem[_72]
                require mem[_72] == mem[_72 + 12 len 20]
                mem[mem[64] + 4] = mem[_72 + 12 len 20]
                require ext_code.size(sub_c714999eAddress)
                staticcall sub_c714999eAddress.0xa645ded7 with:
                        gas gas_remaining wei
                       args address(_73)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _76 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_76] == bool(mem[_76])
                if mem[_76]:
                    require ext_code.size(sub_c714999eAddress)
                    call sub_c714999eAddress.withdrawFee(address arg1) with:
                         gas gas_remaining wei
                        args address(_73)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _64
                    require ext_code.size(rarityAddress)
                    call rarityAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _64
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _64
                    mem[32] = 4
                    if stor4[_64]:
                        if stor4[_64] < 1:
                            revert with 'NH{q', 17
                        if sub_4a2fc9e8.length < 1:
                            revert with 'NH{q', 17
                        if sub_4a2fc9e8.length - 1 != stor4[_64] - 1:
                            if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                                revert with 'NH{q', 50
                            if stor4[_64] - 1 >= sub_4a2fc9e8.length:
                                revert with 'NH{q', 50
                            sub_4a2fc9e8[stor4[_64]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                            stor4[stor3[stor3.length]] = stor4[_64]
                        if not sub_4a2fc9e8.length:
                            revert with 'NH{q', 49
                        sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                        sub_4a2fc9e8.length--
                        mem[0] = _64
                        mem[32] = 4
                        stor4[_64] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f3c5d087(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _114 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rarityAddress)
        staticcall rarityAddress.0x6352211e with:
                gas gas_remaining wei
               args _114
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_117]
        require mem[_117] == mem[_117 + 12 len 20]
        if this.address == mem[_117 + 12 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            if stor4[mem[(32 * idx) + 128]]:
                if stor4[mem[(32 * idx) + 128]] < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length < 1:
                    revert with 'NH{q', 17
                if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                    if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                        revert with 'NH{q', 50
                    sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                    stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
                if not sub_4a2fc9e8.length:
                    revert with 'NH{q', 49
                sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                sub_4a2fc9e8.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                stor4[mem[(32 * idx) + 128]] = 0
        else:
            mem[mem[64] + 4] = _114
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args _114
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124 + 12 len 20]
            if mem[_124 + 12 len 20] == this.address:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
                if stor4[mem[(32 * idx) + 128]]:
                    if stor4[mem[(32 * idx) + 128]] < 1:
                        revert with 'NH{q', 17
                    if sub_4a2fc9e8.length < 1:
                        revert with 'NH{q', 17
                    if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                        if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                            revert with 'NH{q', 50
                        if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                            revert with 'NH{q', 50
                        sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                        stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
                    if not sub_4a2fc9e8.length:
                        revert with 'NH{q', 49
                    sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                    sub_4a2fc9e8.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 4
                    stor4[mem[(32 * idx) + 128]] = 0
            else:
                mem[mem[64] + 4] = address(_118)
                mem[mem[64] + 36] = this.address
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_118), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == bool(mem[_138])
                if mem[_138]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 4
                    if stor4[mem[(32 * idx) + 128]]:
                        if stor4[mem[(32 * idx) + 128]] < 1:
                            revert with 'NH{q', 17
                        if sub_4a2fc9e8.length < 1:
                            revert with 'NH{q', 17
                        if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                            if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                                revert with 'NH{q', 50
                            if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                                revert with 'NH{q', 50
                            sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                            stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
                        if not sub_4a2fc9e8.length:
                            revert with 'NH{q', 49
                        sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                        sub_4a2fc9e8.length--
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 4
                        stor4[mem[(32 * idx) + 128]] = 0
                else:
                    if this.address == owner:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = 4
                        if stor4[mem[(32 * idx) + 128]]:
                            if stor4[mem[(32 * idx) + 128]] < 1:
                                revert with 'NH{q', 17
                            if sub_4a2fc9e8.length < 1:
                                revert with 'NH{q', 17
                            if sub_4a2fc9e8.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                                if sub_4a2fc9e8.length - 1 >= sub_4a2fc9e8.length:
                                    revert with 'NH{q', 50
                                if stor4[mem[(32 * idx) + 128]] - 1 >= sub_4a2fc9e8.length:
                                    revert with 'NH{q', 50
                                sub_4a2fc9e8[stor4[mem[(32 * idx) + 128]]] = sub_4a2fc9e8[sub_4a2fc9e8.length]
                                stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
                            if not sub_4a2fc9e8.length:
                                revert with 'NH{q', 49
                            sub_4a2fc9e8[sub_4a2fc9e8.length] = 0
                            sub_4a2fc9e8.length--
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 4
                            stor4[mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
