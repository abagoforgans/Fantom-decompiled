contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function test(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        require ext_code.size(stor3[idx])
        staticcall stor3[idx].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _48 = mem[_47]
        require mem[_47] == mem[_47 + 12 len 20]
        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64] + 36] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        require ext_code.size(address(_48))
        staticcall address(_48).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55 + 12 len 20]
        require ext_code.size(mem[_55 + 12 len 20])
        staticcall mem[_55 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_60] == mem[_60 + 18 len 14]
        require mem[_60 + 32] == mem[_60 + 50 len 14]
        require mem[_60 + 64] == mem[_60 + 92 len 4]
        if not arg1:
            require mem[_60 + 50 len 14]
            require mem[_60 + 50 len 14]
            if 1000 * mem[_60 + 50 len 14] / mem[_60 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * mem[_60 + 50 len 14] < 1000 * mem[_60 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * mem[_60 + 50 len 14]
            if 0 / 1000 * mem[_60 + 50 len 14] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / 1000 * mem[_60 + 50 len 14]
            continue 
        require arg1
        if 997 * arg1 / arg1 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 997 * arg1:
            if not mem[_60 + 50 len 14]:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require 997 * arg1
                if 0 / 997 * arg1 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / 997 * arg1
                continue 
            require mem[_60 + 50 len 14]
            if 1000 * mem[_60 + 50 len 14] / mem[_60 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_60 + 50 len 14]) + (997 * arg1) < 1000 * mem[_60 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_60 + 50 len 14]) + (997 * arg1)
            if 0 / (1000 * mem[_60 + 50 len 14]) + (997 * arg1) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / (1000 * mem[_60 + 50 len 14]) + (997 * arg1)
            continue 
        require 997 * arg1
        if 997 * arg1 * mem[_60 + 18 len 14] / 997 * arg1 != mem[_60 + 18 len 14]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_60 + 50 len 14]:
            if 997 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require 997 * arg1
            if 997 * arg1 * mem[_60 + 18 len 14] / 997 * arg1 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 997 * arg1 * mem[_60 + 18 len 14] / 997 * arg1
            continue 
        require mem[_60 + 50 len 14]
        if 1000 * mem[_60 + 50 len 14] / mem[_60 + 50 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (1000 * mem[_60 + 50 len 14]) + (997 * arg1) < 1000 * mem[_60 + 50 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        require (1000 * mem[_60 + 50 len 14]) + (997 * arg1)
        if 997 * arg1 * mem[_60 + 18 len 14] / (1000 * mem[_60 + 50 len 14]) + (997 * arg1) <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 997 * arg1 * mem[_60 + 18 len 14] / (1000 * mem[_60 + 50 len 14]) + (997 * arg1)
        continue 
    require 0 < stor3.length
    mem[0] = 3
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_50] == bool(mem[_50])
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = s
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_61] == bool(mem[_61])
    if not mem[_61]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _70 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _71 = mem[_70]
    require mem[_70] == mem[_70]
    if mem[_70]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _71
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _71
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_94] == bool(mem[_94])
        if not mem[_94]:
            revert with 0, 'ERR_TRANSFER_FAILED'
}

function sub_3925bc05(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        require ext_code.size(stor3[idx])
        staticcall stor3[idx].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _48 = mem[_47]
        require mem[_47] == mem[_47 + 12 len 20]
        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64] + 36] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        require ext_code.size(address(_48))
        staticcall address(_48).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_59] == mem[_59 + 12 len 20]
        require ext_code.size(mem[_59 + 12 len 20])
        staticcall mem[_59 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_65] == mem[_65 + 18 len 14]
        require mem[_65 + 32] == mem[_65 + 50 len 14]
        require mem[_65 + 64] == mem[_65 + 92 len 4]
        if not arg1:
            require mem[_65 + 50 len 14]
            require mem[_65 + 50 len 14]
            if 1000 * mem[_65 + 50 len 14] / mem[_65 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * mem[_65 + 50 len 14] < 1000 * mem[_65 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * mem[_65 + 50 len 14]
            if 0 / 1000 * mem[_65 + 50 len 14] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / 1000 * mem[_65 + 50 len 14]
            continue 
        require arg1
        if 997 * arg1 / arg1 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 997 * arg1:
            if not mem[_65 + 50 len 14]:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require 997 * arg1
                if 0 / 997 * arg1 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / 997 * arg1
                continue 
            require mem[_65 + 50 len 14]
            if 1000 * mem[_65 + 50 len 14] / mem[_65 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_65 + 50 len 14]) + (997 * arg1) < 1000 * mem[_65 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_65 + 50 len 14]) + (997 * arg1)
            if 0 / (1000 * mem[_65 + 50 len 14]) + (997 * arg1) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / (1000 * mem[_65 + 50 len 14]) + (997 * arg1)
            continue 
        require 997 * arg1
        if 997 * arg1 * mem[_65 + 18 len 14] / 997 * arg1 != mem[_65 + 18 len 14]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_65 + 50 len 14]:
            if 997 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require 997 * arg1
            if 997 * arg1 * mem[_65 + 18 len 14] / 997 * arg1 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 997 * arg1 * mem[_65 + 18 len 14] / 997 * arg1
            continue 
        require mem[_65 + 50 len 14]
        if 1000 * mem[_65 + 50 len 14] / mem[_65 + 50 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (1000 * mem[_65 + 50 len 14]) + (997 * arg1) < 1000 * mem[_65 + 50 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        require (1000 * mem[_65 + 50 len 14]) + (997 * arg1)
        if 997 * arg1 * mem[_65 + 18 len 14] / (1000 * mem[_65 + 50 len 14]) + (997 * arg1) <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 997 * arg1 * mem[_65 + 18 len 14] / (1000 * mem[_65 + 50 len 14]) + (997 * arg1)
        continue 
    require 0 < stor3.length
    mem[0] = 3
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_50] == bool(mem[_50])
    require 0 < stor3.length
    mem[0] = 3
    _54 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_54]
    mem[_54 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require 1 < mem[_54]
    mem[_54 + 64] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[_54 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_54 + 100] = arg1
    mem[_54 + 132] = 0
    mem[_54 + 164] = 160
    mem[_54 + 260] = mem[_54]
    idx = 0
    s = _54 + 32
    t = _54 + 292
    while idx < mem[_54]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_54 + 196] = this.address
    mem[_54 + 228] = block.timestamp
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _54 + (32 * mem[_54]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _133 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _134 = mem[_133]
    require mem[_133] <= test266151307()
    require _133 + mem[_133] + 31 < _133 + return_data.size
    _135 = mem[_133 + mem[_133]]
    require mem[_133 + mem[_133]] <= test266151307()
    require _133 + ceil32(return_data.size) + (32 * mem[_133 + mem[_133]]) + 32 <= test266151307() and (32 * mem[_133 + mem[_133]]) + 32 >= 0
    mem[64] = _133 + ceil32(return_data.size) + (32 * mem[_133 + mem[_133]]) + 32
    mem[_133 + ceil32(return_data.size)] = _135
    require _134 + (32 * _135) + 32 <= return_data.size
    idx = 0
    s = _133 + _134 + 32
    t = _133 + ceil32(return_data.size) + 32
    while idx < _135:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < _135
    _176 = mem[_133 + ceil32(return_data.size) + 64]
    if not mem[_133 + ceil32(return_data.size) + 64]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _182 = mem[_180]
        require mem[_180] == mem[_180]
        if mem[_180]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _182
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _182
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_194] == bool(mem[_194])
            if not mem[_194]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _176
        require ext_code.size(0x49d68029688eabf473097a2fc38ef61633a3c7a)
        call 0x049d68029688eabf473097a2fc38ef61633a3c7a.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _176
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_183] == bool(mem[_183])
        if not mem[_183]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_192]
        require mem[_192] == mem[_192]
        if mem[_192]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _195
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _195
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_205] == bool(mem[_205])
            if not mem[_205]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    return _176
}



}
