contract main {




// =====================  Runtime code  =====================


address owner;
address vaultAddress;
address keeperAddress;
address rarityAddress;
array of uint256 sub_c5316196;
mapping of uint256 sub_60e19af2;

function sub_60e19af2(?) payable {
    require calldata.size - 4 >= 32
    return sub_60e19af2[arg1]
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function sub_c5316196(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 24:
        revert with 0, 50
    return sub_c5316196[arg1]
}

function vault() payable {
    return vaultAddress
}

function rarity() payable {
    return rarityAddress
}

function _fallback() payable {
    revert
}

function updateKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Auth O'
    keeperAddress = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_b68df16d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, '!Auth O'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    require delegate.return_code
}

function sub_6135e7eb(?) payable {
    require calldata.size - 4 >= 96
    if arg3 < arg2:
        revert with 0, 17
    if 1 > !(arg3 - arg2):
        revert with 0, 17
    if arg3 + -arg2 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg3 + -arg2 + 1
    if arg3 + -arg2 + 1:
        mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
    idx = arg2
    s = 0
    while idx <= arg3:
        if arg1 >= 24:
            revert with 0, 50
        if idx >= sub_c5316196[arg1]:
            revert with 0, 50
        mem[0] = (2 * arg1) + 4
        if s == -1:
            revert with 0, 17
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = stor[sha3((2 * arg1) + 4) + idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg3 + -arg2 + 1) + 128] = 32
    mem[(32 * arg3 + -arg2 + 1) + 160] = mem[96]
    mem[(32 * arg3 + -arg2 + 1) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * arg3 + -arg2 + 1) + 160 len (32 * mem[96]) + 32]
}

function withdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        if vaultAddress != msg.sender:
            revert with 0, '!Auth O/V'
    require ext_code.size(rarityAddress)
    call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_60e19af2[arg1] >= 24:
        revert with 0, 50
    if stor[(2 * stor52[arg1]) + 5][arg1]:
        if stor[(2 * stor52[arg1]) + 5][arg1] < 1:
            revert with 0, 17
        if sub_c5316196[stor52[arg1]] < 1:
            revert with 0, 17
        if sub_c5316196[stor52[arg1]] - 1 != stor[(2 * stor52[arg1]) + 5][arg1] - 1:
            if sub_c5316196[stor52[arg1]] - 1 >= sub_c5316196[stor52[arg1]]:
                revert with 0, 50
            if stor[(2 * stor52[arg1]) + 5][arg1] - 1 >= sub_c5316196[stor52[arg1]]:
                revert with 0, 50
            stor[stor[(2 * stor52[arg1]) + 5][arg1] + sha3((2 * stor52[arg1]) + 4) - 1] = stor[sha3((2 * stor52[arg1]) + 4) + stor4[stor52[arg1]] - 1]
            stor[(2 * stor52[arg1]) + 5][stor[sha3((2 * stor52[arg1]) + 4) + stor4[stor52[arg1]] - 1]] = stor[(2 * stor52[arg1]) + 5][arg1]
        if not sub_c5316196[stor52[arg1]]:
            revert with 0, 49
        stor[sha3((2 * stor52[arg1]) + 4) + stor4[stor52[arg1]] - 1] = 0
        sub_c5316196[stor52[arg1]]--
        stor[(2 * stor52[arg1]) + 5][arg1] = 0
}

function sub_614b7432(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _30 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = _30
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _30
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!Auth O/K'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _32 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = _32
            require ext_code.size(rarityAddress)
            call rarityAddress.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_42771258(?) payable {
    require calldata.size - 4 >= 96
    if msg.sender == owner:
        if arg3 < arg2:
            revert with 0, 17
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            idx = arg2
            s = 0
            while idx <= arg3:
                if arg1 >= 24:
                    revert with 0, 50
                if idx >= sub_c5316196[arg1]:
                    revert with 0, 50
                mem[0] = (2 * arg1) + 4
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = stor[sha3((2 * arg1) + 4) + idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _77 = mem[96]
            idx = 0
            while idx < _77:
                if idx >= mem[96]:
                    revert with 0, 50
                _93 = mem[(32 * idx) + 128]
                mem[(32 * arg3 + -arg2 + 1) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3 + -arg2 + 1) + 132] = _93
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _93
                if idx == -1:
                    revert with 0, 17
                _77 = mem[96]
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            s = 0
            while idx <= arg3:
                if arg1 >= 24:
                    revert with 0, 50
                if idx >= sub_c5316196[arg1]:
                    revert with 0, 50
                mem[0] = (2 * arg1) + 4
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = stor[sha3((2 * arg1) + 4) + idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _78 = mem[96]
            idx = 0
            while idx < _78:
                if idx >= mem[96]:
                    revert with 0, 50
                _95 = mem[(32 * idx) + 128]
                mem[(32 * arg3 + -arg2 + 1) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3 + -arg2 + 1) + 132] = _95
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _95
                if idx == -1:
                    revert with 0, 17
                _78 = mem[96]
                idx = idx + 1
                continue 
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!Auth O/K'
        if arg3 < arg2:
            revert with 0, 17
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            idx = arg2
            s = 0
            while idx <= arg3:
                if arg1 >= 24:
                    revert with 0, 50
                if idx >= sub_c5316196[arg1]:
                    revert with 0, 50
                mem[0] = (2 * arg1) + 4
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = stor[sha3((2 * arg1) + 4) + idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _79 = mem[96]
            idx = 0
            while idx < _79:
                if idx >= mem[96]:
                    revert with 0, 50
                _97 = mem[(32 * idx) + 128]
                mem[(32 * arg3 + -arg2 + 1) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3 + -arg2 + 1) + 132] = _97
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _97
                if idx == -1:
                    revert with 0, 17
                _79 = mem[96]
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            s = 0
            while idx <= arg3:
                if arg1 >= 24:
                    revert with 0, 50
                if idx >= sub_c5316196[arg1]:
                    revert with 0, 50
                mem[0] = (2 * arg1) + 4
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = stor[sha3((2 * arg1) + 4) + idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _80 = mem[96]
            idx = 0
            while idx < _80:
                if idx >= mem[96]:
                    revert with 0, 50
                _99 = mem[(32 * idx) + 128]
                mem[(32 * arg3 + -arg2 + 1) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3 + -arg2 + 1) + 132] = _99
                require ext_code.size(rarityAddress)
                call rarityAddress.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args _99
                if idx == -1:
                    revert with 0, 17
                _80 = mem[96]
                idx = idx + 1
                continue 
    emit 0x63a466b2: arg2, arg3, arg1
}

function withdraw(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if msg.sender == owner:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _82 = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + 101] = this.address
            mem[ceil32(32 * arg1.length) + 133] = arg2
            mem[ceil32(32 * arg1.length) + 165] = _82
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(arg2), _82
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if sub_60e19af2[mem[(32 * idx) + 128]] >= 24:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = (2 * sub_60e19af2[mem[(32 * idx) + 128]]) + 5
            if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]]:
                if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if sub_c5316196[stor52[mem[(32 * idx) + 128]]] < 1:
                    revert with 0, 17
                if sub_c5316196[stor52[mem[(32 * idx) + 128]]] - 1 != stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] - 1:
                    if sub_c5316196[stor52[mem[(32 * idx) + 128]]] - 1 >= sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                        revert with 0, 50
                    if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] - 1 >= sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                        revert with 0, 50
                    stor[stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] + sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) - 1] = stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1]
                    stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1]] = stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]]
                if not sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                    revert with 0, 49
                stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1] = 0
                sub_c5316196[stor52[mem[(32 * idx) + 128]]]--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = (2 * sub_60e19af2[mem[(32 * idx) + 128]]) + 5
                stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if vaultAddress != msg.sender:
            revert with 0, '!Auth O/V'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _85 = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + 101] = this.address
            mem[ceil32(32 * arg1.length) + 133] = arg2
            mem[ceil32(32 * arg1.length) + 165] = _85
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(arg2), _85
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            if sub_60e19af2[mem[(32 * idx) + 128]] >= 24:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = (2 * sub_60e19af2[mem[(32 * idx) + 128]]) + 5
            if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]]:
                if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if sub_c5316196[stor52[mem[(32 * idx) + 128]]] < 1:
                    revert with 0, 17
                if sub_c5316196[stor52[mem[(32 * idx) + 128]]] - 1 != stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] - 1:
                    if sub_c5316196[stor52[mem[(32 * idx) + 128]]] - 1 >= sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                        revert with 0, 50
                    if stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] - 1 >= sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                        revert with 0, 50
                    stor[stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] + sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) - 1] = stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1]
                    stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1]] = stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]]
                if not sub_c5316196[stor52[mem[(32 * idx) + 128]]]:
                    revert with 0, 49
                stor[sha3((2 * stor52[mem[(32 * idx) + 128]]) + 4) + stor4[stor52[mem[(32 * idx) + 128]]] - 1] = 0
                sub_c5316196[stor52[mem[(32 * idx) + 128]]]--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = (2 * sub_60e19af2[mem[(32 * idx) + 128]]) + 5
                stor[(2 * stor52[mem[(32 * idx) + 128]]) + 5][mem[(32 * idx) + 128]] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_2195122c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == owner:
        if cd[68] > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = cd[68]
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130
        if not cd[68]:
            if block.timestamp / 3600 % 24 >= 24:
                revert with 0, 50
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if var81003 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.mem[var85003 len 4] with:
                        gas gas_remaining wei
                       args mem[var85003 + 4 len var85004 - 4]
                mem[var85005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130
                require var89002 - var89001 >= 32
                if var95001 == -1:
                    revert with 0, 17
                if var99002 >= cd[68]:
                    revert with 0, 50
                mem[(32 * var101001) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = var101003
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _1592 = mem[(32 * idx) + 128]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 134] = _1592
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var107004 len 4] with:
                     gas gas_remaining wei
                    args mem[var107004 + 4 len var107005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(rarityAddress)
                # nil
            if cd[68]:
                revert with 0, '!totalCount'
            if sub_c5316196[block.timestamp / 3600 % 24] > !cd[68]:
                revert with 0, 17
            if sub_c5316196[block.timestamp / 3600 % 24] + cd[68] < 1:
                revert with 0, 17
            emit 0x63a466b2: sub_c5316196[block.timestamp / 3600 % 24], sub_c5316196[block.timestamp / 3600 % 24] + cd[68] - 1, block.timestamp / 3600 % 24
            return Array(len=cd[68], data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * cd[68]])
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * cd[68]] = call.data[calldata.size len 32 * cd[68]]
        if block.timestamp / 3600 % 24 >= 24:
            revert with 0, 50
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if var82003 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.mem[var86003 len 4] with:
                    gas gas_remaining wei
                   args mem[var86003 + 4 len var86004 - 4]
            mem[var86005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130
            require var90002 - var90001 >= 32
            if var96001 == -1:
                revert with 0, 17
            if var100002 >= cd[68]:
                revert with 0, 50
            mem[(32 * var102001) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = var102003
            if idx >= ('cd', 4).length:
                revert with 0, 50
            _1594 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 134] = _1594
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var108004 len 4] with:
                 gas gas_remaining wei
                args mem[var108004 + 4 len var108005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(rarityAddress)
            # nil
    else:
        if vaultAddress != msg.sender:
            revert with 0, '!Auth O/V'
        if cd[68] > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = cd[68]
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130
        if not cd[68]:
            if block.timestamp / 3600 % 24 >= 24:
                revert with 0, 50
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if var82003 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.mem[var86003 len 4] with:
                        gas gas_remaining wei
                       args mem[var86003 + 4 len var86004 - 4]
                mem[var86005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130
                require var90002 - var90001 >= 32
                if var96001 == -1:
                    revert with 0, 17
                if var100002 >= cd[68]:
                    revert with 0, 50
                mem[(32 * var102001) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = var102003
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _1596 = mem[(32 * idx) + 128]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 134] = _1596
                require ext_code.size(rarityAddress)
                call rarityAddress.mem[var108004 len 4] with:
                     gas gas_remaining wei
                    args mem[var108004 + 4 len var108005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(rarityAddress)
                # nil
            if cd[68]:
                revert with 0, '!totalCount'
            if sub_c5316196[block.timestamp / 3600 % 24] > !cd[68]:
                revert with 0, 17
            if sub_c5316196[block.timestamp / 3600 % 24] + cd[68] < 1:
                revert with 0, 17
            emit 0x63a466b2: sub_c5316196[block.timestamp / 3600 % 24], sub_c5316196[block.timestamp / 3600 % 24] + cd[68] - 1, block.timestamp / 3600 % 24
            return Array(len=cd[68], data=mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * cd[68]])
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 32 * cd[68]] = call.data[calldata.size len 32 * cd[68]]
        if block.timestamp / 3600 % 24 >= 24:
            revert with 0, 50
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if var83003 >= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + 130] = 0x7b018ef00000000000000000000000000000000000000000000000000000000
            require ext_code.size(rarityAddress)
            staticcall rarityAddress.mem[var87003 len 4] with:
                    gas gas_remaining wei
                   args mem[var87003 + 4 len var87004 - 4]
            mem[var87005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130
            require var91002 - var91001 >= 32
            if var97001 == -1:
                revert with 0, 17
            if var101002 >= cd[68]:
                revert with 0, 50
            mem[(32 * var103001) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = var103003
            if idx >= ('cd', 4).length:
                revert with 0, 50
            _1598 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 130] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * cd[68]) + ceil32(return_data.size) + 134] = _1598
            require ext_code.size(rarityAddress)
            call rarityAddress.mem[var109004 len 4] with:
                 gas gas_remaining wei
                args mem[var109004 + 4 len var109005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(rarityAddress)
            # nil
    if cd[68]:
        revert with 0, '!totalCount'
    if sub_c5316196[block.timestamp / 3600 % 24] > !cd[68]:
        revert with 0, 17
    if sub_c5316196[block.timestamp / 3600 % 24] + cd[68] < 1:
        revert with 0, 17
    emit 0x63a466b2: sub_c5316196[block.timestamp / 3600 % 24], sub_c5316196[block.timestamp / 3600 % 24] + cd[68] - 1, block.timestamp / 3600 % 24
    return Array(len=cd[68], data=call.data[calldata.size len 32 * cd[68]])
}

function sub_d7b35301(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == bool(cd[36])
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if cd[36]:
                _288 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _288
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_300]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_300] >= block.timestamp:
                    if mem[_300] / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * mem[_300] / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[mem[_300] / 3600 % 24]++
                        stor[stor4[mem[_300] / 3600 % 24] + sha3((2 * mem[_300] / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * mem[_300] / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[mem[_300] / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = _308 / 3600 % 24
                else:
                    _316 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _316
                    require ext_code.size(rarityAddress)
                    call rarityAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _316
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if block.timestamp / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[block.timestamp / 3600 % 24]++
                        stor[stor4[block.timestamp / 3600 % 24] + sha3((2 * block.timestamp / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[block.timestamp / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = block.timestamp / 3600 % 24
            else:
                _290 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _290
                require ext_code.size(rarityAddress)
                call rarityAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _290
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                _304 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _321 = mem[_313]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_313] >= block.timestamp:
                    if mem[_313] / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * mem[_313] / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[mem[_313] / 3600 % 24]++
                        stor[stor4[mem[_313] / 3600 % 24] + sha3((2 * mem[_313] / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * mem[_313] / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[mem[_313] / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = _321 / 3600 % 24
                else:
                    _326 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _326
                    require ext_code.size(rarityAddress)
                    call rarityAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _326
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if block.timestamp / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[block.timestamp / 3600 % 24]++
                        stor[stor4[block.timestamp / 3600 % 24] + sha3((2 * block.timestamp / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[block.timestamp / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = block.timestamp / 3600 % 24
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if vaultAddress != msg.sender:
            revert with 0, '!Auth O/V'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if cd[36]:
                _293 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _293
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _310 = mem[_302]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_302] >= block.timestamp:
                    if mem[_302] / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * mem[_302] / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[mem[_302] / 3600 % 24]++
                        stor[stor4[mem[_302] / 3600 % 24] + sha3((2 * mem[_302] / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * mem[_302] / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[mem[_302] / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = _310 / 3600 % 24
                else:
                    _318 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _318
                    require ext_code.size(rarityAddress)
                    call rarityAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _318
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if block.timestamp / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[block.timestamp / 3600 % 24]++
                        stor[stor4[block.timestamp / 3600 % 24] + sha3((2 * block.timestamp / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[block.timestamp / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = block.timestamp / 3600 % 24
            else:
                _295 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _295
                require ext_code.size(rarityAddress)
                call rarityAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _295
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                _306 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(rarityAddress)
                staticcall rarityAddress.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args _306
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _323 = mem[_315]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_315] >= block.timestamp:
                    if mem[_315] / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * mem[_315] / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[mem[_315] / 3600 % 24]++
                        stor[stor4[mem[_315] / 3600 % 24] + sha3((2 * mem[_315] / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * mem[_315] / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[mem[_315] / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = _323 / 3600 % 24
                else:
                    _328 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _328
                    require ext_code.size(rarityAddress)
                    call rarityAddress.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _328
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if block.timestamp / 3600 % 24 >= 24:
                        revert with 0, 50
                    if not stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]]:
                        sub_c5316196[block.timestamp / 3600 % 24]++
                        stor[stor4[block.timestamp / 3600 % 24] + sha3((2 * block.timestamp / 3600 % 24) + 4)] = mem[(32 * idx) + 128]
                        stor[(2 * block.timestamp / 3600 % 24) + 5][mem[(32 * idx) + 128]] = sub_c5316196[block.timestamp / 3600 % 24]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 52
                    sub_60e19af2[mem[(32 * idx) + 128]] = block.timestamp / 3600 % 24
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_4c7186e5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _174 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_174] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_174 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_174 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _174
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, '!Auth O'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, '!length'
    _253 = mem[96]
    idx = 0
    while idx < _253:
        if idx >= mem[96]:
            revert with 0, 50
        _255 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _257 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        _258 = mem[64]
        _259 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
        s = 0
        while s < _259:
            mem[s + _258] = mem[s + _257 + 32]
            _253 = mem[96]
            s = s + 32
            continue 
        if ceil32(_259) <= _259:
            call address(_255).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _259 + _258 + -mem[64] - 4]
            if not return_data.size:
                if not idx:
                    _334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_334] = 1
                    mem[_334 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _338 = mem[64]
                    mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                    s = 0
                    while s < 1:
                        mem[s + _338 + 43] = mem[s + _334 + 32]
                        _253 = mem[96]
                        s = s + 32
                        continue 
                    mem[_338 + 44] = 0
                    _407 = mem[64]
                    mem[mem[64]] = _338 + -mem[64] + 12
                    mem[64] = _338 + 44
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_338 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_338 + 48] = 32
                    _424 = mem[_407]
                    mem[_338 + 80] = mem[_407]
                    idx = 0
                    while idx < _424:
                        mem[idx + _338 + 112] = mem[idx + _407 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_424) > _424:
                        mem[_424 + _338 + 112] = 0
                    revert with 0, 32, mem[_338 + 80 len ceil32(_424) + 32]
                t = 0
                s = idx
                while s:
                    if t == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 0, 65
                _402 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = idx
                    while s:
                        if u < 1:
                            revert with 0, 17
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if u - 1 >= mem[_402]:
                            revert with 0, 50
                        mem[u + _402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        _253 = mem[96]
                        u = u - 1
                        s = s / 10
                        continue 
                    _590 = mem[64]
                    mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                    _598 = mem[_402]
                    s = 0
                    while s < _598:
                        mem[s + _590 + 43] = mem[s + _402 + 32]
                        _253 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_598) <= _598:
                        _742 = mem[64]
                        mem[mem[64]] = _598 + _590 + -mem[64] + 11
                        mem[64] = _598 + _590 + 43
                        if ext_call.success:
                            if idx == -1:
                                revert with 0, 17
                            _253 = mem[96]
                            idx = idx + 1
                            continue 
                        mem[_598 + _590 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_598 + _590 + 47] = 32
                        _774 = mem[_742]
                        mem[_598 + _590 + 79] = mem[_742]
                        idx = 0
                        while idx < _774:
                            mem[idx + _598 + _590 + 111] = mem[idx + _742 + 32]
                            _253 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_774) > _774:
                            mem[_774 + _598 + _590 + 111] = 0
                        revert with 0, 32, mem[_598 + _590 + 79 len ceil32(_774) + 32]
                    mem[_598 + _590 + 43] = 0
                    _743 = mem[64]
                    mem[mem[64]] = _598 + _590 + -mem[64] + 11
                    mem[64] = _598 + _590 + 43
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_598 + _590 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_598 + _590 + 47] = 32
                    _775 = mem[_743]
                    mem[_598 + _590 + 79] = mem[_743]
                    idx = 0
                    while idx < _775:
                        mem[idx + _598 + _590 + 111] = mem[idx + _743 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_775) > _775:
                        mem[_775 + _598 + _590 + 111] = 0
                    revert with 0, 32, mem[_598 + _590 + 79 len ceil32(_775) + 32]
                mem[_402 + 32 len t] = call.data[calldata.size len t]
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if 48 > !(s % 10):
                        revert with 0, 17
                    if u - 1 >= mem[_402]:
                        revert with 0, 50
                    mem[u + _402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    _253 = mem[96]
                    u = u - 1
                    s = s / 10
                    continue 
                _591 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                _599 = mem[_402]
                s = 0
                while s < _599:
                    mem[s + _591 + 43] = mem[s + _402 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_599) <= _599:
                    _744 = mem[64]
                    mem[mem[64]] = _599 + _591 + -mem[64] + 11
                    mem[64] = _599 + _591 + 43
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_599 + _591 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_599 + _591 + 47] = 32
                    _776 = mem[_744]
                    mem[_599 + _591 + 79] = mem[_744]
                    idx = 0
                    while idx < _776:
                        mem[idx + _599 + _591 + 111] = mem[idx + _744 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_776) > _776:
                        mem[_776 + _599 + _591 + 111] = 0
                    revert with 0, 32, mem[_599 + _591 + 79 len ceil32(_776) + 32]
                mem[_599 + _591 + 43] = 0
                _745 = mem[64]
                mem[mem[64]] = _599 + _591 + -mem[64] + 11
                mem[64] = _599 + _591 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_599 + _591 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_599 + _591 + 47] = 32
                _777 = mem[_745]
                mem[_599 + _591 + 79] = mem[_745]
                idx = 0
                while idx < _777:
                    mem[idx + _599 + _591 + 111] = mem[idx + _745 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_777) > _777:
                    mem[_777 + _599 + _591 + 111] = 0
                revert with 0, 32, mem[_599 + _591 + 79 len ceil32(_777) + 32]
            _332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_332] = return_data.size
            mem[_332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not idx:
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 1
                mem[_335 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _339 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                s = 0
                while s < 1:
                    mem[s + _339 + 43] = mem[s + _335 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                mem[_339 + 44] = 0
                _409 = mem[64]
                mem[mem[64]] = _339 + -mem[64] + 12
                mem[64] = _339 + 44
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_339 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_339 + 48] = 32
                _427 = mem[_409]
                mem[_339 + 80] = mem[_409]
                idx = 0
                while idx < _427:
                    mem[idx + _339 + 112] = mem[idx + _409 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_427) > _427:
                    mem[_427 + _339 + 112] = 0
                revert with 0, 32, mem[_339 + 80 len ceil32(_427) + 32]
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 0, 17
                _253 = mem[96]
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _403 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if 48 > !(s % 10):
                        revert with 0, 17
                    if u - 1 >= mem[_403]:
                        revert with 0, 50
                    mem[u + _403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    _253 = mem[96]
                    u = u - 1
                    s = s / 10
                    continue 
                _592 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                _600 = mem[_403]
                s = 0
                while s < _600:
                    mem[s + _592 + 43] = mem[s + _403 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_600) <= _600:
                    _746 = mem[64]
                    mem[mem[64]] = _600 + _592 + -mem[64] + 11
                    mem[64] = _600 + _592 + 43
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_600 + _592 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_600 + _592 + 47] = 32
                    _778 = mem[_746]
                    mem[_600 + _592 + 79] = mem[_746]
                    idx = 0
                    while idx < _778:
                        mem[idx + _600 + _592 + 111] = mem[idx + _746 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_778) > _778:
                        mem[_778 + _600 + _592 + 111] = 0
                    revert with 0, 32, mem[_600 + _592 + 79 len ceil32(_778) + 32]
                mem[_600 + _592 + 43] = 0
                _747 = mem[64]
                mem[mem[64]] = _600 + _592 + -mem[64] + 11
                mem[64] = _600 + _592 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_600 + _592 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_600 + _592 + 47] = 32
                _779 = mem[_747]
                mem[_600 + _592 + 79] = mem[_747]
                idx = 0
                while idx < _779:
                    mem[idx + _600 + _592 + 111] = mem[idx + _747 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_779) > _779:
                    mem[_779 + _600 + _592 + 111] = 0
                revert with 0, 32, mem[_600 + _592 + 79 len ceil32(_779) + 32]
            mem[_403 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if 48 > !(s % 10):
                    revert with 0, 17
                if u - 1 >= mem[_403]:
                    revert with 0, 50
                mem[u + _403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                _253 = mem[96]
                u = u - 1
                s = s / 10
                continue 
            _593 = mem[64]
            mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
            _601 = mem[_403]
            s = 0
            while s < _601:
                mem[s + _593 + 43] = mem[s + _403 + 32]
                _253 = mem[96]
                s = s + 32
                continue 
            if ceil32(_601) <= _601:
                _748 = mem[64]
                mem[mem[64]] = _601 + _593 + -mem[64] + 11
                mem[64] = _601 + _593 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_601 + _593 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_601 + _593 + 47] = 32
                _780 = mem[_748]
                mem[_601 + _593 + 79] = mem[_748]
                idx = 0
                while idx < _780:
                    mem[idx + _601 + _593 + 111] = mem[idx + _748 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_780) > _780:
                    mem[_780 + _601 + _593 + 111] = 0
                revert with 0, 32, mem[_601 + _593 + 79 len ceil32(_780) + 32]
            mem[_601 + _593 + 43] = 0
            _749 = mem[64]
            mem[mem[64]] = _601 + _593 + -mem[64] + 11
            mem[64] = _601 + _593 + 43
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_601 + _593 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_601 + _593 + 47] = 32
            _781 = mem[_749]
            mem[_601 + _593 + 79] = mem[_749]
            idx = 0
            while idx < _781:
                mem[idx + _601 + _593 + 111] = mem[idx + _749 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_781) > _781:
                mem[_781 + _601 + _593 + 111] = 0
            revert with 0, 32, mem[_601 + _593 + 79 len ceil32(_781) + 32]
        mem[_259 + _258] = 0
        call address(_255).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _259 + _258 + -mem[64] - 4]
        if not return_data.size:
            if not idx:
                _336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_336] = 1
                mem[_336 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _340 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                s = 0
                while s < 1:
                    mem[s + _340 + 43] = mem[s + _336 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                mem[_340 + 44] = 0
                _411 = mem[64]
                mem[mem[64]] = _340 + -mem[64] + 12
                mem[64] = _340 + 44
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_340 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_340 + 48] = 32
                _430 = mem[_411]
                mem[_340 + 80] = mem[_411]
                idx = 0
                while idx < _430:
                    mem[idx + _340 + 112] = mem[idx + _411 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_430) > _430:
                    mem[_430 + _340 + 112] = 0
                revert with 0, 32, mem[_340 + 80 len ceil32(_430) + 32]
            t = 0
            s = idx
            while s:
                if t == -1:
                    revert with 0, 17
                _253 = mem[96]
                t = t + 1
                s = s / 10
                continue 
            if t > test266151307():
                revert with 0, 65
            _404 = mem[64]
            mem[mem[64]] = t
            mem[64] = mem[64] + ceil32(t) + 32
            if not t:
                u = t
                s = idx
                while s:
                    if u < 1:
                        revert with 0, 17
                    if 48 > !(s % 10):
                        revert with 0, 17
                    if u - 1 >= mem[_404]:
                        revert with 0, 50
                    mem[u + _404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                    _253 = mem[96]
                    u = u - 1
                    s = s / 10
                    continue 
                _594 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                _602 = mem[_404]
                s = 0
                while s < _602:
                    mem[s + _594 + 43] = mem[s + _404 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_602) <= _602:
                    _750 = mem[64]
                    mem[mem[64]] = _602 + _594 + -mem[64] + 11
                    mem[64] = _602 + _594 + 43
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_602 + _594 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_602 + _594 + 47] = 32
                    _782 = mem[_750]
                    mem[_602 + _594 + 79] = mem[_750]
                    idx = 0
                    while idx < _782:
                        mem[idx + _602 + _594 + 111] = mem[idx + _750 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_782) > _782:
                        mem[_782 + _602 + _594 + 111] = 0
                    revert with 0, 32, mem[_602 + _594 + 79 len ceil32(_782) + 32]
                mem[_602 + _594 + 43] = 0
                _751 = mem[64]
                mem[mem[64]] = _602 + _594 + -mem[64] + 11
                mem[64] = _602 + _594 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_602 + _594 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_602 + _594 + 47] = 32
                _783 = mem[_751]
                mem[_602 + _594 + 79] = mem[_751]
                idx = 0
                while idx < _783:
                    mem[idx + _602 + _594 + 111] = mem[idx + _751 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_783) > _783:
                    mem[_783 + _602 + _594 + 111] = 0
                revert with 0, 32, mem[_602 + _594 + 79 len ceil32(_783) + 32]
            mem[_404 + 32 len t] = call.data[calldata.size len t]
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if 48 > !(s % 10):
                    revert with 0, 17
                if u - 1 >= mem[_404]:
                    revert with 0, 50
                mem[u + _404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                _253 = mem[96]
                u = u - 1
                s = s / 10
                continue 
            _595 = mem[64]
            mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
            _603 = mem[_404]
            s = 0
            while s < _603:
                mem[s + _595 + 43] = mem[s + _404 + 32]
                _253 = mem[96]
                s = s + 32
                continue 
            if ceil32(_603) <= _603:
                _752 = mem[64]
                mem[mem[64]] = _603 + _595 + -mem[64] + 11
                mem[64] = _603 + _595 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_603 + _595 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_603 + _595 + 47] = 32
                _784 = mem[_752]
                mem[_603 + _595 + 79] = mem[_752]
                idx = 0
                while idx < _784:
                    mem[idx + _603 + _595 + 111] = mem[idx + _752 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_784) > _784:
                    mem[_784 + _603 + _595 + 111] = 0
                revert with 0, 32, mem[_603 + _595 + 79 len ceil32(_784) + 32]
            mem[_603 + _595 + 43] = 0
            _753 = mem[64]
            mem[mem[64]] = _603 + _595 + -mem[64] + 11
            mem[64] = _603 + _595 + 43
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_603 + _595 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_603 + _595 + 47] = 32
            _785 = mem[_753]
            mem[_603 + _595 + 79] = mem[_753]
            idx = 0
            while idx < _785:
                mem[idx + _603 + _595 + 111] = mem[idx + _753 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_785) > _785:
                mem[_785 + _603 + _595 + 111] = 0
            revert with 0, 32, mem[_603 + _595 + 79 len ceil32(_785) + 32]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_333] = return_data.size
        mem[_333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not idx:
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 1
            mem[_337 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _341 = mem[64]
            mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
            s = 0
            while s < 1:
                mem[s + _341 + 43] = mem[s + _337 + 32]
                _253 = mem[96]
                s = s + 32
                continue 
            mem[_341 + 44] = 0
            _413 = mem[64]
            mem[mem[64]] = _341 + -mem[64] + 12
            mem[64] = _341 + 44
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_341 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_341 + 48] = 32
            _433 = mem[_413]
            mem[_341 + 80] = mem[_413]
            idx = 0
            while idx < _433:
                mem[idx + _341 + 112] = mem[idx + _413 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_433) > _433:
                mem[_433 + _341 + 112] = 0
            revert with 0, 32, mem[_341 + 80 len ceil32(_433) + 32]
        t = 0
        s = idx
        while s:
            if t == -1:
                revert with 0, 17
            _253 = mem[96]
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 0, 65
        _405 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if 48 > !(s % 10):
                    revert with 0, 17
                if u - 1 >= mem[_405]:
                    revert with 0, 50
                mem[u + _405 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                _253 = mem[96]
                u = u - 1
                s = s / 10
                continue 
            _596 = mem[64]
            mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
            _604 = mem[_405]
            s = 0
            while s < _604:
                mem[s + _596 + 43] = mem[s + _405 + 32]
                _253 = mem[96]
                s = s + 32
                continue 
            if ceil32(_604) <= _604:
                _754 = mem[64]
                mem[mem[64]] = _604 + _596 + -mem[64] + 11
                mem[64] = _604 + _596 + 43
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_604 + _596 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_604 + _596 + 47] = 32
                _786 = mem[_754]
                mem[_604 + _596 + 79] = mem[_754]
                idx = 0
                while idx < _786:
                    mem[idx + _604 + _596 + 111] = mem[idx + _754 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_786) > _786:
                    mem[_786 + _604 + _596 + 111] = 0
                revert with 0, 32, mem[_604 + _596 + 79 len ceil32(_786) + 32]
            mem[_604 + _596 + 43] = 0
            _755 = mem[64]
            mem[mem[64]] = _604 + _596 + -mem[64] + 11
            mem[64] = _604 + _596 + 43
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_604 + _596 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_604 + _596 + 47] = 32
            _787 = mem[_755]
            mem[_604 + _596 + 79] = mem[_755]
            idx = 0
            while idx < _787:
                mem[idx + _604 + _596 + 111] = mem[idx + _755 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_787) > _787:
                mem[_787 + _604 + _596 + 111] = 0
            revert with 0, 32, mem[_604 + _596 + 79 len ceil32(_787) + 32]
        mem[_405 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = idx
        while s:
            if u < 1:
                revert with 0, 17
            if 48 > !(s % 10):
                revert with 0, 17
            if u - 1 >= mem[_405]:
                revert with 0, 50
            mem[u + _405 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
            _253 = mem[96]
            u = u - 1
            s = s / 10
            continue 
        _597 = mem[64]
        mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
        _605 = mem[_405]
        s = 0
        while s < _605:
            mem[s + _597 + 43] = mem[s + _405 + 32]
            _253 = mem[96]
            s = s + 32
            continue 
        if ceil32(_605) <= _605:
            _756 = mem[64]
            mem[mem[64]] = _605 + _597 + -mem[64] + 11
            mem[64] = _605 + _597 + 43
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_605 + _597 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_605 + _597 + 47] = 32
            _788 = mem[_756]
            mem[_605 + _597 + 79] = mem[_756]
            idx = 0
            while idx < _788:
                mem[idx + _605 + _597 + 111] = mem[idx + _756 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_788) > _788:
                mem[_788 + _605 + _597 + 111] = 0
            revert with 0, 32, mem[_605 + _597 + 79 len ceil32(_788) + 32]
        mem[_605 + _597 + 43] = 0
        _757 = mem[64]
        mem[mem[64]] = _605 + _597 + -mem[64] + 11
        mem[64] = _605 + _597 + 43
        if ext_call.success:
            if idx == -1:
                revert with 0, 17
            _253 = mem[96]
            idx = idx + 1
            continue 
        mem[_605 + _597 + 43] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_605 + _597 + 47] = 32
        _789 = mem[_757]
        mem[_605 + _597 + 79] = mem[_757]
        idx = 0
        while idx < _789:
            mem[idx + _605 + _597 + 111] = mem[idx + _757 + 32]
            _253 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(_789) > _789:
            mem[_789 + _605 + _597 + 111] = 0
        revert with 0, 32, mem[_605 + _597 + 79 len ceil32(_789) + 32]
}



}
