contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function doFlashloan(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.flashLoan(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, 96, 64, address(this.address), 1234
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg3:
        mem[96] = 1
        mem[128] = '0'
        mem[164] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '0'
        s = 0
        idx = ext_call.return_data[0]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s
            idx = ext_call.return_data[0]
            while idx:
                require t - 1 < mem[160]
                mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[160]
            _72 = mem[160]
            mem[mem[64] + 68 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if not _72 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _72 + 32]
            mem[floor32(_72) + mem[64] + 68] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 100 len _72 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_72) + 64]
        mem[192 len s] = code.data[2308 len s]
        t = s
        idx = ext_call.return_data[0]
        while idx:
            require t - 1 < mem[160]
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _73 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[160]
        _75 = mem[160]
        mem[mem[64] + 68 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if not _75 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _75 + 32]
        mem[floor32(_75) + mem[64] + 68] = mem[floor32(_75) + mem[64] + -(_75 % 32) + 100 len _75 % 32]
        revert with memory
          from mem[64]
           len floor32(_75) + _73 + -mem[64] + 100
    s = 0
    idx = arg3
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg3
        while idx:
            require t - 1 < mem[96]
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '0'
        s = 0
        idx = ext_call.return_data[0]
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        _104 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = ext_call.return_data[0]
            while idx:
                require t - 1 < mem[_104]
                mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _158 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_104]
            _160 = mem[_104]
            mem[mem[64] + 68 len ceil32(mem[_104])] = mem[_104 + 32 len ceil32(mem[_104])]
            if not _160 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _160 + 32]
            mem[floor32(_160) + mem[64] + 68] = mem[floor32(_160) + mem[64] + -(_160 % 32) + 100 len _160 % 32]
            revert with memory
              from mem[64]
               len floor32(_160) + _158 + -mem[64] + 100
        mem[_104 + 32 len s] = code.data[2308 len s]
        t = s
        idx = ext_call.return_data[0]
        while idx:
            require t - 1 < mem[_104]
            mem[t + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_104]
        _163 = mem[_104]
        mem[mem[64] + 68 len ceil32(mem[_104])] = mem[_104 + 32 len ceil32(mem[_104])]
        if not _163 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _163 + 32]
        mem[floor32(_163) + mem[64] + 68] = mem[floor32(_163) + mem[64] + -(_163 % 32) + 100 len _163 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_163) + 64]
    mem[128 len s] = code.data[2308 len s]
    t = s
    idx = arg3
    while idx:
        require t - 1 < mem[96]
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '0'
    s = 0
    idx = ext_call.return_data[0]
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    _106 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = ext_call.return_data[0]
        while idx:
            require t - 1 < mem[_106]
            mem[t + _106 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_106]
        _166 = mem[_106]
        mem[mem[64] + 68 len ceil32(mem[_106])] = mem[_106 + 32 len ceil32(mem[_106])]
        if not _166 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _166 + 32]
        mem[floor32(_166) + mem[64] + 68] = mem[floor32(_166) + mem[64] + -(_166 % 32) + 100 len _166 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_166) + 64]
    mem[_106 + 32 len s] = code.data[2308 len s]
    t = s
    idx = ext_call.return_data[0]
    while idx:
        require t - 1 < mem[_106]
        mem[t + _106 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _167 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_106]
    _169 = mem[_106]
    mem[mem[64] + 68 len ceil32(mem[_106])] = mem[_106 + 32 len ceil32(mem[_106])]
    if not _169 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _169 + 32]
    mem[floor32(_169) + mem[64] + 68] = mem[floor32(_169) + mem[64] + -(_169 % 32) + 100 len _169 % 32]
    revert with memory
      from mem[64]
       len floor32(_169) + _167 + -mem[64] + 100
}



}
