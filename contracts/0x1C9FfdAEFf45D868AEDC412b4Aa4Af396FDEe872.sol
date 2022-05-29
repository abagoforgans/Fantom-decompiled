contract main {




// =====================  Runtime code  =====================


#
#  - startArb(address arg1, address arg2, uint256[] arg3, uint256 arg4)
#
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function setWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function calculAmount(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require (arg6 * arg2) + (10000 * arg3)
    s = (10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)) + 1 / 2
    t = 10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)
    while s < t:
        require s
        s = (10000 * arg5 * arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3) * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3) / s) + s / 2
        t = s
        continue 
    if arg5:
        return 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3), 
               arg6 * arg2 * arg4 / (arg6 * arg2) + (10000 * arg3),
               t - (10000 * 10000 * arg1 * arg3 / (arg6 * arg2) + (10000 * arg3)) / arg5,
               arg5
    revert
}

function sendToWhitelist(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 != msg.sender:
        require stor1[address(msg.sender)]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function withdrawTokens(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender == stor0:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_14] == bool(mem[_14])
            require mem[_14]
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[address(msg.sender)]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, cd[((32 * idx) + arg2 + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == bool(mem[_15])
            require mem[_15]
            idx = idx + 1
            continue 
}

function checkPath(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = msg.value
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    idx = 0
    s = 128
    t = (32 * arg2.length) + 228
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * arg2.length) + 132 len (96 * arg2.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _61 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require (32 * arg2.length) + return_data.size + 128 > (32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 159
    _62 = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
    require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 >= 0 and (32 * arg2.length) + ceil32(return_data.size) + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 160 <= test266151307()
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 160
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = _62
    require return_data.size >= _61 + (32 * _62) + 32
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len 32 * _62] = mem[(32 * arg2.length) + _61 + 160 len 32 * _62]
    require 1 < _62
    _86 = mem[(32 * arg2.length) + ceil32(return_data.size) + 192]
    _87 = mem[64]
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = arg2.length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_87 + 68] = this.address
    mem[_87 + 100] = 24 * 10^9 * 24 * 3600
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _87 + (32 * arg2.length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _107 = mem[_106]
    require mem[_106] <= test266151307()
    require _106 + return_data.size > _106 + mem[_106] + 31
    _108 = mem[_106 + mem[_106]]
    require mem[_106 + mem[_106]] <= test266151307()
    require (32 * mem[_106 + mem[_106]]) + 32 >= 0 and _106 + ceil32(return_data.size) + (32 * mem[_106 + mem[_106]]) + 32 <= test266151307()
    mem[64] = _106 + ceil32(return_data.size) + (32 * mem[_106 + mem[_106]]) + 32
    mem[_106 + ceil32(return_data.size)] = _108
    require return_data.size >= _107 + (32 * _108) + 32
    mem[_106 + ceil32(return_data.size) + 32 len 32 * _108] = mem[_106 + _107 + 32 len 32 * _108]
    require 1 < mem[96]
    _121 = mem[160]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_121))
    staticcall address(_121).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_124] < _86:
        revert with 0, 'Not enough return from swap'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 36)] + 67
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= test266151307()
    require (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 >= 96 and (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 36)] + (128 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 36)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not arg3
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function sub_3aa99232(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 32
    require ('cd', 100)[0] <= test266151307()
    require cd[100] + ('cd', 100).length + 36 > cd[100] + ('cd', 100)[0] + 67
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
    require (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128 >= 96 and (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128 <= test266151307()
    mem[64] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 128
    mem[96] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    require ('cd', 100).length + 36 >= ('cd', 100)[0] + (128 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68
    s = cd[100] + ('cd', 100)[0] + 68
    t = 128
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[0] + 36)]:
        require cd[100] + ('cd', 100).length + -s + 36 >= 128
        _287 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require cd[s] == address(cd[s])
        mem[_287] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_287 + 32] = cd[(s + 32)]
        mem[_287 + 64] = cd[(s + 64)]
        mem[_287 + 96] = cd[(s + 96)]
        mem[t] = _287
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    require 0 < mem[96]
    if mem[mem[128] + 12 len 20] != msg.sender:
        revert with 0, 'Unauthorized'
    if not cd[36]:
        _566 = mem[96]
        idx = 1
        while idx < _566:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _590 = mem[(32 * idx) + 128]
                    _606 = mem[mem[(32 * idx) + 128]]
                    _607 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 12 len 20]
                    if mem[_638 + 12 len 20] == address(_607):
                        _679 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_731] == mem[_731 + 12 len 20]
                        if mem[_731 + 12 len 20] != address(_679):
                            _788 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_788] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _788 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _782 = mem[_590 + 96]
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _782
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _786 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _782, address(this.address), 128, 0
                    else:
                        _671 = mem[_590 + 96]
                        _683 = mem[_590 + 32]
                        require ext_code.size(mem[_590 + 12 len 20])
                        staticcall mem[_590 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_732] == mem[_732 + 12 len 20]
                        if mem[_732 + 12 len 20] != address(_683):
                            _792 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_792] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _792 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, 0, address(this.address), 128, 0
                        else:
                            _783 = mem[_590 + 96]
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _671
                            mem[mem[64] + 36] = _783
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _790 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_606))
                            call address(_606).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _671, _783, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _592 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _611 = mem[(32 * idx) + 128]
                    _626 = mem[mem[(32 * idx) + 128]]
                    _627 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_644] == mem[_644 + 12 len 20]
                    if mem[_644 + 12 len 20] == address(_627):
                        _703 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _749 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_749] == mem[_749 + 12 len 20]
                        if mem[_749 + 12 len 20] != address(_703):
                            _812 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_812] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _812 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_592), 128, 0
                        else:
                            _794 = mem[_611 + 96]
                            _810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_810] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _794
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _810 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _794, address(_592), 128, 0
                    else:
                        _687 = mem[_611 + 96]
                        _707 = mem[_611 + 32]
                        require ext_code.size(mem[_611 + 12 len 20])
                        staticcall mem[_611 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != address(_707):
                            _816 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_816] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _816 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, 0, address(_592), 128, 0
                        else:
                            _795 = mem[_611 + 96]
                            _814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_814] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _687
                            mem[mem[64] + 36] = _795
                            mem[mem[64] + 68] = address(_592)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _814 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_626))
                            call address(_626).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _687, _795, address(_592), 128, 0
            else:
                require 1 < mem[96]
                _579 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _613 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _613
                require ext_code.size(address(_579))
                call address(_579).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _613
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_647] == bool(mem[_647])
                if not mem[_647]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _711 = mem[(32 * idx) + 128]
                    _733 = mem[mem[(32 * idx) + 128]]
                    _734 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_767] == mem[_767 + 12 len 20]
                    if mem[_767 + 12 len 20] == address(_734):
                        _836 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_886] == mem[_886 + 12 len 20]
                        if mem[_886 + 12 len 20] != address(_836):
                            _944 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_944] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _944 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _938 = mem[_711 + 96]
                            _942 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_942] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _938
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _942 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _938, address(this.address), 128, 0
                    else:
                        _818 = mem[_711 + 96]
                        _840 = mem[_711 + 32]
                        require ext_code.size(mem[_711 + 12 len 20])
                        staticcall mem[_711 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == mem[_887 + 12 len 20]
                        if mem[_887 + 12 len 20] != address(_840):
                            _948 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_948] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _948 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, 0, address(this.address), 128, 0
                        else:
                            _939 = mem[_711 + 96]
                            _946 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_946] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _818
                            mem[mem[64] + 36] = _939
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _946 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_733))
                            call address(_733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _818, _939, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _713 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _738 = mem[(32 * idx) + 128]
                    _751 = mem[mem[(32 * idx) + 128]]
                    _752 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_774] == mem[_774 + 12 len 20]
                    if mem[_774 + 12 len 20] == address(_752):
                        _862 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_898] == mem[_898 + 12 len 20]
                        if mem[_898 + 12 len 20] != address(_862):
                            _968 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_968] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _968 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_713), 128, 0
                        else:
                            _950 = mem[_738 + 96]
                            _966 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_966] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _950
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _966 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _950, address(_713), 128, 0
                    else:
                        _844 = mem[_738 + 96]
                        _866 = mem[_738 + 32]
                        require ext_code.size(mem[_738 + 12 len 20])
                        staticcall mem[_738 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_899] == mem[_899 + 12 len 20]
                        if mem[_899 + 12 len 20] != address(_866):
                            _972 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_972] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, 0, address(_713), 128, 0
                        else:
                            _951 = mem[_738 + 96]
                            _970 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_970] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _844
                            mem[mem[64] + 36] = _951
                            mem[mem[64] + 68] = address(_713)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _970 + 32]
                                _566 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_751))
                            call address(_751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _844, _951, address(_713), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _566 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not cd[36]:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require 0 < mem[96]
            _657 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _657
            require ext_code.size(address(_636))
            call address(_636).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _657
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_702] == bool(mem[_702])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_605]
            require mem[_605] == mem[_605 + 12 len 20]
            require 0 < mem[96]
            _665 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _665
            require ext_code.size(address(_637))
            call address(_637).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _665
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_730] == bool(mem[_730])
    else:
        require not cd[68]
        _567 = mem[96]
        idx = 1
        while idx < _567:
            if idx != 1:
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _597 = mem[(32 * idx) + 128]
                    _617 = mem[mem[(32 * idx) + 128]]
                    _618 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if mem[_642 + 12 len 20] == address(_618):
                        _691 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_740] == mem[_740 + 12 len 20]
                        if mem[_740 + 12 len 20] != address(_691):
                            _798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_798] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _798 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _784 = mem[_597 + 96]
                            _796 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_796] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _784
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _796 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _784, address(this.address), 128, 0
                    else:
                        _675 = mem[_597 + 96]
                        _695 = mem[_597 + 32]
                        require ext_code.size(mem[_597 + 12 len 20])
                        staticcall mem[_597 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_741] == mem[_741 + 12 len 20]
                        if mem[_741 + 12 len 20] != address(_695):
                            _802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_802] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _802 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, 0, address(this.address), 128, 0
                        else:
                            _785 = mem[_597 + 96]
                            _800 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_800] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _675
                            mem[mem[64] + 36] = _785
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _800 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_617))
                            call address(_617).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _675, _785, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _599 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _622 = mem[(32 * idx) + 128]
                    _631 = mem[mem[(32 * idx) + 128]]
                    _632 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_645] == mem[_645 + 12 len 20]
                    if mem[_645 + 12 len 20] == address(_632):
                        _717 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != address(_717):
                            _825 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_825] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _825 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_599), 128, 0
                        else:
                            _804 = mem[_622 + 96]
                            _823 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_823] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _804
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _823 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _804, address(_599), 128, 0
                    else:
                        _699 = mem[_622 + 96]
                        _721 = mem[_622 + 32]
                        require ext_code.size(mem[_622 + 12 len 20])
                        staticcall mem[_622 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_758] == mem[_758 + 12 len 20]
                        if mem[_758 + 12 len 20] != address(_721):
                            _829 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_829] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _829 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, 0, address(_599), 128, 0
                        else:
                            _805 = mem[_622 + 96]
                            _827 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_827] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _699
                            mem[mem[64] + 36] = _805
                            mem[mem[64] + 68] = address(_599)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _827 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_631))
                            call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _699, _805, address(_599), 128, 0
            else:
                require 1 < mem[96]
                _588 = mem[mem[160] + 32]
                require 1 < mem[96]
                require 1 < mem[96]
                _624 = mem[mem[160] + 64]
                mem[mem[64] + 4] = mem[mem[160] + 12 len 20]
                mem[mem[64] + 36] = _624
                require ext_code.size(address(_588))
                call address(_588).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _624
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                if not mem[_649]:
                    revert with 0, 'Transfer failed'
                if idx >= mem[96] - 1:
                    require idx < mem[96]
                    _725 = mem[(32 * idx) + 128]
                    _742 = mem[mem[(32 * idx) + 128]]
                    _743 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_771] == mem[_771 + 12 len 20]
                    if mem[_771 + 12 len 20] == address(_743):
                        _849 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892 + 12 len 20]
                        if mem[_892 + 12 len 20] != address(_849):
                            _954 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_954] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _954 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 0
                        else:
                            _940 = mem[_725 + 96]
                            _952 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_952] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _940
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _952 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _940, address(this.address), 128, 0
                    else:
                        _831 = mem[_725 + 96]
                        _853 = mem[_725 + 32]
                        require ext_code.size(mem[_725 + 12 len 20])
                        staticcall mem[_725 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _893 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_893] == mem[_893 + 12 len 20]
                        if mem[_893 + 12 len 20] != address(_853):
                            _958 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_958] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _958 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, 0, address(this.address), 128, 0
                        else:
                            _941 = mem[_725 + 96]
                            _956 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_956] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _831
                            mem[mem[64] + 36] = _941
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _956 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_742))
                            call address(_742).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _831, _941, address(this.address), 128, 0
                else:
                    require idx + 1 < mem[96]
                    _727 = mem[mem[(32 * idx + 1) + 128]]
                    require idx < mem[96]
                    _747 = mem[(32 * idx) + 128]
                    _759 = mem[mem[(32 * idx) + 128]]
                    _760 = mem[mem[(32 * idx) + 128] + 32]
                    require ext_code.size(mem[mem[(32 * idx) + 128] + 12 len 20])
                    staticcall mem[mem[(32 * idx) + 128] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] == address(_760):
                        _874 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_904] == mem[_904 + 12 len 20]
                        if mem[_904 + 12 len 20] != address(_874):
                            _980 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_980] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _980 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(_727), 128, 0
                        else:
                            _960 = mem[_747 + 96]
                            _978 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_978] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = _960
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _978 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _960, address(_727), 128, 0
                    else:
                        _857 = mem[_747 + 96]
                        _878 = mem[_747 + 32]
                        require ext_code.size(mem[_747 + 12 len 20])
                        staticcall mem[_747 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_905] == mem[_905 + 12 len 20]
                        if mem[_905 + 12 len 20] != address(_878):
                            _984 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_984] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _984 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, 0, address(_727), 128, 0
                        else:
                            _961 = mem[_747 + 96]
                            _982 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_982] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _857
                            mem[mem[64] + 36] = _961
                            mem[mem[64] + 68] = address(_727)
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _982 + 32]
                                _567 = mem[96]
                                s = s + 32
                                continue 
                            require ext_code.size(address(_759))
                            call address(_759).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _857, _961, address(_727), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[96]
            idx = idx + 1
            continue 
        require ext_code.size(msg.sender)
        if not cd[36]:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _640 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require 0 < mem[96]
            _661 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _661
            require ext_code.size(address(_640))
            call address(_640).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _661
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == bool(mem[_716])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _641 = mem[_616]
            require mem[_616] == mem[_616 + 12 len 20]
            require 0 < mem[96]
            _668 = mem[mem[128] + 64]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _668
            require ext_code.size(address(_641))
            call address(_641).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, _668
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_739] == bool(mem[_739])
}

function sub_2f276634(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _1550 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_1550] = cd[(cd[4] + cd[s] + 36)]
        require calldata.size >= cd[4] + cd[s] + (96 * cd[(cd[4] + cd[s] + 36)]) + 68
        u = 0
        v = cd[4] + cd[s] + 68
        w = _1550 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 96
            _3096 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            require cd[v] == address(cd[v])
            mem[_3096] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_3096 + 32] = cd[(v + 32)]
            mem[_3096 + 64] = cd[(v + 64)]
            mem[w] = _3096
            u = u + 1
            v = v + 96
            w = w + 32
            continue 
        mem[t] = _1550
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1545 = mem[96]
    require mem[96] <= test266151307()
    _1546 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1545) + 32
    if not _1545:
        _3088 = mem[96]
        idx = 0
        while idx < _3088:
            require idx < mem[96]
            _3093 = mem[mem[(32 * idx) + 128]]
            require mem[mem[(32 * idx) + 128]] <= test266151307()
            _3095 = mem[64]
            mem[mem[64]] = mem[mem[(32 * idx) + 128]]
            if not _3093:
                require idx < mem[96]
                _3099 = mem[(32 * idx) + 128]
                mem[mem[64] + (32 * _3093) + 32 len 64] = call.data[calldata.size len 64]
                mem[64] = _3095 + (32 * _3093) + 224
                mem[_3095 + (32 * _3093) + 96] = 0
                mem[_3095 + (32 * _3093) + 128] = 0
                mem[_3095 + (32 * _3093) + 160] = 0
                mem[_3095 + (32 * _3093) + 192] = 0
                _3114 = mem[_3099]
                require mem[_3099] <= test266151307()
                mem[_3095 + (32 * _3093) + 224] = mem[_3099]
                mem[64] = _3095 + (32 * _3093) + (32 * _3114) + 256
                if not _3114:
                    _4628 = mem[_3099]
                    s = 0
                    t = _3095 + (32 * _3093) + 96
                    while s < _4628 - 1:
                        if s:
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _4676 = mem[_4659]
                            require mem[_4659] == mem[_4659 + 18 len 14]
                            _4707 = mem[_4659 + 32]
                            require mem[_4659 + 32] == mem[_4659 + 50 len 14]
                            require mem[_4659 + 64] == mem[_4659 + 92 len 4]
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4796] == mem[_4796 + 12 len 20]
                            require s + 1 < mem[_3099]
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_4796 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _4676)
                                require s + 1 < mem[_3095 + (32 * _3093) + 224]
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _4707)
                                _5037 = mem[t]
                                _5038 = mem[t + 32]
                                _5039 = mem[t + 96]
                                require s + 1 < mem[_3099]
                                _5071 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                                _5128 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5128 + 96] = _5039
                                require (_5071 * _5038) + (10000 * Mask(112, 0, _4676))
                                mem[_5128] = 10000 * _5037 * Mask(112, 0, _4676) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676))
                                mem[_5128 + 32] = _5071 * _5038 * Mask(112, 0, _4707) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676))
                                t = (10000 * _5039 * _5071 * _5038 * Mask(112, 0, _4707) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676)) * 10000 * _5037 * Mask(112, 0, _4676) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676))) + 1 / 2
                                u = 10000 * _5039 * _5071 * _5038 * Mask(112, 0, _4707) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676)) * 10000 * _5037 * Mask(112, 0, _4676) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676))
                                while t < u:
                                    require t
                                    t = (10000 * _5039 * _5071 * _5038 * Mask(112, 0, _4707) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676)) * 10000 * _5037 * Mask(112, 0, _4676) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676)) / t) + t / 2
                                    u = t
                                    continue 
                                require _5039
                                mem[_5128 + 64] = u - (10000 * 10000 * _5037 * Mask(112, 0, _4676) / (_5071 * _5038) + (10000 * Mask(112, 0, _4676))) / _5039
                                s = s + 1
                                t = _5128
                                continue 
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _4707)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _4676)
                            _5042 = mem[t]
                            _5043 = mem[t + 32]
                            _5044 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _5073 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _5129 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5129 + 96] = _5044
                            require (_5073 * _5043) + (10000 * Mask(112, 0, _4707))
                            mem[_5129] = 10000 * _5042 * Mask(112, 0, _4707) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707))
                            mem[_5129 + 32] = _5073 * _5043 * Mask(112, 0, _4676) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707))
                            t = (10000 * _5044 * _5073 * _5043 * Mask(112, 0, _4676) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707)) * 10000 * _5042 * Mask(112, 0, _4707) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707))) + 1 / 2
                            u = 10000 * _5044 * _5073 * _5043 * Mask(112, 0, _4676) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707)) * 10000 * _5042 * Mask(112, 0, _4707) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707))
                            while t < u:
                                require t
                                t = (10000 * _5044 * _5073 * _5043 * Mask(112, 0, _4676) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707)) * 10000 * _5042 * Mask(112, 0, _4707) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707)) / t) + t / 2
                                u = t
                                continue 
                            require _5044
                            mem[_5129 + 64] = u - (10000 * 10000 * _5042 * Mask(112, 0, _4707) / (_5073 * _5043) + (10000 * Mask(112, 0, _4707))) / _5044
                            s = s + 1
                            t = _5129
                            continue 
                        require s < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3099 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _4677 = mem[_4660]
                        require mem[_4660] == mem[_4660 + 18 len 14]
                        _4708 = mem[_4660 + 32]
                        require mem[_4660 + 32] == mem[_4660 + 50 len 14]
                        require mem[_4660 + 64] == mem[_4660 + 92 len 4]
                        require s < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3099 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4797] == mem[_4797 + 12 len 20]
                        require s < mem[_3099]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        if mem[mem[(32 * s) + _3099 + 32] + 44 len 20] == mem[_4797 + 12 len 20]:
                            _5012 = mem[(32 * s) + _3095 + (32 * _3093) + 256]
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _4708)
                            mem[_5012] = Mask(112, 0, _4677)
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[t] = mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[t + 32] = Mask(112, 0, _4708)
                            require 0 < mem[_3099]
                            mem[t + 96] = mem[mem[_3099 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5239 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _5279 = mem[_5239]
                            require mem[_5239] == mem[_5239 + 18 len 14]
                            _5326 = mem[_5239 + 32]
                            require mem[_5239 + 32] == mem[_5239 + 50 len 14]
                            require mem[_5239 + 64] == mem[_5239 + 92 len 4]
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5465 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5465] == mem[_5465 + 12 len 20]
                            require s + 1 < mem[_3099]
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_5465 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _5279)
                                require s + 1 < mem[_3095 + (32 * _3093) + 224]
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _5326)
                                _5666 = mem[t]
                                _5668 = mem[t + 96]
                                require s + 1 < mem[_3099]
                                _5702 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                                _5727 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5727 + 96] = _5668
                                require (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))
                                mem[_5727] = 10000 * _5666 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))
                                mem[_5727 + 32] = _5702 * Mask(112, 0, _4708) * Mask(112, 0, _5326) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))
                                t = (10000 * _5668 * _5702 * Mask(112, 0, _4708) * Mask(112, 0, _5326) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5666 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))) + 1 / 2
                                u = 10000 * _5668 * _5702 * Mask(112, 0, _4708) * Mask(112, 0, _5326) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5666 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))
                                while t < u:
                                    require t
                                    t = (10000 * _5668 * _5702 * Mask(112, 0, _4708) * Mask(112, 0, _5326) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5666 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279)) / t) + t / 2
                                    u = t
                                    continue 
                                require _5668
                                mem[_5727 + 64] = u - (10000 * 10000 * _5666 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5279))) / _5668
                                t = t + 1
                                t = _5727
                                continue 
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _5326)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _5279)
                            _5671 = mem[t]
                            _5673 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _5704 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _5728 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5728 + 96] = _5673
                            require (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))
                            mem[_5728] = 10000 * _5671 * Mask(112, 0, _5326) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))
                            mem[_5728 + 32] = _5704 * Mask(112, 0, _4708) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))
                            t = (10000 * _5673 * _5704 * Mask(112, 0, _4708) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326)) * 10000 * _5671 * Mask(112, 0, _5326) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))) + 1 / 2
                            u = 10000 * _5673 * _5704 * Mask(112, 0, _4708) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326)) * 10000 * _5671 * Mask(112, 0, _5326) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))
                            while t < u:
                                require t
                                t = (10000 * _5673 * _5704 * Mask(112, 0, _4708) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326)) * 10000 * _5671 * Mask(112, 0, _5326) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326)) / t) + t / 2
                                u = t
                                continue 
                            require _5673
                            mem[_5728 + 64] = u - (10000 * 10000 * _5671 * Mask(112, 0, _5326) / (_5704 * Mask(112, 0, _4708)) + (10000 * Mask(112, 0, _5326))) / _5673
                            t = t + 1
                            t = _5728
                            continue 
                        _5014 = mem[(32 * s) + _3095 + (32 * _3093) + 256]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _4677)
                        mem[_5014] = Mask(112, 0, _4708)
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[t] = mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[t + 32] = Mask(112, 0, _4677)
                        require 0 < mem[_3099]
                        mem[t + 96] = mem[mem[_3099 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _5280 = mem[_5240]
                        require mem[_5240] == mem[_5240 + 18 len 14]
                        _5327 = mem[_5240 + 32]
                        require mem[_5240 + 32] == mem[_5240 + 50 len 14]
                        require mem[_5240 + 64] == mem[_5240 + 92 len 4]
                        require s + 1 < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5466] == mem[_5466 + 12 len 20]
                        require s + 1 < mem[_3099]
                        require s + 1 < mem[_3095 + (32 * _3093) + 224]
                        if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_5466 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _5280)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _5327)
                            _5676 = mem[t]
                            _5678 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _5706 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _5729 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5729 + 96] = _5678
                            require (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))
                            mem[_5729] = 10000 * _5676 * Mask(112, 0, _5280) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))
                            mem[_5729 + 32] = _5706 * Mask(112, 0, _4677) * Mask(112, 0, _5327) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))
                            t = (10000 * _5678 * _5706 * Mask(112, 0, _4677) * Mask(112, 0, _5327) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280)) * 10000 * _5676 * Mask(112, 0, _5280) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))) + 1 / 2
                            u = 10000 * _5678 * _5706 * Mask(112, 0, _4677) * Mask(112, 0, _5327) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280)) * 10000 * _5676 * Mask(112, 0, _5280) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))
                            while t < u:
                                require t
                                t = (10000 * _5678 * _5706 * Mask(112, 0, _4677) * Mask(112, 0, _5327) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280)) * 10000 * _5676 * Mask(112, 0, _5280) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280)) / t) + t / 2
                                u = t
                                continue 
                            require _5678
                            mem[_5729 + 64] = u - (10000 * 10000 * _5676 * Mask(112, 0, _5280) / (_5706 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5280))) / _5678
                            t = t + 1
                            t = _5729
                            continue 
                        mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _5327)
                        require s + 1 < mem[_3095 + (32 * _3093) + 224]
                        mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _5280)
                        _5681 = mem[t]
                        _5683 = mem[t + 96]
                        require s + 1 < mem[_3099]
                        _5708 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                        _5730 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5730 + 96] = _5683
                        require (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))
                        mem[_5730] = 10000 * _5681 * Mask(112, 0, _5327) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))
                        mem[_5730 + 32] = _5708 * Mask(112, 0, _4677) * Mask(112, 0, _5280) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))
                        t = (10000 * _5683 * _5708 * Mask(112, 0, _4677) * Mask(112, 0, _5280) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327)) * 10000 * _5681 * Mask(112, 0, _5327) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))) + 1 / 2
                        u = 10000 * _5683 * _5708 * Mask(112, 0, _4677) * Mask(112, 0, _5280) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327)) * 10000 * _5681 * Mask(112, 0, _5327) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))
                        while t < u:
                            require t
                            t = (10000 * _5683 * _5708 * Mask(112, 0, _4677) * Mask(112, 0, _5280) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327)) * 10000 * _5681 * Mask(112, 0, _5327) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327)) / t) + t / 2
                            u = t
                            continue 
                        require _5683
                        mem[_5730 + 64] = u - (10000 * 10000 * _5681 * Mask(112, 0, _5327) / (_5708 * Mask(112, 0, _4677)) + (10000 * Mask(112, 0, _5327))) / _5683
                        t = t + 1
                        t = _5730
                        continue 
                    require 0 < mem[_3095]
                    mem[mem[_3095 + 32] + 64] = mem[t + 64]
                    _6195 = mem[_3099]
                    s = 0
                    while s < _6195:
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3095]
                        if mem[mem[(32 * s) + _3095 + 32] + 64] > mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]:
                            _6224 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3095]
                            mem[_6224] = mem[mem[_3095 + 32] + 64]
                            mem[_6224 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _6224
                            idx = idx + 1
                            continue 
                        require s < mem[_3099]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32]] = mem[mem[(32 * s) + _3099 + 32] + 12 len 20]
                        require s < mem[_3099]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 32] = mem[mem[(32 * s) + _3099 + 32] + 44 len 20]
                        require s < mem[_3095]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3099]
                        require (mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]])
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 96] = mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64] * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] / (mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]])
                        if s != mem[_3099] - 1:
                            require s < mem[_3095]
                            require s + 1 < mem[_3095]
                            mem[mem[(32 * s + 1) + _3095 + 32] + 64] = mem[mem[(32 * s) + _3095 + 32] + 96]
                        s = s + 1
                        continue 
                    _6200 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3095]
                    mem[_6200] = mem[mem[_3095 + 32] + 64]
                    require mem[_3099] - 1 < mem[_3095]
                    mem[_6200 + 32] = mem[mem[(32 * mem[_3099] - 1) + _3095 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _6200
                else:
                    mem[64] = _3095 + (32 * _3093) + (32 * _3114) + 320
                    mem[_3095 + (32 * _3093) + (32 * _3114) + 256] = 0
                    mem[_3095 + (32 * _3093) + (32 * _3114) + 288] = 0
                    mem[var37001] = _3095 + (32 * _3093) + (32 * _3114) + 256
                    t = var37001
                    s = var37002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_3095 + (32 * _3093) + (32 * _3114) + 256] = 0
                        mem[_3095 + (32 * _3093) + (32 * _3114) + 288] = 0
                        mem[t + 32] = _3095 + (32 * _3093) + (32 * _3114) + 256
                        t = t + 32
                        s = s - 1
                        continue 
                    _7585 = mem[_3099]
                    s = 0
                    t = _3095 + (32 * _3093) + 96
                    while s < _7585 - 1:
                        if s:
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7694 = mem[_7652]
                            require mem[_7652] == mem[_7652 + 18 len 14]
                            _7756 = mem[_7652 + 32]
                            require mem[_7652 + 32] == mem[_7652 + 50 len 14]
                            require mem[_7652 + 64] == mem[_7652 + 92 len 4]
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7930] == mem[_7930 + 12 len 20]
                            require s + 1 < mem[_3099]
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_7930 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _7694)
                                require s + 1 < mem[_3095 + (32 * _3093) + 224]
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _7756)
                                _8154 = mem[t]
                                _8155 = mem[t + 32]
                                _8156 = mem[t + 96]
                                require s + 1 < mem[_3099]
                                _8204 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                                _8264 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8264 + 96] = _8156
                                require (_8204 * _8155) + (10000 * Mask(112, 0, _7694))
                                mem[_8264] = 10000 * _8154 * Mask(112, 0, _7694) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694))
                                mem[_8264 + 32] = _8204 * _8155 * Mask(112, 0, _7756) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694))
                                t = (10000 * _8156 * _8204 * _8155 * Mask(112, 0, _7756) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694)) * 10000 * _8154 * Mask(112, 0, _7694) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694))) + 1 / 2
                                u = 10000 * _8156 * _8204 * _8155 * Mask(112, 0, _7756) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694)) * 10000 * _8154 * Mask(112, 0, _7694) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694))
                                while t < u:
                                    require t
                                    t = (10000 * _8156 * _8204 * _8155 * Mask(112, 0, _7756) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694)) * 10000 * _8154 * Mask(112, 0, _7694) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8156
                                mem[_8264 + 64] = u - (10000 * 10000 * _8154 * Mask(112, 0, _7694) / (_8204 * _8155) + (10000 * Mask(112, 0, _7694))) / _8156
                                s = s + 1
                                t = _8264
                                continue 
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _7756)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _7694)
                            _8159 = mem[t]
                            _8160 = mem[t + 32]
                            _8161 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _8206 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _8265 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8265 + 96] = _8161
                            require (_8206 * _8160) + (10000 * Mask(112, 0, _7756))
                            mem[_8265] = 10000 * _8159 * Mask(112, 0, _7756) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756))
                            mem[_8265 + 32] = _8206 * _8160 * Mask(112, 0, _7694) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756))
                            t = (10000 * _8161 * _8206 * _8160 * Mask(112, 0, _7694) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756)) * 10000 * _8159 * Mask(112, 0, _7756) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756))) + 1 / 2
                            u = 10000 * _8161 * _8206 * _8160 * Mask(112, 0, _7694) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756)) * 10000 * _8159 * Mask(112, 0, _7756) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756))
                            while t < u:
                                require t
                                t = (10000 * _8161 * _8206 * _8160 * Mask(112, 0, _7694) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756)) * 10000 * _8159 * Mask(112, 0, _7756) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756)) / t) + t / 2
                                u = t
                                continue 
                            require _8161
                            mem[_8265 + 64] = u - (10000 * 10000 * _8159 * Mask(112, 0, _7756) / (_8206 * _8160) + (10000 * Mask(112, 0, _7756))) / _8161
                            s = s + 1
                            t = _8265
                            continue 
                        require s < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3099 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7695 = mem[_7653]
                        require mem[_7653] == mem[_7653 + 18 len 14]
                        _7757 = mem[_7653 + 32]
                        require mem[_7653 + 32] == mem[_7653 + 50 len 14]
                        require mem[_7653 + 64] == mem[_7653 + 92 len 4]
                        require s < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3099 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7931] == mem[_7931 + 12 len 20]
                        require s < mem[_3099]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        if mem[mem[(32 * s) + _3099 + 32] + 44 len 20] == mem[_7931 + 12 len 20]:
                            _8125 = mem[(32 * s) + _3095 + (32 * _3093) + 256]
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _7757)
                            mem[_8125] = Mask(112, 0, _7695)
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[t] = mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]
                            require s < mem[_3095 + (32 * _3093) + 224]
                            mem[t + 32] = Mask(112, 0, _7757)
                            require 0 < mem[_3099]
                            mem[t + 96] = mem[mem[_3099 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8399 = mem[_8368]
                            require mem[_8368] == mem[_8368 + 18 len 14]
                            _8435 = mem[_8368 + 32]
                            require mem[_8368 + 32] == mem[_8368 + 50 len 14]
                            require mem[_8368 + 64] == mem[_8368 + 92 len 4]
                            require s + 1 < mem[_3099]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8542] == mem[_8542 + 12 len 20]
                            require s + 1 < mem[_3099]
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_8542 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _8399)
                                require s + 1 < mem[_3095 + (32 * _3093) + 224]
                                mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _8435)
                                _8677 = mem[t]
                                _8679 = mem[t + 96]
                                require s + 1 < mem[_3099]
                                _8749 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                                _8784 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8784 + 96] = _8679
                                require (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))
                                mem[_8784] = 10000 * _8677 * Mask(112, 0, _8399) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))
                                mem[_8784 + 32] = _8749 * Mask(112, 0, _7757) * Mask(112, 0, _8435) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))
                                t = (10000 * _8679 * _8749 * Mask(112, 0, _7757) * Mask(112, 0, _8435) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399)) * 10000 * _8677 * Mask(112, 0, _8399) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))) + 1 / 2
                                u = 10000 * _8679 * _8749 * Mask(112, 0, _7757) * Mask(112, 0, _8435) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399)) * 10000 * _8677 * Mask(112, 0, _8399) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))
                                while t < u:
                                    require t
                                    t = (10000 * _8679 * _8749 * Mask(112, 0, _7757) * Mask(112, 0, _8435) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399)) * 10000 * _8677 * Mask(112, 0, _8399) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8679
                                mem[_8784 + 64] = u - (10000 * 10000 * _8677 * Mask(112, 0, _8399) / (_8749 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8399))) / _8679
                                t = t + 1
                                t = _8784
                                continue 
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _8435)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _8399)
                            _8682 = mem[t]
                            _8684 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _8751 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _8785 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8785 + 96] = _8684
                            require (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))
                            mem[_8785] = 10000 * _8682 * Mask(112, 0, _8435) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))
                            mem[_8785 + 32] = _8751 * Mask(112, 0, _7757) * Mask(112, 0, _8399) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))
                            t = (10000 * _8684 * _8751 * Mask(112, 0, _7757) * Mask(112, 0, _8399) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435)) * 10000 * _8682 * Mask(112, 0, _8435) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))) + 1 / 2
                            u = 10000 * _8684 * _8751 * Mask(112, 0, _7757) * Mask(112, 0, _8399) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435)) * 10000 * _8682 * Mask(112, 0, _8435) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))
                            while t < u:
                                require t
                                t = (10000 * _8684 * _8751 * Mask(112, 0, _7757) * Mask(112, 0, _8399) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435)) * 10000 * _8682 * Mask(112, 0, _8435) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435)) / t) + t / 2
                                u = t
                                continue 
                            require _8684
                            mem[_8785 + 64] = u - (10000 * 10000 * _8682 * Mask(112, 0, _8435) / (_8751 * Mask(112, 0, _7757)) + (10000 * Mask(112, 0, _8435))) / _8684
                            t = t + 1
                            t = _8785
                            continue 
                        _8127 = mem[(32 * s) + _3095 + (32 * _3093) + 256]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _7695)
                        mem[_8127] = Mask(112, 0, _7757)
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[t] = mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        mem[t + 32] = Mask(112, 0, _7695)
                        require 0 < mem[_3099]
                        mem[t + 96] = mem[mem[_3099 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8400 = mem[_8369]
                        require mem[_8369] == mem[_8369 + 18 len 14]
                        _8436 = mem[_8369 + 32]
                        require mem[_8369 + 32] == mem[_8369 + 50 len 14]
                        require mem[_8369 + 64] == mem[_8369 + 92 len 4]
                        require s + 1 < mem[_3099]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3099 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8543] == mem[_8543 + 12 len 20]
                        require s + 1 < mem[_3099]
                        require s + 1 < mem[_3095 + (32 * _3093) + 224]
                        if mem[mem[(32 * s + 1) + _3099 + 32] + 44 len 20] == mem[_8543 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _8400)
                            require s + 1 < mem[_3095 + (32 * _3093) + 224]
                            mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _8436)
                            _8687 = mem[t]
                            _8689 = mem[t + 96]
                            require s + 1 < mem[_3099]
                            _8753 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                            _8786 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8786 + 96] = _8689
                            require (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))
                            mem[_8786] = 10000 * _8687 * Mask(112, 0, _8400) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))
                            mem[_8786 + 32] = _8753 * Mask(112, 0, _7695) * Mask(112, 0, _8436) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))
                            t = (10000 * _8689 * _8753 * Mask(112, 0, _7695) * Mask(112, 0, _8436) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400)) * 10000 * _8687 * Mask(112, 0, _8400) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))) + 1 / 2
                            u = 10000 * _8689 * _8753 * Mask(112, 0, _7695) * Mask(112, 0, _8436) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400)) * 10000 * _8687 * Mask(112, 0, _8400) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))
                            while t < u:
                                require t
                                t = (10000 * _8689 * _8753 * Mask(112, 0, _7695) * Mask(112, 0, _8436) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400)) * 10000 * _8687 * Mask(112, 0, _8400) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400)) / t) + t / 2
                                u = t
                                continue 
                            require _8689
                            mem[_8786 + 64] = u - (10000 * 10000 * _8687 * Mask(112, 0, _8400) / (_8753 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8400))) / _8689
                            t = t + 1
                            t = _8786
                            continue 
                        mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256]] = Mask(112, 0, _8436)
                        require s + 1 < mem[_3095 + (32 * _3093) + 224]
                        mem[mem[(32 * s + 1) + _3095 + (32 * _3093) + 256] + 32] = Mask(112, 0, _8400)
                        _8692 = mem[t]
                        _8694 = mem[t + 96]
                        require s + 1 < mem[_3099]
                        _8755 = mem[mem[(32 * s + 1) + _3099 + 32] + 64]
                        _8787 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8787 + 96] = _8694
                        require (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))
                        mem[_8787] = 10000 * _8692 * Mask(112, 0, _8436) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))
                        mem[_8787 + 32] = _8755 * Mask(112, 0, _7695) * Mask(112, 0, _8400) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))
                        t = (10000 * _8694 * _8755 * Mask(112, 0, _7695) * Mask(112, 0, _8400) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436)) * 10000 * _8692 * Mask(112, 0, _8436) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))) + 1 / 2
                        u = 10000 * _8694 * _8755 * Mask(112, 0, _7695) * Mask(112, 0, _8400) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436)) * 10000 * _8692 * Mask(112, 0, _8436) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))
                        while t < u:
                            require t
                            t = (10000 * _8694 * _8755 * Mask(112, 0, _7695) * Mask(112, 0, _8400) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436)) * 10000 * _8692 * Mask(112, 0, _8436) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436)) / t) + t / 2
                            u = t
                            continue 
                        require _8694
                        mem[_8787 + 64] = u - (10000 * 10000 * _8692 * Mask(112, 0, _8436) / (_8755 * Mask(112, 0, _7695)) + (10000 * Mask(112, 0, _8436))) / _8694
                        t = t + 1
                        t = _8787
                        continue 
                    require 0 < mem[_3095]
                    mem[mem[_3095 + 32] + 64] = mem[t + 64]
                    _9028 = mem[_3099]
                    s = 0
                    while s < _9028:
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3095]
                        if mem[mem[(32 * s) + _3095 + 32] + 64] > mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]]:
                            _9081 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3095]
                            mem[_9081] = mem[mem[_3095 + 32] + 64]
                            mem[_9081 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _9081
                            idx = idx + 1
                            continue 
                        require s < mem[_3099]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32]] = mem[mem[(32 * s) + _3099 + 32] + 12 len 20]
                        require s < mem[_3099]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 32] = mem[mem[(32 * s) + _3099 + 32] + 44 len 20]
                        require s < mem[_3095]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3095 + (32 * _3093) + 224]
                        require s < mem[_3099]
                        require (mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]])
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 96] = mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64] * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256] + 32] / (mem[mem[(32 * s) + _3099 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3095 + (32 * _3093) + 256]])
                        if s != mem[_3099] - 1:
                            require s < mem[_3095]
                            require s + 1 < mem[_3095]
                            mem[mem[(32 * s + 1) + _3095 + 32] + 64] = mem[mem[(32 * s) + _3095 + 32] + 96]
                        s = s + 1
                        continue 
                    _9034 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3095]
                    mem[_9034] = mem[mem[_3095 + 32] + 64]
                    require mem[_3099] - 1 < mem[_3095]
                    mem[_9034 + 32] = mem[mem[(32 * mem[_3099] - 1) + _3095 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _9034
            else:
                mem[64] = mem[64] + (32 * _3093) + 160
                mem[_3095 + (32 * _3093) + 32] = 0
                mem[_3095 + (32 * _3093) + 64] = 0
                mem[_3095 + (32 * _3093) + 96] = 0
                mem[_3095 + (32 * _3093) + 128] = 0
                mem[var29001] = _3095 + (32 * _3093) + 32
                t = var29001
                s = var29002
                while s - 1:
                    mem[64] = mem[64] + 128
                    mem[_3095 + (32 * _3093) + 32] = 0
                    mem[_3095 + (32 * _3093) + 64] = 0
                    mem[_3095 + (32 * _3093) + 96] = 0
                    mem[_3095 + (32 * _3093) + 128] = 0
                    mem[t + 32] = _3095 + (32 * _3093) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                require idx < mem[96]
                _6227 = mem[(32 * idx) + 128]
                _6243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6243 len 64] = call.data[calldata.size len 64]
                _6262 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6262] = 0
                mem[_6262 + 32] = 0
                mem[_6262 + 64] = 0
                mem[_6262 + 96] = 0
                _6274 = mem[_6227]
                require mem[_6227] <= test266151307()
                _6284 = mem[64]
                mem[mem[64]] = mem[_6227]
                mem[64] = mem[64] + (32 * _6274) + 32
                if not _6274:
                    _7586 = mem[_6227]
                    s = 0
                    t = _6262
                    while s < _7586 - 1:
                        if s:
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7661 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7699 = mem[_7661]
                            require mem[_7661] == mem[_7661 + 18 len 14]
                            _7762 = mem[_7661 + 32]
                            require mem[_7661 + 32] == mem[_7661 + 50 len 14]
                            require mem[_7661 + 64] == mem[_7661 + 92 len 4]
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7933 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7933] == mem[_7933 + 12 len 20]
                            require s + 1 < mem[_6227]
                            require s + 1 < mem[_6284]
                            if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_7933 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _7699)
                                require s + 1 < mem[_6284]
                                mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _7762)
                                _8168 = mem[t]
                                _8169 = mem[t + 32]
                                _8170 = mem[t + 96]
                                require s + 1 < mem[_6227]
                                _8214 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                                _8270 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8270 + 96] = _8170
                                require (_8214 * _8169) + (10000 * Mask(112, 0, _7699))
                                mem[_8270] = 10000 * _8168 * Mask(112, 0, _7699) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699))
                                mem[_8270 + 32] = _8214 * _8169 * Mask(112, 0, _7762) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699))
                                t = (10000 * _8170 * _8214 * _8169 * Mask(112, 0, _7762) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699)) * 10000 * _8168 * Mask(112, 0, _7699) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699))) + 1 / 2
                                u = 10000 * _8170 * _8214 * _8169 * Mask(112, 0, _7762) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699)) * 10000 * _8168 * Mask(112, 0, _7699) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699))
                                while t < u:
                                    require t
                                    t = (10000 * _8170 * _8214 * _8169 * Mask(112, 0, _7762) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699)) * 10000 * _8168 * Mask(112, 0, _7699) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8170
                                mem[_8270 + 64] = u - (10000 * 10000 * _8168 * Mask(112, 0, _7699) / (_8214 * _8169) + (10000 * Mask(112, 0, _7699))) / _8170
                                s = s + 1
                                t = _8270
                                continue 
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _7762)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _7699)
                            _8173 = mem[t]
                            _8174 = mem[t + 32]
                            _8175 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _8216 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _8271 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8271 + 96] = _8175
                            require (_8216 * _8174) + (10000 * Mask(112, 0, _7762))
                            mem[_8271] = 10000 * _8173 * Mask(112, 0, _7762) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762))
                            mem[_8271 + 32] = _8216 * _8174 * Mask(112, 0, _7699) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762))
                            t = (10000 * _8175 * _8216 * _8174 * Mask(112, 0, _7699) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762)) * 10000 * _8173 * Mask(112, 0, _7762) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762))) + 1 / 2
                            u = 10000 * _8175 * _8216 * _8174 * Mask(112, 0, _7699) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762)) * 10000 * _8173 * Mask(112, 0, _7762) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762))
                            while t < u:
                                require t
                                t = (10000 * _8175 * _8216 * _8174 * Mask(112, 0, _7699) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762)) * 10000 * _8173 * Mask(112, 0, _7762) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762)) / t) + t / 2
                                u = t
                                continue 
                            require _8175
                            mem[_8271 + 64] = u - (10000 * 10000 * _8173 * Mask(112, 0, _7762) / (_8216 * _8174) + (10000 * Mask(112, 0, _7762))) / _8175
                            s = s + 1
                            t = _8271
                            continue 
                        require s < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6227 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7700 = mem[_7662]
                        require mem[_7662] == mem[_7662 + 18 len 14]
                        _7763 = mem[_7662 + 32]
                        require mem[_7662 + 32] == mem[_7662 + 50 len 14]
                        require mem[_7662 + 64] == mem[_7662 + 92 len 4]
                        require s < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6227 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7934] == mem[_7934 + 12 len 20]
                        require s < mem[_6227]
                        require s < mem[_6284]
                        if mem[mem[(32 * s) + _6227 + 32] + 44 len 20] == mem[_7934 + 12 len 20]:
                            _8133 = mem[(32 * s) + _6284 + 32]
                            require s < mem[_6284]
                            mem[mem[(32 * s) + _6284 + 32] + 32] = Mask(112, 0, _7763)
                            mem[_8133] = Mask(112, 0, _7700)
                            require s < mem[_6284]
                            mem[t] = mem[mem[(32 * s) + _6284 + 32]]
                            require s < mem[_6284]
                            mem[t + 32] = Mask(112, 0, _7763)
                            require 0 < mem[_6227]
                            mem[t + 96] = mem[mem[_6227 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8370 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8401 = mem[_8370]
                            require mem[_8370] == mem[_8370 + 18 len 14]
                            _8437 = mem[_8370 + 32]
                            require mem[_8370 + 32] == mem[_8370 + 50 len 14]
                            require mem[_8370 + 64] == mem[_8370 + 92 len 4]
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8544 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8544] == mem[_8544 + 12 len 20]
                            require s + 1 < mem[_6227]
                            require s + 1 < mem[_6284]
                            if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_8544 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _8401)
                                require s + 1 < mem[_6284]
                                mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _8437)
                                _8697 = mem[t]
                                _8699 = mem[t + 96]
                                require s + 1 < mem[_6227]
                                _8757 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                                _8788 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8788 + 96] = _8699
                                require (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))
                                mem[_8788] = 10000 * _8697 * Mask(112, 0, _8401) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))
                                mem[_8788 + 32] = _8757 * Mask(112, 0, _7763) * Mask(112, 0, _8437) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))
                                t = (10000 * _8699 * _8757 * Mask(112, 0, _7763) * Mask(112, 0, _8437) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401)) * 10000 * _8697 * Mask(112, 0, _8401) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))) + 1 / 2
                                u = 10000 * _8699 * _8757 * Mask(112, 0, _7763) * Mask(112, 0, _8437) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401)) * 10000 * _8697 * Mask(112, 0, _8401) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))
                                while t < u:
                                    require t
                                    t = (10000 * _8699 * _8757 * Mask(112, 0, _7763) * Mask(112, 0, _8437) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401)) * 10000 * _8697 * Mask(112, 0, _8401) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8699
                                mem[_8788 + 64] = u - (10000 * 10000 * _8697 * Mask(112, 0, _8401) / (_8757 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8401))) / _8699
                                t = t + 1
                                t = _8788
                                continue 
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _8437)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _8401)
                            _8702 = mem[t]
                            _8704 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _8759 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _8789 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8789 + 96] = _8704
                            require (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))
                            mem[_8789] = 10000 * _8702 * Mask(112, 0, _8437) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))
                            mem[_8789 + 32] = _8759 * Mask(112, 0, _7763) * Mask(112, 0, _8401) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))
                            t = (10000 * _8704 * _8759 * Mask(112, 0, _7763) * Mask(112, 0, _8401) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437)) * 10000 * _8702 * Mask(112, 0, _8437) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))) + 1 / 2
                            u = 10000 * _8704 * _8759 * Mask(112, 0, _7763) * Mask(112, 0, _8401) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437)) * 10000 * _8702 * Mask(112, 0, _8437) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))
                            while t < u:
                                require t
                                t = (10000 * _8704 * _8759 * Mask(112, 0, _7763) * Mask(112, 0, _8401) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437)) * 10000 * _8702 * Mask(112, 0, _8437) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437)) / t) + t / 2
                                u = t
                                continue 
                            require _8704
                            mem[_8789 + 64] = u - (10000 * 10000 * _8702 * Mask(112, 0, _8437) / (_8759 * Mask(112, 0, _7763)) + (10000 * Mask(112, 0, _8437))) / _8704
                            t = t + 1
                            t = _8789
                            continue 
                        _8135 = mem[(32 * s) + _6284 + 32]
                        require s < mem[_6284]
                        mem[mem[(32 * s) + _6284 + 32] + 32] = Mask(112, 0, _7700)
                        mem[_8135] = Mask(112, 0, _7763)
                        require s < mem[_6284]
                        mem[t] = mem[mem[(32 * s) + _6284 + 32]]
                        require s < mem[_6284]
                        mem[t + 32] = Mask(112, 0, _7700)
                        require 0 < mem[_6227]
                        mem[t + 96] = mem[mem[_6227 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8402 = mem[_8371]
                        require mem[_8371] == mem[_8371 + 18 len 14]
                        _8438 = mem[_8371 + 32]
                        require mem[_8371 + 32] == mem[_8371 + 50 len 14]
                        require mem[_8371 + 64] == mem[_8371 + 92 len 4]
                        require s + 1 < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8545] == mem[_8545 + 12 len 20]
                        require s + 1 < mem[_6227]
                        require s + 1 < mem[_6284]
                        if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_8545 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _8402)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _8438)
                            _8707 = mem[t]
                            _8709 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _8761 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _8790 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8790 + 96] = _8709
                            require (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))
                            mem[_8790] = 10000 * _8707 * Mask(112, 0, _8402) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))
                            mem[_8790 + 32] = _8761 * Mask(112, 0, _7700) * Mask(112, 0, _8438) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))
                            t = (10000 * _8709 * _8761 * Mask(112, 0, _7700) * Mask(112, 0, _8438) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402)) * 10000 * _8707 * Mask(112, 0, _8402) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))) + 1 / 2
                            u = 10000 * _8709 * _8761 * Mask(112, 0, _7700) * Mask(112, 0, _8438) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402)) * 10000 * _8707 * Mask(112, 0, _8402) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))
                            while t < u:
                                require t
                                t = (10000 * _8709 * _8761 * Mask(112, 0, _7700) * Mask(112, 0, _8438) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402)) * 10000 * _8707 * Mask(112, 0, _8402) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402)) / t) + t / 2
                                u = t
                                continue 
                            require _8709
                            mem[_8790 + 64] = u - (10000 * 10000 * _8707 * Mask(112, 0, _8402) / (_8761 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8402))) / _8709
                            t = t + 1
                            t = _8790
                            continue 
                        mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _8438)
                        require s + 1 < mem[_6284]
                        mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _8402)
                        _8712 = mem[t]
                        _8714 = mem[t + 96]
                        require s + 1 < mem[_6227]
                        _8763 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                        _8791 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8791 + 96] = _8714
                        require (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))
                        mem[_8791] = 10000 * _8712 * Mask(112, 0, _8438) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))
                        mem[_8791 + 32] = _8763 * Mask(112, 0, _7700) * Mask(112, 0, _8402) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))
                        t = (10000 * _8714 * _8763 * Mask(112, 0, _7700) * Mask(112, 0, _8402) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438)) * 10000 * _8712 * Mask(112, 0, _8438) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))) + 1 / 2
                        u = 10000 * _8714 * _8763 * Mask(112, 0, _7700) * Mask(112, 0, _8402) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438)) * 10000 * _8712 * Mask(112, 0, _8438) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))
                        while t < u:
                            require t
                            t = (10000 * _8714 * _8763 * Mask(112, 0, _7700) * Mask(112, 0, _8402) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438)) * 10000 * _8712 * Mask(112, 0, _8438) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438)) / t) + t / 2
                            u = t
                            continue 
                        require _8714
                        mem[_8791 + 64] = u - (10000 * 10000 * _8712 * Mask(112, 0, _8438) / (_8763 * Mask(112, 0, _7700)) + (10000 * Mask(112, 0, _8438))) / _8714
                        t = t + 1
                        t = _8791
                        continue 
                    require 0 < mem[_3095]
                    mem[mem[_3095 + 32] + 64] = mem[t + 64]
                    _9029 = mem[_6227]
                    s = 0
                    while s < _9029:
                        require s < mem[_6284]
                        require s < mem[_3095]
                        if mem[mem[(32 * s) + _3095 + 32] + 64] > mem[mem[(32 * s) + _6284 + 32]]:
                            _9084 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3095]
                            mem[_9084] = mem[mem[_3095 + 32] + 64]
                            mem[_9084 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _9084
                            idx = idx + 1
                            continue 
                        require s < mem[_6227]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32]] = mem[mem[(32 * s) + _6227 + 32] + 12 len 20]
                        require s < mem[_6227]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 32] = mem[mem[(32 * s) + _6227 + 32] + 44 len 20]
                        require s < mem[_3095]
                        require s < mem[_6284]
                        require s < mem[_6284]
                        require s < mem[_6227]
                        require (mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6284 + 32]])
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 96] = mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64] * mem[mem[(32 * s) + _6284 + 32] + 32] / (mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6284 + 32]])
                        if s != mem[_6227] - 1:
                            require s < mem[_3095]
                            require s + 1 < mem[_3095]
                            mem[mem[(32 * s + 1) + _3095 + 32] + 64] = mem[mem[(32 * s) + _3095 + 32] + 96]
                        s = s + 1
                        continue 
                    _9037 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3095]
                    mem[_9037] = mem[mem[_3095 + 32] + 64]
                    require mem[_6227] - 1 < mem[_3095]
                    mem[_9037 + 32] = mem[mem[(32 * mem[_6227] - 1) + _3095 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _9037
                else:
                    mem[64] = _6284 + (32 * _6274) + 96
                    mem[_6284 + (32 * _6274) + 32] = 0
                    mem[_6284 + (32 * _6274) + 64] = 0
                    mem[var44001] = _6284 + (32 * _6274) + 32
                    t = var44001
                    s = var44002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_6284 + (32 * _6274) + 32] = 0
                        mem[_6284 + (32 * _6274) + 64] = 0
                        mem[t + 32] = _6284 + (32 * _6274) + 32
                        t = t + 32
                        s = s - 1
                        continue 
                    _9938 = mem[_6227]
                    s = 0
                    t = _6262
                    while s < _9938 - 1:
                        if s:
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10001 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10039 = mem[_10001]
                            require mem[_10001] == mem[_10001 + 18 len 14]
                            _10089 = mem[_10001 + 32]
                            require mem[_10001 + 32] == mem[_10001 + 50 len 14]
                            require mem[_10001 + 64] == mem[_10001 + 92 len 4]
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10213] == mem[_10213 + 12 len 20]
                            require s + 1 < mem[_6227]
                            require s + 1 < mem[_6284]
                            if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_10213 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10039)
                                require s + 1 < mem[_6284]
                                mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10089)
                                _10327 = mem[t]
                                _10328 = mem[t + 32]
                                _10329 = mem[t + 96]
                                require s + 1 < mem[_6227]
                                _10370 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                                _10419 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10419 + 96] = _10329
                                require (_10370 * _10328) + (10000 * Mask(112, 0, _10039))
                                mem[_10419] = 10000 * _10327 * Mask(112, 0, _10039) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039))
                                mem[_10419 + 32] = _10370 * _10328 * Mask(112, 0, _10089) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039))
                                t = (10000 * _10329 * _10370 * _10328 * Mask(112, 0, _10089) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039)) * 10000 * _10327 * Mask(112, 0, _10039) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039))) + 1 / 2
                                u = 10000 * _10329 * _10370 * _10328 * Mask(112, 0, _10089) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039)) * 10000 * _10327 * Mask(112, 0, _10039) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039))
                                while t < u:
                                    require t
                                    t = (10000 * _10329 * _10370 * _10328 * Mask(112, 0, _10089) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039)) * 10000 * _10327 * Mask(112, 0, _10039) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10329
                                mem[_10419 + 64] = u - (10000 * 10000 * _10327 * Mask(112, 0, _10039) / (_10370 * _10328) + (10000 * Mask(112, 0, _10039))) / _10329
                                s = s + 1
                                t = _10419
                                continue 
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10089)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10039)
                            _10332 = mem[t]
                            _10333 = mem[t + 32]
                            _10334 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _10372 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _10420 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10420 + 96] = _10334
                            require (_10372 * _10333) + (10000 * Mask(112, 0, _10089))
                            mem[_10420] = 10000 * _10332 * Mask(112, 0, _10089) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089))
                            mem[_10420 + 32] = _10372 * _10333 * Mask(112, 0, _10039) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089))
                            t = (10000 * _10334 * _10372 * _10333 * Mask(112, 0, _10039) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089)) * 10000 * _10332 * Mask(112, 0, _10089) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089))) + 1 / 2
                            u = 10000 * _10334 * _10372 * _10333 * Mask(112, 0, _10039) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089)) * 10000 * _10332 * Mask(112, 0, _10089) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089))
                            while t < u:
                                require t
                                t = (10000 * _10334 * _10372 * _10333 * Mask(112, 0, _10039) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089)) * 10000 * _10332 * Mask(112, 0, _10089) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089)) / t) + t / 2
                                u = t
                                continue 
                            require _10334
                            mem[_10420 + 64] = u - (10000 * 10000 * _10332 * Mask(112, 0, _10089) / (_10372 * _10333) + (10000 * Mask(112, 0, _10089))) / _10334
                            s = s + 1
                            t = _10420
                            continue 
                        require s < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6227 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10002 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10040 = mem[_10002]
                        require mem[_10002] == mem[_10002 + 18 len 14]
                        _10090 = mem[_10002 + 32]
                        require mem[_10002 + 32] == mem[_10002 + 50 len 14]
                        require mem[_10002 + 64] == mem[_10002 + 92 len 4]
                        require s < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6227 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10214] == mem[_10214 + 12 len 20]
                        require s < mem[_6227]
                        require s < mem[_6284]
                        if mem[mem[(32 * s) + _6227 + 32] + 44 len 20] == mem[_10214 + 12 len 20]:
                            _10306 = mem[(32 * s) + _6284 + 32]
                            require s < mem[_6284]
                            mem[mem[(32 * s) + _6284 + 32] + 32] = Mask(112, 0, _10090)
                            mem[_10306] = Mask(112, 0, _10040)
                            require s < mem[_6284]
                            mem[t] = mem[mem[(32 * s) + _6284 + 32]]
                            require s < mem[_6284]
                            mem[t + 32] = Mask(112, 0, _10090)
                            require 0 < mem[_6227]
                            mem[t + 96] = mem[mem[_6227 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10489 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10505 = mem[_10489]
                            require mem[_10489] == mem[_10489 + 18 len 14]
                            _10521 = mem[_10489 + 32]
                            require mem[_10489 + 32] == mem[_10489 + 50 len 14]
                            require mem[_10489 + 64] == mem[_10489 + 92 len 4]
                            require s + 1 < mem[_6227]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10569 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10569] == mem[_10569 + 12 len 20]
                            require s + 1 < mem[_6227]
                            require s + 1 < mem[_6284]
                            if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_10569 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10505)
                                require s + 1 < mem[_6284]
                                mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10521)
                                _10652 = mem[t]
                                _10654 = mem[t + 96]
                                require s + 1 < mem[_6227]
                                _10714 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                                _10741 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10741 + 96] = _10654
                                require (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))
                                mem[_10741] = 10000 * _10652 * Mask(112, 0, _10505) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))
                                mem[_10741 + 32] = _10714 * Mask(112, 0, _10090) * Mask(112, 0, _10521) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))
                                t = (10000 * _10654 * _10714 * Mask(112, 0, _10090) * Mask(112, 0, _10521) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10652 * Mask(112, 0, _10505) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))) + 1 / 2
                                u = 10000 * _10654 * _10714 * Mask(112, 0, _10090) * Mask(112, 0, _10521) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10652 * Mask(112, 0, _10505) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))
                                while t < u:
                                    require t
                                    t = (10000 * _10654 * _10714 * Mask(112, 0, _10090) * Mask(112, 0, _10521) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10652 * Mask(112, 0, _10505) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10654
                                mem[_10741 + 64] = u - (10000 * 10000 * _10652 * Mask(112, 0, _10505) / (_10714 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10505))) / _10654
                                t = t + 1
                                t = _10741
                                continue 
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10521)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10505)
                            _10657 = mem[t]
                            _10659 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _10716 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _10742 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10742 + 96] = _10659
                            require (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))
                            mem[_10742] = 10000 * _10657 * Mask(112, 0, _10521) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))
                            mem[_10742 + 32] = _10716 * Mask(112, 0, _10090) * Mask(112, 0, _10505) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))
                            t = (10000 * _10659 * _10716 * Mask(112, 0, _10090) * Mask(112, 0, _10505) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521)) * 10000 * _10657 * Mask(112, 0, _10521) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))) + 1 / 2
                            u = 10000 * _10659 * _10716 * Mask(112, 0, _10090) * Mask(112, 0, _10505) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521)) * 10000 * _10657 * Mask(112, 0, _10521) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))
                            while t < u:
                                require t
                                t = (10000 * _10659 * _10716 * Mask(112, 0, _10090) * Mask(112, 0, _10505) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521)) * 10000 * _10657 * Mask(112, 0, _10521) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521)) / t) + t / 2
                                u = t
                                continue 
                            require _10659
                            mem[_10742 + 64] = u - (10000 * 10000 * _10657 * Mask(112, 0, _10521) / (_10716 * Mask(112, 0, _10090)) + (10000 * Mask(112, 0, _10521))) / _10659
                            t = t + 1
                            t = _10742
                            continue 
                        _10308 = mem[(32 * s) + _6284 + 32]
                        require s < mem[_6284]
                        mem[mem[(32 * s) + _6284 + 32] + 32] = Mask(112, 0, _10040)
                        mem[_10308] = Mask(112, 0, _10090)
                        require s < mem[_6284]
                        mem[t] = mem[mem[(32 * s) + _6284 + 32]]
                        require s < mem[_6284]
                        mem[t + 32] = Mask(112, 0, _10040)
                        require 0 < mem[_6227]
                        mem[t + 96] = mem[mem[_6227 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10506 = mem[_10490]
                        require mem[_10490] == mem[_10490 + 18 len 14]
                        _10522 = mem[_10490 + 32]
                        require mem[_10490 + 32] == mem[_10490 + 50 len 14]
                        require mem[_10490 + 64] == mem[_10490 + 92 len 4]
                        require s + 1 < mem[_6227]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6227 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10570 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10570] == mem[_10570 + 12 len 20]
                        require s + 1 < mem[_6227]
                        require s + 1 < mem[_6284]
                        if mem[mem[(32 * s + 1) + _6227 + 32] + 44 len 20] == mem[_10570 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10506)
                            require s + 1 < mem[_6284]
                            mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10522)
                            _10662 = mem[t]
                            _10664 = mem[t + 96]
                            require s + 1 < mem[_6227]
                            _10718 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                            _10743 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10743 + 96] = _10664
                            require (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))
                            mem[_10743] = 10000 * _10662 * Mask(112, 0, _10506) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))
                            mem[_10743 + 32] = _10718 * Mask(112, 0, _10040) * Mask(112, 0, _10522) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))
                            t = (10000 * _10664 * _10718 * Mask(112, 0, _10040) * Mask(112, 0, _10522) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10662 * Mask(112, 0, _10506) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))) + 1 / 2
                            u = 10000 * _10664 * _10718 * Mask(112, 0, _10040) * Mask(112, 0, _10522) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10662 * Mask(112, 0, _10506) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))
                            while t < u:
                                require t
                                t = (10000 * _10664 * _10718 * Mask(112, 0, _10040) * Mask(112, 0, _10522) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10662 * Mask(112, 0, _10506) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506)) / t) + t / 2
                                u = t
                                continue 
                            require _10664
                            mem[_10743 + 64] = u - (10000 * 10000 * _10662 * Mask(112, 0, _10506) / (_10718 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10506))) / _10664
                            t = t + 1
                            t = _10743
                            continue 
                        mem[mem[(32 * s + 1) + _6284 + 32]] = Mask(112, 0, _10522)
                        require s + 1 < mem[_6284]
                        mem[mem[(32 * s + 1) + _6284 + 32] + 32] = Mask(112, 0, _10506)
                        _10667 = mem[t]
                        _10669 = mem[t + 96]
                        require s + 1 < mem[_6227]
                        _10720 = mem[mem[(32 * s + 1) + _6227 + 32] + 64]
                        _10744 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10744 + 96] = _10669
                        require (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))
                        mem[_10744] = 10000 * _10667 * Mask(112, 0, _10522) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))
                        mem[_10744 + 32] = _10720 * Mask(112, 0, _10040) * Mask(112, 0, _10506) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))
                        t = (10000 * _10669 * _10720 * Mask(112, 0, _10040) * Mask(112, 0, _10506) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522)) * 10000 * _10667 * Mask(112, 0, _10522) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))) + 1 / 2
                        u = 10000 * _10669 * _10720 * Mask(112, 0, _10040) * Mask(112, 0, _10506) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522)) * 10000 * _10667 * Mask(112, 0, _10522) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))
                        while t < u:
                            require t
                            t = (10000 * _10669 * _10720 * Mask(112, 0, _10040) * Mask(112, 0, _10506) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522)) * 10000 * _10667 * Mask(112, 0, _10522) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522)) / t) + t / 2
                            u = t
                            continue 
                        require _10669
                        mem[_10744 + 64] = u - (10000 * 10000 * _10667 * Mask(112, 0, _10522) / (_10720 * Mask(112, 0, _10040)) + (10000 * Mask(112, 0, _10522))) / _10669
                        t = t + 1
                        t = _10744
                        continue 
                    require 0 < mem[_3095]
                    mem[mem[_3095 + 32] + 64] = mem[t + 64]
                    _10813 = mem[_6227]
                    s = 0
                    while s < _10813:
                        require s < mem[_6284]
                        require s < mem[_3095]
                        if mem[mem[(32 * s) + _3095 + 32] + 64] > mem[mem[(32 * s) + _6284 + 32]]:
                            _10860 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3095]
                            mem[_10860] = mem[mem[_3095 + 32] + 64]
                            mem[_10860 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _10860
                            idx = idx + 1
                            continue 
                        require s < mem[_6227]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32]] = mem[mem[(32 * s) + _6227 + 32] + 12 len 20]
                        require s < mem[_6227]
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 32] = mem[mem[(32 * s) + _6227 + 32] + 44 len 20]
                        require s < mem[_3095]
                        require s < mem[_6284]
                        require s < mem[_6284]
                        require s < mem[_6227]
                        require (mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6284 + 32]])
                        require s < mem[_3095]
                        mem[mem[(32 * s) + _3095 + 32] + 96] = mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64] * mem[mem[(32 * s) + _6284 + 32] + 32] / (mem[mem[(32 * s) + _6227 + 32] + 64] * mem[mem[(32 * s) + _3095 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6284 + 32]])
                        if s != mem[_6227] - 1:
                            require s < mem[_3095]
                            require s + 1 < mem[_3095]
                            mem[mem[(32 * s + 1) + _3095 + 32] + 64] = mem[mem[(32 * s) + _3095 + 32] + 96]
                        s = s + 1
                        continue 
                    _10817 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3095]
                    mem[_10817] = mem[mem[_3095 + 32] + 64]
                    require mem[_6227] - 1 < mem[_3095]
                    mem[_10817 + 32] = mem[mem[(32 * mem[_6227] - 1) + _3095 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _10817
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _3094 = mem[_1546]
        mem[mem[64] + 32] = mem[_1546]
        idx = 0
        s = _1546 + 32
        t = mem[64] + 64
        while idx < _3094:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
    else:
        mem[64] = _1546 + (32 * _1545) + 96
        mem[_1546 + (32 * _1545) + 32 len 64] = call.data[calldata.size len 64]
        mem[var23001] = _1546 + (32 * _1545) + 32
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1546 + (32 * _1545) + 32 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = _1546 + (32 * _1545) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _6198 = mem[96]
        idx = 0
        while idx < _6198:
            require idx < mem[96]
            _6214 = mem[mem[(32 * idx) + 128]]
            require mem[mem[(32 * idx) + 128]] <= test266151307()
            _6222 = mem[64]
            mem[mem[64]] = mem[mem[(32 * idx) + 128]]
            if not _6214:
                require idx < mem[96]
                _6238 = mem[(32 * idx) + 128]
                mem[mem[64] + (32 * _6214) + 32 len 64] = call.data[calldata.size len 64]
                mem[64] = _6222 + (32 * _6214) + 224
                mem[_6222 + (32 * _6214) + 96] = 0
                mem[_6222 + (32 * _6214) + 128] = 0
                mem[_6222 + (32 * _6214) + 160] = 0
                mem[_6222 + (32 * _6214) + 192] = 0
                _6285 = mem[_6238]
                require mem[_6238] <= test266151307()
                mem[_6222 + (32 * _6214) + 224] = mem[_6238]
                mem[64] = _6222 + (32 * _6214) + (32 * _6285) + 256
                if not _6285:
                    _7587 = mem[_6238]
                    s = 0
                    t = _6222 + (32 * _6214) + 96
                    while s < _7587 - 1:
                        if s:
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7671 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7706 = mem[_7671]
                            require mem[_7671] == mem[_7671 + 18 len 14]
                            _7776 = mem[_7671 + 32]
                            require mem[_7671 + 32] == mem[_7671 + 50 len 14]
                            require mem[_7671 + 64] == mem[_7671 + 92 len 4]
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7940] == mem[_7940 + 12 len 20]
                            require s + 1 < mem[_6238]
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_7940 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _7706)
                                require s + 1 < mem[_6222 + (32 * _6214) + 224]
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _7776)
                                _8183 = mem[t]
                                _8184 = mem[t + 32]
                                _8185 = mem[t + 96]
                                require s + 1 < mem[_6238]
                                _8226 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                                _8278 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8278 + 96] = _8185
                                require (_8226 * _8184) + (10000 * Mask(112, 0, _7706))
                                mem[_8278] = 10000 * _8183 * Mask(112, 0, _7706) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706))
                                mem[_8278 + 32] = _8226 * _8184 * Mask(112, 0, _7776) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706))
                                t = (10000 * _8185 * _8226 * _8184 * Mask(112, 0, _7776) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706)) * 10000 * _8183 * Mask(112, 0, _7706) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706))) + 1 / 2
                                u = 10000 * _8185 * _8226 * _8184 * Mask(112, 0, _7776) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706)) * 10000 * _8183 * Mask(112, 0, _7706) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706))
                                while t < u:
                                    require t
                                    t = (10000 * _8185 * _8226 * _8184 * Mask(112, 0, _7776) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706)) * 10000 * _8183 * Mask(112, 0, _7706) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8185
                                mem[_8278 + 64] = u - (10000 * 10000 * _8183 * Mask(112, 0, _7706) / (_8226 * _8184) + (10000 * Mask(112, 0, _7706))) / _8185
                                s = s + 1
                                t = _8278
                                continue 
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _7776)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _7706)
                            _8188 = mem[t]
                            _8189 = mem[t + 32]
                            _8190 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _8228 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _8279 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8279 + 96] = _8190
                            require (_8228 * _8189) + (10000 * Mask(112, 0, _7776))
                            mem[_8279] = 10000 * _8188 * Mask(112, 0, _7776) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776))
                            mem[_8279 + 32] = _8228 * _8189 * Mask(112, 0, _7706) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776))
                            t = (10000 * _8190 * _8228 * _8189 * Mask(112, 0, _7706) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776)) * 10000 * _8188 * Mask(112, 0, _7776) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776))) + 1 / 2
                            u = 10000 * _8190 * _8228 * _8189 * Mask(112, 0, _7706) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776)) * 10000 * _8188 * Mask(112, 0, _7776) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776))
                            while t < u:
                                require t
                                t = (10000 * _8190 * _8228 * _8189 * Mask(112, 0, _7706) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776)) * 10000 * _8188 * Mask(112, 0, _7776) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776)) / t) + t / 2
                                u = t
                                continue 
                            require _8190
                            mem[_8279 + 64] = u - (10000 * 10000 * _8188 * Mask(112, 0, _7776) / (_8228 * _8189) + (10000 * Mask(112, 0, _7776))) / _8190
                            s = s + 1
                            t = _8279
                            continue 
                        require s < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6238 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7707 = mem[_7672]
                        require mem[_7672] == mem[_7672 + 18 len 14]
                        _7777 = mem[_7672 + 32]
                        require mem[_7672 + 32] == mem[_7672 + 50 len 14]
                        require mem[_7672 + 64] == mem[_7672 + 92 len 4]
                        require s < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6238 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7941] == mem[_7941 + 12 len 20]
                        require s < mem[_6238]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        if mem[mem[(32 * s) + _6238 + 32] + 44 len 20] == mem[_7941 + 12 len 20]:
                            _8141 = mem[(32 * s) + _6222 + (32 * _6214) + 256]
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _7777)
                            mem[_8141] = Mask(112, 0, _7707)
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[t] = mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[t + 32] = Mask(112, 0, _7777)
                            require 0 < mem[_6238]
                            mem[t + 96] = mem[mem[_6238 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8378 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8405 = mem[_8378]
                            require mem[_8378] == mem[_8378 + 18 len 14]
                            _8441 = mem[_8378 + 32]
                            require mem[_8378 + 32] == mem[_8378 + 50 len 14]
                            require mem[_8378 + 64] == mem[_8378 + 92 len 4]
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8548] == mem[_8548 + 12 len 20]
                            require s + 1 < mem[_6238]
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_8548 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _8405)
                                require s + 1 < mem[_6222 + (32 * _6214) + 224]
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _8441)
                                _8719 = mem[t]
                                _8721 = mem[t + 96]
                                require s + 1 < mem[_6238]
                                _8769 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                                _8796 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8796 + 96] = _8721
                                require (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))
                                mem[_8796] = 10000 * _8719 * Mask(112, 0, _8405) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))
                                mem[_8796 + 32] = _8769 * Mask(112, 0, _7777) * Mask(112, 0, _8441) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))
                                t = (10000 * _8721 * _8769 * Mask(112, 0, _7777) * Mask(112, 0, _8441) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405)) * 10000 * _8719 * Mask(112, 0, _8405) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))) + 1 / 2
                                u = 10000 * _8721 * _8769 * Mask(112, 0, _7777) * Mask(112, 0, _8441) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405)) * 10000 * _8719 * Mask(112, 0, _8405) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))
                                while t < u:
                                    require t
                                    t = (10000 * _8721 * _8769 * Mask(112, 0, _7777) * Mask(112, 0, _8441) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405)) * 10000 * _8719 * Mask(112, 0, _8405) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8721
                                mem[_8796 + 64] = u - (10000 * 10000 * _8719 * Mask(112, 0, _8405) / (_8769 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8405))) / _8721
                                t = t + 1
                                t = _8796
                                continue 
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _8441)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _8405)
                            _8724 = mem[t]
                            _8726 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _8771 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _8797 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8797 + 96] = _8726
                            require (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))
                            mem[_8797] = 10000 * _8724 * Mask(112, 0, _8441) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))
                            mem[_8797 + 32] = _8771 * Mask(112, 0, _7777) * Mask(112, 0, _8405) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))
                            t = (10000 * _8726 * _8771 * Mask(112, 0, _7777) * Mask(112, 0, _8405) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441)) * 10000 * _8724 * Mask(112, 0, _8441) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))) + 1 / 2
                            u = 10000 * _8726 * _8771 * Mask(112, 0, _7777) * Mask(112, 0, _8405) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441)) * 10000 * _8724 * Mask(112, 0, _8441) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))
                            while t < u:
                                require t
                                t = (10000 * _8726 * _8771 * Mask(112, 0, _7777) * Mask(112, 0, _8405) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441)) * 10000 * _8724 * Mask(112, 0, _8441) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441)) / t) + t / 2
                                u = t
                                continue 
                            require _8726
                            mem[_8797 + 64] = u - (10000 * 10000 * _8724 * Mask(112, 0, _8441) / (_8771 * Mask(112, 0, _7777)) + (10000 * Mask(112, 0, _8441))) / _8726
                            t = t + 1
                            t = _8797
                            continue 
                        _8143 = mem[(32 * s) + _6222 + (32 * _6214) + 256]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _7707)
                        mem[_8143] = Mask(112, 0, _7777)
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[t] = mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[t + 32] = Mask(112, 0, _7707)
                        require 0 < mem[_6238]
                        mem[t + 96] = mem[mem[_6238 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8406 = mem[_8379]
                        require mem[_8379] == mem[_8379 + 18 len 14]
                        _8442 = mem[_8379 + 32]
                        require mem[_8379 + 32] == mem[_8379 + 50 len 14]
                        require mem[_8379 + 64] == mem[_8379 + 92 len 4]
                        require s + 1 < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8549] == mem[_8549 + 12 len 20]
                        require s + 1 < mem[_6238]
                        require s + 1 < mem[_6222 + (32 * _6214) + 224]
                        if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_8549 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _8406)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _8442)
                            _8729 = mem[t]
                            _8731 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _8773 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _8798 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8798 + 96] = _8731
                            require (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))
                            mem[_8798] = 10000 * _8729 * Mask(112, 0, _8406) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))
                            mem[_8798 + 32] = _8773 * Mask(112, 0, _7707) * Mask(112, 0, _8442) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))
                            t = (10000 * _8731 * _8773 * Mask(112, 0, _7707) * Mask(112, 0, _8442) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406)) * 10000 * _8729 * Mask(112, 0, _8406) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))) + 1 / 2
                            u = 10000 * _8731 * _8773 * Mask(112, 0, _7707) * Mask(112, 0, _8442) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406)) * 10000 * _8729 * Mask(112, 0, _8406) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))
                            while t < u:
                                require t
                                t = (10000 * _8731 * _8773 * Mask(112, 0, _7707) * Mask(112, 0, _8442) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406)) * 10000 * _8729 * Mask(112, 0, _8406) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406)) / t) + t / 2
                                u = t
                                continue 
                            require _8731
                            mem[_8798 + 64] = u - (10000 * 10000 * _8729 * Mask(112, 0, _8406) / (_8773 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8406))) / _8731
                            t = t + 1
                            t = _8798
                            continue 
                        mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _8442)
                        require s + 1 < mem[_6222 + (32 * _6214) + 224]
                        mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _8406)
                        _8734 = mem[t]
                        _8736 = mem[t + 96]
                        require s + 1 < mem[_6238]
                        _8775 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                        _8799 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8799 + 96] = _8736
                        require (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))
                        mem[_8799] = 10000 * _8734 * Mask(112, 0, _8442) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))
                        mem[_8799 + 32] = _8775 * Mask(112, 0, _7707) * Mask(112, 0, _8406) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))
                        t = (10000 * _8736 * _8775 * Mask(112, 0, _7707) * Mask(112, 0, _8406) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442)) * 10000 * _8734 * Mask(112, 0, _8442) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))) + 1 / 2
                        u = 10000 * _8736 * _8775 * Mask(112, 0, _7707) * Mask(112, 0, _8406) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442)) * 10000 * _8734 * Mask(112, 0, _8442) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))
                        while t < u:
                            require t
                            t = (10000 * _8736 * _8775 * Mask(112, 0, _7707) * Mask(112, 0, _8406) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442)) * 10000 * _8734 * Mask(112, 0, _8442) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442)) / t) + t / 2
                            u = t
                            continue 
                        require _8736
                        mem[_8799 + 64] = u - (10000 * 10000 * _8734 * Mask(112, 0, _8442) / (_8775 * Mask(112, 0, _7707)) + (10000 * Mask(112, 0, _8442))) / _8736
                        t = t + 1
                        t = _8799
                        continue 
                    require 0 < mem[_6222]
                    mem[mem[_6222 + 32] + 64] = mem[t + 64]
                    _9031 = mem[_6238]
                    s = 0
                    while s < _9031:
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6222]
                        if mem[mem[(32 * s) + _6222 + 32] + 64] > mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]:
                            _9088 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6222]
                            mem[_9088] = mem[mem[_6222 + 32] + 64]
                            mem[_9088 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _9088
                            idx = idx + 1
                            continue 
                        require s < mem[_6238]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32]] = mem[mem[(32 * s) + _6238 + 32] + 12 len 20]
                        require s < mem[_6238]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 32] = mem[mem[(32 * s) + _6238 + 32] + 44 len 20]
                        require s < mem[_6222]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6238]
                        require (mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]])
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 96] = mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64] * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] / (mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]])
                        if s != mem[_6238] - 1:
                            require s < mem[_6222]
                            require s + 1 < mem[_6222]
                            mem[mem[(32 * s + 1) + _6222 + 32] + 64] = mem[mem[(32 * s) + _6222 + 32] + 96]
                        s = s + 1
                        continue 
                    _9041 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6222]
                    mem[_9041] = mem[mem[_6222 + 32] + 64]
                    require mem[_6238] - 1 < mem[_6222]
                    mem[_9041 + 32] = mem[mem[(32 * mem[_6238] - 1) + _6222 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _9041
                else:
                    mem[64] = _6222 + (32 * _6214) + (32 * _6285) + 320
                    mem[_6222 + (32 * _6214) + (32 * _6285) + 256] = 0
                    mem[_6222 + (32 * _6214) + (32 * _6285) + 288] = 0
                    mem[var44001] = _6222 + (32 * _6214) + (32 * _6285) + 256
                    t = var44001
                    s = var44002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_6222 + (32 * _6214) + (32 * _6285) + 256] = 0
                        mem[_6222 + (32 * _6214) + (32 * _6285) + 288] = 0
                        mem[t + 32] = _6222 + (32 * _6214) + (32 * _6285) + 256
                        t = t + 32
                        s = s - 1
                        continue 
                    _9939 = mem[_6238]
                    s = 0
                    t = _6222 + (32 * _6214) + 96
                    while s < _9939 - 1:
                        if s:
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10010 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10044 = mem[_10010]
                            require mem[_10010] == mem[_10010 + 18 len 14]
                            _10095 = mem[_10010 + 32]
                            require mem[_10010 + 32] == mem[_10010 + 50 len 14]
                            require mem[_10010 + 64] == mem[_10010 + 92 len 4]
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10216] == mem[_10216 + 12 len 20]
                            require s + 1 < mem[_6238]
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_10216 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10044)
                                require s + 1 < mem[_6222 + (32 * _6214) + 224]
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10095)
                                _10341 = mem[t]
                                _10342 = mem[t + 32]
                                _10343 = mem[t + 96]
                                require s + 1 < mem[_6238]
                                _10380 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                                _10425 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10425 + 96] = _10343
                                require (_10380 * _10342) + (10000 * Mask(112, 0, _10044))
                                mem[_10425] = 10000 * _10341 * Mask(112, 0, _10044) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044))
                                mem[_10425 + 32] = _10380 * _10342 * Mask(112, 0, _10095) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044))
                                t = (10000 * _10343 * _10380 * _10342 * Mask(112, 0, _10095) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044)) * 10000 * _10341 * Mask(112, 0, _10044) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044))) + 1 / 2
                                u = 10000 * _10343 * _10380 * _10342 * Mask(112, 0, _10095) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044)) * 10000 * _10341 * Mask(112, 0, _10044) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044))
                                while t < u:
                                    require t
                                    t = (10000 * _10343 * _10380 * _10342 * Mask(112, 0, _10095) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044)) * 10000 * _10341 * Mask(112, 0, _10044) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10343
                                mem[_10425 + 64] = u - (10000 * 10000 * _10341 * Mask(112, 0, _10044) / (_10380 * _10342) + (10000 * Mask(112, 0, _10044))) / _10343
                                s = s + 1
                                t = _10425
                                continue 
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10095)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10044)
                            _10346 = mem[t]
                            _10347 = mem[t + 32]
                            _10348 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _10382 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _10426 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10426 + 96] = _10348
                            require (_10382 * _10347) + (10000 * Mask(112, 0, _10095))
                            mem[_10426] = 10000 * _10346 * Mask(112, 0, _10095) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095))
                            mem[_10426 + 32] = _10382 * _10347 * Mask(112, 0, _10044) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095))
                            t = (10000 * _10348 * _10382 * _10347 * Mask(112, 0, _10044) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095)) * 10000 * _10346 * Mask(112, 0, _10095) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095))) + 1 / 2
                            u = 10000 * _10348 * _10382 * _10347 * Mask(112, 0, _10044) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095)) * 10000 * _10346 * Mask(112, 0, _10095) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095))
                            while t < u:
                                require t
                                t = (10000 * _10348 * _10382 * _10347 * Mask(112, 0, _10044) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095)) * 10000 * _10346 * Mask(112, 0, _10095) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095)) / t) + t / 2
                                u = t
                                continue 
                            require _10348
                            mem[_10426 + 64] = u - (10000 * 10000 * _10346 * Mask(112, 0, _10095) / (_10382 * _10347) + (10000 * Mask(112, 0, _10095))) / _10348
                            s = s + 1
                            t = _10426
                            continue 
                        require s < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6238 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10011 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10045 = mem[_10011]
                        require mem[_10011] == mem[_10011 + 18 len 14]
                        _10096 = mem[_10011 + 32]
                        require mem[_10011 + 32] == mem[_10011 + 50 len 14]
                        require mem[_10011 + 64] == mem[_10011 + 92 len 4]
                        require s < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6238 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10217] == mem[_10217 + 12 len 20]
                        require s < mem[_6238]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        if mem[mem[(32 * s) + _6238 + 32] + 44 len 20] == mem[_10217 + 12 len 20]:
                            _10314 = mem[(32 * s) + _6222 + (32 * _6214) + 256]
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10096)
                            mem[_10314] = Mask(112, 0, _10045)
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[t] = mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]
                            require s < mem[_6222 + (32 * _6214) + 224]
                            mem[t + 32] = Mask(112, 0, _10096)
                            require 0 < mem[_6238]
                            mem[t + 96] = mem[mem[_6238 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10491 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10507 = mem[_10491]
                            require mem[_10491] == mem[_10491 + 18 len 14]
                            _10523 = mem[_10491 + 32]
                            require mem[_10491 + 32] == mem[_10491 + 50 len 14]
                            require mem[_10491 + 64] == mem[_10491 + 92 len 4]
                            require s + 1 < mem[_6238]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10571 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10571] == mem[_10571 + 12 len 20]
                            require s + 1 < mem[_6238]
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_10571 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10507)
                                require s + 1 < mem[_6222 + (32 * _6214) + 224]
                                mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10523)
                                _10672 = mem[t]
                                _10674 = mem[t + 96]
                                require s + 1 < mem[_6238]
                                _10722 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                                _10745 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10745 + 96] = _10674
                                require (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))
                                mem[_10745] = 10000 * _10672 * Mask(112, 0, _10507) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))
                                mem[_10745 + 32] = _10722 * Mask(112, 0, _10096) * Mask(112, 0, _10523) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))
                                t = (10000 * _10674 * _10722 * Mask(112, 0, _10096) * Mask(112, 0, _10523) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10672 * Mask(112, 0, _10507) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))) + 1 / 2
                                u = 10000 * _10674 * _10722 * Mask(112, 0, _10096) * Mask(112, 0, _10523) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10672 * Mask(112, 0, _10507) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))
                                while t < u:
                                    require t
                                    t = (10000 * _10674 * _10722 * Mask(112, 0, _10096) * Mask(112, 0, _10523) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10672 * Mask(112, 0, _10507) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10674
                                mem[_10745 + 64] = u - (10000 * 10000 * _10672 * Mask(112, 0, _10507) / (_10722 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10507))) / _10674
                                t = t + 1
                                t = _10745
                                continue 
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10523)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10507)
                            _10677 = mem[t]
                            _10679 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _10724 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _10746 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10746 + 96] = _10679
                            require (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))
                            mem[_10746] = 10000 * _10677 * Mask(112, 0, _10523) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))
                            mem[_10746 + 32] = _10724 * Mask(112, 0, _10096) * Mask(112, 0, _10507) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))
                            t = (10000 * _10679 * _10724 * Mask(112, 0, _10096) * Mask(112, 0, _10507) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523)) * 10000 * _10677 * Mask(112, 0, _10523) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))) + 1 / 2
                            u = 10000 * _10679 * _10724 * Mask(112, 0, _10096) * Mask(112, 0, _10507) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523)) * 10000 * _10677 * Mask(112, 0, _10523) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))
                            while t < u:
                                require t
                                t = (10000 * _10679 * _10724 * Mask(112, 0, _10096) * Mask(112, 0, _10507) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523)) * 10000 * _10677 * Mask(112, 0, _10523) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523)) / t) + t / 2
                                u = t
                                continue 
                            require _10679
                            mem[_10746 + 64] = u - (10000 * 10000 * _10677 * Mask(112, 0, _10523) / (_10724 * Mask(112, 0, _10096)) + (10000 * Mask(112, 0, _10523))) / _10679
                            t = t + 1
                            t = _10746
                            continue 
                        _10316 = mem[(32 * s) + _6222 + (32 * _6214) + 256]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10045)
                        mem[_10316] = Mask(112, 0, _10096)
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[t] = mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        mem[t + 32] = Mask(112, 0, _10045)
                        require 0 < mem[_6238]
                        mem[t + 96] = mem[mem[_6238 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10508 = mem[_10492]
                        require mem[_10492] == mem[_10492 + 18 len 14]
                        _10524 = mem[_10492 + 32]
                        require mem[_10492 + 32] == mem[_10492 + 50 len 14]
                        require mem[_10492 + 64] == mem[_10492 + 92 len 4]
                        require s + 1 < mem[_6238]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6238 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10572] == mem[_10572 + 12 len 20]
                        require s + 1 < mem[_6238]
                        require s + 1 < mem[_6222 + (32 * _6214) + 224]
                        if mem[mem[(32 * s + 1) + _6238 + 32] + 44 len 20] == mem[_10572 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10508)
                            require s + 1 < mem[_6222 + (32 * _6214) + 224]
                            mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10524)
                            _10682 = mem[t]
                            _10684 = mem[t + 96]
                            require s + 1 < mem[_6238]
                            _10726 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                            _10747 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10747 + 96] = _10684
                            require (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))
                            mem[_10747] = 10000 * _10682 * Mask(112, 0, _10508) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))
                            mem[_10747 + 32] = _10726 * Mask(112, 0, _10045) * Mask(112, 0, _10524) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))
                            t = (10000 * _10684 * _10726 * Mask(112, 0, _10045) * Mask(112, 0, _10524) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10682 * Mask(112, 0, _10508) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))) + 1 / 2
                            u = 10000 * _10684 * _10726 * Mask(112, 0, _10045) * Mask(112, 0, _10524) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10682 * Mask(112, 0, _10508) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))
                            while t < u:
                                require t
                                t = (10000 * _10684 * _10726 * Mask(112, 0, _10045) * Mask(112, 0, _10524) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10682 * Mask(112, 0, _10508) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508)) / t) + t / 2
                                u = t
                                continue 
                            require _10684
                            mem[_10747 + 64] = u - (10000 * 10000 * _10682 * Mask(112, 0, _10508) / (_10726 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10508))) / _10684
                            t = t + 1
                            t = _10747
                            continue 
                        mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256]] = Mask(112, 0, _10524)
                        require s + 1 < mem[_6222 + (32 * _6214) + 224]
                        mem[mem[(32 * s + 1) + _6222 + (32 * _6214) + 256] + 32] = Mask(112, 0, _10508)
                        _10687 = mem[t]
                        _10689 = mem[t + 96]
                        require s + 1 < mem[_6238]
                        _10728 = mem[mem[(32 * s + 1) + _6238 + 32] + 64]
                        _10748 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10748 + 96] = _10689
                        require (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))
                        mem[_10748] = 10000 * _10687 * Mask(112, 0, _10524) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))
                        mem[_10748 + 32] = _10728 * Mask(112, 0, _10045) * Mask(112, 0, _10508) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))
                        t = (10000 * _10689 * _10728 * Mask(112, 0, _10045) * Mask(112, 0, _10508) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524)) * 10000 * _10687 * Mask(112, 0, _10524) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))) + 1 / 2
                        u = 10000 * _10689 * _10728 * Mask(112, 0, _10045) * Mask(112, 0, _10508) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524)) * 10000 * _10687 * Mask(112, 0, _10524) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))
                        while t < u:
                            require t
                            t = (10000 * _10689 * _10728 * Mask(112, 0, _10045) * Mask(112, 0, _10508) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524)) * 10000 * _10687 * Mask(112, 0, _10524) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524)) / t) + t / 2
                            u = t
                            continue 
                        require _10689
                        mem[_10748 + 64] = u - (10000 * 10000 * _10687 * Mask(112, 0, _10524) / (_10728 * Mask(112, 0, _10045)) + (10000 * Mask(112, 0, _10524))) / _10689
                        t = t + 1
                        t = _10748
                        continue 
                    require 0 < mem[_6222]
                    mem[mem[_6222 + 32] + 64] = mem[t + 64]
                    _10814 = mem[_6238]
                    s = 0
                    while s < _10814:
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6222]
                        if mem[mem[(32 * s) + _6222 + 32] + 64] > mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]]:
                            _10863 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6222]
                            mem[_10863] = mem[mem[_6222 + 32] + 64]
                            mem[_10863 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _10863
                            idx = idx + 1
                            continue 
                        require s < mem[_6238]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32]] = mem[mem[(32 * s) + _6238 + 32] + 12 len 20]
                        require s < mem[_6238]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 32] = mem[mem[(32 * s) + _6238 + 32] + 44 len 20]
                        require s < mem[_6222]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6222 + (32 * _6214) + 224]
                        require s < mem[_6238]
                        require (mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]])
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 96] = mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64] * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256] + 32] / (mem[mem[(32 * s) + _6238 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6222 + (32 * _6214) + 256]])
                        if s != mem[_6238] - 1:
                            require s < mem[_6222]
                            require s + 1 < mem[_6222]
                            mem[mem[(32 * s + 1) + _6222 + 32] + 64] = mem[mem[(32 * s) + _6222 + 32] + 96]
                        s = s + 1
                        continue 
                    _10820 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6222]
                    mem[_10820] = mem[mem[_6222 + 32] + 64]
                    require mem[_6238] - 1 < mem[_6222]
                    mem[_10820 + 32] = mem[mem[(32 * mem[_6238] - 1) + _6222 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _10820
            else:
                mem[64] = mem[64] + (32 * _6214) + 160
                mem[_6222 + (32 * _6214) + 32] = 0
                mem[_6222 + (32 * _6214) + 64] = 0
                mem[_6222 + (32 * _6214) + 96] = 0
                mem[_6222 + (32 * _6214) + 128] = 0
                mem[var36001] = _6222 + (32 * _6214) + 32
                t = var36001
                s = var36002
                while s - 1:
                    mem[64] = mem[64] + 128
                    mem[_6222 + (32 * _6214) + 32] = 0
                    mem[_6222 + (32 * _6214) + 64] = 0
                    mem[_6222 + (32 * _6214) + 96] = 0
                    mem[_6222 + (32 * _6214) + 128] = 0
                    mem[t + 32] = _6222 + (32 * _6214) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                require idx < mem[96]
                _9091 = mem[(32 * idx) + 128]
                _9124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9124 len 64] = call.data[calldata.size len 64]
                _9159 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9159] = 0
                mem[_9159 + 32] = 0
                mem[_9159 + 64] = 0
                mem[_9159 + 96] = 0
                _9185 = mem[_9091]
                require mem[_9091] <= test266151307()
                _9203 = mem[64]
                mem[mem[64]] = mem[_9091]
                mem[64] = mem[64] + (32 * _9185) + 32
                if not _9185:
                    _9940 = mem[_9091]
                    s = 0
                    t = _9159
                    while s < _9940 - 1:
                        if s:
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10049 = mem[_10019]
                            require mem[_10019] == mem[_10019 + 18 len 14]
                            _10101 = mem[_10019 + 32]
                            require mem[_10019 + 32] == mem[_10019 + 50 len 14]
                            require mem[_10019 + 64] == mem[_10019 + 92 len 4]
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10219] == mem[_10219 + 12 len 20]
                            require s + 1 < mem[_9091]
                            require s + 1 < mem[_9203]
                            if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_10219 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10049)
                                require s + 1 < mem[_9203]
                                mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10101)
                                _10355 = mem[t]
                                _10356 = mem[t + 32]
                                _10357 = mem[t + 96]
                                require s + 1 < mem[_9091]
                                _10390 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                                _10431 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10431 + 96] = _10357
                                require (_10390 * _10356) + (10000 * Mask(112, 0, _10049))
                                mem[_10431] = 10000 * _10355 * Mask(112, 0, _10049) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049))
                                mem[_10431 + 32] = _10390 * _10356 * Mask(112, 0, _10101) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049))
                                t = (10000 * _10357 * _10390 * _10356 * Mask(112, 0, _10101) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049)) * 10000 * _10355 * Mask(112, 0, _10049) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049))) + 1 / 2
                                u = 10000 * _10357 * _10390 * _10356 * Mask(112, 0, _10101) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049)) * 10000 * _10355 * Mask(112, 0, _10049) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049))
                                while t < u:
                                    require t
                                    t = (10000 * _10357 * _10390 * _10356 * Mask(112, 0, _10101) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049)) * 10000 * _10355 * Mask(112, 0, _10049) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10357
                                mem[_10431 + 64] = u - (10000 * 10000 * _10355 * Mask(112, 0, _10049) / (_10390 * _10356) + (10000 * Mask(112, 0, _10049))) / _10357
                                s = s + 1
                                t = _10431
                                continue 
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10101)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10049)
                            _10360 = mem[t]
                            _10361 = mem[t + 32]
                            _10362 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _10392 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _10432 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10432 + 96] = _10362
                            require (_10392 * _10361) + (10000 * Mask(112, 0, _10101))
                            mem[_10432] = 10000 * _10360 * Mask(112, 0, _10101) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101))
                            mem[_10432 + 32] = _10392 * _10361 * Mask(112, 0, _10049) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101))
                            t = (10000 * _10362 * _10392 * _10361 * Mask(112, 0, _10049) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101)) * 10000 * _10360 * Mask(112, 0, _10101) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101))) + 1 / 2
                            u = 10000 * _10362 * _10392 * _10361 * Mask(112, 0, _10049) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101)) * 10000 * _10360 * Mask(112, 0, _10101) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101))
                            while t < u:
                                require t
                                t = (10000 * _10362 * _10392 * _10361 * Mask(112, 0, _10049) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101)) * 10000 * _10360 * Mask(112, 0, _10101) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101)) / t) + t / 2
                                u = t
                                continue 
                            require _10362
                            mem[_10432 + 64] = u - (10000 * 10000 * _10360 * Mask(112, 0, _10101) / (_10392 * _10361) + (10000 * Mask(112, 0, _10101))) / _10362
                            s = s + 1
                            t = _10432
                            continue 
                        require s < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9091 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10050 = mem[_10020]
                        require mem[_10020] == mem[_10020 + 18 len 14]
                        _10102 = mem[_10020 + 32]
                        require mem[_10020 + 32] == mem[_10020 + 50 len 14]
                        require mem[_10020 + 64] == mem[_10020 + 92 len 4]
                        require s < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9091 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10220] == mem[_10220 + 12 len 20]
                        require s < mem[_9091]
                        require s < mem[_9203]
                        if mem[mem[(32 * s) + _9091 + 32] + 44 len 20] == mem[_10220 + 12 len 20]:
                            _10322 = mem[(32 * s) + _9203 + 32]
                            require s < mem[_9203]
                            mem[mem[(32 * s) + _9203 + 32] + 32] = Mask(112, 0, _10102)
                            mem[_10322] = Mask(112, 0, _10050)
                            require s < mem[_9203]
                            mem[t] = mem[mem[(32 * s) + _9203 + 32]]
                            require s < mem[_9203]
                            mem[t + 32] = Mask(112, 0, _10102)
                            require 0 < mem[_9091]
                            mem[t + 96] = mem[mem[_9091 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10509 = mem[_10493]
                            require mem[_10493] == mem[_10493 + 18 len 14]
                            _10525 = mem[_10493 + 32]
                            require mem[_10493 + 32] == mem[_10493 + 50 len 14]
                            require mem[_10493 + 64] == mem[_10493 + 92 len 4]
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10573 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10573] == mem[_10573 + 12 len 20]
                            require s + 1 < mem[_9091]
                            require s + 1 < mem[_9203]
                            if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_10573 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10509)
                                require s + 1 < mem[_9203]
                                mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10525)
                                _10692 = mem[t]
                                _10694 = mem[t + 96]
                                require s + 1 < mem[_9091]
                                _10730 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                                _10749 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10749 + 96] = _10694
                                require (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))
                                mem[_10749] = 10000 * _10692 * Mask(112, 0, _10509) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))
                                mem[_10749 + 32] = _10730 * Mask(112, 0, _10102) * Mask(112, 0, _10525) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))
                                t = (10000 * _10694 * _10730 * Mask(112, 0, _10102) * Mask(112, 0, _10525) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10692 * Mask(112, 0, _10509) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))) + 1 / 2
                                u = 10000 * _10694 * _10730 * Mask(112, 0, _10102) * Mask(112, 0, _10525) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10692 * Mask(112, 0, _10509) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))
                                while t < u:
                                    require t
                                    t = (10000 * _10694 * _10730 * Mask(112, 0, _10102) * Mask(112, 0, _10525) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10692 * Mask(112, 0, _10509) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10694
                                mem[_10749 + 64] = u - (10000 * 10000 * _10692 * Mask(112, 0, _10509) / (_10730 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10509))) / _10694
                                t = t + 1
                                t = _10749
                                continue 
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10525)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10509)
                            _10697 = mem[t]
                            _10699 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _10732 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _10750 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10750 + 96] = _10699
                            require (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))
                            mem[_10750] = 10000 * _10697 * Mask(112, 0, _10525) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))
                            mem[_10750 + 32] = _10732 * Mask(112, 0, _10102) * Mask(112, 0, _10509) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))
                            t = (10000 * _10699 * _10732 * Mask(112, 0, _10102) * Mask(112, 0, _10509) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525)) * 10000 * _10697 * Mask(112, 0, _10525) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))) + 1 / 2
                            u = 10000 * _10699 * _10732 * Mask(112, 0, _10102) * Mask(112, 0, _10509) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525)) * 10000 * _10697 * Mask(112, 0, _10525) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))
                            while t < u:
                                require t
                                t = (10000 * _10699 * _10732 * Mask(112, 0, _10102) * Mask(112, 0, _10509) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525)) * 10000 * _10697 * Mask(112, 0, _10525) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525)) / t) + t / 2
                                u = t
                                continue 
                            require _10699
                            mem[_10750 + 64] = u - (10000 * 10000 * _10697 * Mask(112, 0, _10525) / (_10732 * Mask(112, 0, _10102)) + (10000 * Mask(112, 0, _10525))) / _10699
                            t = t + 1
                            t = _10750
                            continue 
                        _10324 = mem[(32 * s) + _9203 + 32]
                        require s < mem[_9203]
                        mem[mem[(32 * s) + _9203 + 32] + 32] = Mask(112, 0, _10050)
                        mem[_10324] = Mask(112, 0, _10102)
                        require s < mem[_9203]
                        mem[t] = mem[mem[(32 * s) + _9203 + 32]]
                        require s < mem[_9203]
                        mem[t + 32] = Mask(112, 0, _10050)
                        require 0 < mem[_9091]
                        mem[t + 96] = mem[mem[_9091 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10510 = mem[_10494]
                        require mem[_10494] == mem[_10494 + 18 len 14]
                        _10526 = mem[_10494 + 32]
                        require mem[_10494 + 32] == mem[_10494 + 50 len 14]
                        require mem[_10494 + 64] == mem[_10494 + 92 len 4]
                        require s + 1 < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10574] == mem[_10574 + 12 len 20]
                        require s + 1 < mem[_9091]
                        require s + 1 < mem[_9203]
                        if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_10574 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10510)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10526)
                            _10702 = mem[t]
                            _10704 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _10734 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _10751 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10751 + 96] = _10704
                            require (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))
                            mem[_10751] = 10000 * _10702 * Mask(112, 0, _10510) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))
                            mem[_10751 + 32] = _10734 * Mask(112, 0, _10050) * Mask(112, 0, _10526) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))
                            t = (10000 * _10704 * _10734 * Mask(112, 0, _10050) * Mask(112, 0, _10526) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10702 * Mask(112, 0, _10510) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))) + 1 / 2
                            u = 10000 * _10704 * _10734 * Mask(112, 0, _10050) * Mask(112, 0, _10526) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10702 * Mask(112, 0, _10510) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))
                            while t < u:
                                require t
                                t = (10000 * _10704 * _10734 * Mask(112, 0, _10050) * Mask(112, 0, _10526) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10702 * Mask(112, 0, _10510) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510)) / t) + t / 2
                                u = t
                                continue 
                            require _10704
                            mem[_10751 + 64] = u - (10000 * 10000 * _10702 * Mask(112, 0, _10510) / (_10734 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10510))) / _10704
                            t = t + 1
                            t = _10751
                            continue 
                        mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _10526)
                        require s + 1 < mem[_9203]
                        mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _10510)
                        _10707 = mem[t]
                        _10709 = mem[t + 96]
                        require s + 1 < mem[_9091]
                        _10736 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                        _10752 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10752 + 96] = _10709
                        require (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))
                        mem[_10752] = 10000 * _10707 * Mask(112, 0, _10526) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))
                        mem[_10752 + 32] = _10736 * Mask(112, 0, _10050) * Mask(112, 0, _10510) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))
                        t = (10000 * _10709 * _10736 * Mask(112, 0, _10050) * Mask(112, 0, _10510) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526)) * 10000 * _10707 * Mask(112, 0, _10526) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))) + 1 / 2
                        u = 10000 * _10709 * _10736 * Mask(112, 0, _10050) * Mask(112, 0, _10510) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526)) * 10000 * _10707 * Mask(112, 0, _10526) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))
                        while t < u:
                            require t
                            t = (10000 * _10709 * _10736 * Mask(112, 0, _10050) * Mask(112, 0, _10510) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526)) * 10000 * _10707 * Mask(112, 0, _10526) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526)) / t) + t / 2
                            u = t
                            continue 
                        require _10709
                        mem[_10752 + 64] = u - (10000 * 10000 * _10707 * Mask(112, 0, _10526) / (_10736 * Mask(112, 0, _10050)) + (10000 * Mask(112, 0, _10526))) / _10709
                        t = t + 1
                        t = _10752
                        continue 
                    require 0 < mem[_6222]
                    mem[mem[_6222 + 32] + 64] = mem[t + 64]
                    _10815 = mem[_9091]
                    s = 0
                    while s < _10815:
                        require s < mem[_9203]
                        require s < mem[_6222]
                        if mem[mem[(32 * s) + _6222 + 32] + 64] > mem[mem[(32 * s) + _9203 + 32]]:
                            _10866 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6222]
                            mem[_10866] = mem[mem[_6222 + 32] + 64]
                            mem[_10866 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _10866
                            idx = idx + 1
                            continue 
                        require s < mem[_9091]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32]] = mem[mem[(32 * s) + _9091 + 32] + 12 len 20]
                        require s < mem[_9091]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 32] = mem[mem[(32 * s) + _9091 + 32] + 44 len 20]
                        require s < mem[_6222]
                        require s < mem[_9203]
                        require s < mem[_9203]
                        require s < mem[_9091]
                        require (mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9203 + 32]])
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 96] = mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64] * mem[mem[(32 * s) + _9203 + 32] + 32] / (mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9203 + 32]])
                        if s != mem[_9091] - 1:
                            require s < mem[_6222]
                            require s + 1 < mem[_6222]
                            mem[mem[(32 * s + 1) + _6222 + 32] + 64] = mem[mem[(32 * s) + _6222 + 32] + 96]
                        s = s + 1
                        continue 
                    _10823 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6222]
                    mem[_10823] = mem[mem[_6222 + 32] + 64]
                    require mem[_9091] - 1 < mem[_6222]
                    mem[_10823 + 32] = mem[mem[(32 * mem[_9091] - 1) + _6222 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _10823
                else:
                    mem[64] = _9203 + (32 * _9185) + 96
                    mem[_9203 + (32 * _9185) + 32] = 0
                    mem[_9203 + (32 * _9185) + 64] = 0
                    mem[var51001] = _9203 + (32 * _9185) + 32
                    t = var51001
                    s = var51002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_9203 + (32 * _9185) + 32] = 0
                        mem[_9203 + (32 * _9185) + 64] = 0
                        mem[t + 32] = _9203 + (32 * _9185) + 32
                        t = t + 32
                        s = s - 1
                        continue 
                    _11153 = mem[_9091]
                    s = 0
                    t = _9159
                    while s < _11153 - 1:
                        if s:
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11178 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _11187 = mem[_11178]
                            require mem[_11178] == mem[_11178 + 18 len 14]
                            _11201 = mem[_11178 + 32]
                            require mem[_11178 + 32] == mem[_11178 + 50 len 14]
                            require mem[_11178 + 64] == mem[_11178 + 92 len 4]
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11229 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11229] == mem[_11229 + 12 len 20]
                            require s + 1 < mem[_9091]
                            require s + 1 < mem[_9203]
                            if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_11229 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11187)
                                require s + 1 < mem[_9203]
                                mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11201)
                                _11259 = mem[t]
                                _11260 = mem[t + 32]
                                _11261 = mem[t + 96]
                                require s + 1 < mem[_9091]
                                _11273 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                                _11288 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_11288 + 96] = _11261
                                require (_11273 * _11260) + (10000 * Mask(112, 0, _11187))
                                mem[_11288] = 10000 * _11259 * Mask(112, 0, _11187) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187))
                                mem[_11288 + 32] = _11273 * _11260 * Mask(112, 0, _11201) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187))
                                t = (10000 * _11261 * _11273 * _11260 * Mask(112, 0, _11201) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187)) * 10000 * _11259 * Mask(112, 0, _11187) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187))) + 1 / 2
                                u = 10000 * _11261 * _11273 * _11260 * Mask(112, 0, _11201) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187)) * 10000 * _11259 * Mask(112, 0, _11187) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187))
                                while t < u:
                                    require t
                                    t = (10000 * _11261 * _11273 * _11260 * Mask(112, 0, _11201) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187)) * 10000 * _11259 * Mask(112, 0, _11187) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187)) / t) + t / 2
                                    u = t
                                    continue 
                                require _11261
                                mem[_11288 + 64] = u - (10000 * 10000 * _11259 * Mask(112, 0, _11187) / (_11273 * _11260) + (10000 * Mask(112, 0, _11187))) / _11261
                                s = s + 1
                                t = _11288
                                continue 
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11201)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11187)
                            _11264 = mem[t]
                            _11265 = mem[t + 32]
                            _11266 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _11275 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _11289 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11289 + 96] = _11266
                            require (_11275 * _11265) + (10000 * Mask(112, 0, _11201))
                            mem[_11289] = 10000 * _11264 * Mask(112, 0, _11201) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201))
                            mem[_11289 + 32] = _11275 * _11265 * Mask(112, 0, _11187) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201))
                            t = (10000 * _11266 * _11275 * _11265 * Mask(112, 0, _11187) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201)) * 10000 * _11264 * Mask(112, 0, _11201) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201))) + 1 / 2
                            u = 10000 * _11266 * _11275 * _11265 * Mask(112, 0, _11187) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201)) * 10000 * _11264 * Mask(112, 0, _11201) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201))
                            while t < u:
                                require t
                                t = (10000 * _11266 * _11275 * _11265 * Mask(112, 0, _11187) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201)) * 10000 * _11264 * Mask(112, 0, _11201) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201)) / t) + t / 2
                                u = t
                                continue 
                            require _11266
                            mem[_11289 + 64] = u - (10000 * 10000 * _11264 * Mask(112, 0, _11201) / (_11275 * _11265) + (10000 * Mask(112, 0, _11201))) / _11266
                            s = s + 1
                            t = _11289
                            continue 
                        require s < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9091 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11188 = mem[_11179]
                        require mem[_11179] == mem[_11179 + 18 len 14]
                        _11202 = mem[_11179 + 32]
                        require mem[_11179 + 32] == mem[_11179 + 50 len 14]
                        require mem[_11179 + 64] == mem[_11179 + 92 len 4]
                        require s < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9091 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11230] == mem[_11230 + 12 len 20]
                        require s < mem[_9091]
                        require s < mem[_9203]
                        if mem[mem[(32 * s) + _9091 + 32] + 44 len 20] == mem[_11230 + 12 len 20]:
                            _11254 = mem[(32 * s) + _9203 + 32]
                            require s < mem[_9203]
                            mem[mem[(32 * s) + _9203 + 32] + 32] = Mask(112, 0, _11202)
                            mem[_11254] = Mask(112, 0, _11188)
                            require s < mem[_9203]
                            mem[t] = mem[mem[(32 * s) + _9203 + 32]]
                            require s < mem[_9203]
                            mem[t + 32] = Mask(112, 0, _11202)
                            require 0 < mem[_9091]
                            mem[t + 96] = mem[mem[_9091 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _11308 = mem[_11306]
                            require mem[_11306] == mem[_11306 + 18 len 14]
                            _11310 = mem[_11306 + 32]
                            require mem[_11306 + 32] == mem[_11306 + 50 len 14]
                            require mem[_11306 + 64] == mem[_11306 + 92 len 4]
                            require s + 1 < mem[_9091]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11324] == mem[_11324 + 12 len 20]
                            require s + 1 < mem[_9091]
                            require s + 1 < mem[_9203]
                            if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_11324 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11308)
                                require s + 1 < mem[_9203]
                                mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11310)
                                _11347 = mem[t]
                                _11349 = mem[t + 96]
                                require s + 1 < mem[_9091]
                                _11367 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                                _11374 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_11374 + 96] = _11349
                                require (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))
                                mem[_11374] = 10000 * _11347 * Mask(112, 0, _11308) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))
                                mem[_11374 + 32] = _11367 * Mask(112, 0, _11202) * Mask(112, 0, _11310) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))
                                t = (10000 * _11349 * _11367 * Mask(112, 0, _11202) * Mask(112, 0, _11310) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308)) * 10000 * _11347 * Mask(112, 0, _11308) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))) + 1 / 2
                                u = 10000 * _11349 * _11367 * Mask(112, 0, _11202) * Mask(112, 0, _11310) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308)) * 10000 * _11347 * Mask(112, 0, _11308) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))
                                while t < u:
                                    require t
                                    t = (10000 * _11349 * _11367 * Mask(112, 0, _11202) * Mask(112, 0, _11310) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308)) * 10000 * _11347 * Mask(112, 0, _11308) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308)) / t) + t / 2
                                    u = t
                                    continue 
                                require _11349
                                mem[_11374 + 64] = u - (10000 * 10000 * _11347 * Mask(112, 0, _11308) / (_11367 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11308))) / _11349
                                t = t + 1
                                t = _11374
                                continue 
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11310)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11308)
                            _11352 = mem[t]
                            _11354 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _11369 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _11375 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11375 + 96] = _11354
                            require (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))
                            mem[_11375] = 10000 * _11352 * Mask(112, 0, _11310) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))
                            mem[_11375 + 32] = _11369 * Mask(112, 0, _11202) * Mask(112, 0, _11308) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))
                            t = (10000 * _11354 * _11369 * Mask(112, 0, _11202) * Mask(112, 0, _11308) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310)) * 10000 * _11352 * Mask(112, 0, _11310) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))) + 1 / 2
                            u = 10000 * _11354 * _11369 * Mask(112, 0, _11202) * Mask(112, 0, _11308) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310)) * 10000 * _11352 * Mask(112, 0, _11310) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))
                            while t < u:
                                require t
                                t = (10000 * _11354 * _11369 * Mask(112, 0, _11202) * Mask(112, 0, _11308) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310)) * 10000 * _11352 * Mask(112, 0, _11310) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310)) / t) + t / 2
                                u = t
                                continue 
                            require _11354
                            mem[_11375 + 64] = u - (10000 * 10000 * _11352 * Mask(112, 0, _11310) / (_11369 * Mask(112, 0, _11202)) + (10000 * Mask(112, 0, _11310))) / _11354
                            t = t + 1
                            t = _11375
                            continue 
                        _11256 = mem[(32 * s) + _9203 + 32]
                        require s < mem[_9203]
                        mem[mem[(32 * s) + _9203 + 32] + 32] = Mask(112, 0, _11188)
                        mem[_11256] = Mask(112, 0, _11202)
                        require s < mem[_9203]
                        mem[t] = mem[mem[(32 * s) + _9203 + 32]]
                        require s < mem[_9203]
                        mem[t + 32] = Mask(112, 0, _11188)
                        require 0 < mem[_9091]
                        mem[t + 96] = mem[mem[_9091 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11309 = mem[_11307]
                        require mem[_11307] == mem[_11307 + 18 len 14]
                        _11311 = mem[_11307 + 32]
                        require mem[_11307 + 32] == mem[_11307 + 50 len 14]
                        require mem[_11307 + 64] == mem[_11307 + 92 len 4]
                        require s + 1 < mem[_9091]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9091 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11325] == mem[_11325 + 12 len 20]
                        require s + 1 < mem[_9091]
                        require s + 1 < mem[_9203]
                        if mem[mem[(32 * s + 1) + _9091 + 32] + 44 len 20] == mem[_11325 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11309)
                            require s + 1 < mem[_9203]
                            mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11311)
                            _11357 = mem[t]
                            _11359 = mem[t + 96]
                            require s + 1 < mem[_9091]
                            _11371 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                            _11376 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11376 + 96] = _11359
                            require (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))
                            mem[_11376] = 10000 * _11357 * Mask(112, 0, _11309) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))
                            mem[_11376 + 32] = _11371 * Mask(112, 0, _11188) * Mask(112, 0, _11311) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))
                            t = (10000 * _11359 * _11371 * Mask(112, 0, _11188) * Mask(112, 0, _11311) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309)) * 10000 * _11357 * Mask(112, 0, _11309) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))) + 1 / 2
                            u = 10000 * _11359 * _11371 * Mask(112, 0, _11188) * Mask(112, 0, _11311) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309)) * 10000 * _11357 * Mask(112, 0, _11309) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))
                            while t < u:
                                require t
                                t = (10000 * _11359 * _11371 * Mask(112, 0, _11188) * Mask(112, 0, _11311) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309)) * 10000 * _11357 * Mask(112, 0, _11309) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309)) / t) + t / 2
                                u = t
                                continue 
                            require _11359
                            mem[_11376 + 64] = u - (10000 * 10000 * _11357 * Mask(112, 0, _11309) / (_11371 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11309))) / _11359
                            t = t + 1
                            t = _11376
                            continue 
                        mem[mem[(32 * s + 1) + _9203 + 32]] = Mask(112, 0, _11311)
                        require s + 1 < mem[_9203]
                        mem[mem[(32 * s + 1) + _9203 + 32] + 32] = Mask(112, 0, _11309)
                        _11362 = mem[t]
                        _11364 = mem[t + 96]
                        require s + 1 < mem[_9091]
                        _11373 = mem[mem[(32 * s + 1) + _9091 + 32] + 64]
                        _11377 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11377 + 96] = _11364
                        require (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))
                        mem[_11377] = 10000 * _11362 * Mask(112, 0, _11311) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))
                        mem[_11377 + 32] = _11373 * Mask(112, 0, _11188) * Mask(112, 0, _11309) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))
                        t = (10000 * _11364 * _11373 * Mask(112, 0, _11188) * Mask(112, 0, _11309) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311)) * 10000 * _11362 * Mask(112, 0, _11311) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))) + 1 / 2
                        u = 10000 * _11364 * _11373 * Mask(112, 0, _11188) * Mask(112, 0, _11309) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311)) * 10000 * _11362 * Mask(112, 0, _11311) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))
                        while t < u:
                            require t
                            t = (10000 * _11364 * _11373 * Mask(112, 0, _11188) * Mask(112, 0, _11309) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311)) * 10000 * _11362 * Mask(112, 0, _11311) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311)) / t) + t / 2
                            u = t
                            continue 
                        require _11364
                        mem[_11377 + 64] = u - (10000 * 10000 * _11362 * Mask(112, 0, _11311) / (_11373 * Mask(112, 0, _11188)) + (10000 * Mask(112, 0, _11311))) / _11364
                        t = t + 1
                        t = _11377
                        continue 
                    require 0 < mem[_6222]
                    mem[mem[_6222 + 32] + 64] = mem[t + 64]
                    _11382 = mem[_9091]
                    s = 0
                    while s < _11382:
                        require s < mem[_9203]
                        require s < mem[_6222]
                        if mem[mem[(32 * s) + _6222 + 32] + 64] > mem[mem[(32 * s) + _9203 + 32]]:
                            _11398 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6222]
                            mem[_11398] = mem[mem[_6222 + 32] + 64]
                            mem[_11398 + 32] = 0
                            require idx < mem[_1546]
                            mem[(32 * idx) + _1546 + 32] = _11398
                            idx = idx + 1
                            continue 
                        require s < mem[_9091]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32]] = mem[mem[(32 * s) + _9091 + 32] + 12 len 20]
                        require s < mem[_9091]
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 32] = mem[mem[(32 * s) + _9091 + 32] + 44 len 20]
                        require s < mem[_6222]
                        require s < mem[_9203]
                        require s < mem[_9203]
                        require s < mem[_9091]
                        require (mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9203 + 32]])
                        require s < mem[_6222]
                        mem[mem[(32 * s) + _6222 + 32] + 96] = mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64] * mem[mem[(32 * s) + _9203 + 32] + 32] / (mem[mem[(32 * s) + _9091 + 32] + 64] * mem[mem[(32 * s) + _6222 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9203 + 32]])
                        if s != mem[_9091] - 1:
                            require s < mem[_6222]
                            require s + 1 < mem[_6222]
                            mem[mem[(32 * s + 1) + _6222 + 32] + 64] = mem[mem[(32 * s) + _6222 + 32] + 96]
                        s = s + 1
                        continue 
                    _11383 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6222]
                    mem[_11383] = mem[mem[_6222 + 32] + 64]
                    require mem[_9091] - 1 < mem[_6222]
                    mem[_11383 + 32] = mem[mem[(32 * mem[_9091] - 1) + _6222 + 32] + 96]
                    require idx < mem[_1546]
                    mem[(32 * idx) + _1546 + 32] = _11383
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _6221 = mem[_1546]
        mem[mem[64] + 32] = mem[_1546]
        idx = 0
        s = _1546 + 32
        t = mem[64] + 64
        while idx < _6221:
            u = 0
            v = t
            w = mem[v]
            while u < 2:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 3
            v = t + 96
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
