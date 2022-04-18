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

function sub_ddb912b0(?) payable {
    require calldata.size - 4 >= 64
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
        _155 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_155] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_155 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_155 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_155 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_155 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_155 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_155 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_155 + 224] = cd[(s + 224)]
        mem[t] = _155
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    _308 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _308:
        _310 = mem[64]
        mem[64] = mem[64] + 256
        mem[_310] = 0
        mem[_310 + 32] = 0
        mem[_310 + 64] = 0
        mem[_310 + 96] = 0
        mem[_310 + 128] = 0
        mem[_310 + 160] = 0
        mem[_310 + 192] = 0
        mem[_310 + 224] = 0
        require idx < mem[96]
        _313 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 192]:
            if mem[mem[(32 * idx) + 128] + 224]:
                _325 = mem[mem[(32 * idx) + 128] + 32]
                _327 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 64, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32)))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_327'))
                mem[mem[64] + 68] = s
                require ext_code.size(address(_325))
                call address(_325).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], ('signextend', 15, ('var', '_327')), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_369] == mem[_369]
                _308 = mem[96]
                idx = idx + 1
                s = mem[_369]
                continue 
            _329 = mem[mem[(32 * idx) + 128] + 32]
            _331 = mem[mem[(32 * idx) + 128] + 96]
            mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 64, ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32)))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_331'))
            mem[mem[64] + 68] = s
            require ext_code.size(address(_329))
            call address(_329).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], ('signextend', 15, ('var', '_331')), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_370] == mem[_370]
            _308 = mem[96]
            idx = idx + 1
            s = mem[_370]
            continue 
        _319 = mem[mem[(32 * idx) + 128] + 32]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _334 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _348 = mem[_334]
        require mem[_334] == mem[_334 + 18 len 14]
        _365 = mem[_334 + 32]
        require mem[_334 + 32] == mem[_334 + 50 len 14]
        require mem[_334 + 64] == mem[_334 + 92 len 4]
        require ext_code.size(address(_319))
        staticcall address(_319).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_382] == mem[_382 + 12 len 20]
        if mem[_313 + 140 len 20] == mem[_382 + 12 len 20]:
            _405 = mem[_313]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _348)
            mem[mem[64] + 68] = Mask(112, 0, _365)
            require ext_code.size(address(_405))
            staticcall address(_405).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s, _348 << 144, Mask(112, 0, _365)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_430] == mem[_430]
            _308 = mem[96]
            idx = idx + 1
            s = mem[_430]
            continue 
        _407 = mem[_313]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = Mask(112, 0, _365)
        mem[mem[64] + 68] = Mask(112, 0, _348)
        require ext_code.size(address(_407))
        staticcall address(_407).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args s, _365 << 144, Mask(112, 0, _348)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _431 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_431] == mem[_431]
        _308 = mem[96]
        idx = idx + 1
        s = mem[_431]
        continue 
    if s <= cd[36]:
        revert with 0, 'P_CALC'
    _457 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _457:
        _459 = mem[64]
        mem[64] = mem[64] + 256
        mem[_459] = 0
        mem[_459 + 32] = 0
        mem[_459 + 64] = 0
        mem[_459 + 96] = 0
        mem[_459 + 128] = 0
        mem[_459 + 160] = 0
        mem[_459 + 192] = 0
        mem[_459 + 224] = 0
        require idx < mem[96]
        _462 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 192]:
            _467 = mem[mem[(32 * idx) + 128] + 32]
            _468 = mem[mem[(32 * idx) + 128] + 128]
            _471 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_471][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _483 = mem[mem[(32 * idx) + 128] + 32]
                    _484 = mem[mem[(32 * idx) + 128] + 64]
                    _485 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_484'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_485'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_483))
                    call address(_483).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_484')), ('signextend', 15, ('var', '_485')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _516 = mem[_462 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_516))
                    staticcall address(_516).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_524] == mem[_524]
                    _457 = mem[96]
                    idx = idx + 1
                    s = mem[_524]
                    continue 
                _487 = mem[mem[(32 * idx) + 128] + 32]
                _488 = mem[mem[(32 * idx) + 128] + 64]
                _489 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_488'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_489'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_487))
                call address(_487).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_488')), ('signextend', 15, ('var', '_489')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _518 = mem[_462 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_518))
                staticcall address(_518).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_525] == mem[_525]
                _457 = mem[96]
                idx = idx + 1
                s = mem[_525]
                continue 
            mem[mem[64] + 4] = address(_467)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_468))
            call address(_468).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_467), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _495 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_495] == bool(mem[_495])
            mem[0] = address(_468)
            mem[32] = sha3(address(_467), 1)
            if not mem[_462 + 224]:
                _506 = mem[_462 + 32]
                _507 = mem[_462 + 64]
                _508 = mem[_462 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_507'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_508'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_506))
                call address(_506).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_507')), ('signextend', 15, ('var', '_508')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _534 = mem[_462 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_534))
                staticcall address(_534).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_545] == mem[_545]
                _457 = mem[96]
                idx = idx + 1
                s = mem[_545]
                continue 
            _510 = mem[_462 + 32]
            _511 = mem[_462 + 64]
            _512 = mem[_462 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_511'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_512'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_510))
            call address(_510).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_511')), ('signextend', 15, ('var', '_512')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _536 = mem[_462 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_536))
            staticcall address(_536).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_546] == mem[_546]
            _457 = mem[96]
            idx = idx + 1
            s = mem[_546]
            continue 
        _464 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_464 + 32 len 64] = code.data[6733 len 64]
        require 0 < mem[_464]
        mem[_464 + 32] = mem[_462 + 140 len 20]
        require 1 < mem[_464]
        mem[_464 + 64] = mem[_462 + 172 len 20]
        _474 = mem[_462]
        _475 = mem[_462 + 128]
        mem[0] = mem[_462 + 12 len 20]
        _478 = sha3(mem[0], 1)
        mem[0] = address(_475)
        mem[32] = _478
        if stor[_478][address(_475)]:
            _491 = mem[_462]
            mem[_464 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_464 + 100] = s
            mem[_464 + 132] = 1
            mem[_464 + 164] = 160
            mem[_464 + 260] = mem[_464]
            s = 0
            t = _464 + 32
            u = _464 + 292
            while s < mem[_464]:
                mem[u] = mem[t + 12 len 20]
                _457 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_464 + 196] = this.address
            mem[_464 + 228] = block.timestamp + 1000
            require ext_code.size(address(_491))
            call address(_491).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _464 + (32 * mem[_464]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _569 = mem[_567]
            require mem[_567] <= test266151307()
            require _567 + mem[_567] + 31 < _567 + return_data.size
            _571 = mem[_567 + mem[_567]]
            require mem[_567 + mem[_567]] <= test266151307()
            require (32 * mem[_567 + mem[_567]]) + 32 >= 0 and _567 + ceil32(return_data.size) + (32 * mem[_567 + mem[_567]]) + 32 <= test266151307()
            mem[64] = _567 + ceil32(return_data.size) + (32 * mem[_567 + mem[_567]]) + 32
            mem[_567 + ceil32(return_data.size)] = _571
            require _569 + (32 * _571) + 32 <= return_data.size
            s = 0
            t = _567 + _569 + 32
            u = _567 + ceil32(return_data.size) + 32
            while s < _571:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _457 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _590 = mem[_462 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_590))
            staticcall address(_590).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _595 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_595] == mem[_595]
            _457 = mem[96]
            idx = idx + 1
            s = mem[_595]
            continue 
        mem[_464 + 100] = address(_474)
        mem[_464 + 132] = -1
        require ext_code.size(address(_475))
        call address(_475).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_474), -1
        mem[_464 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _464 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = address(_475)
        mem[32] = sha3(address(_474), 1)
        _514 = mem[_462]
        mem[_464 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_464 + ceil32(return_data.size) + 100] = s
        mem[_464 + ceil32(return_data.size) + 132] = 1
        mem[_464 + ceil32(return_data.size) + 164] = 160
        mem[_464 + ceil32(return_data.size) + 260] = mem[_464]
        t = 0
        u = _464 + 32
        v = _464 + ceil32(return_data.size) + 292
        while t < mem[_464]:
            mem[v] = mem[u + 12 len 20]
            _457 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_464 + ceil32(return_data.size) + 196] = this.address
        mem[_464 + ceil32(return_data.size) + 228] = block.timestamp + 1000
        require ext_code.size(address(_514))
        call address(_514).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_464 + ceil32(return_data.size) + 260 len (32 * mem[_464]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_464 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _464 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _568 = mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
        require _464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _464 + ceil32(return_data.size) + return_data.size + 96
        _570 = mem[_464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        require mem[_464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
        require (32 * mem[_464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _464 + (2 * ceil32(return_data.size)) + (32 * mem[_464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _464 + (2 * ceil32(return_data.size)) + (32 * mem[_464 + ceil32(return_data.size) + mem[_464 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
        mem[_464 + (2 * ceil32(return_data.size)) + 96] = _570
        require _568 + (32 * _570) + 32 <= return_data.size
        s = 0
        t = _464 + ceil32(return_data.size) + _568 + 128
        u = _464 + (2 * ceil32(return_data.size)) + 128
        while s < _570:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _457 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _588 = mem[_462 + 160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_588))
        staticcall address(_588).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _594 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_594] == mem[_594]
        _457 = mem[96]
        idx = idx + 1
        s = mem[_594]
        continue 
    if s <= cd[36]:
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
