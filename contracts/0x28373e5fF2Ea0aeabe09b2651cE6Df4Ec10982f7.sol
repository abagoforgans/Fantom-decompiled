contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getLastHarvests(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _77 = mem[64]
            _78 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_78 + 32] = mem[_78 + 36 len 28] or 0xf1a392da00000000000000000000000000000000000000000000000000000000
            _86 = mem[_78]
            s = 0
            while s < _86:
                mem[_77 + s + 36] = mem[_78 + s + 32]
                s = s + 32
                continue 
            if ceil32(_86) <= _86:
                staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _77 + _86 + -mem[64] + 32]
                if not return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    _146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_146] = return_data.size
                    mem[_146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if return_data.size < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[_146 + 32]
            else:
                mem[_77 + _86 + 36] = 0
                staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _77 + _86 + -mem[64] + 32]
                if not return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    _150 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_150] = return_data.size
                    mem[_150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if return_data.size < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[_150 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _81 = mem[64]
            _82 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_82 + 32] = mem[_82 + 36 len 28] or 0xf1a392da00000000000000000000000000000000000000000000000000000000
            _87 = mem[_82]
            s = 0
            while s < _87:
                mem[_81 + s + 36] = mem[_82 + s + 32]
                s = s + 32
                continue 
            if ceil32(_87) <= _87:
                staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _81 + _87 + -mem[64] + 32]
                if not return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    _148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_148] = return_data.size
                    mem[_148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if return_data.size < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[_148 + 32]
            else:
                mem[_81 + _87 + 36] = 0
                staticcall address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _81 + _87 + -mem[64] + 32]
                if not return_data.size:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if mem[96] < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[128]
                else:
                    _151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_151] = return_data.size
                    mem[_151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not ext_call.success:
                        mem[(32 * idx) + 128] = 0
                    else:
                        if return_data.size < 32:
                            mem[(32 * idx) + 128] = 0
                        else:
                            mem[(32 * idx) + 128] = mem[_151 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
