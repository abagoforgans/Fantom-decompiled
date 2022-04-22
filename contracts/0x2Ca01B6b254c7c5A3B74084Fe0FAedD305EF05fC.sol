contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
address stor3;
uint256 stor4;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function setMinBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor4 = arg1
}

function allow(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_860737cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdrawFTM(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c3133cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_caab2fb3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _873 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_873] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_873 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_873 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_873 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_873 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_873 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_873 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_873 + 224] = cd[(s + 224)]
        mem[t] = _873
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == bool(cd[68])
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _879 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _880 = mem[_879]
    require mem[_879] == mem[_879]
    if cd[68]:
        require mem[96]
        mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(stor0)
        call stor0.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _963 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_963] == bool(mem[_963])
        _1748 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _1748:
            _1761 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1761] = 0
            mem[_1761 + 32] = 0
            mem[_1761 + 64] = 0
            mem[_1761 + 96] = 0
            mem[_1761 + 128] = 0
            mem[_1761 + 160] = 0
            mem[_1761 + 192] = 0
            mem[_1761 + 224] = 0
            require idx < mem[96]
            _1796 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                _1813 = mem[mem[(32 * idx) + 128] + 32]
                _1814 = mem[mem[(32 * idx) + 128] + 128]
                _1819 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_1819][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 224]:
                        _1833 = mem[mem[(32 * idx) + 128] + 32]
                        _1834 = mem[mem[(32 * idx) + 128] + 64]
                        _1835 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_1834'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_1835'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_1833))
                        call address(_1833).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_1834')), ('signextend', 15, ('var', '_1835')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1923 = mem[_1796 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1923))
                        staticcall address(_1923).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2122] == mem[_2122]
                        _1748 = mem[96]
                        idx = idx + 1
                        s = mem[_2122]
                        continue 
                    _1837 = mem[mem[(32 * idx) + 128] + 32]
                    _1838 = mem[mem[(32 * idx) + 128] + 64]
                    _1839 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1838'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1839'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1837))
                    call address(_1837).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1838')), ('signextend', 15, ('var', '_1839')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1925 = mem[_1796 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1925))
                    staticcall address(_1925).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2123 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2123] == mem[_2123]
                    _1748 = mem[96]
                    idx = idx + 1
                    s = mem[_2123]
                    continue 
                mem[mem[64] + 4] = address(_1813)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1814))
                call address(_1814).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_1813), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1858] == bool(mem[_1858])
                mem[0] = address(_1814)
                mem[32] = sha3(address(_1813), 1)
                if not mem[_1796 + 224]:
                    _1906 = mem[_1796 + 32]
                    _1907 = mem[_1796 + 64]
                    _1908 = mem[_1796 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1907'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1908'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1906))
                    call address(_1906).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1907')), ('signextend', 15, ('var', '_1908')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2172 = mem[_1796 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_2172))
                    staticcall address(_2172).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2398 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2398] == mem[_2398]
                    _1748 = mem[96]
                    idx = idx + 1
                    s = mem[_2398]
                    continue 
                _1910 = mem[_1796 + 32]
                _1911 = mem[_1796 + 64]
                _1912 = mem[_1796 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1911'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1912'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1910))
                call address(_1910).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1911')), ('signextend', 15, ('var', '_1912')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2174 = mem[_1796 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2174))
                staticcall address(_2174).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2399 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2399] == mem[_2399]
                _1748 = mem[96]
                idx = idx + 1
                s = mem[_2399]
                continue 
            require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1831 = mem[_1821]
            require mem[_1821] == mem[_1821 + 18 len 14]
            _1851 = mem[_1821 + 32]
            require mem[_1821 + 32] == mem[_1821 + 50 len 14]
            require mem[_1821 + 64] == mem[_1821 + 92 len 4]
            _1883 = mem[_1796 + 128]
            _1884 = mem[_1796 + 160]
            if mem[_1796 + 140 len 20] == mem[_1796 + 172 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[_1796 + 140 len 20] < mem[_1796 + 172 len 20]:
                if not mem[_1796 + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[_1796 + 140 len 20] == mem[_1796 + 140 len 20]:
                    _2037 = mem[_1796]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1831)
                    mem[mem[64] + 68] = Mask(112, 0, _1851)
                    require ext_code.size(address(_2037))
                    staticcall address(_2037).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _1831 << 144, Mask(112, 0, _1851)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2208 = mem[_2168]
                    require mem[_2168] == mem[_2168]
                    if mem[_1796 + 140 len 20] == address(_1883):
                        if idx == mem[96] - 1:
                            _2382 = mem[_1796 + 32]
                            _2383 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2383 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2383 + 36] = 0
                            mem[_2383 + 68] = _2208
                            mem[_2383 + 100] = this.address
                            mem[_2383 + 132] = 128
                            mem[_2383 + 164] = mem[_2383]
                            s = 0
                            while s < mem[_2383]:
                                mem[s + _2383 + 196] = mem[s + _2383 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2383]) > mem[_2383]:
                                mem[mem[_2383] + _2383 + 196] = 0
                            require ext_code.size(address(_2382))
                            call address(_2382).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2208, address(this.address), 128, mem[_2383], mem[_2383 + 196 len ceil32(mem[_2383])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2432 = mem[_1796 + 32]
                                _2433 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2433 + 36] = 0
                                mem[_2433 + 68] = _2208
                                mem[_2433 + 100] = this.address
                                mem[_2433 + 132] = 128
                                mem[_2433 + 164] = mem[_2433]
                                s = 0
                                while s < mem[_2433]:
                                    mem[s + _2433 + 196] = mem[s + _2433 + 32]
                                    _1748 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2433]) > mem[_2433]:
                                    mem[mem[_2433] + _2433 + 196] = 0
                                require ext_code.size(address(_2432))
                                call address(_2432).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2208, address(this.address), 128, mem[_2433], mem[_2433 + 196 len ceil32(mem[_2433])]
                            else:
                                require idx + 1 < mem[96]
                                _2435 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2465 = mem[_1796 + 32]
                                _2466 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2466 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2466 + 36] = 0
                                mem[_2466 + 68] = _2208
                                mem[_2466 + 100] = address(_2435)
                                mem[_2466 + 132] = 128
                                mem[_2466 + 164] = mem[_2466]
                                s = 0
                                while s < mem[_2466]:
                                    mem[s + _2466 + 196] = mem[s + _2466 + 32]
                                    _1748 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2466]) > mem[_2466]:
                                    mem[mem[_2466] + _2466 + 196] = 0
                                require ext_code.size(address(_2465))
                                call address(_2465).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2208, address(_2435), 128, mem[_2466], mem[_2466 + 196 len ceil32(mem[_2466])]
                    else:
                        if idx == mem[96] - 1:
                            _2384 = mem[_1796 + 32]
                            _2385 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2385 + 36] = _2208
                            mem[_2385 + 68] = 0
                            mem[_2385 + 100] = this.address
                            mem[_2385 + 132] = 128
                            mem[_2385 + 164] = mem[_2385]
                            s = 0
                            while s < mem[_2385]:
                                mem[s + _2385 + 196] = mem[s + _2385 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2385]) > mem[_2385]:
                                mem[mem[_2385] + _2385 + 196] = 0
                            require ext_code.size(address(_2384))
                            call address(_2384).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2208, 0, address(this.address), 128, mem[_2385], mem[_2385 + 196 len ceil32(mem[_2385])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2436 = mem[_1796 + 32]
                                _2437 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2437 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2437 + 36] = _2208
                                mem[_2437 + 68] = 0
                                mem[_2437 + 100] = this.address
                                mem[_2437 + 132] = 128
                                mem[_2437 + 164] = mem[_2437]
                                s = 0
                                while s < mem[_2437]:
                                    mem[s + _2437 + 196] = mem[s + _2437 + 32]
                                    _1748 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2437]) > mem[_2437]:
                                    mem[mem[_2437] + _2437 + 196] = 0
                                require ext_code.size(address(_2436))
                                call address(_2436).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2208, 0, address(this.address), 128, mem[_2437], mem[_2437 + 196 len ceil32(mem[_2437])]
                            else:
                                require idx + 1 < mem[96]
                                _2439 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2468 = mem[_1796 + 32]
                                _2469 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2469 + 36] = _2208
                                mem[_2469 + 68] = 0
                                mem[_2469 + 100] = address(_2439)
                                mem[_2469 + 132] = 128
                                mem[_2469 + 164] = mem[_2469]
                                s = 0
                                while s < mem[_2469]:
                                    mem[s + _2469 + 196] = mem[s + _2469 + 32]
                                    _1748 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2469]) > mem[_2469]:
                                    mem[mem[_2469] + _2469 + 196] = 0
                                require ext_code.size(address(_2468))
                                call address(_2468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2208, 0, address(_2439), 128, mem[_2469], mem[_2469 + 196 len ceil32(mem[_2469])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1748 = mem[96]
                    idx = idx + 1
                    s = _2208
                    continue 
                _2039 = mem[_1796]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1851)
                mem[mem[64] + 68] = Mask(112, 0, _1831)
                require ext_code.size(address(_2039))
                staticcall address(_2039).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _1851 << 144, Mask(112, 0, _1831)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2209 = mem[_2169]
                require mem[_2169] == mem[_2169]
                if mem[_1796 + 140 len 20] == address(_1883):
                    if idx == mem[96] - 1:
                        _2386 = mem[_1796 + 32]
                        _2387 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2387 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2387 + 36] = 0
                        mem[_2387 + 68] = _2209
                        mem[_2387 + 100] = this.address
                        mem[_2387 + 132] = 128
                        mem[_2387 + 164] = mem[_2387]
                        s = 0
                        while s < mem[_2387]:
                            mem[s + _2387 + 196] = mem[s + _2387 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2387]) > mem[_2387]:
                            mem[mem[_2387] + _2387 + 196] = 0
                        require ext_code.size(address(_2386))
                        call address(_2386).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2209, address(this.address), 128, mem[_2387], mem[_2387 + 196 len ceil32(mem[_2387])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2440 = mem[_1796 + 32]
                            _2441 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2441 + 36] = 0
                            mem[_2441 + 68] = _2209
                            mem[_2441 + 100] = this.address
                            mem[_2441 + 132] = 128
                            mem[_2441 + 164] = mem[_2441]
                            s = 0
                            while s < mem[_2441]:
                                mem[s + _2441 + 196] = mem[s + _2441 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2441]) > mem[_2441]:
                                mem[mem[_2441] + _2441 + 196] = 0
                            require ext_code.size(address(_2440))
                            call address(_2440).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2209, address(this.address), 128, mem[_2441], mem[_2441 + 196 len ceil32(mem[_2441])]
                        else:
                            require idx + 1 < mem[96]
                            _2443 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2471 = mem[_1796 + 32]
                            _2472 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2472 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2472 + 36] = 0
                            mem[_2472 + 68] = _2209
                            mem[_2472 + 100] = address(_2443)
                            mem[_2472 + 132] = 128
                            mem[_2472 + 164] = mem[_2472]
                            s = 0
                            while s < mem[_2472]:
                                mem[s + _2472 + 196] = mem[s + _2472 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2472]) > mem[_2472]:
                                mem[mem[_2472] + _2472 + 196] = 0
                            require ext_code.size(address(_2471))
                            call address(_2471).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2209, address(_2443), 128, mem[_2472], mem[_2472 + 196 len ceil32(mem[_2472])]
                else:
                    if idx == mem[96] - 1:
                        _2388 = mem[_1796 + 32]
                        _2389 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2389 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2389 + 36] = _2209
                        mem[_2389 + 68] = 0
                        mem[_2389 + 100] = this.address
                        mem[_2389 + 132] = 128
                        mem[_2389 + 164] = mem[_2389]
                        s = 0
                        while s < mem[_2389]:
                            mem[s + _2389 + 196] = mem[s + _2389 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2389]) > mem[_2389]:
                            mem[mem[_2389] + _2389 + 196] = 0
                        require ext_code.size(address(_2388))
                        call address(_2388).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2209, 0, address(this.address), 128, mem[_2389], mem[_2389 + 196 len ceil32(mem[_2389])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2444 = mem[_1796 + 32]
                            _2445 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2445 + 36] = _2209
                            mem[_2445 + 68] = 0
                            mem[_2445 + 100] = this.address
                            mem[_2445 + 132] = 128
                            mem[_2445 + 164] = mem[_2445]
                            s = 0
                            while s < mem[_2445]:
                                mem[s + _2445 + 196] = mem[s + _2445 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2445]) > mem[_2445]:
                                mem[mem[_2445] + _2445 + 196] = 0
                            require ext_code.size(address(_2444))
                            call address(_2444).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2209, 0, address(this.address), 128, mem[_2445], mem[_2445 + 196 len ceil32(mem[_2445])]
                        else:
                            require idx + 1 < mem[96]
                            _2447 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2474 = mem[_1796 + 32]
                            _2475 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2475 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2475 + 36] = _2209
                            mem[_2475 + 68] = 0
                            mem[_2475 + 100] = address(_2447)
                            mem[_2475 + 132] = 128
                            mem[_2475 + 164] = mem[_2475]
                            s = 0
                            while s < mem[_2475]:
                                mem[s + _2475 + 196] = mem[s + _2475 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2475]) > mem[_2475]:
                                mem[mem[_2475] + _2475 + 196] = 0
                            require ext_code.size(address(_2474))
                            call address(_2474).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2209, 0, address(_2447), 128, mem[_2475], mem[_2475 + 196 len ceil32(mem[_2475])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1748 = mem[96]
                idx = idx + 1
                s = _2209
                continue 
            if not mem[_1796 + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[_1796 + 140 len 20] == mem[_1796 + 172 len 20]:
                _2041 = mem[_1796]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1831)
                mem[mem[64] + 68] = Mask(112, 0, _1851)
                require ext_code.size(address(_2041))
                staticcall address(_2041).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _1831 << 144, Mask(112, 0, _1851)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2210 = mem[_2170]
                require mem[_2170] == mem[_2170]
                if mem[_1796 + 140 len 20] == address(_1884):
                    if idx == mem[96] - 1:
                        _2390 = mem[_1796 + 32]
                        _2391 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2391 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2391 + 36] = 0
                        mem[_2391 + 68] = _2210
                        mem[_2391 + 100] = this.address
                        mem[_2391 + 132] = 128
                        mem[_2391 + 164] = mem[_2391]
                        s = 0
                        while s < mem[_2391]:
                            mem[s + _2391 + 196] = mem[s + _2391 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2391]) > mem[_2391]:
                            mem[mem[_2391] + _2391 + 196] = 0
                        require ext_code.size(address(_2390))
                        call address(_2390).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2210, address(this.address), 128, mem[_2391], mem[_2391 + 196 len ceil32(mem[_2391])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2448 = mem[_1796 + 32]
                            _2449 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2449 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2449 + 36] = 0
                            mem[_2449 + 68] = _2210
                            mem[_2449 + 100] = this.address
                            mem[_2449 + 132] = 128
                            mem[_2449 + 164] = mem[_2449]
                            s = 0
                            while s < mem[_2449]:
                                mem[s + _2449 + 196] = mem[s + _2449 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2449]) > mem[_2449]:
                                mem[mem[_2449] + _2449 + 196] = 0
                            require ext_code.size(address(_2448))
                            call address(_2448).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2210, address(this.address), 128, mem[_2449], mem[_2449 + 196 len ceil32(mem[_2449])]
                        else:
                            require idx + 1 < mem[96]
                            _2451 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2477 = mem[_1796 + 32]
                            _2478 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2478 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2478 + 36] = 0
                            mem[_2478 + 68] = _2210
                            mem[_2478 + 100] = address(_2451)
                            mem[_2478 + 132] = 128
                            mem[_2478 + 164] = mem[_2478]
                            s = 0
                            while s < mem[_2478]:
                                mem[s + _2478 + 196] = mem[s + _2478 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2478]) > mem[_2478]:
                                mem[mem[_2478] + _2478 + 196] = 0
                            require ext_code.size(address(_2477))
                            call address(_2477).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2210, address(_2451), 128, mem[_2478], mem[_2478 + 196 len ceil32(mem[_2478])]
                else:
                    if idx == mem[96] - 1:
                        _2392 = mem[_1796 + 32]
                        _2393 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2393 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2393 + 36] = _2210
                        mem[_2393 + 68] = 0
                        mem[_2393 + 100] = this.address
                        mem[_2393 + 132] = 128
                        mem[_2393 + 164] = mem[_2393]
                        s = 0
                        while s < mem[_2393]:
                            mem[s + _2393 + 196] = mem[s + _2393 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2393]) > mem[_2393]:
                            mem[mem[_2393] + _2393 + 196] = 0
                        require ext_code.size(address(_2392))
                        call address(_2392).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2210, 0, address(this.address), 128, mem[_2393], mem[_2393 + 196 len ceil32(mem[_2393])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2452 = mem[_1796 + 32]
                            _2453 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2453 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2453 + 36] = _2210
                            mem[_2453 + 68] = 0
                            mem[_2453 + 100] = this.address
                            mem[_2453 + 132] = 128
                            mem[_2453 + 164] = mem[_2453]
                            s = 0
                            while s < mem[_2453]:
                                mem[s + _2453 + 196] = mem[s + _2453 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2453]) > mem[_2453]:
                                mem[mem[_2453] + _2453 + 196] = 0
                            require ext_code.size(address(_2452))
                            call address(_2452).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2210, 0, address(this.address), 128, mem[_2453], mem[_2453 + 196 len ceil32(mem[_2453])]
                        else:
                            require idx + 1 < mem[96]
                            _2455 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2480 = mem[_1796 + 32]
                            _2481 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2481 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2481 + 36] = _2210
                            mem[_2481 + 68] = 0
                            mem[_2481 + 100] = address(_2455)
                            mem[_2481 + 132] = 128
                            mem[_2481 + 164] = mem[_2481]
                            s = 0
                            while s < mem[_2481]:
                                mem[s + _2481 + 196] = mem[s + _2481 + 32]
                                _1748 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2481]) > mem[_2481]:
                                mem[mem[_2481] + _2481 + 196] = 0
                            require ext_code.size(address(_2480))
                            call address(_2480).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2210, 0, address(_2455), 128, mem[_2481], mem[_2481 + 196 len ceil32(mem[_2481])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1748 = mem[96]
                idx = idx + 1
                s = _2210
                continue 
            _2043 = mem[_1796]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _1851)
            mem[mem[64] + 68] = Mask(112, 0, _1831)
            require ext_code.size(address(_2043))
            staticcall address(_2043).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s, _1851 << 144, Mask(112, 0, _1831)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2211 = mem[_2171]
            require mem[_2171] == mem[_2171]
            if mem[_1796 + 140 len 20] == address(_1884):
                if idx == mem[96] - 1:
                    _2394 = mem[_1796 + 32]
                    _2395 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2395 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2395 + 36] = 0
                    mem[_2395 + 68] = _2211
                    mem[_2395 + 100] = this.address
                    mem[_2395 + 132] = 128
                    mem[_2395 + 164] = mem[_2395]
                    s = 0
                    while s < mem[_2395]:
                        mem[s + _2395 + 196] = mem[s + _2395 + 32]
                        _1748 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_2395]) > mem[_2395]:
                        mem[mem[_2395] + _2395 + 196] = 0
                    require ext_code.size(address(_2394))
                    call address(_2394).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _2211, address(this.address), 128, mem[_2395], mem[_2395 + 196 len ceil32(mem[_2395])]
                else:
                    require idx + 1 < mem[96]
                    if mem[mem[(32 * idx + 1) + 128] + 192]:
                        _2456 = mem[_1796 + 32]
                        _2457 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2457 + 36] = 0
                        mem[_2457 + 68] = _2211
                        mem[_2457 + 100] = this.address
                        mem[_2457 + 132] = 128
                        mem[_2457 + 164] = mem[_2457]
                        s = 0
                        while s < mem[_2457]:
                            mem[s + _2457 + 196] = mem[s + _2457 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2457]) > mem[_2457]:
                            mem[mem[_2457] + _2457 + 196] = 0
                        require ext_code.size(address(_2456))
                        call address(_2456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2211, address(this.address), 128, mem[_2457], mem[_2457 + 196 len ceil32(mem[_2457])]
                    else:
                        require idx + 1 < mem[96]
                        _2459 = mem[mem[(32 * idx + 1) + 128] + 32]
                        _2483 = mem[_1796 + 32]
                        _2484 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2484 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2484 + 36] = 0
                        mem[_2484 + 68] = _2211
                        mem[_2484 + 100] = address(_2459)
                        mem[_2484 + 132] = 128
                        mem[_2484 + 164] = mem[_2484]
                        s = 0
                        while s < mem[_2484]:
                            mem[s + _2484 + 196] = mem[s + _2484 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2484]) > mem[_2484]:
                            mem[mem[_2484] + _2484 + 196] = 0
                        require ext_code.size(address(_2483))
                        call address(_2483).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2211, address(_2459), 128, mem[_2484], mem[_2484 + 196 len ceil32(mem[_2484])]
            else:
                if idx == mem[96] - 1:
                    _2396 = mem[_1796 + 32]
                    _2397 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2397 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2397 + 36] = _2211
                    mem[_2397 + 68] = 0
                    mem[_2397 + 100] = this.address
                    mem[_2397 + 132] = 128
                    mem[_2397 + 164] = mem[_2397]
                    s = 0
                    while s < mem[_2397]:
                        mem[s + _2397 + 196] = mem[s + _2397 + 32]
                        _1748 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_2397]) > mem[_2397]:
                        mem[mem[_2397] + _2397 + 196] = 0
                    require ext_code.size(address(_2396))
                    call address(_2396).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _2211, 0, address(this.address), 128, mem[_2397], mem[_2397 + 196 len ceil32(mem[_2397])]
                else:
                    require idx + 1 < mem[96]
                    if mem[mem[(32 * idx + 1) + 128] + 192]:
                        _2460 = mem[_1796 + 32]
                        _2461 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2461 + 36] = _2211
                        mem[_2461 + 68] = 0
                        mem[_2461 + 100] = this.address
                        mem[_2461 + 132] = 128
                        mem[_2461 + 164] = mem[_2461]
                        s = 0
                        while s < mem[_2461]:
                            mem[s + _2461 + 196] = mem[s + _2461 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2461]) > mem[_2461]:
                            mem[mem[_2461] + _2461 + 196] = 0
                        require ext_code.size(address(_2460))
                        call address(_2460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2211, 0, address(this.address), 128, mem[_2461], mem[_2461 + 196 len ceil32(mem[_2461])]
                    else:
                        require idx + 1 < mem[96]
                        _2463 = mem[mem[(32 * idx + 1) + 128] + 32]
                        _2486 = mem[_1796 + 32]
                        _2487 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2487 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2487 + 36] = _2211
                        mem[_2487 + 68] = 0
                        mem[_2487 + 100] = address(_2463)
                        mem[_2487 + 132] = 128
                        mem[_2487 + 164] = mem[_2487]
                        s = 0
                        while s < mem[_2487]:
                            mem[s + _2487 + 196] = mem[s + _2487 + 32]
                            _1748 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2487]) > mem[_2487]:
                            mem[mem[_2487] + _2487 + 196] = 0
                        require ext_code.size(address(_2486))
                        call address(_2486).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2211, 0, address(_2463), 128, mem[_2487], mem[_2487 + 196 len ceil32(mem[_2487])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1748 = mem[96]
            idx = idx + 1
            s = _2211
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1850 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1850] == mem[_1850]
        if mem[_1850] <= _880:
            revert with 0, 'P'
    else:
        _882 = mem[96]
        _883 = mem[64]
        mem[mem[64]] = mem[96]
        if not _882:
            _887 = mem[96]
            mem[mem[64] + (32 * _882) + 32] = mem[96]
            mem[64] = _883 + (32 * _882) + (32 * _887) + 64
            if not _887:
                _1744 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1744:
                    _1751 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1751] = 0
                    mem[_1751 + 32] = 0
                    mem[_1751 + 64] = 0
                    mem[_1751 + 96] = 0
                    mem[_1751 + 128] = 0
                    mem[_1751 + 160] = 0
                    mem[_1751 + 192] = 0
                    mem[_1751 + 224] = 0
                    require idx < mem[96]
                    _1774 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1823 = mem[_1815]
                    require mem[_1815] == mem[_1815 + 18 len 14]
                    _1842 = mem[_1815 + 32]
                    require mem[_1815 + 32] == mem[_1815 + 50 len 14]
                    require mem[_1815 + 64] == mem[_1815 + 92 len 4]
                    _1872 = mem[_1774 + 128]
                    _1873 = mem[_1774 + 160]
                    if mem[_1774 + 140 len 20] == mem[_1774 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1774 + 140 len 20] < mem[_1774 + 172 len 20]:
                        if not mem[_1774 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1774 + 140 len 20] == mem[_1774 + 140 len 20]:
                            _1976 = mem[_1774]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1823)
                            mem[mem[64] + 68] = Mask(112, 0, _1842)
                            require ext_code.size(address(_1976))
                            staticcall address(_1976).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1823 << 144, Mask(112, 0, _1842)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2152] == mem[_2152]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2152]
                        else:
                            _1978 = mem[_1774]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1842)
                            mem[mem[64] + 68] = Mask(112, 0, _1823)
                            require ext_code.size(address(_1978))
                            staticcall address(_1978).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1842 << 144, Mask(112, 0, _1823)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2153] == mem[_2153]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2153]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1774 + 140 len 20] == address(_1872)
                    else:
                        if not mem[_1774 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1774 + 140 len 20] == mem[_1774 + 172 len 20]:
                            _1980 = mem[_1774]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1823)
                            mem[mem[64] + 68] = Mask(112, 0, _1842)
                            require ext_code.size(address(_1980))
                            staticcall address(_1980).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1823 << 144, Mask(112, 0, _1842)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2154] == mem[_2154]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2154]
                        else:
                            _1982 = mem[_1774]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1842)
                            mem[mem[64] + 68] = Mask(112, 0, _1823)
                            require ext_code.size(address(_1982))
                            staticcall address(_1982).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1842 << 144, Mask(112, 0, _1823)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2155] == mem[_2155]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2155]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1774 + 140 len 20] == address(_1873)
                    _1744 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _883 + 32]
                    continue 
                require mem[96] - 1 < mem[_883]
                if mem[(32 * mem[96] - 1) + _883 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1852] == bool(mem[_1852])
                _2594 = mem[96]
                s = 0
                while s < _2594:
                    _2623 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2623] = 0
                    mem[_2623 + 32] = 0
                    mem[_2623 + 64] = 0
                    mem[_2623 + 96] = 0
                    mem[_2623 + 128] = 0
                    mem[_2623 + 160] = 0
                    mem[_2623 + 192] = 0
                    mem[_2623 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2726 = mem[(32 * s) + _883 + 32]
                            _2742 = mem[mem[(32 * s) + 128] + 32]
                            _2743 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2743 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2743 + 36] = 0
                            mem[_2743 + 68] = _2726
                            mem[_2743 + 100] = this.address
                            mem[_2743 + 132] = 128
                            mem[_2743 + 164] = mem[_2743]
                            idx = 0
                            while idx < mem[_2743]:
                                mem[idx + _2743 + 196] = mem[idx + _2743 + 32]
                                _2594 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2743]) > mem[_2743]:
                                mem[mem[_2743] + _2743 + 196] = 0
                            require ext_code.size(address(_2742))
                            call address(_2742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2726, address(this.address), 128, mem[_2743], mem[_2743 + 196 len ceil32(mem[_2743])]
                        else:
                            _2727 = mem[(32 * s) + _883 + 32]
                            _2744 = mem[mem[(32 * s) + 128] + 32]
                            _2745 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2745 + 36] = _2727
                            mem[_2745 + 68] = 0
                            mem[_2745 + 100] = this.address
                            mem[_2745 + 132] = 128
                            mem[_2745 + 164] = mem[_2745]
                            idx = 0
                            while idx < mem[_2745]:
                                mem[idx + _2745 + 196] = mem[idx + _2745 + 32]
                                _2594 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2745]) > mem[_2745]:
                                mem[mem[_2745] + _2745 + 196] = 0
                            require ext_code.size(address(_2744))
                            call address(_2744).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2727, 0, address(this.address), 128, mem[_2745], mem[_2745 + 196 len ceil32(mem[_2745])]
                    else:
                        require s + 1 < mem[96]
                        _2648 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2746 = mem[(32 * s) + _883 + 32]
                            _2768 = mem[mem[(32 * s) + 128] + 32]
                            _2769 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2769 + 36] = 0
                            mem[_2769 + 68] = _2746
                            mem[_2769 + 100] = address(_2648)
                            mem[_2769 + 132] = 128
                            mem[_2769 + 164] = mem[_2769]
                            t = 0
                            while t < mem[_2769]:
                                mem[t + _2769 + 196] = mem[t + _2769 + 32]
                                _2594 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2769]) > mem[_2769]:
                                mem[mem[_2769] + _2769 + 196] = 0
                            require ext_code.size(address(_2768))
                            call address(_2768).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2746, address(_2648), 128, mem[_2769], mem[_2769 + 196 len ceil32(mem[_2769])]
                        else:
                            _2747 = mem[(32 * s) + _883 + 32]
                            _2770 = mem[mem[(32 * s) + 128] + 32]
                            _2771 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2771 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2771 + 36] = _2747
                            mem[_2771 + 68] = 0
                            mem[_2771 + 100] = address(_2648)
                            mem[_2771 + 132] = 128
                            mem[_2771 + 164] = mem[_2771]
                            t = 0
                            while t < mem[_2771]:
                                mem[t + _2771 + 196] = mem[t + _2771 + 32]
                                _2594 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2771]) > mem[_2771]:
                                mem[mem[_2771] + _2771 + 196] = 0
                            require ext_code.size(address(_2770))
                            call address(_2770).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2747, 0, address(_2648), 128, mem[_2771], mem[_2771 + 196 len ceil32(mem[_2771])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2594 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2802] == mem[_2802]
                if mem[_2802] <= _880:
                    revert with 0, 'P'
            else:
                mem[_883 + (32 * _882) + 64 len 32 * _887] = code.data[8003 len 32 * _887]
                _1745 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1745:
                    _1754 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1754] = 0
                    mem[_1754 + 32] = 0
                    mem[_1754 + 64] = 0
                    mem[_1754 + 96] = 0
                    mem[_1754 + 128] = 0
                    mem[_1754 + 160] = 0
                    mem[_1754 + 192] = 0
                    mem[_1754 + 224] = 0
                    require idx < mem[96]
                    _1780 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1824 = mem[_1816]
                    require mem[_1816] == mem[_1816 + 18 len 14]
                    _1843 = mem[_1816 + 32]
                    require mem[_1816 + 32] == mem[_1816 + 50 len 14]
                    require mem[_1816 + 64] == mem[_1816 + 92 len 4]
                    _1875 = mem[_1780 + 128]
                    _1876 = mem[_1780 + 160]
                    if mem[_1780 + 140 len 20] == mem[_1780 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1780 + 140 len 20] < mem[_1780 + 172 len 20]:
                        if not mem[_1780 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1780 + 140 len 20] == mem[_1780 + 140 len 20]:
                            _1988 = mem[_1780]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1824)
                            mem[mem[64] + 68] = Mask(112, 0, _1843)
                            require ext_code.size(address(_1988))
                            staticcall address(_1988).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1824 << 144, Mask(112, 0, _1843)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2156] == mem[_2156]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2156]
                        else:
                            _1990 = mem[_1780]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1843)
                            mem[mem[64] + 68] = Mask(112, 0, _1824)
                            require ext_code.size(address(_1990))
                            staticcall address(_1990).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1843 << 144, Mask(112, 0, _1824)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2157] == mem[_2157]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2157]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1780 + 140 len 20] == address(_1875)
                    else:
                        if not mem[_1780 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1780 + 140 len 20] == mem[_1780 + 172 len 20]:
                            _1992 = mem[_1780]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1824)
                            mem[mem[64] + 68] = Mask(112, 0, _1843)
                            require ext_code.size(address(_1992))
                            staticcall address(_1992).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1824 << 144, Mask(112, 0, _1843)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2158] == mem[_2158]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2158]
                        else:
                            _1994 = mem[_1780]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1843)
                            mem[mem[64] + 68] = Mask(112, 0, _1824)
                            require ext_code.size(address(_1994))
                            staticcall address(_1994).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1843 << 144, Mask(112, 0, _1824)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2159] == mem[_2159]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2159]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1780 + 140 len 20] == address(_1876)
                    _1745 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _883 + 32]
                    continue 
                require mem[96] - 1 < mem[_883]
                if mem[(32 * mem[96] - 1) + _883 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1853 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1853] == bool(mem[_1853])
                _2595 = mem[96]
                s = 0
                while s < _2595:
                    _2625 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2625] = 0
                    mem[_2625 + 32] = 0
                    mem[_2625 + 64] = 0
                    mem[_2625 + 96] = 0
                    mem[_2625 + 128] = 0
                    mem[_2625 + 160] = 0
                    mem[_2625 + 192] = 0
                    mem[_2625 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2730 = mem[(32 * s) + _883 + 32]
                            _2748 = mem[mem[(32 * s) + 128] + 32]
                            _2749 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2749 + 36] = 0
                            mem[_2749 + 68] = _2730
                            mem[_2749 + 100] = this.address
                            mem[_2749 + 132] = 128
                            mem[_2749 + 164] = mem[_2749]
                            idx = 0
                            while idx < mem[_2749]:
                                mem[idx + _2749 + 196] = mem[idx + _2749 + 32]
                                _2595 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2749]) > mem[_2749]:
                                mem[mem[_2749] + _2749 + 196] = 0
                            require ext_code.size(address(_2748))
                            call address(_2748).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2730, address(this.address), 128, mem[_2749], mem[_2749 + 196 len ceil32(mem[_2749])]
                        else:
                            _2731 = mem[(32 * s) + _883 + 32]
                            _2750 = mem[mem[(32 * s) + 128] + 32]
                            _2751 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2751 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2751 + 36] = _2731
                            mem[_2751 + 68] = 0
                            mem[_2751 + 100] = this.address
                            mem[_2751 + 132] = 128
                            mem[_2751 + 164] = mem[_2751]
                            idx = 0
                            while idx < mem[_2751]:
                                mem[idx + _2751 + 196] = mem[idx + _2751 + 32]
                                _2595 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2751]) > mem[_2751]:
                                mem[mem[_2751] + _2751 + 196] = 0
                            require ext_code.size(address(_2750))
                            call address(_2750).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2731, 0, address(this.address), 128, mem[_2751], mem[_2751 + 196 len ceil32(mem[_2751])]
                    else:
                        require s + 1 < mem[96]
                        _2651 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2752 = mem[(32 * s) + _883 + 32]
                            _2774 = mem[mem[(32 * s) + 128] + 32]
                            _2775 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2775 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2775 + 36] = 0
                            mem[_2775 + 68] = _2752
                            mem[_2775 + 100] = address(_2651)
                            mem[_2775 + 132] = 128
                            mem[_2775 + 164] = mem[_2775]
                            t = 0
                            while t < mem[_2775]:
                                mem[t + _2775 + 196] = mem[t + _2775 + 32]
                                _2595 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2775]) > mem[_2775]:
                                mem[mem[_2775] + _2775 + 196] = 0
                            require ext_code.size(address(_2774))
                            call address(_2774).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2752, address(_2651), 128, mem[_2775], mem[_2775 + 196 len ceil32(mem[_2775])]
                        else:
                            _2753 = mem[(32 * s) + _883 + 32]
                            _2776 = mem[mem[(32 * s) + 128] + 32]
                            _2777 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2777 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2777 + 36] = _2753
                            mem[_2777 + 68] = 0
                            mem[_2777 + 100] = address(_2651)
                            mem[_2777 + 132] = 128
                            mem[_2777 + 164] = mem[_2777]
                            t = 0
                            while t < mem[_2777]:
                                mem[t + _2777 + 196] = mem[t + _2777 + 32]
                                _2595 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2777]) > mem[_2777]:
                                mem[mem[_2777] + _2777 + 196] = 0
                            require ext_code.size(address(_2776))
                            call address(_2776).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2753, 0, address(_2651), 128, mem[_2777], mem[_2777 + 196 len ceil32(mem[_2777])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2595 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2803] == mem[_2803]
                if mem[_2803] <= _880:
                    revert with 0, 'P'
        else:
            mem[mem[64] + 32 len 32 * _882] = code.data[8003 len 32 * _882]
            _889 = mem[96]
            mem[mem[64] + (32 * _882) + 32] = mem[96]
            mem[64] = _883 + (32 * _882) + (32 * _889) + 64
            if not _889:
                _1746 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1746:
                    _1757 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1757] = 0
                    mem[_1757 + 32] = 0
                    mem[_1757 + 64] = 0
                    mem[_1757 + 96] = 0
                    mem[_1757 + 128] = 0
                    mem[_1757 + 160] = 0
                    mem[_1757 + 192] = 0
                    mem[_1757 + 224] = 0
                    require idx < mem[96]
                    _1786 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1825 = mem[_1817]
                    require mem[_1817] == mem[_1817 + 18 len 14]
                    _1844 = mem[_1817 + 32]
                    require mem[_1817 + 32] == mem[_1817 + 50 len 14]
                    require mem[_1817 + 64] == mem[_1817 + 92 len 4]
                    _1878 = mem[_1786 + 128]
                    _1879 = mem[_1786 + 160]
                    if mem[_1786 + 140 len 20] == mem[_1786 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1786 + 140 len 20] < mem[_1786 + 172 len 20]:
                        if not mem[_1786 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1786 + 140 len 20] == mem[_1786 + 140 len 20]:
                            _2000 = mem[_1786]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1825)
                            mem[mem[64] + 68] = Mask(112, 0, _1844)
                            require ext_code.size(address(_2000))
                            staticcall address(_2000).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1825 << 144, Mask(112, 0, _1844)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2160] == mem[_2160]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2160]
                        else:
                            _2002 = mem[_1786]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1844)
                            mem[mem[64] + 68] = Mask(112, 0, _1825)
                            require ext_code.size(address(_2002))
                            staticcall address(_2002).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1844 << 144, Mask(112, 0, _1825)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2161 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2161] == mem[_2161]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2161]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1786 + 140 len 20] == address(_1878)
                    else:
                        if not mem[_1786 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1786 + 140 len 20] == mem[_1786 + 172 len 20]:
                            _2004 = mem[_1786]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1825)
                            mem[mem[64] + 68] = Mask(112, 0, _1844)
                            require ext_code.size(address(_2004))
                            staticcall address(_2004).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1825 << 144, Mask(112, 0, _1844)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2162 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2162] == mem[_2162]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2162]
                        else:
                            _2006 = mem[_1786]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1844)
                            mem[mem[64] + 68] = Mask(112, 0, _1825)
                            require ext_code.size(address(_2006))
                            staticcall address(_2006).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1844 << 144, Mask(112, 0, _1825)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2163 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2163] == mem[_2163]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2163]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1786 + 140 len 20] == address(_1879)
                    _1746 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _883 + 32]
                    continue 
                require mem[96] - 1 < mem[_883]
                if mem[(32 * mem[96] - 1) + _883 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1854] == bool(mem[_1854])
                _2596 = mem[96]
                s = 0
                while s < _2596:
                    _2627 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2627] = 0
                    mem[_2627 + 32] = 0
                    mem[_2627 + 64] = 0
                    mem[_2627 + 96] = 0
                    mem[_2627 + 128] = 0
                    mem[_2627 + 160] = 0
                    mem[_2627 + 192] = 0
                    mem[_2627 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2734 = mem[(32 * s) + _883 + 32]
                            _2754 = mem[mem[(32 * s) + 128] + 32]
                            _2755 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2755 + 36] = 0
                            mem[_2755 + 68] = _2734
                            mem[_2755 + 100] = this.address
                            mem[_2755 + 132] = 128
                            mem[_2755 + 164] = mem[_2755]
                            idx = 0
                            while idx < mem[_2755]:
                                mem[idx + _2755 + 196] = mem[idx + _2755 + 32]
                                _2596 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2755]) > mem[_2755]:
                                mem[mem[_2755] + _2755 + 196] = 0
                            require ext_code.size(address(_2754))
                            call address(_2754).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2734, address(this.address), 128, mem[_2755], mem[_2755 + 196 len ceil32(mem[_2755])]
                        else:
                            _2735 = mem[(32 * s) + _883 + 32]
                            _2756 = mem[mem[(32 * s) + 128] + 32]
                            _2757 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2757 + 36] = _2735
                            mem[_2757 + 68] = 0
                            mem[_2757 + 100] = this.address
                            mem[_2757 + 132] = 128
                            mem[_2757 + 164] = mem[_2757]
                            idx = 0
                            while idx < mem[_2757]:
                                mem[idx + _2757 + 196] = mem[idx + _2757 + 32]
                                _2596 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2757]) > mem[_2757]:
                                mem[mem[_2757] + _2757 + 196] = 0
                            require ext_code.size(address(_2756))
                            call address(_2756).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2735, 0, address(this.address), 128, mem[_2757], mem[_2757 + 196 len ceil32(mem[_2757])]
                    else:
                        require s + 1 < mem[96]
                        _2654 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2758 = mem[(32 * s) + _883 + 32]
                            _2780 = mem[mem[(32 * s) + 128] + 32]
                            _2781 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2781 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2781 + 36] = 0
                            mem[_2781 + 68] = _2758
                            mem[_2781 + 100] = address(_2654)
                            mem[_2781 + 132] = 128
                            mem[_2781 + 164] = mem[_2781]
                            t = 0
                            while t < mem[_2781]:
                                mem[t + _2781 + 196] = mem[t + _2781 + 32]
                                _2596 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2781]) > mem[_2781]:
                                mem[mem[_2781] + _2781 + 196] = 0
                            require ext_code.size(address(_2780))
                            call address(_2780).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2758, address(_2654), 128, mem[_2781], mem[_2781 + 196 len ceil32(mem[_2781])]
                        else:
                            _2759 = mem[(32 * s) + _883 + 32]
                            _2782 = mem[mem[(32 * s) + 128] + 32]
                            _2783 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2783 + 36] = _2759
                            mem[_2783 + 68] = 0
                            mem[_2783 + 100] = address(_2654)
                            mem[_2783 + 132] = 128
                            mem[_2783 + 164] = mem[_2783]
                            t = 0
                            while t < mem[_2783]:
                                mem[t + _2783 + 196] = mem[t + _2783 + 32]
                                _2596 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2783]) > mem[_2783]:
                                mem[mem[_2783] + _2783 + 196] = 0
                            require ext_code.size(address(_2782))
                            call address(_2782).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2759, 0, address(_2654), 128, mem[_2783], mem[_2783 + 196 len ceil32(mem[_2783])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2596 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2804] == mem[_2804]
                if mem[_2804] <= _880:
                    revert with 0, 'P'
            else:
                mem[_883 + (32 * _882) + 64 len 32 * _889] = code.data[8003 len 32 * _889]
                _1747 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1747:
                    _1760 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1760] = 0
                    mem[_1760 + 32] = 0
                    mem[_1760 + 64] = 0
                    mem[_1760 + 96] = 0
                    mem[_1760 + 128] = 0
                    mem[_1760 + 160] = 0
                    mem[_1760 + 192] = 0
                    mem[_1760 + 224] = 0
                    require idx < mem[96]
                    _1792 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1826 = mem[_1818]
                    require mem[_1818] == mem[_1818 + 18 len 14]
                    _1845 = mem[_1818 + 32]
                    require mem[_1818 + 32] == mem[_1818 + 50 len 14]
                    require mem[_1818 + 64] == mem[_1818 + 92 len 4]
                    _1881 = mem[_1792 + 128]
                    _1882 = mem[_1792 + 160]
                    if mem[_1792 + 140 len 20] == mem[_1792 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1792 + 140 len 20] < mem[_1792 + 172 len 20]:
                        if not mem[_1792 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1792 + 140 len 20] == mem[_1792 + 140 len 20]:
                            _2012 = mem[_1792]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1826)
                            mem[mem[64] + 68] = Mask(112, 0, _1845)
                            require ext_code.size(address(_2012))
                            staticcall address(_2012).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1826 << 144, Mask(112, 0, _1845)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2164 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2164] == mem[_2164]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2164]
                        else:
                            _2014 = mem[_1792]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1845)
                            mem[mem[64] + 68] = Mask(112, 0, _1826)
                            require ext_code.size(address(_2014))
                            staticcall address(_2014).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1845 << 144, Mask(112, 0, _1826)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2165] == mem[_2165]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2165]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1792 + 140 len 20] == address(_1881)
                    else:
                        if not mem[_1792 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1792 + 140 len 20] == mem[_1792 + 172 len 20]:
                            _2016 = mem[_1792]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1826)
                            mem[mem[64] + 68] = Mask(112, 0, _1845)
                            require ext_code.size(address(_2016))
                            staticcall address(_2016).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1826 << 144, Mask(112, 0, _1845)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2166 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2166] == mem[_2166]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2166]
                        else:
                            _2018 = mem[_1792]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1845)
                            mem[mem[64] + 68] = Mask(112, 0, _1826)
                            require ext_code.size(address(_2018))
                            staticcall address(_2018).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1845 << 144, Mask(112, 0, _1826)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2167 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2167] == mem[_2167]
                            require idx < mem[_883]
                            mem[(32 * idx) + _883 + 32] = mem[_2167]
                        require idx < mem[_883]
                        require idx < mem[_883 + (32 * _882) + 32]
                        mem[(32 * idx) + _883 + (32 * _882) + 64] = mem[_1792 + 140 len 20] == address(_1882)
                    _1747 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _883 + 32]
                    continue 
                require mem[96] - 1 < mem[_883]
                if mem[(32 * mem[96] - 1) + _883 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1855 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1855] == bool(mem[_1855])
                _2597 = mem[96]
                s = 0
                while s < _2597:
                    _2629 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2629] = 0
                    mem[_2629 + 32] = 0
                    mem[_2629 + 64] = 0
                    mem[_2629 + 96] = 0
                    mem[_2629 + 128] = 0
                    mem[_2629 + 160] = 0
                    mem[_2629 + 192] = 0
                    mem[_2629 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2738 = mem[(32 * s) + _883 + 32]
                            _2760 = mem[mem[(32 * s) + 128] + 32]
                            _2761 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2761 + 36] = 0
                            mem[_2761 + 68] = _2738
                            mem[_2761 + 100] = this.address
                            mem[_2761 + 132] = 128
                            mem[_2761 + 164] = mem[_2761]
                            idx = 0
                            while idx < mem[_2761]:
                                mem[idx + _2761 + 196] = mem[idx + _2761 + 32]
                                _2597 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2761]) > mem[_2761]:
                                mem[mem[_2761] + _2761 + 196] = 0
                            require ext_code.size(address(_2760))
                            call address(_2760).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2738, address(this.address), 128, mem[_2761], mem[_2761 + 196 len ceil32(mem[_2761])]
                        else:
                            _2739 = mem[(32 * s) + _883 + 32]
                            _2762 = mem[mem[(32 * s) + 128] + 32]
                            _2763 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2763 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2763 + 36] = _2739
                            mem[_2763 + 68] = 0
                            mem[_2763 + 100] = this.address
                            mem[_2763 + 132] = 128
                            mem[_2763 + 164] = mem[_2763]
                            idx = 0
                            while idx < mem[_2763]:
                                mem[idx + _2763 + 196] = mem[idx + _2763 + 32]
                                _2597 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2763]) > mem[_2763]:
                                mem[mem[_2763] + _2763 + 196] = 0
                            require ext_code.size(address(_2762))
                            call address(_2762).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2739, 0, address(this.address), 128, mem[_2763], mem[_2763 + 196 len ceil32(mem[_2763])]
                    else:
                        require s + 1 < mem[96]
                        _2657 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_883 + (32 * _882) + 32]
                        require s < mem[_883]
                        if mem[(32 * s) + _883 + (32 * _882) + 64]:
                            _2764 = mem[(32 * s) + _883 + 32]
                            _2786 = mem[mem[(32 * s) + 128] + 32]
                            _2787 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2787 + 36] = 0
                            mem[_2787 + 68] = _2764
                            mem[_2787 + 100] = address(_2657)
                            mem[_2787 + 132] = 128
                            mem[_2787 + 164] = mem[_2787]
                            t = 0
                            while t < mem[_2787]:
                                mem[t + _2787 + 196] = mem[t + _2787 + 32]
                                _2597 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2787]) > mem[_2787]:
                                mem[mem[_2787] + _2787 + 196] = 0
                            require ext_code.size(address(_2786))
                            call address(_2786).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2764, address(_2657), 128, mem[_2787], mem[_2787 + 196 len ceil32(mem[_2787])]
                        else:
                            _2765 = mem[(32 * s) + _883 + 32]
                            _2788 = mem[mem[(32 * s) + 128] + 32]
                            _2789 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2789 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2789 + 36] = _2765
                            mem[_2789 + 68] = 0
                            mem[_2789 + 100] = address(_2657)
                            mem[_2789 + 132] = 128
                            mem[_2789 + 164] = mem[_2789]
                            t = 0
                            while t < mem[_2789]:
                                mem[t + _2789 + 196] = mem[t + _2789 + 32]
                                _2597 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2789]) > mem[_2789]:
                                mem[mem[_2789] + _2789 + 196] = 0
                            require ext_code.size(address(_2788))
                            call address(_2788).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2765, 0, address(_2657), 128, mem[_2789], mem[_2789 + 196 len ceil32(mem[_2789])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2597 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2805] == mem[_2805]
                if mem[_2805] <= _880:
                    revert with 0, 'P'
    if eth.balance(msg.sender) < stor4:
        require ext_code.size(stor0)
        call stor0.0x2e1a7d4d with:
             gas gas_remaining wei
            args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
}



}
