contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor3;
array of uint256 stor4;

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

function sub_8fbb7722(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        if arg2 == 1:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_TRANSFER_FAILED'
            require 0 < stor3.length
            require 0 < stor4.length
            require 0 < stor3.length
            require ext_code.size(stor3)
            staticcall stor3.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = arg1
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x23b872dd with:
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
            require idx < stor4.length
            require idx < stor3.length
            mem[0] = 3
            require ext_code.size(stor3[idx])
            staticcall stor3[idx].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _127 = mem[_125]
            require mem[_125] == mem[_125 + 12 len 20]
            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[mem[64] + 36] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            require ext_code.size(address(_127))
            staticcall address(_127).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_149] == mem[_149 + 12 len 20]
            require ext_code.size(mem[_149 + 12 len 20])
            staticcall mem[_149 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_161] == mem[_161 + 18 len 14]
            require mem[_161 + 32] == mem[_161 + 50 len 14]
            require mem[_161 + 64] == mem[_161 + 92 len 4]
            if not arg1:
                require mem[_161 + 50 len 14]
                require mem[_161 + 50 len 14]
                if 1000 * mem[_161 + 50 len 14] / mem[_161 + 50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 1000 * mem[_161 + 50 len 14] < 1000 * mem[_161 + 50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 1000 * mem[_161 + 50 len 14]
                if 0 / 1000 * mem[_161 + 50 len 14] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / 1000 * mem[_161 + 50 len 14]
                continue 
            require arg1
            if arg1 * stor4[idx] / arg1 != stor4[idx]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor4[idx]:
                if not mem[_161 + 50 len 14]:
                    if arg1 * stor4[idx] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require arg1 * stor4[idx]
                    if 0 / arg1 * stor4[idx] <= s:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 0 / arg1 * stor4[idx]
                    continue 
                require mem[_161 + 50 len 14]
                if 1000 * mem[_161 + 50 len 14] / mem[_161 + 50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx]) < 1000 * mem[_161 + 50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx])
                if 0 / (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx]) <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx])
                continue 
            require arg1 * stor4[idx]
            if arg1 * stor4[idx] * mem[_161 + 18 len 14] / arg1 * stor4[idx] != mem[_161 + 18 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_161 + 50 len 14]:
                if arg1 * stor4[idx] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 * stor4[idx]
                if arg1 * stor4[idx] * mem[_161 + 18 len 14] / arg1 * stor4[idx] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = arg1 * stor4[idx] * mem[_161 + 18 len 14] / arg1 * stor4[idx]
                continue 
            require mem[_161 + 50 len 14]
            if 1000 * mem[_161 + 50 len 14] / mem[_161 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx]) < 1000 * mem[_161 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx])
            if arg1 * stor4[idx] * mem[_161 + 18 len 14] / (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx]) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = arg1 * stor4[idx] * mem[_161 + 18 len 14] / (1000 * mem[_161 + 50 len 14]) + (arg1 * stor4[idx])
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
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_131] == bool(mem[_131])
        require 0 < stor3.length
        mem[0] = 3
        _139 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_139]
        mem[_139 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        require 1 < mem[_139]
        mem[_139 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[_139 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_139 + 100] = arg1
        mem[_139 + 132] = 0
        mem[_139 + 164] = 160
        mem[_139 + 260] = mem[_139]
        idx = 0
        s = _139 + 32
        t = _139 + 292
        while idx < mem[_139]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_139 + 196] = this.address
        mem[_139 + 228] = block.timestamp
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _139 + (32 * mem[_139]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _299 = mem[_297]
        require mem[_297] <= test266151307()
        require _297 + mem[_297] + 31 < _297 + return_data.size
        _301 = mem[_297 + mem[_297]]
        require mem[_297 + mem[_297]] <= test266151307()
        require _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32 <= test266151307() and (32 * mem[_297 + mem[_297]]) + 32 >= 0
        mem[64] = _297 + ceil32(return_data.size) + (32 * mem[_297 + mem[_297]]) + 32
        mem[_297 + ceil32(return_data.size)] = _301
        require _299 + (32 * _301) + 32 <= return_data.size
        idx = 0
        s = _297 + _299 + 32
        t = _297 + ceil32(return_data.size) + 32
        while idx < _301:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 1 < _301
        _383 = mem[_297 + ceil32(return_data.size) + 64]
        if not mem[_297 + ceil32(return_data.size) + 64]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_391]
            require mem[_391] == mem[_391]
            if mem[_391]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _394
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _394
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == bool(mem[_419])
                if not mem[_419]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _383
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _383
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_397] == bool(mem[_397])
            if not mem[_397]:
                revert with 0, 'ERR_TRANSFER_FAILED'
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _415 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _421 = mem[_415]
            require mem[_415] == mem[_415]
            if mem[_415]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _421
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _421
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_441] == bool(mem[_441])
                if not mem[_441]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
        return _383
    if arg2 != 1:
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        require 0 < stor3.length
        require 0 < stor4.length
        require 0 < stor3.length
        require ext_code.size(stor3)
        staticcall stor3.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        revert with 0, 'PancakeLibrary: IDENTICAL_ADDRESSES'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x23b872dd with:
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
        require idx < stor4.length
        require idx < stor3.length
        mem[0] = 3
        require ext_code.size(stor3[idx])
        staticcall stor3[idx].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_126]
        require mem[_126] == mem[_126 + 12 len 20]
        mem[mem[64] + 4] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        require ext_code.size(address(_128))
        staticcall address(_128).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_150] == mem[_150 + 12 len 20]
        require ext_code.size(mem[_150 + 12 len 20])
        staticcall mem[_150 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_162] == mem[_162 + 18 len 14]
        require mem[_162 + 32] == mem[_162 + 50 len 14]
        require mem[_162 + 64] == mem[_162 + 92 len 4]
        if not arg1:
            require mem[_162 + 18 len 14]
            require mem[_162 + 18 len 14]
            if 1000 * mem[_162 + 18 len 14] / mem[_162 + 18 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * mem[_162 + 18 len 14] < 1000 * mem[_162 + 18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * mem[_162 + 18 len 14]
            if 0 / 1000 * mem[_162 + 18 len 14] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / 1000 * mem[_162 + 18 len 14]
            continue 
        require arg1
        if arg1 * stor4[idx] / arg1 != stor4[idx]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * stor4[idx]:
            if not mem[_162 + 18 len 14]:
                if arg1 * stor4[idx] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 * stor4[idx]
                if 0 / arg1 * stor4[idx] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / arg1 * stor4[idx]
                continue 
            require mem[_162 + 18 len 14]
            if 1000 * mem[_162 + 18 len 14] / mem[_162 + 18 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx]) < 1000 * mem[_162 + 18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx])
            if 0 / (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx]) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx])
            continue 
        require arg1 * stor4[idx]
        if arg1 * stor4[idx] * mem[_162 + 50 len 14] / arg1 * stor4[idx] != mem[_162 + 50 len 14]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_162 + 18 len 14]:
            if arg1 * stor4[idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 * stor4[idx]
            if arg1 * stor4[idx] * mem[_162 + 50 len 14] / arg1 * stor4[idx] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = arg1 * stor4[idx] * mem[_162 + 50 len 14] / arg1 * stor4[idx]
            continue 
        require mem[_162 + 18 len 14]
        if 1000 * mem[_162 + 18 len 14] / mem[_162 + 18 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx]) < 1000 * mem[_162 + 18 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        require (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx])
        if arg1 * stor4[idx] * mem[_162 + 50 len 14] / (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx]) <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = arg1 * stor4[idx] * mem[_162 + 50 len 14] / (1000 * mem[_162 + 18 len 14]) + (arg1 * stor4[idx])
        continue 
    require 0 < stor3.length
    mem[0] = 3
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_132] == bool(mem[_132])
    require 0 < stor3.length
    mem[0] = 3
    _140 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_140]
    mem[_140 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    require 1 < mem[_140]
    mem[_140 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[_140 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_140 + 100] = arg1
    mem[_140 + 132] = 0
    mem[_140 + 164] = 160
    mem[_140 + 260] = mem[_140]
    idx = 0
    s = _140 + 32
    t = _140 + 292
    while idx < mem[_140]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_140 + 196] = this.address
    mem[_140 + 228] = block.timestamp
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _140 + (32 * mem[_140]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _298 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _300 = mem[_298]
    require mem[_298] <= test266151307()
    require _298 + mem[_298] + 31 < _298 + return_data.size
    _302 = mem[_298 + mem[_298]]
    require mem[_298 + mem[_298]] <= test266151307()
    require _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32 <= test266151307() and (32 * mem[_298 + mem[_298]]) + 32 >= 0
    mem[64] = _298 + ceil32(return_data.size) + (32 * mem[_298 + mem[_298]]) + 32
    mem[_298 + ceil32(return_data.size)] = _302
    require _300 + (32 * _302) + 32 <= return_data.size
    idx = 0
    s = _298 + _300 + 32
    t = _298 + ceil32(return_data.size) + 32
    while idx < _302:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < _302
    _384 = mem[_298 + ceil32(return_data.size) + 64]
    if not mem[_298 + ceil32(return_data.size) + 64]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_392]
        require mem[_392] == mem[_392]
        if mem[_392]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _396
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _396
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_420] == bool(mem[_420])
            if not mem[_420]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _384
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _384
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _398 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_398] == bool(mem[_398])
        if not mem[_398]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _417 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _422 = mem[_417]
        require mem[_417] == mem[_417]
        if mem[_417]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _422
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _422
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_442] == bool(mem[_442])
            if not mem[_442]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    return _384
}



}
