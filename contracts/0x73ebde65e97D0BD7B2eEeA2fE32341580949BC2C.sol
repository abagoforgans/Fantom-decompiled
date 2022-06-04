contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor2;
uint8 stor3; offset 160
address stor3;

function owner() {
    return owner
}

function sub_280b1ac9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(address(stor3.field_0))
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x35ad6158(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x35ad6158(?????):
                if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(stor3.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x57aa758e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor2 = arg1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                            require not msg.value
                            return owner
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit OwnershipTransferred(owner, 0);
                        owner = 0
            else:
                require calldata.size - 4 >= 224
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                require not uint8(stor3.field_160)
                require not stor2
                mem[128] = 2
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[260] = 128
                mem[356] = 2
                idx = 0
                s = 160
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = this.address
                mem[324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 1 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[228] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 228] = address(stor3.field_0)
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                require ext_code.size(address(arg3))
                staticcall address(arg3).0xa9059cbb with:
                        gas gas_remaining wei
                       args address(stor3.field_0), ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while idx < arg5:
                    _150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_150] = 26
                    mem[_150 + 32] = 'SafeMath: division by zero'
                    if not arg5:
                        _154 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _154 + 68] = mem[idx + _150 + 32]
                            idx = idx + 32
                            continue 
                        mem[_154 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _154 + -mem[64] + 100
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = address(stor3.field_0)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg7 / arg5 wei
                         gas gas_remaining wei
                        args arg6, 128, address(stor3.field_0), block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _153 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_153] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 25:
                        require mem[_153] >= 0
                    else:
                        if arg5 * arg6 / 25 and 100 > -1 / arg5 * arg6 / 25:
                            revert with 0, 17
                        if not arg5 * arg6 / 25:
                            revert with 0, 18
                        if 100 * arg5 * arg6 / 25 / arg5 * arg6 / 25 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_153] >= 100 * arg5 * arg6 / 25
                stor2 = 1
        else:
            if lockXJK() == uint32(call.func_hash) >> 224:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint8(stor3.field_160) = 1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x12feb19b(?????):
                    if unknown_0x1efc0bbb(?????) == uint32(call.func_hash) >> 224:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        uint8(stor3.field_160) = 0
                    if uint32(call.func_hash) >> 224 != unknown_0x280b1ac9(?????):
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    selfdestruct(address(stor3.field_0))
                require calldata.size - 4 >= 224
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg4 == address(arg4)
                require not uint8(stor3.field_160)
                require not stor2
                mem[128] = 2
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[260] = 128
                mem[356] = 2
                idx = 0
                s = 160
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = this.address
                mem[324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 1 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[228] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 228] = address(stor3.field_0)
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                require ext_code.size(address(arg3))
                staticcall address(arg3).0xa9059cbb with:
                        gas gas_remaining wei
                       args address(stor3.field_0), ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while idx < arg5:
                    mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = 160
                    u = mem[64] + 164
                    while s < mem[128]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg7 wei
                         gas gas_remaining wei
                        args arg6, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _191 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _192 = mem[_191]
                    require mem[_191] <= test266151307()
                    require _191 + mem[_191] + 31 < _191 + return_data.size
                    _193 = mem[_191 + mem[_191]]
                    if mem[_191 + mem[_191]] > test266151307():
                        revert with 0, 65
                    if _191 + ceil32(return_data.size) + ceil32(32 * mem[_191 + mem[_191]]) + 1 > test266151307() or ceil32(32 * mem[_191 + mem[_191]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _191 + ceil32(return_data.size) + ceil32(32 * mem[_191 + mem[_191]]) + 1
                    mem[_191 + ceil32(return_data.size)] = _193
                    require return_data.size >= _192 + (32 * _193) + 32
                    t = _191 + _192 + 32
                    u = _191 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _193:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = address(arg4)
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg4)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg5:
                    require mem[_151] >= 0
                else:
                    if arg5 and arg6 > -1 / arg5:
                        revert with 0, 17
                    if not arg5:
                        revert with 0, 18
                    if arg5 * arg6 / arg5 != arg6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg5 * arg6 / 25:
                        require mem[_151] >= 0
                    else:
                        if arg5 * arg6 / 25 and 100 > -1 / arg5 * arg6 / 25:
                            revert with 0, 17
                        if not arg5 * arg6 / 25:
                            revert with 0, 18
                        if 100 * arg5 * arg6 / 25 / arg5 * arg6 / 25 != 100:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require mem[_151] >= 100 * arg5 * arg6 / 25
                stor2 = 1
}

function lockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 1
}

function unlockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCounterABDX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(stor3.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_35ad6158(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 1 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[196] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196] = address(stor3.field_0)
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xa9059cbb with:
            gas gas_remaining wei
           args address(stor3.field_0), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg5:
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 26
        mem[_68 + 32] = 'SafeMath: division by zero'
        if not arg5:
            _70 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _70 + 68] = mem[idx + _68 + 32]
                idx = idx + 32
                continue 
            mem[_70 + 94] = 0
            revert with memory
              from mem[64]
               len _70 + -mem[64] + 100
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = address(stor3.field_0)
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg7 / arg5 wei
             gas gas_remaining wei
            args arg6, 128, address(stor3.field_0), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = address(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not arg5:
        require mem[_69] >= 0
    else:
        if arg5 and arg6 > -1 / arg5:
            revert with 0, 17
        if not arg5:
            revert with 0, 18
        if arg5 * arg6 / arg5 != arg6:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg5 * arg6 / 25:
            require mem[_69] >= 0
        else:
            if arg5 * arg6 / 25 and 100 > -1 / arg5 * arg6 / 25:
                revert with 0, 17
            if not arg5 * arg6 / 25:
                revert with 0, 18
            if 100 * arg5 * arg6 / 25 / arg5 * arg6 / 25 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            require mem[_69] >= 100 * arg5 * arg6 / 25
    stor2 = 1
}

function sub_12feb19b(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp
    require ext_code.size(address(arg1))
    call address(arg1).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value 1 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[196] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196] = address(stor3.field_0)
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xa9059cbb with:
            gas gas_remaining wei
           args address(stor3.field_0), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg5:
        _66 = mem[64]
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = 128
        _68 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 164
        while s < _68:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_66 + 68] = address(arg4)
        mem[_66 + 100] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
           value arg7 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _66 + (32 * _68) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _86 = mem[_85]
        require mem[_85] <= test266151307()
        require _85 + mem[_85] + 31 < _85 + return_data.size
        _87 = mem[_85 + mem[_85]]
        if mem[_85 + mem[_85]] > test266151307():
            revert with 0, 65
        if _85 + ceil32(return_data.size) + ceil32(32 * mem[_85 + mem[_85]]) + 1 > test266151307() or ceil32(32 * mem[_85 + mem[_85]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _85 + ceil32(return_data.size) + ceil32(32 * mem[_85 + mem[_85]]) + 1
        mem[_85 + ceil32(return_data.size)] = _87
        require return_data.size >= _86 + (32 * _87) + 32
        t = _85 + _86 + 32
        u = _85 + ceil32(return_data.size) + 32
        s = 0
        while s < _87:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = address(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(arg4)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _67 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not arg5:
        require mem[_67] >= 0
    else:
        if arg5 and arg6 > -1 / arg5:
            revert with 0, 17
        if not arg5:
            revert with 0, 18
        if arg5 * arg6 / arg5 != arg6:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg5 * arg6 / 25:
            require mem[_67] >= 0
        else:
            if arg5 * arg6 / 25 and 100 > -1 / arg5 * arg6 / 25:
                revert with 0, 17
            if not arg5 * arg6 / 25:
                revert with 0, 18
            if 100 * arg5 * arg6 / 25 / arg5 * arg6 / 25 != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            require mem[_67] >= 100 * arg5 * arg6 / 25
    stor2 = 1
}



}
