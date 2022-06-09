contract main {




// =====================  Runtime code  =====================


address owner;
address keeperAddress;
address rarityAddress;
array of uint256 stor3;
mapping of uint256 stor4;
array of uint256 stor5;
mapping of uint256 stor6;
address strategyAddress;

function sub_10bec052(?) payable {
    return stor3.length
}

function sub_1e3e13b8(?) payable {
    return stor5.length
}

function owner() payable {
    return owner
}

function strategy() payable {
    return strategyAddress
}

function keeper() payable {
    return keeperAddress
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

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!Auth O'
    if not strategyAddress:
        strategyAddress = arg1
        require ext_code.size(rarityAddress)
        call rarityAddress.setApprovalForAll(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(arg1), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor5.length:
            revert with 0, 'Prev Strat has debt'
        require ext_code.size(rarityAddress)
        call rarityAddress.setApprovalForAll(address arg1, bool arg2) with:
             gas gas_remaining wei
            args strategyAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        strategyAddress = arg1
}

function sub_c6e6870b(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 + -arg1 + 1
    if arg2 + -arg1 + 1:
        mem[128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = arg1
    s = 0
    while idx <= arg2:
        if idx >= stor3.length:
            revert with 0, 50
        mem[0] = 3
        if s == -1:
            revert with 0, 17
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = stor3[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 + -arg1 + 1) + 128] = 32
    mem[(32 * arg2 + -arg1 + 1) + 160] = mem[96]
    mem[(32 * arg2 + -arg1 + 1) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * arg2 + -arg1 + 1) + 160 len (32 * mem[96]) + 32]
}

function sub_c833c1d8(?) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 + -arg1 + 1
    if arg2 + -arg1 + 1:
        mem[128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = arg1
    s = 0
    while idx <= arg2:
        if idx >= stor5.length:
            revert with 0, 50
        mem[0] = 5
        if s == -1:
            revert with 0, 17
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = stor5[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 + -arg1 + 1) + 128] = 32
    mem[(32 * arg2 + -arg1 + 1) + 160] = mem[96]
    mem[(32 * arg2 + -arg1 + 1) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * arg2 + -arg1 + 1) + 160 len (32 * mem[96]) + 32]
}

function sub_b0656c39(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!Auth O/K'
    if arg2 < arg1:
        revert with 0, 17
    if 1 > !(arg2 - arg1):
        revert with 0, 17
    if arg2 + -arg1 + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2 + -arg1 + 1
    if arg2 + -arg1 + 1:
        mem[128 len 32 * arg2 + -arg1 + 1] = call.data[calldata.size len 32 * arg2 + -arg1 + 1]
    idx = arg1
    s = 0
    while idx <= arg2:
        if idx >= stor3.length:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= arg2 + -arg1 + 1:
            revert with 0, 50
        mem[(32 * s) + 128] = stor3[idx]
        mem[0] = stor3[idx]
        mem[32] = 6
        if not stor6[stor3[idx]]:
            stor5.length++
            stor5[stor5.length] = stor3[idx]
            mem[0] = stor3[idx]
            mem[32] = 6
            stor6[stor3[idx]] = stor5.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2 + -arg1 + 1) + 128] = 0xd7b3530100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2 + -arg1 + 1) + 196] = arg2 + -arg1 + 1
    mem[(32 * arg2 + -arg1 + 1) + 228 len 32 * arg2 + -arg1 + 1] = mem[128 len 32 * arg2 + -arg1 + 1]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd7b35301 with:
         gas gas_remaining wei
        args 64, 0, mem[(32 * arg2 + -arg1 + 1) + 196 len (32 * arg2 + -arg1 + 1) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
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
    if owner != msg.sender:
        revert with 0, '!Auth O'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _57 = mem[(32 * idx) + 128]
        mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + 133] = strategyAddress
        mem[ceil32(32 * arg1.length) + 165] = _57
        require ext_code.size(rarityAddress)
        call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, strategyAddress, _57
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        if not stor4[mem[(32 * idx) + 128]]:
            stor3.length++
            stor3[stor3.length] = mem[(32 * idx) + 128]
            stor4[mem[(32 * idx) + 128]] = stor3.length
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        if not stor6[mem[(32 * idx) + 128]]:
            stor5.length++
            stor5[stor5.length] = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 6
            stor6[mem[(32 * idx) + 128]] = stor5.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 0xd7b3530100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + 101] = 64
    mem[ceil32(32 * arg1.length) + 165] = mem[96]
    mem[ceil32(32 * arg1.length) + 197 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    require ext_code.size(strategyAddress)
    call strategyAddress.0xd7b35301 with:
         gas gas_remaining wei
        args 64, 1, mem[ceil32(32 * arg1.length) + 165 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
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
    if owner != msg.sender:
        revert with 0, '!Auth O'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if not stor6[mem[(32 * idx) + 128]]:
            _136 = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + 101] = this.address
            mem[ceil32(32 * arg1.length) + 133] = msg.sender
            mem[ceil32(32 * arg1.length) + 165] = _136
            require ext_code.size(rarityAddress)
            call rarityAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _136
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            _139 = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + 97] = 0xf714ce00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * arg1.length) + 101] = _139
            mem[ceil32(32 * arg1.length) + 133] = msg.sender
            require ext_code.size(strategyAddress)
            call strategyAddress.withdraw(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args _139, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 0, 50
            if stor6[mem[(32 * idx) + 128]]:
                if stor6[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if stor5.length < 1:
                    revert with 0, 17
                if stor5.length - 1 != stor6[mem[(32 * idx) + 128]] - 1:
                    if stor5.length - 1 >= stor5.length:
                        revert with 0, 50
                    if stor6[mem[(32 * idx) + 128]] - 1 >= stor5.length:
                        revert with 0, 50
                    stor5[stor6[mem[(32 * idx) + 128]]] = stor5[stor5.length]
                    stor6[stor5[stor5.length]] = stor6[mem[(32 * idx) + 128]]
                if not stor5.length:
                    revert with 0, 49
                stor5[stor5.length] = 0
                stor5.length--
                stor6[mem[(32 * idx) + 128]] = 0
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 128]]:
            if stor4[mem[(32 * idx) + 128]] < 1:
                revert with 0, 17
            if stor3.length < 1:
                revert with 0, 17
            if stor3.length - 1 != stor4[mem[(32 * idx) + 128]] - 1:
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                if stor4[mem[(32 * idx) + 128]] - 1 >= stor3.length:
                    revert with 0, 50
                stor3[stor4[mem[(32 * idx) + 128]]] = stor3[stor3.length]
                stor4[stor3[stor3.length]] = stor4[mem[(32 * idx) + 128]]
            if not stor3.length:
                revert with 0, 49
            stor3[stor3.length] = 0
            stor3.length--
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
            stor4[mem[(32 * idx) + 128]] = 0
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
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x2195122c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = 96
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 198] = ('cd', 4).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 230 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = (32 * ('cd', 4).length) + 128
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 230] = ('cd', 36).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 262 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = cd[68]
        require ext_code.size(strategyAddress)
        call strategyAddress.0x2195122c with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 128, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98
        require return_data.size >= 32
        _228 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 129
        _230 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]) + 99 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]
        require _228 + (32 * _230) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 32 * _230] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _228 + 130 len 32 * _230]
        idx = 0
        while idx < _230:
            if idx >= _230:
                revert with 0, 50
            if not stor4[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]]:
                stor3.length++
                stor3[stor3.length] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                stor4[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]] = stor3.length
            if idx >= _230:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
            mem[32] = 6
            if not stor6[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]]:
                stor5.length++
                stor5[stor5.length] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[32] = 6
                stor6[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]] = stor5.length
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!Auth O/K'
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x2195122c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = 96
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 198] = ('cd', 4).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 230 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = (32 * ('cd', 4).length) + 128
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 230] = ('cd', 36).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 262 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = cd[68]
        require ext_code.size(strategyAddress)
        call strategyAddress.0x2195122c with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 128, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98
        require return_data.size >= 32
        _229 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0
        require mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 <= test266151307()
        require ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + return_data.size + 98 > ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 129
        _231 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]) + 99 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 len 4], 0 + 98]
        require _229 + (32 * _231) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130 len 32 * _231] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + _229 + 130 len 32 * _231]
        idx = 0
        while idx < _231:
            if idx >= _231:
                revert with 0, 50
            if not stor4[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]]:
                stor3.length++
                stor3[stor3.length] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                stor4[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]] = stor3.length
            if idx >= _231:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
            mem[32] = 6
            if not stor6[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]]:
                stor5.length++
                stor5[stor5.length] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]
                mem[32] = 6
                stor6[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 130]] = stor5.length
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
                    _336 = mem[64]
                    mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                    s = 0
                    while s < 1:
                        mem[s + _336 + 43] = mem[s + _334 + 32]
                        _253 = mem[96]
                        s = s + 32
                        continue 
                    mem[_336 + 44] = 0
                    _411 = mem[64]
                    mem[mem[64]] = _336 + -mem[64] + 12
                    mem[64] = _336 + 44
                    if ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        _253 = mem[96]
                        idx = idx + 1
                        continue 
                    mem[_336 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_336 + 48] = 32
                    _432 = mem[_411]
                    mem[_336 + 80] = mem[_411]
                    idx = 0
                    while idx < _432:
                        mem[idx + _336 + 112] = mem[idx + _411 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_432) > _432:
                        mem[_336 + _432 + 112] = 0
                    revert with 0, 32, mem[_336 + 80 len ceil32(_432) + 32]
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
                        _766 = mem[_742]
                        mem[_598 + _590 + 79] = mem[_742]
                        idx = 0
                        while idx < _766:
                            mem[idx + _598 + _590 + 111] = mem[idx + _742 + 32]
                            _253 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_766) > _766:
                            mem[_598 + _590 + _766 + 111] = 0
                        revert with 0, 32, mem[_598 + _590 + 79 len ceil32(_766) + 32]
                    mem[_590 + _598 + 43] = 0
                    _751 = mem[64]
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
                    _782 = mem[_751]
                    mem[_598 + _590 + 79] = mem[_751]
                    idx = 0
                    while idx < _782:
                        mem[idx + _598 + _590 + 111] = mem[idx + _751 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_782) > _782:
                        mem[_598 + _590 + _782 + 111] = 0
                    revert with 0, 32, mem[_598 + _590 + 79 len ceil32(_782) + 32]
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
                    _743 = mem[64]
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
                    _768 = mem[_743]
                    mem[_599 + _591 + 79] = mem[_743]
                    idx = 0
                    while idx < _768:
                        mem[idx + _599 + _591 + 111] = mem[idx + _743 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_768) > _768:
                        mem[_599 + _591 + _768 + 111] = 0
                    revert with 0, 32, mem[_599 + _591 + 79 len ceil32(_768) + 32]
                mem[_591 + _599 + 43] = 0
                _753 = mem[64]
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
                _783 = mem[_753]
                mem[_599 + _591 + 79] = mem[_753]
                idx = 0
                while idx < _783:
                    mem[idx + _599 + _591 + 111] = mem[idx + _753 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_783) > _783:
                    mem[_599 + _591 + _783 + 111] = 0
                revert with 0, 32, mem[_599 + _591 + 79 len ceil32(_783) + 32]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_331] = return_data.size
            mem[_331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not idx:
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 1
                mem[_335 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _337 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                s = 0
                while s < 1:
                    mem[s + _337 + 43] = mem[s + _335 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                mem[_337 + 44] = 0
                _413 = mem[64]
                mem[mem[64]] = _337 + -mem[64] + 12
                mem[64] = _337 + 44
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_337 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_337 + 48] = 32
                _435 = mem[_413]
                mem[_337 + 80] = mem[_413]
                idx = 0
                while idx < _435:
                    mem[idx + _337 + 112] = mem[idx + _413 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_435) > _435:
                    mem[_337 + _435 + 112] = 0
                revert with 0, 32, mem[_337 + 80 len ceil32(_435) + 32]
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
                    _744 = mem[64]
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
                    _770 = mem[_744]
                    mem[_600 + _592 + 79] = mem[_744]
                    idx = 0
                    while idx < _770:
                        mem[idx + _600 + _592 + 111] = mem[idx + _744 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_770) > _770:
                        mem[_600 + _592 + _770 + 111] = 0
                    revert with 0, 32, mem[_600 + _592 + 79 len ceil32(_770) + 32]
                mem[_592 + _600 + 43] = 0
                _755 = mem[64]
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
                _784 = mem[_755]
                mem[_600 + _592 + 79] = mem[_755]
                idx = 0
                while idx < _784:
                    mem[idx + _600 + _592 + 111] = mem[idx + _755 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_784) > _784:
                    mem[_600 + _592 + _784 + 111] = 0
                revert with 0, 32, mem[_600 + _592 + 79 len ceil32(_784) + 32]
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
                _745 = mem[64]
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
                _772 = mem[_745]
                mem[_601 + _593 + 79] = mem[_745]
                idx = 0
                while idx < _772:
                    mem[idx + _601 + _593 + 111] = mem[idx + _745 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_772) > _772:
                    mem[_601 + _593 + _772 + 111] = 0
                revert with 0, 32, mem[_601 + _593 + 79 len ceil32(_772) + 32]
            mem[_593 + _601 + 43] = 0
            _757 = mem[64]
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
            _785 = mem[_757]
            mem[_601 + _593 + 79] = mem[_757]
            idx = 0
            while idx < _785:
                mem[idx + _601 + _593 + 111] = mem[idx + _757 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_785) > _785:
                mem[_601 + _593 + _785 + 111] = 0
            revert with 0, 32, mem[_601 + _593 + 79 len ceil32(_785) + 32]
        mem[_258 + _259] = 0
        call address(_255).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _259 + _258 + -mem[64] - 4]
        if not return_data.size:
            if not idx:
                _338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_338] = 1
                mem[_338 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _342 = mem[64]
                mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
                s = 0
                while s < 1:
                    mem[s + _342 + 43] = mem[s + _338 + 32]
                    _253 = mem[96]
                    s = s + 32
                    continue 
                mem[_342 + 44] = 0
                _415 = mem[64]
                mem[mem[64]] = _342 + -mem[64] + 12
                mem[64] = _342 + 44
                if ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    _253 = mem[96]
                    idx = idx + 1
                    continue 
                mem[_342 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_342 + 48] = 32
                _438 = mem[_415]
                mem[_342 + 80] = mem[_415]
                idx = 0
                while idx < _438:
                    mem[idx + _342 + 112] = mem[idx + _415 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_438) > _438:
                    mem[_342 + _438 + 112] = 0
                revert with 0, 32, mem[_342 + 80 len ceil32(_438) + 32]
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
                    _746 = mem[64]
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
                    _774 = mem[_746]
                    mem[_602 + _594 + 79] = mem[_746]
                    idx = 0
                    while idx < _774:
                        mem[idx + _602 + _594 + 111] = mem[idx + _746 + 32]
                        _253 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_774) > _774:
                        mem[_602 + _594 + _774 + 111] = 0
                    revert with 0, 32, mem[_602 + _594 + 79 len ceil32(_774) + 32]
                mem[_594 + _602 + 43] = 0
                _759 = mem[64]
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
                _786 = mem[_759]
                mem[_602 + _594 + 79] = mem[_759]
                idx = 0
                while idx < _786:
                    mem[idx + _602 + _594 + 111] = mem[idx + _759 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_786) > _786:
                    mem[_602 + _594 + _786 + 111] = 0
                revert with 0, 32, mem[_602 + _594 + 79 len ceil32(_786) + 32]
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
                _747 = mem[64]
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
                _776 = mem[_747]
                mem[_603 + _595 + 79] = mem[_747]
                idx = 0
                while idx < _776:
                    mem[idx + _603 + _595 + 111] = mem[idx + _747 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_776) > _776:
                    mem[_603 + _595 + _776 + 111] = 0
                revert with 0, 32, mem[_603 + _595 + 79 len ceil32(_776) + 32]
            mem[_595 + _603 + 43] = 0
            _761 = mem[64]
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
            _787 = mem[_761]
            mem[_603 + _595 + 79] = mem[_761]
            idx = 0
            while idx < _787:
                mem[idx + _603 + _595 + 111] = mem[idx + _761 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_787) > _787:
                mem[_603 + _595 + _787 + 111] = 0
            revert with 0, 32, mem[_603 + _595 + 79 len ceil32(_787) + 32]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_333] = return_data.size
        mem[_333 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not idx:
            _339 = mem[64]
            mem[64] = mem[64] + 64
            mem[_339] = 1
            mem[_339 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _343 = mem[64]
            mem[mem[64] + 32] = 0x43616e2774206578656320000000000000000000000000000000000000000000
            s = 0
            while s < 1:
                mem[s + _343 + 43] = mem[s + _339 + 32]
                _253 = mem[96]
                s = s + 32
                continue 
            mem[_343 + 44] = 0
            _417 = mem[64]
            mem[mem[64]] = _343 + -mem[64] + 12
            mem[64] = _343 + 44
            if ext_call.success:
                if idx == -1:
                    revert with 0, 17
                _253 = mem[96]
                idx = idx + 1
                continue 
            mem[_343 + 44] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_343 + 48] = 32
            _441 = mem[_417]
            mem[_343 + 80] = mem[_417]
            idx = 0
            while idx < _441:
                mem[idx + _343 + 112] = mem[idx + _417 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_441) > _441:
                mem[_343 + _441 + 112] = 0
            revert with 0, 32, mem[_343 + 80 len ceil32(_441) + 32]
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
                _748 = mem[64]
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
                _778 = mem[_748]
                mem[_604 + _596 + 79] = mem[_748]
                idx = 0
                while idx < _778:
                    mem[idx + _604 + _596 + 111] = mem[idx + _748 + 32]
                    _253 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_778) > _778:
                    mem[_604 + _596 + _778 + 111] = 0
                revert with 0, 32, mem[_604 + _596 + 79 len ceil32(_778) + 32]
            mem[_596 + _604 + 43] = 0
            _763 = mem[64]
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
            _788 = mem[_763]
            mem[_604 + _596 + 79] = mem[_763]
            idx = 0
            while idx < _788:
                mem[idx + _604 + _596 + 111] = mem[idx + _763 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_788) > _788:
                mem[_604 + _596 + _788 + 111] = 0
            revert with 0, 32, mem[_604 + _596 + 79 len ceil32(_788) + 32]
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
            _749 = mem[64]
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
            _780 = mem[_749]
            mem[_605 + _597 + 79] = mem[_749]
            idx = 0
            while idx < _780:
                mem[idx + _605 + _597 + 111] = mem[idx + _749 + 32]
                _253 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_780) > _780:
                mem[_605 + _597 + _780 + 111] = 0
            revert with 0, 32, mem[_605 + _597 + 79 len ceil32(_780) + 32]
        mem[_597 + _605 + 43] = 0
        _765 = mem[64]
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
        _789 = mem[_765]
        mem[_605 + _597 + 79] = mem[_765]
        idx = 0
        while idx < _789:
            mem[idx + _605 + _597 + 111] = mem[idx + _765 + 32]
            _253 = mem[96]
            idx = idx + 32
            continue 
        if ceil32(_789) > _789:
            mem[_605 + _597 + _789 + 111] = 0
        revert with 0, 32, mem[_605 + _597 + 79 len ceil32(_789) + 32]
}



}
