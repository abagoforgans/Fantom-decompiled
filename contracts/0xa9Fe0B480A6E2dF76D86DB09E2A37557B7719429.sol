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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
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
        _905 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_905] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_905 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_905 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_905 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_905 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_905 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_905 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_905 + 224] = cd[(s + 224)]
        mem[t] = _905
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
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _911 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _912 = mem[_911]
    require mem[_911] == mem[_911]
    if cd[68]:
        require mem[96]
        mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _995 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_995] == bool(mem[_995])
        _1812 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _1812:
            _1825 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1825] = 0
            mem[_1825 + 32] = 0
            mem[_1825 + 64] = 0
            mem[_1825 + 96] = 0
            mem[_1825 + 128] = 0
            mem[_1825 + 160] = 0
            mem[_1825 + 192] = 0
            mem[_1825 + 224] = 0
            require idx < mem[96]
            _1860 = mem[(32 * idx) + 128]
            if not mem[mem[(32 * idx) + 128] + 192]:
                require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1895 = mem[_1885]
                require mem[_1885] == mem[_1885 + 18 len 14]
                _1915 = mem[_1885 + 32]
                require mem[_1885 + 32] == mem[_1885 + 50 len 14]
                require mem[_1885 + 64] == mem[_1885 + 92 len 4]
                _1947 = mem[_1860 + 128]
                _1948 = mem[_1860 + 160]
                if mem[_1860 + 140 len 20] == mem[_1860 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[_1860 + 140 len 20] < mem[_1860 + 172 len 20]:
                    if not mem[_1860 + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if mem[_1860 + 140 len 20] == mem[_1860 + 140 len 20]:
                        _2101 = mem[_1860]
                        mem[mem[64] + 4] = s
                        mem[mem[64] + 36] = Mask(112, 0, _1895)
                        mem[mem[64] + 68] = Mask(112, 0, _1915)
                        require ext_code.size(address(_2101))
                        staticcall address(_2101).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args s, _1895 << 144, Mask(112, 0, _1915)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2272 = mem[_2232]
                        require mem[_2232] == mem[_2232]
                        if mem[_1860 + 140 len 20] == address(_1947):
                            if idx == mem[96] - 1:
                                _2456 = mem[_1860 + 32]
                                _2457 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2457 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2457 + 36] = 0
                                mem[_2457 + 68] = _2272
                                mem[_2457 + 100] = this.address
                                mem[_2457 + 132] = 128
                                mem[_2457 + 164] = mem[_2457]
                                s = 0
                                while s < mem[_2457]:
                                    mem[s + _2457 + 196] = mem[s + _2457 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2457]) > mem[_2457]:
                                    mem[mem[_2457] + _2457 + 196] = 0
                                require ext_code.size(address(_2456))
                                call address(_2456).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2272, address(this.address), 128, mem[_2457], mem[_2457 + 196 len ceil32(mem[_2457])]
                            else:
                                require idx + 1 < mem[96]
                                if mem[mem[(32 * idx + 1) + 128] + 192]:
                                    _2508 = mem[_1860 + 32]
                                    _2509 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2509 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2509 + 36] = 0
                                    mem[_2509 + 68] = _2272
                                    mem[_2509 + 100] = this.address
                                    mem[_2509 + 132] = 128
                                    mem[_2509 + 164] = mem[_2509]
                                    s = 0
                                    while s < mem[_2509]:
                                        mem[s + _2509 + 196] = mem[s + _2509 + 32]
                                        _1812 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_2509]) > mem[_2509]:
                                        mem[mem[_2509] + _2509 + 196] = 0
                                    require ext_code.size(address(_2508))
                                    call address(_2508).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2272, address(this.address), 128, mem[_2509], mem[_2509 + 196 len ceil32(mem[_2509])]
                                else:
                                    require idx + 1 < mem[96]
                                    _2511 = mem[mem[(32 * idx + 1) + 128] + 32]
                                    _2541 = mem[_1860 + 32]
                                    _2542 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2542 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2542 + 36] = 0
                                    mem[_2542 + 68] = _2272
                                    mem[_2542 + 100] = address(_2511)
                                    mem[_2542 + 132] = 128
                                    mem[_2542 + 164] = mem[_2542]
                                    s = 0
                                    while s < mem[_2542]:
                                        mem[s + _2542 + 196] = mem[s + _2542 + 32]
                                        _1812 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_2542]) > mem[_2542]:
                                        mem[mem[_2542] + _2542 + 196] = 0
                                    require ext_code.size(address(_2541))
                                    call address(_2541).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _2272, address(_2511), 128, mem[_2542], mem[_2542 + 196 len ceil32(mem[_2542])]
                        else:
                            if idx == mem[96] - 1:
                                _2458 = mem[_1860 + 32]
                                _2459 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2459 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2459 + 36] = _2272
                                mem[_2459 + 68] = 0
                                mem[_2459 + 100] = this.address
                                mem[_2459 + 132] = 128
                                mem[_2459 + 164] = mem[_2459]
                                s = 0
                                while s < mem[_2459]:
                                    mem[s + _2459 + 196] = mem[s + _2459 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2459]) > mem[_2459]:
                                    mem[mem[_2459] + _2459 + 196] = 0
                                require ext_code.size(address(_2458))
                                call address(_2458).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2272, 0, address(this.address), 128, mem[_2459], mem[_2459 + 196 len ceil32(mem[_2459])]
                            else:
                                require idx + 1 < mem[96]
                                if mem[mem[(32 * idx + 1) + 128] + 192]:
                                    _2512 = mem[_1860 + 32]
                                    _2513 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2513 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2513 + 36] = _2272
                                    mem[_2513 + 68] = 0
                                    mem[_2513 + 100] = this.address
                                    mem[_2513 + 132] = 128
                                    mem[_2513 + 164] = mem[_2513]
                                    s = 0
                                    while s < mem[_2513]:
                                        mem[s + _2513 + 196] = mem[s + _2513 + 32]
                                        _1812 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_2513]) > mem[_2513]:
                                        mem[mem[_2513] + _2513 + 196] = 0
                                    require ext_code.size(address(_2512))
                                    call address(_2512).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2272, 0, address(this.address), 128, mem[_2513], mem[_2513 + 196 len ceil32(mem[_2513])]
                                else:
                                    require idx + 1 < mem[96]
                                    _2515 = mem[mem[(32 * idx + 1) + 128] + 32]
                                    _2544 = mem[_1860 + 32]
                                    _2545 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2545 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2545 + 36] = _2272
                                    mem[_2545 + 68] = 0
                                    mem[_2545 + 100] = address(_2515)
                                    mem[_2545 + 132] = 128
                                    mem[_2545 + 164] = mem[_2545]
                                    s = 0
                                    while s < mem[_2545]:
                                        mem[s + _2545 + 196] = mem[s + _2545 + 32]
                                        _1812 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_2545]) > mem[_2545]:
                                        mem[mem[_2545] + _2545 + 196] = 0
                                    require ext_code.size(address(_2544))
                                    call address(_2544).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _2272, 0, address(_2515), 128, mem[_2545], mem[_2545 + 196 len ceil32(mem[_2545])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1812 = mem[96]
                        idx = idx + 1
                        s = _2272
                        continue 
                    _2103 = mem[_1860]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1915)
                    mem[mem[64] + 68] = Mask(112, 0, _1895)
                    require ext_code.size(address(_2103))
                    staticcall address(_2103).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _1915 << 144, Mask(112, 0, _1895)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2233 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2273 = mem[_2233]
                    require mem[_2233] == mem[_2233]
                    if mem[_1860 + 140 len 20] == address(_1947):
                        if idx == mem[96] - 1:
                            _2460 = mem[_1860 + 32]
                            _2461 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2461 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2461 + 36] = 0
                            mem[_2461 + 68] = _2273
                            mem[_2461 + 100] = this.address
                            mem[_2461 + 132] = 128
                            mem[_2461 + 164] = mem[_2461]
                            s = 0
                            while s < mem[_2461]:
                                mem[s + _2461 + 196] = mem[s + _2461 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2461]) > mem[_2461]:
                                mem[mem[_2461] + _2461 + 196] = 0
                            require ext_code.size(address(_2460))
                            call address(_2460).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2273, address(this.address), 128, mem[_2461], mem[_2461 + 196 len ceil32(mem[_2461])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2516 = mem[_1860 + 32]
                                _2517 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2517 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2517 + 36] = 0
                                mem[_2517 + 68] = _2273
                                mem[_2517 + 100] = this.address
                                mem[_2517 + 132] = 128
                                mem[_2517 + 164] = mem[_2517]
                                s = 0
                                while s < mem[_2517]:
                                    mem[s + _2517 + 196] = mem[s + _2517 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2517]) > mem[_2517]:
                                    mem[mem[_2517] + _2517 + 196] = 0
                                require ext_code.size(address(_2516))
                                call address(_2516).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2273, address(this.address), 128, mem[_2517], mem[_2517 + 196 len ceil32(mem[_2517])]
                            else:
                                require idx + 1 < mem[96]
                                _2519 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2547 = mem[_1860 + 32]
                                _2548 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2548 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2548 + 36] = 0
                                mem[_2548 + 68] = _2273
                                mem[_2548 + 100] = address(_2519)
                                mem[_2548 + 132] = 128
                                mem[_2548 + 164] = mem[_2548]
                                s = 0
                                while s < mem[_2548]:
                                    mem[s + _2548 + 196] = mem[s + _2548 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2548]) > mem[_2548]:
                                    mem[mem[_2548] + _2548 + 196] = 0
                                require ext_code.size(address(_2547))
                                call address(_2547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2273, address(_2519), 128, mem[_2548], mem[_2548 + 196 len ceil32(mem[_2548])]
                    else:
                        if idx == mem[96] - 1:
                            _2462 = mem[_1860 + 32]
                            _2463 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2463 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2463 + 36] = _2273
                            mem[_2463 + 68] = 0
                            mem[_2463 + 100] = this.address
                            mem[_2463 + 132] = 128
                            mem[_2463 + 164] = mem[_2463]
                            s = 0
                            while s < mem[_2463]:
                                mem[s + _2463 + 196] = mem[s + _2463 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2463]) > mem[_2463]:
                                mem[mem[_2463] + _2463 + 196] = 0
                            require ext_code.size(address(_2462))
                            call address(_2462).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2273, 0, address(this.address), 128, mem[_2463], mem[_2463 + 196 len ceil32(mem[_2463])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2520 = mem[_1860 + 32]
                                _2521 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2521 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2521 + 36] = _2273
                                mem[_2521 + 68] = 0
                                mem[_2521 + 100] = this.address
                                mem[_2521 + 132] = 128
                                mem[_2521 + 164] = mem[_2521]
                                s = 0
                                while s < mem[_2521]:
                                    mem[s + _2521 + 196] = mem[s + _2521 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2521]) > mem[_2521]:
                                    mem[mem[_2521] + _2521 + 196] = 0
                                require ext_code.size(address(_2520))
                                call address(_2520).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2273, 0, address(this.address), 128, mem[_2521], mem[_2521 + 196 len ceil32(mem[_2521])]
                            else:
                                require idx + 1 < mem[96]
                                _2523 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2550 = mem[_1860 + 32]
                                _2551 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2551 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2551 + 36] = _2273
                                mem[_2551 + 68] = 0
                                mem[_2551 + 100] = address(_2523)
                                mem[_2551 + 132] = 128
                                mem[_2551 + 164] = mem[_2551]
                                s = 0
                                while s < mem[_2551]:
                                    mem[s + _2551 + 196] = mem[s + _2551 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2551]) > mem[_2551]:
                                    mem[mem[_2551] + _2551 + 196] = 0
                                require ext_code.size(address(_2550))
                                call address(_2550).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2273, 0, address(_2523), 128, mem[_2551], mem[_2551 + 196 len ceil32(mem[_2551])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1812 = mem[96]
                    idx = idx + 1
                    s = _2273
                    continue 
                if not mem[_1860 + 172 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if mem[_1860 + 140 len 20] == mem[_1860 + 172 len 20]:
                    _2105 = mem[_1860]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _1895)
                    mem[mem[64] + 68] = Mask(112, 0, _1915)
                    require ext_code.size(address(_2105))
                    staticcall address(_2105).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args s, _1895 << 144, Mask(112, 0, _1915)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2234 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2274 = mem[_2234]
                    require mem[_2234] == mem[_2234]
                    if mem[_1860 + 140 len 20] == address(_1948):
                        if idx == mem[96] - 1:
                            _2464 = mem[_1860 + 32]
                            _2465 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2465 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2465 + 36] = 0
                            mem[_2465 + 68] = _2274
                            mem[_2465 + 100] = this.address
                            mem[_2465 + 132] = 128
                            mem[_2465 + 164] = mem[_2465]
                            s = 0
                            while s < mem[_2465]:
                                mem[s + _2465 + 196] = mem[s + _2465 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2465]) > mem[_2465]:
                                mem[mem[_2465] + _2465 + 196] = 0
                            require ext_code.size(address(_2464))
                            call address(_2464).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2274, address(this.address), 128, mem[_2465], mem[_2465 + 196 len ceil32(mem[_2465])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2524 = mem[_1860 + 32]
                                _2525 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2525 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2525 + 36] = 0
                                mem[_2525 + 68] = _2274
                                mem[_2525 + 100] = this.address
                                mem[_2525 + 132] = 128
                                mem[_2525 + 164] = mem[_2525]
                                s = 0
                                while s < mem[_2525]:
                                    mem[s + _2525 + 196] = mem[s + _2525 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2525]) > mem[_2525]:
                                    mem[mem[_2525] + _2525 + 196] = 0
                                require ext_code.size(address(_2524))
                                call address(_2524).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2274, address(this.address), 128, mem[_2525], mem[_2525 + 196 len ceil32(mem[_2525])]
                            else:
                                require idx + 1 < mem[96]
                                _2527 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2553 = mem[_1860 + 32]
                                _2554 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2554 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2554 + 36] = 0
                                mem[_2554 + 68] = _2274
                                mem[_2554 + 100] = address(_2527)
                                mem[_2554 + 132] = 128
                                mem[_2554 + 164] = mem[_2554]
                                s = 0
                                while s < mem[_2554]:
                                    mem[s + _2554 + 196] = mem[s + _2554 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2554]) > mem[_2554]:
                                    mem[mem[_2554] + _2554 + 196] = 0
                                require ext_code.size(address(_2553))
                                call address(_2553).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, _2274, address(_2527), 128, mem[_2554], mem[_2554 + 196 len ceil32(mem[_2554])]
                    else:
                        if idx == mem[96] - 1:
                            _2466 = mem[_1860 + 32]
                            _2467 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2467 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2467 + 36] = _2274
                            mem[_2467 + 68] = 0
                            mem[_2467 + 100] = this.address
                            mem[_2467 + 132] = 128
                            mem[_2467 + 164] = mem[_2467]
                            s = 0
                            while s < mem[_2467]:
                                mem[s + _2467 + 196] = mem[s + _2467 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2467]) > mem[_2467]:
                                mem[mem[_2467] + _2467 + 196] = 0
                            require ext_code.size(address(_2466))
                            call address(_2466).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2274, 0, address(this.address), 128, mem[_2467], mem[_2467 + 196 len ceil32(mem[_2467])]
                        else:
                            require idx + 1 < mem[96]
                            if mem[mem[(32 * idx + 1) + 128] + 192]:
                                _2528 = mem[_1860 + 32]
                                _2529 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2529 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2529 + 36] = _2274
                                mem[_2529 + 68] = 0
                                mem[_2529 + 100] = this.address
                                mem[_2529 + 132] = 128
                                mem[_2529 + 164] = mem[_2529]
                                s = 0
                                while s < mem[_2529]:
                                    mem[s + _2529 + 196] = mem[s + _2529 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2529]) > mem[_2529]:
                                    mem[mem[_2529] + _2529 + 196] = 0
                                require ext_code.size(address(_2528))
                                call address(_2528).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2274, 0, address(this.address), 128, mem[_2529], mem[_2529 + 196 len ceil32(mem[_2529])]
                            else:
                                require idx + 1 < mem[96]
                                _2531 = mem[mem[(32 * idx + 1) + 128] + 32]
                                _2556 = mem[_1860 + 32]
                                _2557 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_2557 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2557 + 36] = _2274
                                mem[_2557 + 68] = 0
                                mem[_2557 + 100] = address(_2531)
                                mem[_2557 + 132] = 128
                                mem[_2557 + 164] = mem[_2557]
                                s = 0
                                while s < mem[_2557]:
                                    mem[s + _2557 + 196] = mem[s + _2557 + 32]
                                    _1812 = mem[96]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_2557]) > mem[_2557]:
                                    mem[mem[_2557] + _2557 + 196] = 0
                                require ext_code.size(address(_2556))
                                call address(_2556).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args _2274, 0, address(_2531), 128, mem[_2557], mem[_2557 + 196 len ceil32(mem[_2557])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1812 = mem[96]
                    idx = idx + 1
                    s = _2274
                    continue 
                _2107 = mem[_1860]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _1915)
                mem[mem[64] + 68] = Mask(112, 0, _1895)
                require ext_code.size(address(_2107))
                staticcall address(_2107).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args s, _1915 << 144, Mask(112, 0, _1895)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2275 = mem[_2235]
                require mem[_2235] == mem[_2235]
                if mem[_1860 + 140 len 20] == address(_1948):
                    if idx == mem[96] - 1:
                        _2468 = mem[_1860 + 32]
                        _2469 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2469 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2469 + 36] = 0
                        mem[_2469 + 68] = _2275
                        mem[_2469 + 100] = this.address
                        mem[_2469 + 132] = 128
                        mem[_2469 + 164] = mem[_2469]
                        s = 0
                        while s < mem[_2469]:
                            mem[s + _2469 + 196] = mem[s + _2469 + 32]
                            _1812 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2469]) > mem[_2469]:
                            mem[mem[_2469] + _2469 + 196] = 0
                        require ext_code.size(address(_2468))
                        call address(_2468).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _2275, address(this.address), 128, mem[_2469], mem[_2469 + 196 len ceil32(mem[_2469])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2532 = mem[_1860 + 32]
                            _2533 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2533 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2533 + 36] = 0
                            mem[_2533 + 68] = _2275
                            mem[_2533 + 100] = this.address
                            mem[_2533 + 132] = 128
                            mem[_2533 + 164] = mem[_2533]
                            s = 0
                            while s < mem[_2533]:
                                mem[s + _2533 + 196] = mem[s + _2533 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2533]) > mem[_2533]:
                                mem[mem[_2533] + _2533 + 196] = 0
                            require ext_code.size(address(_2532))
                            call address(_2532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2275, address(this.address), 128, mem[_2533], mem[_2533 + 196 len ceil32(mem[_2533])]
                        else:
                            require idx + 1 < mem[96]
                            _2535 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2559 = mem[_1860 + 32]
                            _2560 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2560 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2560 + 36] = 0
                            mem[_2560 + 68] = _2275
                            mem[_2560 + 100] = address(_2535)
                            mem[_2560 + 132] = 128
                            mem[_2560 + 164] = mem[_2560]
                            s = 0
                            while s < mem[_2560]:
                                mem[s + _2560 + 196] = mem[s + _2560 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2560]) > mem[_2560]:
                                mem[mem[_2560] + _2560 + 196] = 0
                            require ext_code.size(address(_2559))
                            call address(_2559).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2275, address(_2535), 128, mem[_2560], mem[_2560 + 196 len ceil32(mem[_2560])]
                else:
                    if idx == mem[96] - 1:
                        _2470 = mem[_1860 + 32]
                        _2471 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2471 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2471 + 36] = _2275
                        mem[_2471 + 68] = 0
                        mem[_2471 + 100] = this.address
                        mem[_2471 + 132] = 128
                        mem[_2471 + 164] = mem[_2471]
                        s = 0
                        while s < mem[_2471]:
                            mem[s + _2471 + 196] = mem[s + _2471 + 32]
                            _1812 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_2471]) > mem[_2471]:
                            mem[mem[_2471] + _2471 + 196] = 0
                        require ext_code.size(address(_2470))
                        call address(_2470).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _2275, 0, address(this.address), 128, mem[_2471], mem[_2471 + 196 len ceil32(mem[_2471])]
                    else:
                        require idx + 1 < mem[96]
                        if mem[mem[(32 * idx + 1) + 128] + 192]:
                            _2536 = mem[_1860 + 32]
                            _2537 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2537 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2537 + 36] = _2275
                            mem[_2537 + 68] = 0
                            mem[_2537 + 100] = this.address
                            mem[_2537 + 132] = 128
                            mem[_2537 + 164] = mem[_2537]
                            s = 0
                            while s < mem[_2537]:
                                mem[s + _2537 + 196] = mem[s + _2537 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2537]) > mem[_2537]:
                                mem[mem[_2537] + _2537 + 196] = 0
                            require ext_code.size(address(_2536))
                            call address(_2536).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2275, 0, address(this.address), 128, mem[_2537], mem[_2537 + 196 len ceil32(mem[_2537])]
                        else:
                            require idx + 1 < mem[96]
                            _2539 = mem[mem[(32 * idx + 1) + 128] + 32]
                            _2562 = mem[_1860 + 32]
                            _2563 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2563 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2563 + 36] = _2275
                            mem[_2563 + 68] = 0
                            mem[_2563 + 100] = address(_2539)
                            mem[_2563 + 132] = 128
                            mem[_2563 + 164] = mem[_2563]
                            s = 0
                            while s < mem[_2563]:
                                mem[s + _2563 + 196] = mem[s + _2563 + 32]
                                _1812 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(mem[_2563]) > mem[_2563]:
                                mem[mem[_2563] + _2563 + 196] = 0
                            require ext_code.size(address(_2562))
                            call address(_2562).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2275, 0, address(_2539), 128, mem[_2563], mem[_2563 + 196 len ceil32(mem[_2563])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1812 = mem[96]
                idx = idx + 1
                s = _2275
                continue 
            _1877 = mem[mem[(32 * idx) + 128] + 32]
            _1878 = mem[mem[(32 * idx) + 128] + 128]
            _1883 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_1883][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _1897 = mem[mem[(32 * idx) + 128] + 32]
                    _1898 = mem[mem[(32 * idx) + 128] + 64]
                    _1899 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1898'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1899'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1897))
                    call address(_1897).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1898')), ('signextend', 15, ('var', '_1899')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1987 = mem[_1860 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1987))
                    staticcall address(_1987).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2192 = mem[_2186]
                    require mem[_2186] == mem[_2186]
                    _2276 = mem[_1860 + 160]
                    require idx + 1 < mem[96]
                    mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                    mem[mem[64] + 36] = _2192
                    require ext_code.size(address(_2276))
                    call address(_2276).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _2192
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2566] == bool(mem[_2566])
                    _1812 = mem[96]
                    idx = idx + 1
                    s = _2192
                    continue 
                _1901 = mem[mem[(32 * idx) + 128] + 32]
                _1902 = mem[mem[(32 * idx) + 128] + 64]
                _1903 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1902'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1903'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1901))
                call address(_1901).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1902')), ('signextend', 15, ('var', '_1903')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1989 = mem[_1860 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1989))
                staticcall address(_1989).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2193 = mem[_2187]
                require mem[_2187] == mem[_2187]
                _2278 = mem[_1860 + 160]
                require idx + 1 < mem[96]
                mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                mem[mem[64] + 36] = _2193
                require ext_code.size(address(_2278))
                call address(_2278).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2193
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2567] == bool(mem[_2567])
                _1812 = mem[96]
                idx = idx + 1
                s = _2193
                continue 
            mem[mem[64] + 4] = address(_1877)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_1878))
            call address(_1878).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_1877), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1922] == bool(mem[_1922])
            mem[0] = address(_1878)
            mem[32] = sha3(address(_1877), 1)
            if not mem[_1860 + 224]:
                _1970 = mem[_1860 + 32]
                _1971 = mem[_1860 + 64]
                _1972 = mem[_1860 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1971'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1972'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1970))
                call address(_1970).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1971')), ('signextend', 15, ('var', '_1972')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2236 = mem[_1860 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_2236))
                staticcall address(_2236).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2564 = mem[_2472]
                require mem[_2472] == mem[_2472]
                _2578 = mem[_1860 + 160]
                require idx + 1 < mem[96]
                mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
                mem[mem[64] + 36] = _2564
                require ext_code.size(address(_2578))
                call address(_2578).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2564
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2622 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2622] == bool(mem[_2622])
                _1812 = mem[96]
                idx = idx + 1
                s = _2564
                continue 
            _1974 = mem[_1860 + 32]
            _1975 = mem[_1860 + 64]
            _1976 = mem[_1860 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_1975'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_1976'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_1974))
            call address(_1974).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_1975')), ('signextend', 15, ('var', '_1976')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2238 = mem[_1860 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_2238))
            staticcall address(_2238).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2473 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2565 = mem[_2473]
            require mem[_2473] == mem[_2473]
            _2580 = mem[_1860 + 160]
            require idx + 1 < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * idx + 1) + 128] + 44 len 20]
            mem[mem[64] + 36] = _2565
            require ext_code.size(address(_2580))
            call address(_2580).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _2565
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2623 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2623] == bool(mem[_2623])
            _1812 = mem[96]
            idx = idx + 1
            s = _2565
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1914 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1914] == mem[_1914]
        if mem[_1914] <= _912:
            revert with 0, 'P'
    else:
        _914 = mem[96]
        _915 = mem[64]
        mem[mem[64]] = mem[96]
        if not _914:
            _919 = mem[96]
            mem[mem[64] + (32 * _914) + 32] = mem[96]
            mem[64] = _915 + (32 * _914) + (32 * _919) + 64
            if not _919:
                _1808 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1808:
                    _1815 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1815] = 0
                    mem[_1815 + 32] = 0
                    mem[_1815 + 64] = 0
                    mem[_1815 + 96] = 0
                    mem[_1815 + 128] = 0
                    mem[_1815 + 160] = 0
                    mem[_1815 + 192] = 0
                    mem[_1815 + 224] = 0
                    require idx < mem[96]
                    _1838 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1887 = mem[_1879]
                    require mem[_1879] == mem[_1879 + 18 len 14]
                    _1906 = mem[_1879 + 32]
                    require mem[_1879 + 32] == mem[_1879 + 50 len 14]
                    require mem[_1879 + 64] == mem[_1879 + 92 len 4]
                    _1936 = mem[_1838 + 128]
                    _1937 = mem[_1838 + 160]
                    if mem[_1838 + 140 len 20] == mem[_1838 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1838 + 140 len 20] < mem[_1838 + 172 len 20]:
                        if not mem[_1838 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1838 + 140 len 20] == mem[_1838 + 140 len 20]:
                            _2040 = mem[_1838]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1887)
                            mem[mem[64] + 68] = Mask(112, 0, _1906)
                            require ext_code.size(address(_2040))
                            staticcall address(_2040).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1887 << 144, Mask(112, 0, _1906)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2216] == mem[_2216]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2216]
                        else:
                            _2042 = mem[_1838]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1906)
                            mem[mem[64] + 68] = Mask(112, 0, _1887)
                            require ext_code.size(address(_2042))
                            staticcall address(_2042).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1906 << 144, Mask(112, 0, _1887)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2217] == mem[_2217]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2217]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1838 + 140 len 20] == address(_1936)
                    else:
                        if not mem[_1838 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1838 + 140 len 20] == mem[_1838 + 172 len 20]:
                            _2044 = mem[_1838]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1887)
                            mem[mem[64] + 68] = Mask(112, 0, _1906)
                            require ext_code.size(address(_2044))
                            staticcall address(_2044).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1887 << 144, Mask(112, 0, _1906)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2218] == mem[_2218]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2218]
                        else:
                            _2046 = mem[_1838]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1906)
                            mem[mem[64] + 68] = Mask(112, 0, _1887)
                            require ext_code.size(address(_2046))
                            staticcall address(_2046).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1906 << 144, Mask(112, 0, _1887)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2219] == mem[_2219]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2219]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1838 + 140 len 20] == address(_1937)
                    _1808 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _915 + 32]
                    continue 
                require mem[96] - 1 < mem[_915]
                if mem[(32 * mem[96] - 1) + _915 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1916] == bool(mem[_1916])
                _2690 = mem[96]
                s = 0
                while s < _2690:
                    _2719 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2719] = 0
                    mem[_2719 + 32] = 0
                    mem[_2719 + 64] = 0
                    mem[_2719 + 96] = 0
                    mem[_2719 + 128] = 0
                    mem[_2719 + 160] = 0
                    mem[_2719 + 192] = 0
                    mem[_2719 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2822 = mem[(32 * s) + _915 + 32]
                            _2838 = mem[mem[(32 * s) + 128] + 32]
                            _2839 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2839 + 36] = 0
                            mem[_2839 + 68] = _2822
                            mem[_2839 + 100] = this.address
                            mem[_2839 + 132] = 128
                            mem[_2839 + 164] = mem[_2839]
                            idx = 0
                            while idx < mem[_2839]:
                                mem[idx + _2839 + 196] = mem[idx + _2839 + 32]
                                _2690 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2839]) > mem[_2839]:
                                mem[mem[_2839] + _2839 + 196] = 0
                            require ext_code.size(address(_2838))
                            call address(_2838).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2822, address(this.address), 128, mem[_2839], mem[_2839 + 196 len ceil32(mem[_2839])]
                        else:
                            _2823 = mem[(32 * s) + _915 + 32]
                            _2840 = mem[mem[(32 * s) + 128] + 32]
                            _2841 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2841 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2841 + 36] = _2823
                            mem[_2841 + 68] = 0
                            mem[_2841 + 100] = this.address
                            mem[_2841 + 132] = 128
                            mem[_2841 + 164] = mem[_2841]
                            idx = 0
                            while idx < mem[_2841]:
                                mem[idx + _2841 + 196] = mem[idx + _2841 + 32]
                                _2690 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2841]) > mem[_2841]:
                                mem[mem[_2841] + _2841 + 196] = 0
                            require ext_code.size(address(_2840))
                            call address(_2840).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2823, 0, address(this.address), 128, mem[_2841], mem[_2841 + 196 len ceil32(mem[_2841])]
                    else:
                        require s + 1 < mem[96]
                        _2744 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2842 = mem[(32 * s) + _915 + 32]
                            _2864 = mem[mem[(32 * s) + 128] + 32]
                            _2865 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2865 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2865 + 36] = 0
                            mem[_2865 + 68] = _2842
                            mem[_2865 + 100] = address(_2744)
                            mem[_2865 + 132] = 128
                            mem[_2865 + 164] = mem[_2865]
                            t = 0
                            while t < mem[_2865]:
                                mem[t + _2865 + 196] = mem[t + _2865 + 32]
                                _2690 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2865]) > mem[_2865]:
                                mem[mem[_2865] + _2865 + 196] = 0
                            require ext_code.size(address(_2864))
                            call address(_2864).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2842, address(_2744), 128, mem[_2865], mem[_2865 + 196 len ceil32(mem[_2865])]
                        else:
                            _2843 = mem[(32 * s) + _915 + 32]
                            _2866 = mem[mem[(32 * s) + 128] + 32]
                            _2867 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2867 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2867 + 36] = _2843
                            mem[_2867 + 68] = 0
                            mem[_2867 + 100] = address(_2744)
                            mem[_2867 + 132] = 128
                            mem[_2867 + 164] = mem[_2867]
                            t = 0
                            while t < mem[_2867]:
                                mem[t + _2867 + 196] = mem[t + _2867 + 32]
                                _2690 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2867]) > mem[_2867]:
                                mem[mem[_2867] + _2867 + 196] = 0
                            require ext_code.size(address(_2866))
                            call address(_2866).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2843, 0, address(_2744), 128, mem[_2867], mem[_2867 + 196 len ceil32(mem[_2867])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2690 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2898 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2898] == mem[_2898]
                if mem[_2898] <= _912:
                    revert with 0, 'P'
            else:
                mem[_915 + (32 * _914) + 64 len 32 * _919] = code.data[8175 len 32 * _919]
                _1809 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1809:
                    _1818 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1818] = 0
                    mem[_1818 + 32] = 0
                    mem[_1818 + 64] = 0
                    mem[_1818 + 96] = 0
                    mem[_1818 + 128] = 0
                    mem[_1818 + 160] = 0
                    mem[_1818 + 192] = 0
                    mem[_1818 + 224] = 0
                    require idx < mem[96]
                    _1844 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1888 = mem[_1880]
                    require mem[_1880] == mem[_1880 + 18 len 14]
                    _1907 = mem[_1880 + 32]
                    require mem[_1880 + 32] == mem[_1880 + 50 len 14]
                    require mem[_1880 + 64] == mem[_1880 + 92 len 4]
                    _1939 = mem[_1844 + 128]
                    _1940 = mem[_1844 + 160]
                    if mem[_1844 + 140 len 20] == mem[_1844 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1844 + 140 len 20] < mem[_1844 + 172 len 20]:
                        if not mem[_1844 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1844 + 140 len 20] == mem[_1844 + 140 len 20]:
                            _2052 = mem[_1844]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1888)
                            mem[mem[64] + 68] = Mask(112, 0, _1907)
                            require ext_code.size(address(_2052))
                            staticcall address(_2052).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1888 << 144, Mask(112, 0, _1907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2220] == mem[_2220]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2220]
                        else:
                            _2054 = mem[_1844]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1907)
                            mem[mem[64] + 68] = Mask(112, 0, _1888)
                            require ext_code.size(address(_2054))
                            staticcall address(_2054).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1907 << 144, Mask(112, 0, _1888)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2221 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2221] == mem[_2221]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2221]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1844 + 140 len 20] == address(_1939)
                    else:
                        if not mem[_1844 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1844 + 140 len 20] == mem[_1844 + 172 len 20]:
                            _2056 = mem[_1844]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1888)
                            mem[mem[64] + 68] = Mask(112, 0, _1907)
                            require ext_code.size(address(_2056))
                            staticcall address(_2056).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1888 << 144, Mask(112, 0, _1907)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2222] == mem[_2222]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2222]
                        else:
                            _2058 = mem[_1844]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1907)
                            mem[mem[64] + 68] = Mask(112, 0, _1888)
                            require ext_code.size(address(_2058))
                            staticcall address(_2058).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1907 << 144, Mask(112, 0, _1888)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2223 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2223] == mem[_2223]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2223]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1844 + 140 len 20] == address(_1940)
                    _1809 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _915 + 32]
                    continue 
                require mem[96] - 1 < mem[_915]
                if mem[(32 * mem[96] - 1) + _915 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1917 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1917] == bool(mem[_1917])
                _2691 = mem[96]
                s = 0
                while s < _2691:
                    _2721 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2721] = 0
                    mem[_2721 + 32] = 0
                    mem[_2721 + 64] = 0
                    mem[_2721 + 96] = 0
                    mem[_2721 + 128] = 0
                    mem[_2721 + 160] = 0
                    mem[_2721 + 192] = 0
                    mem[_2721 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2826 = mem[(32 * s) + _915 + 32]
                            _2844 = mem[mem[(32 * s) + 128] + 32]
                            _2845 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2845 + 36] = 0
                            mem[_2845 + 68] = _2826
                            mem[_2845 + 100] = this.address
                            mem[_2845 + 132] = 128
                            mem[_2845 + 164] = mem[_2845]
                            idx = 0
                            while idx < mem[_2845]:
                                mem[idx + _2845 + 196] = mem[idx + _2845 + 32]
                                _2691 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2845]) > mem[_2845]:
                                mem[mem[_2845] + _2845 + 196] = 0
                            require ext_code.size(address(_2844))
                            call address(_2844).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2826, address(this.address), 128, mem[_2845], mem[_2845 + 196 len ceil32(mem[_2845])]
                        else:
                            _2827 = mem[(32 * s) + _915 + 32]
                            _2846 = mem[mem[(32 * s) + 128] + 32]
                            _2847 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2847 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2847 + 36] = _2827
                            mem[_2847 + 68] = 0
                            mem[_2847 + 100] = this.address
                            mem[_2847 + 132] = 128
                            mem[_2847 + 164] = mem[_2847]
                            idx = 0
                            while idx < mem[_2847]:
                                mem[idx + _2847 + 196] = mem[idx + _2847 + 32]
                                _2691 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2847]) > mem[_2847]:
                                mem[mem[_2847] + _2847 + 196] = 0
                            require ext_code.size(address(_2846))
                            call address(_2846).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2827, 0, address(this.address), 128, mem[_2847], mem[_2847 + 196 len ceil32(mem[_2847])]
                    else:
                        require s + 1 < mem[96]
                        _2747 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2848 = mem[(32 * s) + _915 + 32]
                            _2870 = mem[mem[(32 * s) + 128] + 32]
                            _2871 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2871 + 36] = 0
                            mem[_2871 + 68] = _2848
                            mem[_2871 + 100] = address(_2747)
                            mem[_2871 + 132] = 128
                            mem[_2871 + 164] = mem[_2871]
                            t = 0
                            while t < mem[_2871]:
                                mem[t + _2871 + 196] = mem[t + _2871 + 32]
                                _2691 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2871]) > mem[_2871]:
                                mem[mem[_2871] + _2871 + 196] = 0
                            require ext_code.size(address(_2870))
                            call address(_2870).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2848, address(_2747), 128, mem[_2871], mem[_2871 + 196 len ceil32(mem[_2871])]
                        else:
                            _2849 = mem[(32 * s) + _915 + 32]
                            _2872 = mem[mem[(32 * s) + 128] + 32]
                            _2873 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2873 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2873 + 36] = _2849
                            mem[_2873 + 68] = 0
                            mem[_2873 + 100] = address(_2747)
                            mem[_2873 + 132] = 128
                            mem[_2873 + 164] = mem[_2873]
                            t = 0
                            while t < mem[_2873]:
                                mem[t + _2873 + 196] = mem[t + _2873 + 32]
                                _2691 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2873]) > mem[_2873]:
                                mem[mem[_2873] + _2873 + 196] = 0
                            require ext_code.size(address(_2872))
                            call address(_2872).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2849, 0, address(_2747), 128, mem[_2873], mem[_2873 + 196 len ceil32(mem[_2873])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2691 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2899 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2899] == mem[_2899]
                if mem[_2899] <= _912:
                    revert with 0, 'P'
        else:
            mem[mem[64] + 32 len 32 * _914] = code.data[8175 len 32 * _914]
            _921 = mem[96]
            mem[mem[64] + (32 * _914) + 32] = mem[96]
            mem[64] = _915 + (32 * _914) + (32 * _921) + 64
            if not _921:
                _1810 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1810:
                    _1821 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1821] = 0
                    mem[_1821 + 32] = 0
                    mem[_1821 + 64] = 0
                    mem[_1821 + 96] = 0
                    mem[_1821 + 128] = 0
                    mem[_1821 + 160] = 0
                    mem[_1821 + 192] = 0
                    mem[_1821 + 224] = 0
                    require idx < mem[96]
                    _1850 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1889 = mem[_1881]
                    require mem[_1881] == mem[_1881 + 18 len 14]
                    _1908 = mem[_1881 + 32]
                    require mem[_1881 + 32] == mem[_1881 + 50 len 14]
                    require mem[_1881 + 64] == mem[_1881 + 92 len 4]
                    _1942 = mem[_1850 + 128]
                    _1943 = mem[_1850 + 160]
                    if mem[_1850 + 140 len 20] == mem[_1850 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1850 + 140 len 20] < mem[_1850 + 172 len 20]:
                        if not mem[_1850 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1850 + 140 len 20] == mem[_1850 + 140 len 20]:
                            _2064 = mem[_1850]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1889)
                            mem[mem[64] + 68] = Mask(112, 0, _1908)
                            require ext_code.size(address(_2064))
                            staticcall address(_2064).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1889 << 144, Mask(112, 0, _1908)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2224] == mem[_2224]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2224]
                        else:
                            _2066 = mem[_1850]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1908)
                            mem[mem[64] + 68] = Mask(112, 0, _1889)
                            require ext_code.size(address(_2066))
                            staticcall address(_2066).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1908 << 144, Mask(112, 0, _1889)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2225] == mem[_2225]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2225]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1850 + 140 len 20] == address(_1942)
                    else:
                        if not mem[_1850 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1850 + 140 len 20] == mem[_1850 + 172 len 20]:
                            _2068 = mem[_1850]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1889)
                            mem[mem[64] + 68] = Mask(112, 0, _1908)
                            require ext_code.size(address(_2068))
                            staticcall address(_2068).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1889 << 144, Mask(112, 0, _1908)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2226 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2226] == mem[_2226]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2226]
                        else:
                            _2070 = mem[_1850]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1908)
                            mem[mem[64] + 68] = Mask(112, 0, _1889)
                            require ext_code.size(address(_2070))
                            staticcall address(_2070).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1908 << 144, Mask(112, 0, _1889)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2227 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2227] == mem[_2227]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2227]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1850 + 140 len 20] == address(_1943)
                    _1810 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _915 + 32]
                    continue 
                require mem[96] - 1 < mem[_915]
                if mem[(32 * mem[96] - 1) + _915 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1918] == bool(mem[_1918])
                _2692 = mem[96]
                s = 0
                while s < _2692:
                    _2723 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2723] = 0
                    mem[_2723 + 32] = 0
                    mem[_2723 + 64] = 0
                    mem[_2723 + 96] = 0
                    mem[_2723 + 128] = 0
                    mem[_2723 + 160] = 0
                    mem[_2723 + 192] = 0
                    mem[_2723 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2830 = mem[(32 * s) + _915 + 32]
                            _2850 = mem[mem[(32 * s) + 128] + 32]
                            _2851 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2851 + 36] = 0
                            mem[_2851 + 68] = _2830
                            mem[_2851 + 100] = this.address
                            mem[_2851 + 132] = 128
                            mem[_2851 + 164] = mem[_2851]
                            idx = 0
                            while idx < mem[_2851]:
                                mem[idx + _2851 + 196] = mem[idx + _2851 + 32]
                                _2692 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2851]) > mem[_2851]:
                                mem[mem[_2851] + _2851 + 196] = 0
                            require ext_code.size(address(_2850))
                            call address(_2850).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2830, address(this.address), 128, mem[_2851], mem[_2851 + 196 len ceil32(mem[_2851])]
                        else:
                            _2831 = mem[(32 * s) + _915 + 32]
                            _2852 = mem[mem[(32 * s) + 128] + 32]
                            _2853 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2853 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2853 + 36] = _2831
                            mem[_2853 + 68] = 0
                            mem[_2853 + 100] = this.address
                            mem[_2853 + 132] = 128
                            mem[_2853 + 164] = mem[_2853]
                            idx = 0
                            while idx < mem[_2853]:
                                mem[idx + _2853 + 196] = mem[idx + _2853 + 32]
                                _2692 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2853]) > mem[_2853]:
                                mem[mem[_2853] + _2853 + 196] = 0
                            require ext_code.size(address(_2852))
                            call address(_2852).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2831, 0, address(this.address), 128, mem[_2853], mem[_2853 + 196 len ceil32(mem[_2853])]
                    else:
                        require s + 1 < mem[96]
                        _2750 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2854 = mem[(32 * s) + _915 + 32]
                            _2876 = mem[mem[(32 * s) + 128] + 32]
                            _2877 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2877 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2877 + 36] = 0
                            mem[_2877 + 68] = _2854
                            mem[_2877 + 100] = address(_2750)
                            mem[_2877 + 132] = 128
                            mem[_2877 + 164] = mem[_2877]
                            t = 0
                            while t < mem[_2877]:
                                mem[t + _2877 + 196] = mem[t + _2877 + 32]
                                _2692 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2877]) > mem[_2877]:
                                mem[mem[_2877] + _2877 + 196] = 0
                            require ext_code.size(address(_2876))
                            call address(_2876).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2854, address(_2750), 128, mem[_2877], mem[_2877 + 196 len ceil32(mem[_2877])]
                        else:
                            _2855 = mem[(32 * s) + _915 + 32]
                            _2878 = mem[mem[(32 * s) + 128] + 32]
                            _2879 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2879 + 36] = _2855
                            mem[_2879 + 68] = 0
                            mem[_2879 + 100] = address(_2750)
                            mem[_2879 + 132] = 128
                            mem[_2879 + 164] = mem[_2879]
                            t = 0
                            while t < mem[_2879]:
                                mem[t + _2879 + 196] = mem[t + _2879 + 32]
                                _2692 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2879]) > mem[_2879]:
                                mem[mem[_2879] + _2879 + 196] = 0
                            require ext_code.size(address(_2878))
                            call address(_2878).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2855, 0, address(_2750), 128, mem[_2879], mem[_2879 + 196 len ceil32(mem[_2879])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2692 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2900] == mem[_2900]
                if mem[_2900] <= _912:
                    revert with 0, 'P'
            else:
                mem[_915 + (32 * _914) + 64 len 32 * _921] = code.data[8175 len 32 * _921]
                _1811 = mem[96]
                idx = 0
                s = cd[36]
                while idx < _1811:
                    _1824 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_1824] = 0
                    mem[_1824 + 32] = 0
                    mem[_1824 + 64] = 0
                    mem[_1824 + 96] = 0
                    mem[_1824 + 128] = 0
                    mem[_1824 + 160] = 0
                    mem[_1824 + 192] = 0
                    mem[_1824 + 224] = 0
                    require idx < mem[96]
                    _1856 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1882 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1890 = mem[_1882]
                    require mem[_1882] == mem[_1882 + 18 len 14]
                    _1909 = mem[_1882 + 32]
                    require mem[_1882 + 32] == mem[_1882 + 50 len 14]
                    require mem[_1882 + 64] == mem[_1882 + 92 len 4]
                    _1945 = mem[_1856 + 128]
                    _1946 = mem[_1856 + 160]
                    if mem[_1856 + 140 len 20] == mem[_1856 + 172 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[_1856 + 140 len 20] < mem[_1856 + 172 len 20]:
                        if not mem[_1856 + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1856 + 140 len 20] == mem[_1856 + 140 len 20]:
                            _2076 = mem[_1856]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1890)
                            mem[mem[64] + 68] = Mask(112, 0, _1909)
                            require ext_code.size(address(_2076))
                            staticcall address(_2076).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1890 << 144, Mask(112, 0, _1909)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2228] == mem[_2228]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2228]
                        else:
                            _2078 = mem[_1856]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1909)
                            mem[mem[64] + 68] = Mask(112, 0, _1890)
                            require ext_code.size(address(_2078))
                            staticcall address(_2078).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1909 << 144, Mask(112, 0, _1890)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2229 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2229] == mem[_2229]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2229]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1856 + 140 len 20] == address(_1945)
                    else:
                        if not mem[_1856 + 172 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if mem[_1856 + 140 len 20] == mem[_1856 + 172 len 20]:
                            _2080 = mem[_1856]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1890)
                            mem[mem[64] + 68] = Mask(112, 0, _1909)
                            require ext_code.size(address(_2080))
                            staticcall address(_2080).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1890 << 144, Mask(112, 0, _1909)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2230 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2230] == mem[_2230]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2230]
                        else:
                            _2082 = mem[_1856]
                            mem[mem[64] + 4] = s
                            mem[mem[64] + 36] = Mask(112, 0, _1909)
                            mem[mem[64] + 68] = Mask(112, 0, _1890)
                            require ext_code.size(address(_2082))
                            staticcall address(_2082).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args s, _1909 << 144, Mask(112, 0, _1890)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2231 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2231] == mem[_2231]
                            require idx < mem[_915]
                            mem[(32 * idx) + _915 + 32] = mem[_2231]
                        require idx < mem[_915]
                        require idx < mem[_915 + (32 * _914) + 32]
                        mem[(32 * idx) + _915 + (32 * _914) + 64] = mem[_1856 + 140 len 20] == address(_1946)
                    _1811 = mem[96]
                    idx = idx + 1
                    s = mem[(32 * idx) + _915 + 32]
                    continue 
                require mem[96] - 1 < mem[_915]
                if mem[(32 * mem[96] - 1) + _915 + 32] <= cd[36]:
                    revert with 0, 'UNI_P'
                require mem[96]
                mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
                mem[mem[64] + 36] = cd[36]
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], cd[36]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1919] == bool(mem[_1919])
                _2693 = mem[96]
                s = 0
                while s < _2693:
                    _2725 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2725] = 0
                    mem[_2725 + 32] = 0
                    mem[_2725 + 64] = 0
                    mem[_2725 + 96] = 0
                    mem[_2725 + 128] = 0
                    mem[_2725 + 160] = 0
                    mem[_2725 + 192] = 0
                    mem[_2725 + 224] = 0
                    require s < mem[96]
                    if s == mem[96] - 1:
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2834 = mem[(32 * s) + _915 + 32]
                            _2856 = mem[mem[(32 * s) + 128] + 32]
                            _2857 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2857 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2857 + 36] = 0
                            mem[_2857 + 68] = _2834
                            mem[_2857 + 100] = this.address
                            mem[_2857 + 132] = 128
                            mem[_2857 + 164] = mem[_2857]
                            idx = 0
                            while idx < mem[_2857]:
                                mem[idx + _2857 + 196] = mem[idx + _2857 + 32]
                                _2693 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2857]) > mem[_2857]:
                                mem[mem[_2857] + _2857 + 196] = 0
                            require ext_code.size(address(_2856))
                            call address(_2856).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2834, address(this.address), 128, mem[_2857], mem[_2857 + 196 len ceil32(mem[_2857])]
                        else:
                            _2835 = mem[(32 * s) + _915 + 32]
                            _2858 = mem[mem[(32 * s) + 128] + 32]
                            _2859 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2859 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2859 + 36] = _2835
                            mem[_2859 + 68] = 0
                            mem[_2859 + 100] = this.address
                            mem[_2859 + 132] = 128
                            mem[_2859 + 164] = mem[_2859]
                            idx = 0
                            while idx < mem[_2859]:
                                mem[idx + _2859 + 196] = mem[idx + _2859 + 32]
                                _2693 = mem[96]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_2859]) > mem[_2859]:
                                mem[mem[_2859] + _2859 + 196] = 0
                            require ext_code.size(address(_2858))
                            call address(_2858).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2835, 0, address(this.address), 128, mem[_2859], mem[_2859 + 196 len ceil32(mem[_2859])]
                    else:
                        require s + 1 < mem[96]
                        _2753 = mem[mem[(32 * s + 1) + 128] + 32]
                        require s < mem[_915 + (32 * _914) + 32]
                        require s < mem[_915]
                        if mem[(32 * s) + _915 + (32 * _914) + 64]:
                            _2860 = mem[(32 * s) + _915 + 32]
                            _2882 = mem[mem[(32 * s) + 128] + 32]
                            _2883 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2883 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2883 + 36] = 0
                            mem[_2883 + 68] = _2860
                            mem[_2883 + 100] = address(_2753)
                            mem[_2883 + 132] = 128
                            mem[_2883 + 164] = mem[_2883]
                            t = 0
                            while t < mem[_2883]:
                                mem[t + _2883 + 196] = mem[t + _2883 + 32]
                                _2693 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2883]) > mem[_2883]:
                                mem[mem[_2883] + _2883 + 196] = 0
                            require ext_code.size(address(_2882))
                            call address(_2882).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _2860, address(_2753), 128, mem[_2883], mem[_2883 + 196 len ceil32(mem[_2883])]
                        else:
                            _2861 = mem[(32 * s) + _915 + 32]
                            _2884 = mem[mem[(32 * s) + 128] + 32]
                            _2885 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_2885 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2885 + 36] = _2861
                            mem[_2885 + 68] = 0
                            mem[_2885 + 100] = address(_2753)
                            mem[_2885 + 132] = 128
                            mem[_2885 + 164] = mem[_2885]
                            t = 0
                            while t < mem[_2885]:
                                mem[t + _2885 + 196] = mem[t + _2885 + 32]
                                _2693 = mem[96]
                                t = t + 32
                                continue 
                            if ceil32(mem[_2885]) > mem[_2885]:
                                mem[mem[_2885] + _2885 + 196] = 0
                            require ext_code.size(address(_2884))
                            call address(_2884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _2861, 0, address(_2753), 128, mem[_2885], mem[_2885 + 196 len ceil32(mem[_2885])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2693 = mem[96]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2901] == mem[_2901]
                if mem[_2901] <= _912:
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
