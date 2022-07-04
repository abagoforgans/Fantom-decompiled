contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_b3cd4f57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = idx
            require ext_code.size(stor0)
            staticcall stor0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _75 = mem[_72]
            require mem[_72] == mem[_72]
            require ext_code.size(stor0)
            staticcall stor0.items(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_72]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _94 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require mem[_90] == mem[_90 + 31 len 1]
            mem[_94] = mem[_90]
            require mem[_90 + 32] == mem[_90 + 63 len 1]
            mem[_94 + 32] = mem[_90 + 32]
            require mem[_90 + 64] == mem[_90 + 92 len 4]
            mem[_94 + 64] = mem[_90 + 64]
            require mem[_90 + 96] == mem[_90 + 96]
            mem[_94 + 96] = mem[_90 + 96]
            _104 = mem[64]
            mem[64] = mem[64] + 160
            mem[_104 + 32] = 0
            mem[_104 + 64] = 0
            mem[_104 + 96] = 0
            mem[_104 + 128] = 0
            mem[_104] = _75
            mem[_104 + 32] = mem[_94 + 31 len 1]
            mem[_104 + 64] = mem[_94 + 63 len 1]
            mem[_104 + 128] = mem[_94 + 96]
            mem[_104 + 96] = mem[_94 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _104
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _63 = mem[64]
        mem[mem[64]] = 32
        _64 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _64:
            _117 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_117 + 63 len 1]
            mem[t + 64] = mem[_117 + 95 len 1]
            mem[t + 96] = mem[_117 + 124 len 4]
            mem[t + 128] = mem[_117 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _63 + (160 * _64) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
    mem[var40001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var40001
    idx = var40002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor0)
        staticcall stor0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_158]
        require mem[_158] == mem[_158]
        require ext_code.size(stor0)
        staticcall stor0.items(uint256 arg1) with:
                gas gas_remaining wei
               args mem[_158]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _167 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_166] == mem[_166 + 31 len 1]
        mem[_167] = mem[_166]
        require mem[_166 + 32] == mem[_166 + 63 len 1]
        mem[_167 + 32] = mem[_166 + 32]
        require mem[_166 + 64] == mem[_166 + 92 len 4]
        mem[_167 + 64] = mem[_166 + 64]
        require mem[_166 + 96] == mem[_166 + 96]
        mem[_167 + 96] = mem[_166 + 96]
        _172 = mem[64]
        mem[64] = mem[64] + 160
        mem[_172 + 32] = 0
        mem[_172 + 64] = 0
        mem[_172 + 96] = 0
        mem[_172 + 128] = 0
        mem[_172] = _160
        mem[_172 + 32] = mem[_167 + 31 len 1]
        mem[_172 + 64] = mem[_167 + 63 len 1]
        mem[_172 + 128] = mem[_167 + 96]
        mem[_172 + 96] = mem[_167 + 92 len 4]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _172
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _152 = mem[64]
    mem[mem[64]] = 32
    _153 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _153:
        _178 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_178 + 63 len 1]
        mem[t + 64] = mem[_178 + 95 len 1]
        mem[t + 96] = mem[_178 + 124 len 4]
        mem[t + 128] = mem[_178 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _152 + (160 * _153) + -mem[64] + 64
}



}
