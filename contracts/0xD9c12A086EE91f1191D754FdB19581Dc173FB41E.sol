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

function sub_2da716b4(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(arg2) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8fbb7722(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        if arg2 == 1:
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ERR_TRANSFER_FAILED'
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
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_119]
            require mem[_119] == mem[_119 + 12 len 20]
            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
            mem[mem[64] + 36] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            require ext_code.size(address(_121))
            staticcall address(_121).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_143] == mem[_143 + 12 len 20]
            require ext_code.size(mem[_143 + 12 len 20])
            staticcall mem[_143 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_155] == mem[_155 + 18 len 14]
            require mem[_155 + 32] == mem[_155 + 50 len 14]
            require mem[_155 + 64] == mem[_155 + 92 len 4]
            if not arg1:
                require mem[_155 + 50 len 14]
                require mem[_155 + 50 len 14]
                if 1000 * mem[_155 + 50 len 14] / mem[_155 + 50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 1000 * mem[_155 + 50 len 14] < 1000 * mem[_155 + 50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 1000 * mem[_155 + 50 len 14]
                if 0 / 1000 * mem[_155 + 50 len 14] <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / 1000 * mem[_155 + 50 len 14]
                continue 
            require arg1
            if 997 * arg1 / arg1 != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 997 * arg1:
                if not mem[_155 + 50 len 14]:
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
                require mem[_155 + 50 len 14]
                if 1000 * mem[_155 + 50 len 14] / mem[_155 + 50 len 14] != 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (1000 * mem[_155 + 50 len 14]) + (997 * arg1) < 1000 * mem[_155 + 50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require (1000 * mem[_155 + 50 len 14]) + (997 * arg1)
                if 0 / (1000 * mem[_155 + 50 len 14]) + (997 * arg1) <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 0 / (1000 * mem[_155 + 50 len 14]) + (997 * arg1)
                continue 
            require 997 * arg1
            if 997 * arg1 * mem[_155 + 18 len 14] / 997 * arg1 != mem[_155 + 18 len 14]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_155 + 50 len 14]:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require 997 * arg1
                if 997 * arg1 * mem[_155 + 18 len 14] / 997 * arg1 <= s:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 997 * arg1 * mem[_155 + 18 len 14] / 997 * arg1
                continue 
            require mem[_155 + 50 len 14]
            if 1000 * mem[_155 + 50 len 14] / mem[_155 + 50 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_155 + 50 len 14]) + (997 * arg1) < 1000 * mem[_155 + 50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_155 + 50 len 14]) + (997 * arg1)
            if 997 * arg1 * mem[_155 + 18 len 14] / (1000 * mem[_155 + 50 len 14]) + (997 * arg1) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 997 * arg1 * mem[_155 + 18 len 14] / (1000 * mem[_155 + 50 len 14]) + (997 * arg1)
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
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_125] == bool(mem[_125])
        require 0 < stor3.length
        mem[0] = 3
        _133 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_133]
        mem[_133 + 32] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        require 1 < mem[_133]
        mem[_133 + 64] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[_133 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_133 + 100] = arg1
        mem[_133 + 132] = 0
        mem[_133 + 164] = 160
        mem[_133 + 260] = mem[_133]
        idx = 0
        s = _133 + 32
        t = _133 + 292
        while idx < mem[_133]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_133 + 196] = this.address
        mem[_133 + 228] = block.timestamp
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _133 + (32 * mem[_133]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _293 = mem[_291]
        require mem[_291] <= test266151307()
        require _291 + mem[_291] + 31 < _291 + return_data.size
        _295 = mem[_291 + mem[_291]]
        require mem[_291 + mem[_291]] <= test266151307()
        require _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32 <= test266151307() and (32 * mem[_291 + mem[_291]]) + 32 >= 0
        mem[64] = _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32
        mem[_291 + ceil32(return_data.size)] = _295
        require _293 + (32 * _295) + 32 <= return_data.size
        idx = 0
        s = _291 + _293 + 32
        t = _291 + ceil32(return_data.size) + 32
        while idx < _295:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 1 < _295
        _377 = mem[_291 + ceil32(return_data.size) + 64]
        if not mem[_291 + ceil32(return_data.size) + 64]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _388 = mem[_385]
            require mem[_385] == mem[_385]
            if mem[_385]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _388
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, _388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_413] == bool(mem[_413])
                if not mem[_413]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _377
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _377
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_391] == bool(mem[_391])
            if not mem[_391]:
                revert with 0, 'ERR_TRANSFER_FAILED'
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _415 = mem[_409]
            require mem[_409] == mem[_409]
            if mem[_409]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _415
                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, _415
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_435] == bool(mem[_435])
                if not mem[_435]:
                    revert with 0, 'ERR_TRANSFER_FAILED'
        return _377
    if arg2 != 1:
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERR_TRANSFER_FAILED'
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
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transferFrom(address rg1, address rg2, uint256 rg3) with:
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
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _122 = mem[_120]
        require mem[_120] == mem[_120 + 12 len 20]
        mem[mem[64] + 4] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[mem[64] + 36] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        require ext_code.size(address(_122))
        staticcall address(_122).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == mem[_144 + 12 len 20]
        require ext_code.size(mem[_144 + 12 len 20])
        staticcall mem[_144 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_156] == mem[_156 + 18 len 14]
        require mem[_156 + 32] == mem[_156 + 50 len 14]
        require mem[_156 + 64] == mem[_156 + 92 len 4]
        if not arg1:
            require mem[_156 + 18 len 14]
            require mem[_156 + 18 len 14]
            if 1000 * mem[_156 + 18 len 14] / mem[_156 + 18 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 1000 * mem[_156 + 18 len 14] < 1000 * mem[_156 + 18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * mem[_156 + 18 len 14]
            if 0 / 1000 * mem[_156 + 18 len 14] <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / 1000 * mem[_156 + 18 len 14]
            continue 
        require arg1
        if 997 * arg1 / arg1 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 997 * arg1:
            if not mem[_156 + 18 len 14]:
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
            require mem[_156 + 18 len 14]
            if 1000 * mem[_156 + 18 len 14] / mem[_156 + 18 len 14] != 1000:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000 * mem[_156 + 18 len 14]) + (997 * arg1) < 1000 * mem[_156 + 18 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (1000 * mem[_156 + 18 len 14]) + (997 * arg1)
            if 0 / (1000 * mem[_156 + 18 len 14]) + (997 * arg1) <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0 / (1000 * mem[_156 + 18 len 14]) + (997 * arg1)
            continue 
        require 997 * arg1
        if 997 * arg1 * mem[_156 + 50 len 14] / 997 * arg1 != mem[_156 + 50 len 14]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_156 + 18 len 14]:
            if 997 * arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require 997 * arg1
            if 997 * arg1 * mem[_156 + 50 len 14] / 997 * arg1 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 997 * arg1 * mem[_156 + 50 len 14] / 997 * arg1
            continue 
        require mem[_156 + 18 len 14]
        if 1000 * mem[_156 + 18 len 14] / mem[_156 + 18 len 14] != 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        if (1000 * mem[_156 + 18 len 14]) + (997 * arg1) < 1000 * mem[_156 + 18 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        require (1000 * mem[_156 + 18 len 14]) + (997 * arg1)
        if 997 * arg1 * mem[_156 + 50 len 14] / (1000 * mem[_156 + 18 len 14]) + (997 * arg1) <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 997 * arg1 * mem[_156 + 50 len 14] / (1000 * mem[_156 + 18 len 14]) + (997 * arg1)
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
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_126] == bool(mem[_126])
    require 0 < stor3.length
    mem[0] = 3
    _134 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_134]
    mem[_134 + 32] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    require 1 < mem[_134]
    mem[_134 + 64] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[_134 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_134 + 100] = arg1
    mem[_134 + 132] = 0
    mem[_134 + 164] = 160
    mem[_134 + 260] = mem[_134]
    idx = 0
    s = _134 + 32
    t = _134 + 292
    while idx < mem[_134]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_134 + 196] = this.address
    mem[_134 + 228] = block.timestamp
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _134 + (32 * mem[_134]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _292 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _294 = mem[_292]
    require mem[_292] <= test266151307()
    require _292 + mem[_292] + 31 < _292 + return_data.size
    _296 = mem[_292 + mem[_292]]
    require mem[_292 + mem[_292]] <= test266151307()
    require _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32 <= test266151307() and (32 * mem[_292 + mem[_292]]) + 32 >= 0
    mem[64] = _292 + ceil32(return_data.size) + (32 * mem[_292 + mem[_292]]) + 32
    mem[_292 + ceil32(return_data.size)] = _296
    require _294 + (32 * _296) + 32 <= return_data.size
    idx = 0
    s = _292 + _294 + 32
    t = _292 + ceil32(return_data.size) + 32
    while idx < _296:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < _296
    _378 = mem[_292 + ceil32(return_data.size) + 64]
    if not mem[_292 + ceil32(return_data.size) + 64]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_386]
        require mem[_386] == mem[_386]
        if mem[_386]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _390
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _390
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_414] == bool(mem[_414])
            if not mem[_414]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _378
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _378
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_392] == bool(mem[_392])
        if not mem[_392]:
            revert with 0, 'ERR_TRANSFER_FAILED'
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _411 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _416 = mem[_411]
        require mem[_411] == mem[_411]
        if mem[_411]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _416
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _416
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_436] == bool(mem[_436])
            if not mem[_436]:
                revert with 0, 'ERR_TRANSFER_FAILED'
    return _378
}



}
