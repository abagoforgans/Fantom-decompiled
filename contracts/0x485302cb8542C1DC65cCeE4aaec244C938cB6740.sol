contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_73020f99(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).userCollateralShare(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_117]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).userBorrowPart(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[_144]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _80 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
            mem[_80] = ('cd', 4).length
            mem[_80 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
            mem[_80 + (32 * ('cd', 4).length) + 32] = 0
            _84 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = ('cd', 4).length
            idx = 0
            s = _80 + 32
            t = mem[64] + 128
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_84 + 32] = (32 * ('cd', 4).length) + 128
            _160 = mem[(32 * ('cd', 4).length) + 128]
            mem[_84 + (32 * ('cd', 4).length) + 128] = mem[(32 * ('cd', 4).length) + 128]
            mem[_84 + (32 * ('cd', 4).length) + 160 len 32 * _160] = mem[(32 * ('cd', 4).length) + 160 len 32 * _160]
            mem[_84 + 64] = (32 * ('cd', 4).length) + (32 * _160) + 160
            mem[_84 + (32 * ('cd', 4).length) + (32 * _160) + 160] = mem[96]
            mem[_84 + (32 * ('cd', 4).length) + (32 * _160) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            return memory
              from mem[64]
               len _84 + (32 * ('cd', 4).length) + (32 * _160) + (32 * mem[96]) + -mem[64] + 192
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_119]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).userBorrowPart(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_145]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _81 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
        mem[_81] = ('cd', 4).length
        mem[_81 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[_81 + (32 * ('cd', 4).length) + 32] = 0
        _85 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = ('cd', 4).length
        idx = 0
        s = _81 + 32
        t = mem[64] + 128
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_85 + 32] = (32 * ('cd', 4).length) + 128
        _161 = mem[(32 * ('cd', 4).length) + 128]
        mem[_85 + (32 * ('cd', 4).length) + 128] = mem[(32 * ('cd', 4).length) + 128]
        mem[_85 + (32 * ('cd', 4).length) + 160 len 32 * _161] = mem[(32 * ('cd', 4).length) + 160 len 32 * _161]
        mem[_85 + 64] = (32 * ('cd', 4).length) + (32 * _161) + 160
        mem[_85 + (32 * ('cd', 4).length) + (32 * _161) + 160] = mem[96]
        mem[_85 + (32 * ('cd', 4).length) + (32 * _161) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return memory
          from mem[64]
           len _85 + (32 * ('cd', 4).length) + (32 * _161) + (32 * mem[96]) + -mem[64] + 192
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_121]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).userBorrowPart(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_146]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
        mem[_82] = ('cd', 4).length
        mem[_82 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[_82 + (32 * ('cd', 4).length) + 32] = 0
        _86 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = ('cd', 4).length
        idx = 0
        s = _82 + 32
        t = mem[64] + 128
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_86 + 32] = (32 * ('cd', 4).length) + 128
        _162 = mem[(32 * ('cd', 4).length) + 128]
        mem[_86 + (32 * ('cd', 4).length) + 128] = mem[(32 * ('cd', 4).length) + 128]
        mem[_86 + (32 * ('cd', 4).length) + 160 len 32 * _162] = mem[(32 * ('cd', 4).length) + 160 len 32 * _162]
        mem[_86 + 64] = (32 * ('cd', 4).length) + (32 * _162) + 160
        mem[_86 + (32 * ('cd', 4).length) + (32 * _162) + 160] = mem[96]
        mem[_86 + (32 * ('cd', 4).length) + (32 * _162) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return memory
          from mem[64]
           len _86 + (32 * ('cd', 4).length) + (32 * _162) + (32 * mem[96]) + -mem[64] + 192
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).userCollateralShare(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = mem[_123]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).userBorrowPart(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[_147]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _83 = mem[64]
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    mem[_83] = ('cd', 4).length
    mem[_83 + 32 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[_83 + (32 * ('cd', 4).length) + 32] = 0
    _87 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = ('cd', 4).length
    idx = 0
    s = _83 + 32
    t = mem[64] + 128
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_87 + 32] = (32 * ('cd', 4).length) + 128
    _163 = mem[(32 * ('cd', 4).length) + 128]
    mem[_87 + (32 * ('cd', 4).length) + 128] = mem[(32 * ('cd', 4).length) + 128]
    mem[_87 + (32 * ('cd', 4).length) + 160 len 32 * _163] = mem[(32 * ('cd', 4).length) + 160 len 32 * _163]
    mem[_87 + 64] = (32 * ('cd', 4).length) + (32 * _163) + 160
    mem[_87 + (32 * ('cd', 4).length) + (32 * _163) + 160] = mem[96]
    mem[_87 + (32 * ('cd', 4).length) + (32 * _163) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return memory
      from mem[64]
       len _87 + (32 * ('cd', 4).length) + (32 * _163) + (32 * mem[96]) + -mem[64] + 192
}



}
