contract main {




// =====================  Runtime code  =====================


#
#  - sub_15bdd29b(?)
#
address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'pls no hack ser'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'too much ser'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_78b94ae6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(arg1) != this.address:
        revert with 0, 'only contract'
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg2.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
    require arg2.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg2.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg2.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg2.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg2.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg2.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg2.length) + 128]:
        _210 = mem[ceil32(arg2.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg2.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg2.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg2.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg2.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg2.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg2.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function sub_defdf6ec(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(arg1) != this.address:
        revert with 0, 'only contract'
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg2.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
    require arg2.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg2.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg2.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg2.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg2.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg2.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg2.length) + 128]:
        _210 = mem[ceil32(arg2.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg2.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg2.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg2.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg2.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg2.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg2.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg2.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg2.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function apeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function polyZapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function polydexCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only contract'
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 96
    _5 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[128] + 128]) + 160 < 128 or ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + 128]) + 160
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require arg4.length + 32 >= _5 + (32 * _6) + 64
    idx = 0
    s = _5 + 160
    t = ceil32(arg4.length) + 160
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _77 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _78 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _79 = mem[64]
    if mem[64] + (32 * mem[mem[160] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[160] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[160] + 128]) + 32
    mem[_79] = mem[mem[160] + 128]
    require arg4.length + 32 >= _77 + (32 * _78) + 64
    idx = 0
    s = _77 + 160
    t = _79 + 32
    while idx < _78:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _145 = mem[192]
    require mem[192] <= test266151307()
    require arg4.length + 128 > mem[192] + 159
    _146 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    _147 = mem[64]
    if mem[64] + (32 * mem[mem[192] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[192] + 128]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * mem[mem[192] + 128]) + 32
    mem[_147] = mem[mem[192] + 128]
    require arg4.length + 32 >= _145 + (32 * _146) + 64
    mem[_147 + 32 len 32 * _146] = mem[_145 + 160 len 32 * _146]
    if 0 < mem[ceil32(arg4.length) + 128]:
        _210 = mem[ceil32(arg4.length) + 160]
        if 0 < mem[_79]:
            if 0 < _146:
                _214 = mem[_147 + 32]
                mem[mem[64] + 4] = mem[_79 + 44 len 20]
                mem[mem[64] + 36] = _214
                require ext_code.size(address(_210))
                call address(_210).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _214
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_217] == bool(mem[_217])
                if var112001 < 1:
                    revert with 'NH{q', 17
                if var116002 >= var116001:
                if var118001 < mem[ceil32(arg4.length) + 128]:
                    if 1 > !var122002:
                        revert with 'NH{q', 17
                    _768 = mem[ceil32(arg4.length) + 128]
                    idx = var124003 + 1
                    s = var124006
                    t = var124009
                    while idx < _768:
                        if 1 > !t:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_147]:
                            revert with 'NH{q', 50
                        if address(s) < mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                            _772 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == address(s):
                                _778 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _786 = mem[(32 * t + 1) + _79 + 32]
                                _790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_790 + 36] = 0
                                mem[_790 + 68] = _772
                                mem[_790 + 100] = address(_786)
                                mem[_790 + 132] = 128
                                mem[_790 + 164] = mem[_790]
                                idx = 0
                                while idx < mem[_790]:
                                    mem[idx + _790 + 196] = mem[_790 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_790]) > mem[_790]:
                                    mem[_790 + mem[_790] + 196] = 0
                                require ext_code.size(address(_778))
                                call address(_778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _772, address(_786), 128, mem[_790], mem[_790 + 196 len ceil32(mem[_790])]
                            else:
                                _779 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _787 = mem[(32 * t + 1) + _79 + 32]
                                _791 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_791 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_791 + 36] = _772
                                mem[_791 + 68] = 0
                                mem[_791 + 100] = address(_787)
                                mem[_791 + 132] = 128
                                mem[_791 + 164] = mem[_791]
                                idx = 0
                                while idx < mem[_791]:
                                    mem[idx + _791 + 196] = mem[_791 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_791]) > mem[_791]:
                                    mem[_791 + mem[_791] + 196] = 0
                                require ext_code.size(address(_779))
                                call address(_779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _772, 0, address(_787), 128, mem[_791], mem[_791 + 196 len ceil32(mem[_791])]
                        else:
                            _773 = mem[(32 * t + 1) + _147 + 32]
                            if t >= mem[_79]:
                                revert with 'NH{q', 50
                            if address(s) == mem[(32 * idx) + ceil32(arg4.length) + 172 len 20]:
                                _780 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _788 = mem[(32 * t + 1) + _79 + 32]
                                _792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_792 + 36] = 0
                                mem[_792 + 68] = _773
                                mem[_792 + 100] = address(_788)
                                mem[_792 + 132] = 128
                                mem[_792 + 164] = mem[_792]
                                idx = 0
                                while idx < mem[_792]:
                                    mem[idx + _792 + 196] = mem[_792 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_792]) > mem[_792]:
                                    mem[_792 + mem[_792] + 196] = 0
                                require ext_code.size(address(_780))
                                call address(_780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _773, address(_788), 128, mem[_792], mem[_792 + 196 len ceil32(mem[_792])]
                            else:
                                _781 = mem[(32 * t) + _79 + 32]
                                if 1 > !t:
                                    revert with 'NH{q', 17
                                if t + 1 >= mem[_79]:
                                    revert with 'NH{q', 50
                                _789 = mem[(32 * t + 1) + _79 + 32]
                                _793 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_793 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_793 + 36] = _773
                                mem[_793 + 68] = 0
                                mem[_793 + 100] = address(_789)
                                mem[_793 + 132] = 128
                                mem[_793 + 164] = mem[_793]
                                idx = 0
                                while idx < mem[_793]:
                                    mem[idx + _793 + 196] = mem[_793 + idx + 32]
                                    _768 = mem[ceil32(arg4.length) + 128]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_793]) > mem[_793]:
                                    mem[_793 + mem[_793] + 196] = 0
                                require ext_code.size(address(_781))
                                call address(_781).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _773, 0, address(_789), 128, mem[_793], mem[_793 + 196 len ceil32(mem[_793])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if t == -1:
                            revert with 'NH{q', 17
                        if mem[_79] < 1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_79] - 1:
                        if t + 1 >= mem[ceil32(arg4.length) + 128]:
                            revert with 'NH{q', 50
                        if 1 > !(t + 1):
                            revert with 'NH{q', 17
                        _768 = mem[ceil32(arg4.length) + 128]
                        idx = t + 2
                        s = mem[(32 * t + 1) + ceil32(arg4.length) + 160]
                        t = t + 1
                        continue 
    revert with 'NH{q', 50
}



}
