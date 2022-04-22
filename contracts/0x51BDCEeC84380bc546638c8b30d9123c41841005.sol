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
    call stor0.withdraw(uint256 rg1) with:
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
        _841 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_841] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_841 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_841 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_841 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_841 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_841 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_841 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_841 + 224] = cd[(s + 224)]
        mem[t] = _841
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
    _847 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _848 = mem[_847]
    require mem[_847] == mem[_847]
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
        _931 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_931] == bool(mem[_931])
        _1684 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _1684:
            _1697 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1697] = 0
            mem[_1697 + 32] = 0
            mem[_1697 + 64] = 0
            mem[_1697 + 96] = 0
            mem[_1697 + 128] = 0
            mem[_1697 + 160] = 0
            mem[_1697 + 192] = 0
            mem[_1697 + 224] = 0
            require idx < mem[96]
            _1732 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                _1749 = mem[mem[(32 * idx) + 128] + 32]
                _1750 = mem[mem[(32 * idx) + 128] + 128]
                _1755 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_1755][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 224]:
                        _1769 = mem[mem[(32 * idx) + 128] + 32]
                        _1770 = mem[mem[(32 * idx) + 128] + 64]
                        _1771 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_1770'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_1771'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_1769))
                        call address(_1769).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_1770')), ('signextend', 15, ('var', '_1771')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1859 = mem[_1732 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_1859))
                        staticcall address(_1859).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2058 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2058] == mem[_2058]
                        _1684 = mem[96]
                        idx = idx + 1
                        s = mem[_2058]
                        continue 
                    _1773 = mem[mem[(32 * idx) + 128] + 32]
                    _1774 = mem[mem[(32 * idx) + 128] + 64]
                    _1775 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1774'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1775'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1773))
                    call address(_1773).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1774')), ('signextend', 15, ('var', '_1775')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1861 = mem[_1732 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1861))
                    staticcall address(_1861).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2059] == mem[_2059]
                    _1684 = mem[96]
                    idx = idx + 1
                    s = mem[_2059]
                    continue 
                mem[mem[64] + 4] = address(_1749)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1750))
                call address(_1750).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_1749), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1794] == bool(mem[_1794])
                mem[0] = address(_1750)
                mem[32] = sha3(address(_1749), 1)
                if not mem[_1732 + 224]:
                    _1842 = mem[_1732 + 32]
                    _1843 = mem[_1732 + 64]
                    _1844 = mem[_1732 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1843'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1844'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1842))
                    call address(_1842).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1843')), ('signextend', 15, ('var', '_1844')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2108 = mem[_1732 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_2108))
                    staticcall address(_2108).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2302] == mem[_2302]
                    _1684 = mem[96]
                    idx = idx + 1
                    s = mem[_2302]
                    continue 
                _1846 = mem[_1732 + 32]
                _1847 = mem[_1732 + 64]
                _1848 = mem[_1732 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1847'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1848'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1846))
                call address(_1846).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1847')), ('signextend', 15, ('var', '_1848')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2110 = mem[_1732 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2110))
                staticcall address(_2110).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2303] == mem[_2303]
                _1684 = mem[96]
                idx = idx + 1
                s = mem[_2303]
                continue 
            require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
            staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1767 = mem[_1757]
            require mem[_1757] == mem[_1757 + 18 len 14]
            _1787 = mem[_1757 + 32]
            require mem[_1757 + 32] == mem[_1757 + 50 len 14]
            require mem[_1757 + 64] == mem[_1757 + 92 len 4]
            _1819 = mem[_1732 + 128]
            _1820 = mem[_1732 + 160]
            if mem[_1732 + 140 len 20] == mem[_1732 + 172 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[_1732 + 140 len 20] < mem[_1732 + 172 len 20]:
                if not mem[_1732 + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[_1732 + 140 len 20] == mem[_1732 + 140 len 20]:
                    _1973 = mem[_1732]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1767)
                    mem[mem[64] + 68] = Mask(112, 0, _1787)
                    require ext_code.size(address(_1973))
                    staticcall address(_1973).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _1767 << 144, Mask(112, 0, _1787)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2144 = mem[_2104]
                    require mem[_2104] == mem[_2104]
                    if mem[_1732 + 140 len 20] == address(_1819):
                        if idx == mem[96] - 1:
                            _2286 = mem[_1732 + 32]
                            _2287 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2287 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2287 + 36] = 0
                            mem[_2287 + 68] = _2144
                            mem[_2287 + 100] = this.address
                            mem[_2287 + 132] = 128
                            mem[_2287 + 164] = mem[_2287]
                            s = 0
                            while s < mem[_2287]:
                                mem[s + _2287 + 196] = mem[s + _2287 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2287]) > mem[_2287]:
                                mem[mem[_2287] + _2287 + 196] = 0
                            require ext_code.size(address(_2286))
                            call address(_2286).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2144, address(this.address), 128, mem[_2287], mem[_2287 + 196 len ceil32(mem[_2287])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2336 = mem[_1732 + 32]
                                _2337 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2337 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2337 + 36] = 0
                                mem[_2337 + 68] = _2144
                                mem[_2337 + 100] = this.address
                                mem[_2337 + 132] = 128
                                mem[_2337 + 164] = mem[_2337]
                                s = 0
                                while s < mem[_2337]:
                                    mem[s + _2337 + 196] = mem[s + _2337 + 32]
                                    _1684 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2337]) > mem[_2337]:
                                    mem[mem[_2337] + _2337 + 196] = 0
                                require ext_code.size(address(_2336))
                                call address(_2336).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2144, address(this.address), 128, mem[_2337], mem[_2337 + 196 len ceil32(mem[_2337])]
                            else:
                                require idx + 1 < mem[96]
                                _2339 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2369 = mem[_1732 + 32]
                                _2370 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2370 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2370 + 36] = 0
                                mem[_2370 + 68] = _2144
                                mem[_2370 + 100] = address(_2339)
                                mem[_2370 + 132] = 128
                                mem[_2370 + 164] = mem[_2370]
                                s = 0
                                while s < mem[_2370]:
                                    mem[s + _2370 + 196] = mem[s + _2370 + 32]
                                    _1684 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2370]) > mem[_2370]:
                                    mem[mem[_2370] + _2370 + 196] = 0
                                require ext_code.size(address(_2369))
                                call address(_2369).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2144, address(_2339), 128, mem[_2370], mem[_2370 + 196 len ceil32(mem[_2370])]
                    else:
                        if idx == mem[96] - 1:
                            _2288 = mem[_1732 + 32]
                            _2289 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2289 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2289 + 36] = _2144
                            mem[_2289 + 68] = 0
                            mem[_2289 + 100] = this.address
                            mem[_2289 + 132] = 128
                            mem[_2289 + 164] = mem[_2289]
                            s = 0
                            while s < mem[_2289]:
                                mem[s + _2289 + 196] = mem[s + _2289 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2289]) > mem[_2289]:
                                mem[mem[_2289] + _2289 + 196] = 0
                            require ext_code.size(address(_2288))
                            call address(_2288).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2144, 0, address(this.address), 128, mem[_2289], mem[_2289 + 196 len ceil32(mem[_2289])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2340 = mem[_1732 + 32]
                                _2341 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2341 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2341 + 36] = _2144
                                mem[_2341 + 68] = 0
                                mem[_2341 + 100] = this.address
                                mem[_2341 + 132] = 128
                                mem[_2341 + 164] = mem[_2341]
                                s = 0
                                while s < mem[_2341]:
                                    mem[s + _2341 + 196] = mem[s + _2341 + 32]
                                    _1684 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2341]) > mem[_2341]:
                                    mem[mem[_2341] + _2341 + 196] = 0
                                require ext_code.size(address(_2340))
                                call address(_2340).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2144, 0, address(this.address), 128, mem[_2341], mem[_2341 + 196 len ceil32(mem[_2341])]
                            else:
                                require idx + 1 < mem[96]
                                _2343 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2372 = mem[_1732 + 32]
                                _2373 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2373 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2373 + 36] = _2144
                                mem[_2373 + 68] = 0
                                mem[_2373 + 100] = address(_2343)
                                mem[_2373 + 132] = 128
                                mem[_2373 + 164] = mem[_2373]
                                s = 0
                                while s < mem[_2373]:
                                    mem[s + _2373 + 196] = mem[s + _2373 + 32]
                                    _1684 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2373]) > mem[_2373]:
                                    mem[mem[_2373] + _2373 + 196] = 0
                                require ext_code.size(address(_2372))
                                call address(_2372).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2144, 0, address(_2343), 128, mem[_2373], mem[_2373 + 196 len ceil32(mem[_2373])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1684 = mem[96]
                    idx = idx + 1
                    s = _2144
                    continue 
                _1975 = mem[_1732]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1787)
                mem[mem[64] + 68] = Mask(112, 0, _1767)
                require ext_code.size(address(_1975))
                staticcall address(_1975).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _1787 << 144, Mask(112, 0, _1767)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2145 = mem[_2105]
                require mem[_2105] == mem[_2105]
                if mem[_1732 + 140 len 20] == address(_1819):
                    if idx == mem[96] - 1:
                        _2290 = mem[_1732 + 32]
                        _2291 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2291 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2291 + 36] = 0
                        mem[_2291 + 68] = _2145
                        mem[_2291 + 100] = this.address
                        mem[_2291 + 132] = 128
                        mem[_2291 + 164] = mem[_2291]
                        s = 0
                        while s < mem[_2291]:
                            mem[s + _2291 + 196] = mem[s + _2291 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2291]) > mem[_2291]:
                            mem[mem[_2291] + _2291 + 196] = 0
                        require ext_code.size(address(_2290))
                        call address(_2290).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2145, address(this.address), 128, mem[_2291], mem[_2291 + 196 len ceil32(mem[_2291])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2344 = mem[_1732 + 32]
                            _2345 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2345 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2345 + 36] = 0
                            mem[_2345 + 68] = _2145
                            mem[_2345 + 100] = this.address
                            mem[_2345 + 132] = 128
                            mem[_2345 + 164] = mem[_2345]
                            s = 0
                            while s < mem[_2345]:
                                mem[s + _2345 + 196] = mem[s + _2345 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2345]) > mem[_2345]:
                                mem[mem[_2345] + _2345 + 196] = 0
                            require ext_code.size(address(_2344))
                            call address(_2344).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2145, address(this.address), 128, mem[_2345], mem[_2345 + 196 len ceil32(mem[_2345])]
                        else:
                            require idx + 1 < mem[96]
                            _2347 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2375 = mem[_1732 + 32]
                            _2376 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2376 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2376 + 36] = 0
                            mem[_2376 + 68] = _2145
                            mem[_2376 + 100] = address(_2347)
                            mem[_2376 + 132] = 128
                            mem[_2376 + 164] = mem[_2376]
                            s = 0
                            while s < mem[_2376]:
                                mem[s + _2376 + 196] = mem[s + _2376 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2376]) > mem[_2376]:
                                mem[mem[_2376] + _2376 + 196] = 0
                            require ext_code.size(address(_2375))
                            call address(_2375).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2145, address(_2347), 128, mem[_2376], mem[_2376 + 196 len ceil32(mem[_2376])]
                else:
                    if idx == mem[96] - 1:
                        _2292 = mem[_1732 + 32]
                        _2293 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2293 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2293 + 36] = _2145
                        mem[_2293 + 68] = 0
                        mem[_2293 + 100] = this.address
                        mem[_2293 + 132] = 128
                        mem[_2293 + 164] = mem[_2293]
                        s = 0
                        while s < mem[_2293]:
                            mem[s + _2293 + 196] = mem[s + _2293 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2293]) > mem[_2293]:
                            mem[mem[_2293] + _2293 + 196] = 0
                        require ext_code.size(address(_2292))
                        call address(_2292).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2145, 0, address(this.address), 128, mem[_2293], mem[_2293 + 196 len ceil32(mem[_2293])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2348 = mem[_1732 + 32]
                            _2349 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2349 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2349 + 36] = _2145
                            mem[_2349 + 68] = 0
                            mem[_2349 + 100] = this.address
                            mem[_2349 + 132] = 128
                            mem[_2349 + 164] = mem[_2349]
                            s = 0
                            while s < mem[_2349]:
                                mem[s + _2349 + 196] = mem[s + _2349 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2349]) > mem[_2349]:
                                mem[mem[_2349] + _2349 + 196] = 0
                            require ext_code.size(address(_2348))
                            call address(_2348).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2145, 0, address(this.address), 128, mem[_2349], mem[_2349 + 196 len ceil32(mem[_2349])]
                        else:
                            require idx + 1 < mem[96]
                            _2351 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2378 = mem[_1732 + 32]
                            _2379 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2379 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2379 + 36] = _2145
                            mem[_2379 + 68] = 0
                            mem[_2379 + 100] = address(_2351)
                            mem[_2379 + 132] = 128
                            mem[_2379 + 164] = mem[_2379]
                            s = 0
                            while s < mem[_2379]:
                                mem[s + _2379 + 196] = mem[s + _2379 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2379]) > mem[_2379]:
                                mem[mem[_2379] + _2379 + 196] = 0
                            require ext_code.size(address(_2378))
                            call address(_2378).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2145, 0, address(_2351), 128, mem[_2379], mem[_2379 + 196 len ceil32(mem[_2379])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1684 = mem[96]
                idx = idx + 1
                s = _2145
                continue 
            if not mem[_1732 + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if mem[_1732 + 140 len 20] == mem[_1732 + 172 len 20]:
                _1977 = mem[_1732]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1767)
                mem[mem[64] + 68] = Mask(112, 0, _1787)
                require ext_code.size(address(_1977))
                staticcall address(_1977).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _1767 << 144, Mask(112, 0, _1787)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2146 = mem[_2106]
                require mem[_2106] == mem[_2106]
                if mem[_1732 + 140 len 20] == address(_1820):
                    if idx == mem[96] - 1:
                        _2294 = mem[_1732 + 32]
                        _2295 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2295 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2295 + 36] = 0
                        mem[_2295 + 68] = _2146
                        mem[_2295 + 100] = this.address
                        mem[_2295 + 132] = 128
                        mem[_2295 + 164] = mem[_2295]
                        s = 0
                        while s < mem[_2295]:
                            mem[s + _2295 + 196] = mem[s + _2295 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2295]) > mem[_2295]:
                            mem[mem[_2295] + _2295 + 196] = 0
                        require ext_code.size(address(_2294))
                        call address(_2294).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2146, address(this.address), 128, mem[_2295], mem[_2295 + 196 len ceil32(mem[_2295])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2352 = mem[_1732 + 32]
                            _2353 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2353 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2353 + 36] = 0
                            mem[_2353 + 68] = _2146
                            mem[_2353 + 100] = this.address
                            mem[_2353 + 132] = 128
                            mem[_2353 + 164] = mem[_2353]
                            s = 0
                            while s < mem[_2353]:
                                mem[s + _2353 + 196] = mem[s + _2353 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2353]) > mem[_2353]:
                                mem[mem[_2353] + _2353 + 196] = 0
                            require ext_code.size(address(_2352))
                            call address(_2352).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2146, address(this.address), 128, mem[_2353], mem[_2353 + 196 len ceil32(mem[_2353])]
                        else:
                            require idx + 1 < mem[96]
                            _2355 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2381 = mem[_1732 + 32]
                            _2382 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2382 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2382 + 36] = 0
                            mem[_2382 + 68] = _2146
                            mem[_2382 + 100] = address(_2355)
                            mem[_2382 + 132] = 128
                            mem[_2382 + 164] = mem[_2382]
                            s = 0
                            while s < mem[_2382]:
                                mem[s + _2382 + 196] = mem[s + _2382 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2382]) > mem[_2382]:
                                mem[mem[_2382] + _2382 + 196] = 0
                            require ext_code.size(address(_2381))
                            call address(_2381).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2146, address(_2355), 128, mem[_2382], mem[_2382 + 196 len ceil32(mem[_2382])]
                else:
                    if idx == mem[96] - 1:
                        _2296 = mem[_1732 + 32]
                        _2297 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2297 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2297 + 36] = _2146
                        mem[_2297 + 68] = 0
                        mem[_2297 + 100] = this.address
                        mem[_2297 + 132] = 128
                        mem[_2297 + 164] = mem[_2297]
                        s = 0
                        while s < mem[_2297]:
                            mem[s + _2297 + 196] = mem[s + _2297 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2297]) > mem[_2297]:
                            mem[mem[_2297] + _2297 + 196] = 0
                        require ext_code.size(address(_2296))
                        call address(_2296).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2146, 0, address(this.address), 128, mem[_2297], mem[_2297 + 196 len ceil32(mem[_2297])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2356 = mem[_1732 + 32]
                            _2357 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2357 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2357 + 36] = _2146
                            mem[_2357 + 68] = 0
                            mem[_2357 + 100] = this.address
                            mem[_2357 + 132] = 128
                            mem[_2357 + 164] = mem[_2357]
                            s = 0
                            while s < mem[_2357]:
                                mem[s + _2357 + 196] = mem[s + _2357 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2357]) > mem[_2357]:
                                mem[mem[_2357] + _2357 + 196] = 0
                            require ext_code.size(address(_2356))
                            call address(_2356).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2146, 0, address(this.address), 128, mem[_2357], mem[_2357 + 196 len ceil32(mem[_2357])]
                        else:
                            require idx + 1 < mem[96]
                            _2359 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2384 = mem[_1732 + 32]
                            _2385 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2385 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2385 + 36] = _2146
                            mem[_2385 + 68] = 0
                            mem[_2385 + 100] = address(_2359)
                            mem[_2385 + 132] = 128
                            mem[_2385 + 164] = mem[_2385]
                            s = 0
                            while s < mem[_2385]:
                                mem[s + _2385 + 196] = mem[s + _2385 + 32]
                                _1684 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2385]) > mem[_2385]:
                                mem[mem[_2385] + _2385 + 196] = 0
                            require ext_code.size(address(_2384))
                            call address(_2384).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2146, 0, address(_2359), 128, mem[_2385], mem[_2385 + 196 len ceil32(mem[_2385])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1684 = mem[96]
                idx = idx + 1
                s = _2146
                continue 
            _1979 = mem[_1732]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _1787)
            mem[mem[64] + 68] = Mask(112, 0, _1767)
            require ext_code.size(address(_1979))
            staticcall address(_1979).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s, _1787 << 144, Mask(112, 0, _1767)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2147 = mem[_2107]
            require mem[_2107] == mem[_2107]
            if mem[_1732 + 140 len 20] == address(_1820):
                if idx == mem[96] - 1:
                    _2298 = mem[_1732 + 32]
                    _2299 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2299 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2299 + 36] = 0
                    mem[_2299 + 68] = _2147
                    mem[_2299 + 100] = this.address
                    mem[_2299 + 132] = 128
                    mem[_2299 + 164] = mem[_2299]
                    s = 0
                    while s < mem[_2299]:
                        mem[s + _2299 + 196] = mem[s + _2299 + 32]
                        _1684 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_2299]) > mem[_2299]:
                        mem[mem[_2299] + _2299 + 196] = 0
                    require ext_code.size(address(_2298))
                    call address(_2298).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _2147, address(this.address), 128, mem[_2299], mem[_2299 + 196 len ceil32(mem[_2299])]
                else:
                    require idx + 1 < mem[96]
                    if mem[mem[(32 * idx + 1) + 128] + 192]:
                        _2360 = mem[_1732 + 32]
                        _2361 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2361 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2361 + 36] = 0
                        mem[_2361 + 68] = _2147
                        mem[_2361 + 100] = this.address
                        mem[_2361 + 132] = 128
                        mem[_2361 + 164] = mem[_2361]
                        s = 0
                        while s < mem[_2361]:
                            mem[s + _2361 + 196] = mem[s + _2361 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2361]) > mem[_2361]:
                            mem[mem[_2361] + _2361 + 196] = 0
                        require ext_code.size(address(_2360))
                        call address(_2360).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2147, address(this.address), 128, mem[_2361], mem[_2361 + 196 len ceil32(mem[_2361])]
                    else:
                        require idx + 1 < mem[96]
                        _2363 = mem[mem[(32 * idx + 1) + 128] + 32]
                        _2387 = mem[_1732 + 32]
                        _2388 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2388 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2388 + 36] = 0
                        mem[_2388 + 68] = _2147
                        mem[_2388 + 100] = address(_2363)
                        mem[_2388 + 132] = 128
                        mem[_2388 + 164] = mem[_2388]
                        s = 0
                        while s < mem[_2388]:
                            mem[s + _2388 + 196] = mem[s + _2388 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2388]) > mem[_2388]:
                            mem[mem[_2388] + _2388 + 196] = 0
                        require ext_code.size(address(_2387))
                        call address(_2387).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2147, address(_2363), 128, mem[_2388], mem[_2388 + 196 len ceil32(mem[_2388])]
            else:
                if idx == mem[96] - 1:
                    _2300 = mem[_1732 + 32]
                    _2301 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2301 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2301 + 36] = _2147
                    mem[_2301 + 68] = 0
                    mem[_2301 + 100] = this.address
                    mem[_2301 + 132] = 128
                    mem[_2301 + 164] = mem[_2301]
                    s = 0
                    while s < mem[_2301]:
                        mem[s + _2301 + 196] = mem[s + _2301 + 32]
                        _1684 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_2301]) > mem[_2301]:
                        mem[mem[_2301] + _2301 + 196] = 0
                    require ext_code.size(address(_2300))
                    call address(_2300).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _2147, 0, address(this.address), 128, mem[_2301], mem[_2301 + 196 len ceil32(mem[_2301])]
                else:
                    require idx + 1 < mem[96]
                    if mem[mem[(32 * idx + 1) + 128] + 192]:
                        _2364 = mem[_1732 + 32]
                        _2365 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2365 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2365 + 36] = _2147
                        mem[_2365 + 68] = 0
                        mem[_2365 + 100] = this.address
                        mem[_2365 + 132] = 128
                        mem[_2365 + 164] = mem[_2365]
                        s = 0
                        while s < mem[_2365]:
                            mem[s + _2365 + 196] = mem[s + _2365 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2365]) > mem[_2365]:
                            mem[mem[_2365] + _2365 + 196] = 0
                        require ext_code.size(address(_2364))
                        call address(_2364).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2147, 0, address(this.address), 128, mem[_2365], mem[_2365 + 196 len ceil32(mem[_2365])]
                    else:
                        require idx + 1 < mem[96]
                        _2367 = mem[mem[(32 * idx + 1) + 128] + 32]
                        _2390 = mem[_1732 + 32]
                        _2391 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2391 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2391 + 36] = _2147
                        mem[_2391 + 68] = 0
                        mem[_2391 + 100] = address(_2367)
                        mem[_2391 + 132] = 128
                        mem[_2391 + 164] = mem[_2391]
                        s = 0
                        while s < mem[_2391]:
                            mem[s + _2391 + 196] = mem[s + _2391 + 32]
                            _1684 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2391]) > mem[_2391]:
                            mem[mem[_2391] + _2391 + 196] = 0
                        require ext_code.size(address(_2390))
                        call address(_2390).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2147, 0, address(_2367), 128, mem[_2391], mem[_2391 + 196 len ceil32(mem[_2391])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1684 = mem[96]
            idx = idx + 1
            s = _2147
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1786 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1786] == mem[_1786]
        if mem[_1786] <= _848:
            revert with 0, 'P'
    else:
        _850 = mem[96]
        _851 = mem[64]
        mem[mem[64]] = mem[96]
        if not _850:
            mem[mem[64] + (32 * _850) + 32] = mem[96]
            mem[64] = mem[64] + (32 * _850) + (32 * mem[96]) + 64
            if not mem[96]:
                _1680 = mem[96]
                idx = 0
                while idx < _1680:
                    _1687 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1687] = 0
                    mem[_1687 + 32] = 0
                    mem[_1687 + 64] = 0
                    mem[_1687 + 96] = 0
                    mem[_1687 + 128] = 0
                    mem[_1687 + 160] = 0
                    mem[_1687 + 192] = 0
                    mem[_1687 + 224] = 0
                    require idx < mem[96]
                    _1710 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1759 = mem[_1751]
                    require mem[_1751] == mem[_1751 + 18 len 14]
                    _1778 = mem[_1751 + 32]
                    require mem[_1751 + 32] == mem[_1751 + 50 len 14]
                    require mem[_1751 + 64] == mem[_1751 + 92 len 4]
                    _1808 = mem[_1710 + 128]
                    _1809 = mem[_1710 + 160]
                    if mem[_1710 + 140 len 20] == mem[_1710 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1710 + 140 len 20] < mem[_1710 + 172 len 20]:
                        if not mem[_1710 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1710 + 140 len 20] == mem[_1710 + 140 len 20]:
                            _1912 = mem[_1710]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1759)
                            mem[mem[64] + 68] = Mask(112, 0, _1778)
                            require ext_code.size(address(_1912))
                            staticcall address(_1912).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1759 << 144, Mask(112, 0, _1778)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2088 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2088] == mem[_2088]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2088]
                        else:
                            _1914 = mem[_1710]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1778)
                            mem[mem[64] + 68] = Mask(112, 0, _1759)
                            require ext_code.size(address(_1914))
                            staticcall address(_1914).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1778 << 144, Mask(112, 0, _1759)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2089] == mem[_2089]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2089]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1710 + 140 len 20] == address(_1808)
                    else:
                        if not mem[_1710 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1710 + 140 len 20] == mem[_1710 + 172 len 20]:
                            _1916 = mem[_1710]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1759)
                            mem[mem[64] + 68] = Mask(112, 0, _1778)
                            require ext_code.size(address(_1916))
                            staticcall address(_1916).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1759 << 144, Mask(112, 0, _1778)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2090 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2090] == mem[_2090]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2090]
                        else:
                            _1918 = mem[_1710]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1778)
                            mem[mem[64] + 68] = Mask(112, 0, _1759)
                            require ext_code.size(address(_1918))
                            staticcall address(_1918).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1778 << 144, Mask(112, 0, _1759)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2091 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2091] == mem[_2091]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2091]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1710 + 140 len 20] == address(_1809)
                    _1680 = mem[96]
                    idx = idx + 1
                    continue 
                require mem[96] - 1 < mem[_851]
                if mem[(32 * mem[96] - 1) + _851 + 32] <= cd[36]:
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
                _1788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1788] == bool(mem[_1788])
                _2498 = mem[96]
                s = 0
                while s < _2498:
                    _2527 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2527] = 0
                    mem[_2527 + 32] = 0
                    mem[_2527 + 64] = 0
                    mem[_2527 + 96] = 0
                    mem[_2527 + 128] = 0
                    mem[_2527 + 160] = 0
                    mem[_2527 + 192] = 0
                    mem[_2527 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2630 = mem[(32 * s) + _851 + 32]
                            _2646 = mem[mem[(32 * s) + 128] + 32]
                            _2647 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2647 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2647 + 36] = 0
                            mem[_2647 + 68] = _2630
                            mem[_2647 + 100] = this.address
                            mem[_2647 + 132] = 128
                            mem[_2647 + 164] = mem[_2647]
                            t = 0
                            while t < mem[_2647]:
                                mem[t + _2647 + 196] = mem[t + _2647 + 32]
                                _2498 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2647]) > mem[_2647]:
                                mem[mem[_2647] + _2647 + 196] = 0
                            require ext_code.size(address(_2646))
                            call address(_2646).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2630, address(this.address), 128, mem[_2647], mem[_2647 + 196 len ceil32(mem[_2647])]
                        else:
                            _2631 = mem[(32 * s) + _851 + 32]
                            _2648 = mem[mem[(32 * s) + 128] + 32]
                            _2649 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2649 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2649 + 36] = _2631
                            mem[_2649 + 68] = 0
                            mem[_2649 + 100] = this.address
                            mem[_2649 + 132] = 128
                            mem[_2649 + 164] = mem[_2649]
                            t = 0
                            while t < mem[_2649]:
                                mem[t + _2649 + 196] = mem[t + _2649 + 32]
                                _2498 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2649]) > mem[_2649]:
                                mem[mem[_2649] + _2649 + 196] = 0
                            require ext_code.size(address(_2648))
                            call address(_2648).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2631, 0, address(this.address), 128, mem[_2649], mem[_2649 + 196 len ceil32(mem[_2649])]
                    else:
                        require s + 1 < mem[96]
                        _2552 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2650 = mem[(32 * s) + _851 + 32]
                            _2672 = mem[mem[(32 * s) + 128] + 32]
                            _2673 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2673 + 36] = 0
                            mem[_2673 + 68] = _2650
                            mem[_2673 + 100] = address(_2552)
                            mem[_2673 + 132] = 128
                            mem[_2673 + 164] = mem[_2673]
                            idx = 0
                            while idx < mem[_2673]:
                                mem[idx + _2673 + 196] = mem[idx + _2673 + 32]
                                _2498 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2673]) > mem[_2673]:
                                mem[mem[_2673] + _2673 + 196] = 0
                            require ext_code.size(address(_2672))
                            call address(_2672).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2650, address(_2552), 128, mem[_2673], mem[_2673 + 196 len ceil32(mem[_2673])]
                        else:
                            _2651 = mem[(32 * s) + _851 + 32]
                            _2674 = mem[mem[(32 * s) + 128] + 32]
                            _2675 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2675 + 36] = _2651
                            mem[_2675 + 68] = 0
                            mem[_2675 + 100] = address(_2552)
                            mem[_2675 + 132] = 128
                            mem[_2675 + 164] = mem[_2675]
                            idx = 0
                            while idx < mem[_2675]:
                                mem[idx + _2675 + 196] = mem[idx + _2675 + 32]
                                _2498 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2675]) > mem[_2675]:
                                mem[mem[_2675] + _2675 + 196] = 0
                            require ext_code.size(address(_2674))
                            call address(_2674).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2651, 0, address(_2552), 128, mem[_2675], mem[_2675 + 196 len ceil32(mem[_2675])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2498 = mem[96]
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
                _2706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2706] == mem[_2706]
                if mem[_2706] <= _848:
                    revert with 0, 'P'
            else:
                mem[_851 + (32 * _850) + 64 len 32 * mem[96]] = code.data[7981 len 32 * mem[96]]
                _1681 = mem[96]
                idx = 0
                while idx < _1681:
                    _1690 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1690] = 0
                    mem[_1690 + 32] = 0
                    mem[_1690 + 64] = 0
                    mem[_1690 + 96] = 0
                    mem[_1690 + 128] = 0
                    mem[_1690 + 160] = 0
                    mem[_1690 + 192] = 0
                    mem[_1690 + 224] = 0
                    require idx < mem[96]
                    _1716 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1760 = mem[_1752]
                    require mem[_1752] == mem[_1752 + 18 len 14]
                    _1779 = mem[_1752 + 32]
                    require mem[_1752 + 32] == mem[_1752 + 50 len 14]
                    require mem[_1752 + 64] == mem[_1752 + 92 len 4]
                    _1811 = mem[_1716 + 128]
                    _1812 = mem[_1716 + 160]
                    if mem[_1716 + 140 len 20] == mem[_1716 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1716 + 140 len 20] < mem[_1716 + 172 len 20]:
                        if not mem[_1716 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1716 + 140 len 20] == mem[_1716 + 140 len 20]:
                            _1924 = mem[_1716]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1760)
                            mem[mem[64] + 68] = Mask(112, 0, _1779)
                            require ext_code.size(address(_1924))
                            staticcall address(_1924).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1760 << 144, Mask(112, 0, _1779)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2092 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2092] == mem[_2092]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2092]
                        else:
                            _1926 = mem[_1716]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1779)
                            mem[mem[64] + 68] = Mask(112, 0, _1760)
                            require ext_code.size(address(_1926))
                            staticcall address(_1926).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1779 << 144, Mask(112, 0, _1760)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2093 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2093] == mem[_2093]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2093]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1716 + 140 len 20] == address(_1811)
                    else:
                        if not mem[_1716 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1716 + 140 len 20] == mem[_1716 + 172 len 20]:
                            _1928 = mem[_1716]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1760)
                            mem[mem[64] + 68] = Mask(112, 0, _1779)
                            require ext_code.size(address(_1928))
                            staticcall address(_1928).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1760 << 144, Mask(112, 0, _1779)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2094 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2094] == mem[_2094]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2094]
                        else:
                            _1930 = mem[_1716]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1779)
                            mem[mem[64] + 68] = Mask(112, 0, _1760)
                            require ext_code.size(address(_1930))
                            staticcall address(_1930).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1779 << 144, Mask(112, 0, _1760)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2095 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2095] == mem[_2095]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2095]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1716 + 140 len 20] == address(_1812)
                    _1681 = mem[96]
                    idx = idx + 1
                    continue 
                require mem[96] - 1 < mem[_851]
                if mem[(32 * mem[96] - 1) + _851 + 32] <= cd[36]:
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
                _1789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1789] == bool(mem[_1789])
                _2499 = mem[96]
                s = 0
                while s < _2499:
                    _2529 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2529] = 0
                    mem[_2529 + 32] = 0
                    mem[_2529 + 64] = 0
                    mem[_2529 + 96] = 0
                    mem[_2529 + 128] = 0
                    mem[_2529 + 160] = 0
                    mem[_2529 + 192] = 0
                    mem[_2529 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2634 = mem[(32 * s) + _851 + 32]
                            _2652 = mem[mem[(32 * s) + 128] + 32]
                            _2653 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2653 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2653 + 36] = 0
                            mem[_2653 + 68] = _2634
                            mem[_2653 + 100] = this.address
                            mem[_2653 + 132] = 128
                            mem[_2653 + 164] = mem[_2653]
                            t = 0
                            while t < mem[_2653]:
                                mem[t + _2653 + 196] = mem[t + _2653 + 32]
                                _2499 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2653]) > mem[_2653]:
                                mem[mem[_2653] + _2653 + 196] = 0
                            require ext_code.size(address(_2652))
                            call address(_2652).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2634, address(this.address), 128, mem[_2653], mem[_2653 + 196 len ceil32(mem[_2653])]
                        else:
                            _2635 = mem[(32 * s) + _851 + 32]
                            _2654 = mem[mem[(32 * s) + 128] + 32]
                            _2655 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2655 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2655 + 36] = _2635
                            mem[_2655 + 68] = 0
                            mem[_2655 + 100] = this.address
                            mem[_2655 + 132] = 128
                            mem[_2655 + 164] = mem[_2655]
                            t = 0
                            while t < mem[_2655]:
                                mem[t + _2655 + 196] = mem[t + _2655 + 32]
                                _2499 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2655]) > mem[_2655]:
                                mem[mem[_2655] + _2655 + 196] = 0
                            require ext_code.size(address(_2654))
                            call address(_2654).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2635, 0, address(this.address), 128, mem[_2655], mem[_2655 + 196 len ceil32(mem[_2655])]
                    else:
                        require s + 1 < mem[96]
                        _2555 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2656 = mem[(32 * s) + _851 + 32]
                            _2678 = mem[mem[(32 * s) + 128] + 32]
                            _2679 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2679 + 36] = 0
                            mem[_2679 + 68] = _2656
                            mem[_2679 + 100] = address(_2555)
                            mem[_2679 + 132] = 128
                            mem[_2679 + 164] = mem[_2679]
                            idx = 0
                            while idx < mem[_2679]:
                                mem[idx + _2679 + 196] = mem[idx + _2679 + 32]
                                _2499 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2679]) > mem[_2679]:
                                mem[mem[_2679] + _2679 + 196] = 0
                            require ext_code.size(address(_2678))
                            call address(_2678).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2656, address(_2555), 128, mem[_2679], mem[_2679 + 196 len ceil32(mem[_2679])]
                        else:
                            _2657 = mem[(32 * s) + _851 + 32]
                            _2680 = mem[mem[(32 * s) + 128] + 32]
                            _2681 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2681 + 36] = _2657
                            mem[_2681 + 68] = 0
                            mem[_2681 + 100] = address(_2555)
                            mem[_2681 + 132] = 128
                            mem[_2681 + 164] = mem[_2681]
                            idx = 0
                            while idx < mem[_2681]:
                                mem[idx + _2681 + 196] = mem[idx + _2681 + 32]
                                _2499 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2681]) > mem[_2681]:
                                mem[mem[_2681] + _2681 + 196] = 0
                            require ext_code.size(address(_2680))
                            call address(_2680).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2657, 0, address(_2555), 128, mem[_2681], mem[_2681 + 196 len ceil32(mem[_2681])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2499 = mem[96]
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
                _2707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2707] == mem[_2707]
                if mem[_2707] <= _848:
                    revert with 0, 'P'
        else:
            mem[mem[64] + 32 len 32 * _850] = code.data[7981 len 32 * _850]
            mem[mem[64] + (32 * _850) + 32] = mem[96]
            mem[64] = mem[64] + (32 * _850) + (32 * mem[96]) + 64
            if not mem[96]:
                _1682 = mem[96]
                idx = 0
                while idx < _1682:
                    _1693 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1693] = 0
                    mem[_1693 + 32] = 0
                    mem[_1693 + 64] = 0
                    mem[_1693 + 96] = 0
                    mem[_1693 + 128] = 0
                    mem[_1693 + 160] = 0
                    mem[_1693 + 192] = 0
                    mem[_1693 + 224] = 0
                    require idx < mem[96]
                    _1722 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1761 = mem[_1753]
                    require mem[_1753] == mem[_1753 + 18 len 14]
                    _1780 = mem[_1753 + 32]
                    require mem[_1753 + 32] == mem[_1753 + 50 len 14]
                    require mem[_1753 + 64] == mem[_1753 + 92 len 4]
                    _1814 = mem[_1722 + 128]
                    _1815 = mem[_1722 + 160]
                    if mem[_1722 + 140 len 20] == mem[_1722 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1722 + 140 len 20] < mem[_1722 + 172 len 20]:
                        if not mem[_1722 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1722 + 140 len 20] == mem[_1722 + 140 len 20]:
                            _1936 = mem[_1722]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1761)
                            mem[mem[64] + 68] = Mask(112, 0, _1780)
                            require ext_code.size(address(_1936))
                            staticcall address(_1936).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1761 << 144, Mask(112, 0, _1780)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2096] == mem[_2096]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2096]
                        else:
                            _1938 = mem[_1722]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1780)
                            mem[mem[64] + 68] = Mask(112, 0, _1761)
                            require ext_code.size(address(_1938))
                            staticcall address(_1938).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1780 << 144, Mask(112, 0, _1761)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2097 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2097] == mem[_2097]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2097]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1722 + 140 len 20] == address(_1814)
                    else:
                        if not mem[_1722 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1722 + 140 len 20] == mem[_1722 + 172 len 20]:
                            _1940 = mem[_1722]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1761)
                            mem[mem[64] + 68] = Mask(112, 0, _1780)
                            require ext_code.size(address(_1940))
                            staticcall address(_1940).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1761 << 144, Mask(112, 0, _1780)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2098] == mem[_2098]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2098]
                        else:
                            _1942 = mem[_1722]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1780)
                            mem[mem[64] + 68] = Mask(112, 0, _1761)
                            require ext_code.size(address(_1942))
                            staticcall address(_1942).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1780 << 144, Mask(112, 0, _1761)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2099 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2099] == mem[_2099]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2099]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1722 + 140 len 20] == address(_1815)
                    _1682 = mem[96]
                    idx = idx + 1
                    continue 
                require mem[96] - 1 < mem[_851]
                if mem[(32 * mem[96] - 1) + _851 + 32] <= cd[36]:
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
                _1790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1790] == bool(mem[_1790])
                _2500 = mem[96]
                s = 0
                while s < _2500:
                    _2531 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2531] = 0
                    mem[_2531 + 32] = 0
                    mem[_2531 + 64] = 0
                    mem[_2531 + 96] = 0
                    mem[_2531 + 128] = 0
                    mem[_2531 + 160] = 0
                    mem[_2531 + 192] = 0
                    mem[_2531 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2638 = mem[(32 * s) + _851 + 32]
                            _2658 = mem[mem[(32 * s) + 128] + 32]
                            _2659 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2659 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2659 + 36] = 0
                            mem[_2659 + 68] = _2638
                            mem[_2659 + 100] = this.address
                            mem[_2659 + 132] = 128
                            mem[_2659 + 164] = mem[_2659]
                            t = 0
                            while t < mem[_2659]:
                                mem[t + _2659 + 196] = mem[t + _2659 + 32]
                                _2500 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2659]) > mem[_2659]:
                                mem[mem[_2659] + _2659 + 196] = 0
                            require ext_code.size(address(_2658))
                            call address(_2658).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2638, address(this.address), 128, mem[_2659], mem[_2659 + 196 len ceil32(mem[_2659])]
                        else:
                            _2639 = mem[(32 * s) + _851 + 32]
                            _2660 = mem[mem[(32 * s) + 128] + 32]
                            _2661 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2661 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2661 + 36] = _2639
                            mem[_2661 + 68] = 0
                            mem[_2661 + 100] = this.address
                            mem[_2661 + 132] = 128
                            mem[_2661 + 164] = mem[_2661]
                            t = 0
                            while t < mem[_2661]:
                                mem[t + _2661 + 196] = mem[t + _2661 + 32]
                                _2500 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2661]) > mem[_2661]:
                                mem[mem[_2661] + _2661 + 196] = 0
                            require ext_code.size(address(_2660))
                            call address(_2660).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2639, 0, address(this.address), 128, mem[_2661], mem[_2661 + 196 len ceil32(mem[_2661])]
                    else:
                        require s + 1 < mem[96]
                        _2558 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2662 = mem[(32 * s) + _851 + 32]
                            _2684 = mem[mem[(32 * s) + 128] + 32]
                            _2685 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2685 + 36] = 0
                            mem[_2685 + 68] = _2662
                            mem[_2685 + 100] = address(_2558)
                            mem[_2685 + 132] = 128
                            mem[_2685 + 164] = mem[_2685]
                            idx = 0
                            while idx < mem[_2685]:
                                mem[idx + _2685 + 196] = mem[idx + _2685 + 32]
                                _2500 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2685]) > mem[_2685]:
                                mem[mem[_2685] + _2685 + 196] = 0
                            require ext_code.size(address(_2684))
                            call address(_2684).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2662, address(_2558), 128, mem[_2685], mem[_2685 + 196 len ceil32(mem[_2685])]
                        else:
                            _2663 = mem[(32 * s) + _851 + 32]
                            _2686 = mem[mem[(32 * s) + 128] + 32]
                            _2687 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2687 + 36] = _2663
                            mem[_2687 + 68] = 0
                            mem[_2687 + 100] = address(_2558)
                            mem[_2687 + 132] = 128
                            mem[_2687 + 164] = mem[_2687]
                            idx = 0
                            while idx < mem[_2687]:
                                mem[idx + _2687 + 196] = mem[idx + _2687 + 32]
                                _2500 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2687]) > mem[_2687]:
                                mem[mem[_2687] + _2687 + 196] = 0
                            require ext_code.size(address(_2686))
                            call address(_2686).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2663, 0, address(_2558), 128, mem[_2687], mem[_2687 + 196 len ceil32(mem[_2687])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2500 = mem[96]
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
                _2708 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2708] == mem[_2708]
                if mem[_2708] <= _848:
                    revert with 0, 'P'
            else:
                mem[_851 + (32 * _850) + 64 len 32 * mem[96]] = code.data[7981 len 32 * mem[96]]
                _1683 = mem[96]
                idx = 0
                while idx < _1683:
                    _1696 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1696] = 0
                    mem[_1696 + 32] = 0
                    mem[_1696 + 64] = 0
                    mem[_1696 + 96] = 0
                    mem[_1696 + 128] = 0
                    mem[_1696 + 160] = 0
                    mem[_1696 + 192] = 0
                    mem[_1696 + 224] = 0
                    require idx < mem[96]
                    _1728 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1762 = mem[_1754]
                    require mem[_1754] == mem[_1754 + 18 len 14]
                    _1781 = mem[_1754 + 32]
                    require mem[_1754 + 32] == mem[_1754 + 50 len 14]
                    require mem[_1754 + 64] == mem[_1754 + 92 len 4]
                    _1817 = mem[_1728 + 128]
                    _1818 = mem[_1728 + 160]
                    if mem[_1728 + 140 len 20] == mem[_1728 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1728 + 140 len 20] < mem[_1728 + 172 len 20]:
                        if not mem[_1728 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1728 + 140 len 20] == mem[_1728 + 140 len 20]:
                            _1948 = mem[_1728]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1762)
                            mem[mem[64] + 68] = Mask(112, 0, _1781)
                            require ext_code.size(address(_1948))
                            staticcall address(_1948).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1762 << 144, Mask(112, 0, _1781)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2100 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2100] == mem[_2100]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2100]
                        else:
                            _1950 = mem[_1728]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1781)
                            mem[mem[64] + 68] = Mask(112, 0, _1762)
                            require ext_code.size(address(_1950))
                            staticcall address(_1950).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1781 << 144, Mask(112, 0, _1762)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2101] == mem[_2101]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2101]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1728 + 140 len 20] == address(_1817)
                    else:
                        if not mem[_1728 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1728 + 140 len 20] == mem[_1728 + 172 len 20]:
                            _1952 = mem[_1728]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1762)
                            mem[mem[64] + 68] = Mask(112, 0, _1781)
                            require ext_code.size(address(_1952))
                            staticcall address(_1952).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1762 << 144, Mask(112, 0, _1781)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2102] == mem[_2102]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2102]
                        else:
                            _1954 = mem[_1728]
                            mem[mem[64] + 4] = cd[36]
                            mem[mem[64] + 36] = Mask(112, 0, _1781)
                            mem[mem[64] + 68] = Mask(112, 0, _1762)
                            require ext_code.size(address(_1954))
                            staticcall address(_1954).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args cd[36], _1781 << 144, Mask(112, 0, _1762)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2103] == mem[_2103]
                            require idx < mem[_851]
                            mem[(32 * idx) + _851 + 32] = mem[_2103]
                        require idx < mem[_851 + (32 * _850) + 32]
                        mem[(32 * idx) + _851 + (32 * _850) + 64] = mem[_1728 + 140 len 20] == address(_1818)
                    _1683 = mem[96]
                    idx = idx + 1
                    continue 
                require mem[96] - 1 < mem[_851]
                if mem[(32 * mem[96] - 1) + _851 + 32] <= cd[36]:
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
                _1791 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1791] == bool(mem[_1791])
                _2501 = mem[96]
                s = 0
                while s < _2501:
                    _2533 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2533] = 0
                    mem[_2533 + 32] = 0
                    mem[_2533 + 64] = 0
                    mem[_2533 + 96] = 0
                    mem[_2533 + 128] = 0
                    mem[_2533 + 160] = 0
                    mem[_2533 + 192] = 0
                    mem[_2533 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2642 = mem[(32 * s) + _851 + 32]
                            _2664 = mem[mem[(32 * s) + 128] + 32]
                            _2665 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2665 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2665 + 36] = 0
                            mem[_2665 + 68] = _2642
                            mem[_2665 + 100] = this.address
                            mem[_2665 + 132] = 128
                            mem[_2665 + 164] = mem[_2665]
                            t = 0
                            while t < mem[_2665]:
                                mem[t + _2665 + 196] = mem[t + _2665 + 32]
                                _2501 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2665]) > mem[_2665]:
                                mem[mem[_2665] + _2665 + 196] = 0
                            require ext_code.size(address(_2664))
                            call address(_2664).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2642, address(this.address), 128, mem[_2665], mem[_2665 + 196 len ceil32(mem[_2665])]
                        else:
                            _2643 = mem[(32 * s) + _851 + 32]
                            _2666 = mem[mem[(32 * s) + 128] + 32]
                            _2667 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2667 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2667 + 36] = _2643
                            mem[_2667 + 68] = 0
                            mem[_2667 + 100] = this.address
                            mem[_2667 + 132] = 128
                            mem[_2667 + 164] = mem[_2667]
                            t = 0
                            while t < mem[_2667]:
                                mem[t + _2667 + 196] = mem[t + _2667 + 32]
                                _2501 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2667]) > mem[_2667]:
                                mem[mem[_2667] + _2667 + 196] = 0
                            require ext_code.size(address(_2666))
                            call address(_2666).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2643, 0, address(this.address), 128, mem[_2667], mem[_2667 + 196 len ceil32(mem[_2667])]
                    else:
                        require s + 1 < mem[96]
                        _2561 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_851 + (32 * _850) + 32]
                        require s < mem[_851]
                        if mem[(32 * s) + _851 + (32 * _850) + 64]:
                            _2668 = mem[(32 * s) + _851 + 32]
                            _2690 = mem[mem[(32 * s) + 128] + 32]
                            _2691 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2691 + 36] = 0
                            mem[_2691 + 68] = _2668
                            mem[_2691 + 100] = address(_2561)
                            mem[_2691 + 132] = 128
                            mem[_2691 + 164] = mem[_2691]
                            idx = 0
                            while idx < mem[_2691]:
                                mem[idx + _2691 + 196] = mem[idx + _2691 + 32]
                                _2501 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2691]) > mem[_2691]:
                                mem[mem[_2691] + _2691 + 196] = 0
                            require ext_code.size(address(_2690))
                            call address(_2690).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2668, address(_2561), 128, mem[_2691], mem[_2691 + 196 len ceil32(mem[_2691])]
                        else:
                            _2669 = mem[(32 * s) + _851 + 32]
                            _2692 = mem[mem[(32 * s) + 128] + 32]
                            _2693 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2693 + 36] = _2669
                            mem[_2693 + 68] = 0
                            mem[_2693 + 100] = address(_2561)
                            mem[_2693 + 132] = 128
                            mem[_2693 + 164] = mem[_2693]
                            idx = 0
                            while idx < mem[_2693]:
                                mem[idx + _2693 + 196] = mem[idx + _2693 + 32]
                                _2501 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2693]) > mem[_2693]:
                                mem[mem[_2693] + _2693 + 196] = 0
                            require ext_code.size(address(_2692))
                            call address(_2692).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2669, 0, address(_2561), 128, mem[_2693], mem[_2693 + 196 len ceil32(mem[_2693])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2501 = mem[96]
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
                _2709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2709] == mem[_2709]
                if mem[_2709] <= _848:
                    revert with 0, 'P'
    if eth.balance(msg.sender) < stor4:
        require ext_code.size(stor0)
        call stor0.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
}



}
