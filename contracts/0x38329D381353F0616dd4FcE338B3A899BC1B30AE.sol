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
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == mem[_60]
            require ext_code.size(stor0)
            staticcall stor0.items(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[_60]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _80 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require mem[_77] == mem[_77 + 31 len 1]
            mem[_80] = mem[_77]
            require mem[_77 + 32] == mem[_77 + 63 len 1]
            mem[_80 + 32] = mem[_77 + 32]
            require mem[_77 + 64] == mem[_77 + 92 len 4]
            mem[_80 + 64] = mem[_77 + 64]
            require mem[_77 + 96] == mem[_77 + 96]
            mem[_80 + 96] = mem[_77 + 96]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _80
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _52 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _52:
            _93 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_93 + 63 len 1]
            mem[t + 64] = mem[_93 + 92 len 4]
            mem[t + 96] = mem[_93 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _51 + (128 * _52) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[var40001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var40001
    idx = var40002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
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
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_127] == mem[_127]
        require ext_code.size(stor0)
        staticcall stor0.items(uint256 arg1) with:
                gas gas_remaining wei
               args mem[_127]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _135 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require mem[_134] == mem[_134 + 31 len 1]
        mem[_135] = mem[_134]
        require mem[_134 + 32] == mem[_134 + 63 len 1]
        mem[_135 + 32] = mem[_134 + 32]
        require mem[_134 + 64] == mem[_134 + 92 len 4]
        mem[_135 + 64] = mem[_134 + 64]
        require mem[_134 + 96] == mem[_134 + 96]
        mem[_135 + 96] = mem[_134 + 96]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _135
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _121 = mem[64]
    mem[mem[64]] = 32
    _122 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _122:
        _141 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_141 + 63 len 1]
        mem[t + 64] = mem[_141 + 92 len 4]
        mem[t + 96] = mem[_141 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _121 + (128 * _122) + -mem[64] + 64
}



}
