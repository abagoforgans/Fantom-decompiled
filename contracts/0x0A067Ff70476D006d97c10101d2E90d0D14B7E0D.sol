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
    call arg1.0xa9059cbb with:
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
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
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
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = 24 * 10^9 * 24 * 3600
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len 64], address(this.address), 24 * 10^9 * 24 * 3600, mem[mem[64] + 132 len (32 * arg2.length) + 32]
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
    require 1 < arg2.length
    _121 = mem[160]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_121))
    staticcall address(_121).0x70a08231 with:
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

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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

function sub_cdcaf6a0(?) {
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_606).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_626).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_579).0xa9059cbb with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_733).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_751).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_636).0xa9059cbb with:
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
            call address(_637).0xa9059cbb with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_617).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_631).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                call address(_588).0xa9059cbb with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_742).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
                            call address(_759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
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
            call address(_640).0xa9059cbb with:
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
            call address(_641).0xa9059cbb with:
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
        _1546 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_1546] = cd[(cd[4] + cd[s] + 36)]
        require calldata.size >= cd[4] + cd[s] + (96 * cd[(cd[4] + cd[s] + 36)]) + 68
        u = 0
        v = cd[4] + cd[s] + 68
        w = _1546 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require calldata.size - v >= 96
            _3087 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            require cd[v] == address(cd[v])
            mem[_3087] = cd[v]
            require cd[(v + 32)] == address(cd[(v + 32)])
            mem[_3087 + 32] = cd[(v + 32)]
            mem[_3087 + 64] = cd[(v + 64)]
            mem[w] = _3087
            u = u + 1
            v = v + 96
            w = w + 32
            continue 
        mem[t] = _1546
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1541 = mem[96]
    require mem[96] <= test266151307()
    _1542 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1541) + 32
    if not _1541:
        _3080 = mem[96]
        idx = 0
        while idx < _3080:
            _3081 = mem[96]
            require mem[96] <= test266151307()
            _3084 = mem[64]
            mem[mem[64]] = mem[96]
            if not _3081:
                require idx < mem[96]
                _3088 = mem[(32 * idx) + 128]
                mem[mem[64] + (32 * _3081) + 32 len 64] = call.data[calldata.size len 64]
                mem[64] = _3084 + (32 * _3081) + 224
                mem[_3084 + (32 * _3081) + 96] = 0
                mem[_3084 + (32 * _3081) + 128] = 0
                mem[_3084 + (32 * _3081) + 160] = 0
                mem[_3084 + (32 * _3081) + 192] = 0
                _3102 = mem[_3088]
                require mem[_3088] <= test266151307()
                mem[_3084 + (32 * _3081) + 224] = mem[_3088]
                mem[64] = _3084 + (32 * _3081) + (32 * _3102) + 256
                if not _3102:
                    _4616 = mem[_3088]
                    s = 0
                    t = _3084 + (32 * _3081) + 96
                    while s < _4616 - 1:
                        if s:
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _4663 = mem[_4647]
                            require mem[_4647] == mem[_4647 + 18 len 14]
                            _4694 = mem[_4647 + 32]
                            require mem[_4647 + 32] == mem[_4647 + 50 len 14]
                            require mem[_4647 + 64] == mem[_4647 + 92 len 4]
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4786] == mem[_4786 + 12 len 20]
                            require s + 1 < mem[_3088]
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_4786 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _4663)
                                require s + 1 < mem[_3084 + (32 * _3081) + 224]
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _4694)
                                _5036 = mem[t]
                                _5037 = mem[t + 32]
                                _5038 = mem[t + 96]
                                require s + 1 < mem[_3088]
                                _5078 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                                _5135 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5135 + 96] = _5038
                                require (_5078 * _5037) + (10000 * Mask(112, 0, _4663))
                                mem[_5135] = 10000 * _5036 * Mask(112, 0, _4663) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663))
                                mem[_5135 + 32] = _5078 * _5037 * Mask(112, 0, _4694) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663))
                                t = (10000 * _5038 * _5078 * _5037 * Mask(112, 0, _4694) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663)) * 10000 * _5036 * Mask(112, 0, _4663) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663))) + 1 / 2
                                u = 10000 * _5038 * _5078 * _5037 * Mask(112, 0, _4694) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663)) * 10000 * _5036 * Mask(112, 0, _4663) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663))
                                while t < u:
                                    require t
                                    t = (10000 * _5038 * _5078 * _5037 * Mask(112, 0, _4694) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663)) * 10000 * _5036 * Mask(112, 0, _4663) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663)) / t) + t / 2
                                    u = t
                                    continue 
                                require _5038
                                mem[_5135 + 64] = u - (10000 * 10000 * _5036 * Mask(112, 0, _4663) / (_5078 * _5037) + (10000 * Mask(112, 0, _4663))) / _5038
                                s = s + 1
                                t = _5135
                                continue 
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _4694)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _4663)
                            _5041 = mem[t]
                            _5042 = mem[t + 32]
                            _5043 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _5080 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _5136 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5136 + 96] = _5043
                            require (_5080 * _5042) + (10000 * Mask(112, 0, _4694))
                            mem[_5136] = 10000 * _5041 * Mask(112, 0, _4694) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694))
                            mem[_5136 + 32] = _5080 * _5042 * Mask(112, 0, _4663) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694))
                            t = (10000 * _5043 * _5080 * _5042 * Mask(112, 0, _4663) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694)) * 10000 * _5041 * Mask(112, 0, _4694) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694))) + 1 / 2
                            u = 10000 * _5043 * _5080 * _5042 * Mask(112, 0, _4663) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694)) * 10000 * _5041 * Mask(112, 0, _4694) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694))
                            while t < u:
                                require t
                                t = (10000 * _5043 * _5080 * _5042 * Mask(112, 0, _4663) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694)) * 10000 * _5041 * Mask(112, 0, _4694) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694)) / t) + t / 2
                                u = t
                                continue 
                            require _5043
                            mem[_5136 + 64] = u - (10000 * 10000 * _5041 * Mask(112, 0, _4694) / (_5080 * _5042) + (10000 * Mask(112, 0, _4694))) / _5043
                            s = s + 1
                            t = _5136
                            continue 
                        require s < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3088 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _4664 = mem[_4648]
                        require mem[_4648] == mem[_4648 + 18 len 14]
                        _4695 = mem[_4648 + 32]
                        require mem[_4648 + 32] == mem[_4648 + 50 len 14]
                        require mem[_4648 + 64] == mem[_4648 + 92 len 4]
                        require s < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3088 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4787] == mem[_4787 + 12 len 20]
                        require s < mem[_3088]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        if mem[mem[(32 * s) + _3088 + 32] + 44 len 20] == mem[_4787 + 12 len 20]:
                            _5010 = mem[(32 * s) + _3084 + (32 * _3081) + 256]
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _4695)
                            mem[_5010] = Mask(112, 0, _4664)
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[t] = mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[t + 32] = Mask(112, 0, _4695)
                            require 0 < mem[_3088]
                            mem[t + 96] = mem[mem[_3088 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _5278 = mem[_5235]
                            require mem[_5235] == mem[_5235 + 18 len 14]
                            _5320 = mem[_5235 + 32]
                            require mem[_5235 + 32] == mem[_5235 + 50 len 14]
                            require mem[_5235 + 64] == mem[_5235 + 92 len 4]
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5460] == mem[_5460 + 12 len 20]
                            require s + 1 < mem[_3088]
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_5460 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _5278)
                                require s + 1 < mem[_3084 + (32 * _3081) + 224]
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _5320)
                                _5658 = mem[t]
                                _5660 = mem[t + 96]
                                require s + 1 < mem[_3088]
                                _5698 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                                _5721 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_5721 + 96] = _5660
                                require (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))
                                mem[_5721] = 10000 * _5658 * Mask(112, 0, _5278) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))
                                mem[_5721 + 32] = _5698 * Mask(112, 0, _4695) * Mask(112, 0, _5320) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))
                                t = (10000 * _5660 * _5698 * Mask(112, 0, _4695) * Mask(112, 0, _5320) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278)) * 10000 * _5658 * Mask(112, 0, _5278) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))) + 1 / 2
                                u = 10000 * _5660 * _5698 * Mask(112, 0, _4695) * Mask(112, 0, _5320) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278)) * 10000 * _5658 * Mask(112, 0, _5278) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))
                                while t < u:
                                    require t
                                    t = (10000 * _5660 * _5698 * Mask(112, 0, _4695) * Mask(112, 0, _5320) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278)) * 10000 * _5658 * Mask(112, 0, _5278) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278)) / t) + t / 2
                                    u = t
                                    continue 
                                require _5660
                                mem[_5721 + 64] = u - (10000 * 10000 * _5658 * Mask(112, 0, _5278) / (_5698 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5278))) / _5660
                                t = t + 1
                                t = _5721
                                continue 
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _5320)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _5278)
                            _5663 = mem[t]
                            _5665 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _5700 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _5722 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5722 + 96] = _5665
                            require (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))
                            mem[_5722] = 10000 * _5663 * Mask(112, 0, _5320) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))
                            mem[_5722 + 32] = _5700 * Mask(112, 0, _4695) * Mask(112, 0, _5278) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))
                            t = (10000 * _5665 * _5700 * Mask(112, 0, _4695) * Mask(112, 0, _5278) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320)) * 10000 * _5663 * Mask(112, 0, _5320) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))) + 1 / 2
                            u = 10000 * _5665 * _5700 * Mask(112, 0, _4695) * Mask(112, 0, _5278) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320)) * 10000 * _5663 * Mask(112, 0, _5320) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))
                            while t < u:
                                require t
                                t = (10000 * _5665 * _5700 * Mask(112, 0, _4695) * Mask(112, 0, _5278) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320)) * 10000 * _5663 * Mask(112, 0, _5320) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320)) / t) + t / 2
                                u = t
                                continue 
                            require _5665
                            mem[_5722 + 64] = u - (10000 * 10000 * _5663 * Mask(112, 0, _5320) / (_5700 * Mask(112, 0, _4695)) + (10000 * Mask(112, 0, _5320))) / _5665
                            t = t + 1
                            t = _5722
                            continue 
                        _5012 = mem[(32 * s) + _3084 + (32 * _3081) + 256]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _4664)
                        mem[_5012] = Mask(112, 0, _4695)
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[t] = mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[t + 32] = Mask(112, 0, _4664)
                        require 0 < mem[_3088]
                        mem[t + 96] = mem[mem[_3088 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _5279 = mem[_5236]
                        require mem[_5236] == mem[_5236 + 18 len 14]
                        _5321 = mem[_5236 + 32]
                        require mem[_5236 + 32] == mem[_5236 + 50 len 14]
                        require mem[_5236 + 64] == mem[_5236 + 92 len 4]
                        require s + 1 < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5461] == mem[_5461 + 12 len 20]
                        require s + 1 < mem[_3088]
                        require s + 1 < mem[_3084 + (32 * _3081) + 224]
                        if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_5461 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _5279)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _5321)
                            _5668 = mem[t]
                            _5670 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _5702 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _5723 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_5723 + 96] = _5670
                            require (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))
                            mem[_5723] = 10000 * _5668 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))
                            mem[_5723 + 32] = _5702 * Mask(112, 0, _4664) * Mask(112, 0, _5321) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))
                            t = (10000 * _5670 * _5702 * Mask(112, 0, _4664) * Mask(112, 0, _5321) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5668 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))) + 1 / 2
                            u = 10000 * _5670 * _5702 * Mask(112, 0, _4664) * Mask(112, 0, _5321) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5668 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))
                            while t < u:
                                require t
                                t = (10000 * _5670 * _5702 * Mask(112, 0, _4664) * Mask(112, 0, _5321) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279)) * 10000 * _5668 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279)) / t) + t / 2
                                u = t
                                continue 
                            require _5670
                            mem[_5723 + 64] = u - (10000 * 10000 * _5668 * Mask(112, 0, _5279) / (_5702 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5279))) / _5670
                            t = t + 1
                            t = _5723
                            continue 
                        mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _5321)
                        require s + 1 < mem[_3084 + (32 * _3081) + 224]
                        mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _5279)
                        _5673 = mem[t]
                        _5675 = mem[t + 96]
                        require s + 1 < mem[_3088]
                        _5704 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                        _5724 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_5724 + 96] = _5675
                        require (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))
                        mem[_5724] = 10000 * _5673 * Mask(112, 0, _5321) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))
                        mem[_5724 + 32] = _5704 * Mask(112, 0, _4664) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))
                        t = (10000 * _5675 * _5704 * Mask(112, 0, _4664) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321)) * 10000 * _5673 * Mask(112, 0, _5321) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))) + 1 / 2
                        u = 10000 * _5675 * _5704 * Mask(112, 0, _4664) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321)) * 10000 * _5673 * Mask(112, 0, _5321) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))
                        while t < u:
                            require t
                            t = (10000 * _5675 * _5704 * Mask(112, 0, _4664) * Mask(112, 0, _5279) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321)) * 10000 * _5673 * Mask(112, 0, _5321) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321)) / t) + t / 2
                            u = t
                            continue 
                        require _5675
                        mem[_5724 + 64] = u - (10000 * 10000 * _5673 * Mask(112, 0, _5321) / (_5704 * Mask(112, 0, _4664)) + (10000 * Mask(112, 0, _5321))) / _5675
                        t = t + 1
                        t = _5724
                        continue 
                    require 0 < mem[_3084]
                    mem[mem[_3084 + 32] + 64] = mem[t + 64]
                    _6181 = mem[_3088]
                    s = 0
                    while s < _6181:
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3084]
                        if mem[mem[(32 * s) + _3084 + 32] + 64] > mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]:
                            _6209 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3084]
                            mem[_6209] = mem[mem[_3084 + 32] + 64]
                            mem[_6209 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _6209
                            idx = idx + 1
                            continue 
                        require s < mem[_3088]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32]] = mem[mem[(32 * s) + _3088 + 32] + 12 len 20]
                        require s < mem[_3088]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 32] = mem[mem[(32 * s) + _3088 + 32] + 44 len 20]
                        require s < mem[_3084]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3088]
                        require (mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]])
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 96] = mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64] * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] / (mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]])
                        if s != mem[_3088] - 1:
                            require s < mem[_3084]
                            require s + 1 < mem[_3084]
                            mem[mem[(32 * s + 1) + _3084 + 32] + 64] = mem[mem[(32 * s) + _3084 + 32] + 96]
                        s = s + 1
                        continue 
                    _6186 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3084]
                    mem[_6186] = mem[mem[_3084 + 32] + 64]
                    require mem[_3088] - 1 < mem[_3084]
                    mem[_6186 + 32] = mem[mem[(32 * mem[_3088] - 1) + _3084 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _6186
                else:
                    mem[64] = _3084 + (32 * _3081) + (32 * _3102) + 320
                    mem[_3084 + (32 * _3081) + (32 * _3102) + 256] = 0
                    mem[_3084 + (32 * _3081) + (32 * _3102) + 288] = 0
                    mem[var36001] = _3084 + (32 * _3081) + (32 * _3102) + 256
                    t = var36001
                    s = var36002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_3084 + (32 * _3081) + (32 * _3102) + 256] = 0
                        mem[_3084 + (32 * _3081) + (32 * _3102) + 288] = 0
                        mem[t + 32] = _3084 + (32 * _3081) + (32 * _3102) + 256
                        t = t + 32
                        s = s - 1
                        continue 
                    _7569 = mem[_3088]
                    s = 0
                    t = _3084 + (32 * _3081) + 96
                    while s < _7569 - 1:
                        if s:
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7678 = mem[_7636]
                            require mem[_7636] == mem[_7636 + 18 len 14]
                            _7740 = mem[_7636 + 32]
                            require mem[_7636 + 32] == mem[_7636 + 50 len 14]
                            require mem[_7636 + 64] == mem[_7636 + 92 len 4]
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7914] == mem[_7914 + 12 len 20]
                            require s + 1 < mem[_3088]
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_7914 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _7678)
                                require s + 1 < mem[_3084 + (32 * _3081) + 224]
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _7740)
                                _8138 = mem[t]
                                _8139 = mem[t + 32]
                                _8140 = mem[t + 96]
                                require s + 1 < mem[_3088]
                                _8188 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                                _8248 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8248 + 96] = _8140
                                require (_8188 * _8139) + (10000 * Mask(112, 0, _7678))
                                mem[_8248] = 10000 * _8138 * Mask(112, 0, _7678) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678))
                                mem[_8248 + 32] = _8188 * _8139 * Mask(112, 0, _7740) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678))
                                t = (10000 * _8140 * _8188 * _8139 * Mask(112, 0, _7740) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678)) * 10000 * _8138 * Mask(112, 0, _7678) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678))) + 1 / 2
                                u = 10000 * _8140 * _8188 * _8139 * Mask(112, 0, _7740) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678)) * 10000 * _8138 * Mask(112, 0, _7678) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678))
                                while t < u:
                                    require t
                                    t = (10000 * _8140 * _8188 * _8139 * Mask(112, 0, _7740) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678)) * 10000 * _8138 * Mask(112, 0, _7678) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8140
                                mem[_8248 + 64] = u - (10000 * 10000 * _8138 * Mask(112, 0, _7678) / (_8188 * _8139) + (10000 * Mask(112, 0, _7678))) / _8140
                                s = s + 1
                                t = _8248
                                continue 
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _7740)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _7678)
                            _8143 = mem[t]
                            _8144 = mem[t + 32]
                            _8145 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _8190 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _8249 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8249 + 96] = _8145
                            require (_8190 * _8144) + (10000 * Mask(112, 0, _7740))
                            mem[_8249] = 10000 * _8143 * Mask(112, 0, _7740) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740))
                            mem[_8249 + 32] = _8190 * _8144 * Mask(112, 0, _7678) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740))
                            t = (10000 * _8145 * _8190 * _8144 * Mask(112, 0, _7678) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740)) * 10000 * _8143 * Mask(112, 0, _7740) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740))) + 1 / 2
                            u = 10000 * _8145 * _8190 * _8144 * Mask(112, 0, _7678) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740)) * 10000 * _8143 * Mask(112, 0, _7740) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740))
                            while t < u:
                                require t
                                t = (10000 * _8145 * _8190 * _8144 * Mask(112, 0, _7678) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740)) * 10000 * _8143 * Mask(112, 0, _7740) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740)) / t) + t / 2
                                u = t
                                continue 
                            require _8145
                            mem[_8249 + 64] = u - (10000 * 10000 * _8143 * Mask(112, 0, _7740) / (_8190 * _8144) + (10000 * Mask(112, 0, _7740))) / _8145
                            s = s + 1
                            t = _8249
                            continue 
                        require s < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3088 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7679 = mem[_7637]
                        require mem[_7637] == mem[_7637 + 18 len 14]
                        _7741 = mem[_7637 + 32]
                        require mem[_7637 + 32] == mem[_7637 + 50 len 14]
                        require mem[_7637 + 64] == mem[_7637 + 92 len 4]
                        require s < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _3088 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7915 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7915] == mem[_7915 + 12 len 20]
                        require s < mem[_3088]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        if mem[mem[(32 * s) + _3088 + 32] + 44 len 20] == mem[_7915 + 12 len 20]:
                            _8109 = mem[(32 * s) + _3084 + (32 * _3081) + 256]
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _7741)
                            mem[_8109] = Mask(112, 0, _7679)
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[t] = mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]
                            require s < mem[_3084 + (32 * _3081) + 224]
                            mem[t + 32] = Mask(112, 0, _7741)
                            require 0 < mem[_3088]
                            mem[t + 96] = mem[mem[_3088 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8383 = mem[_8352]
                            require mem[_8352] == mem[_8352 + 18 len 14]
                            _8419 = mem[_8352 + 32]
                            require mem[_8352 + 32] == mem[_8352 + 50 len 14]
                            require mem[_8352 + 64] == mem[_8352 + 92 len 4]
                            require s + 1 < mem[_3088]
                            require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8526] == mem[_8526 + 12 len 20]
                            require s + 1 < mem[_3088]
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_8526 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _8383)
                                require s + 1 < mem[_3084 + (32 * _3081) + 224]
                                mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _8419)
                                _8661 = mem[t]
                                _8663 = mem[t + 96]
                                require s + 1 < mem[_3088]
                                _8733 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                                _8768 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8768 + 96] = _8663
                                require (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))
                                mem[_8768] = 10000 * _8661 * Mask(112, 0, _8383) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))
                                mem[_8768 + 32] = _8733 * Mask(112, 0, _7741) * Mask(112, 0, _8419) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))
                                t = (10000 * _8663 * _8733 * Mask(112, 0, _7741) * Mask(112, 0, _8419) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383)) * 10000 * _8661 * Mask(112, 0, _8383) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))) + 1 / 2
                                u = 10000 * _8663 * _8733 * Mask(112, 0, _7741) * Mask(112, 0, _8419) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383)) * 10000 * _8661 * Mask(112, 0, _8383) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))
                                while t < u:
                                    require t
                                    t = (10000 * _8663 * _8733 * Mask(112, 0, _7741) * Mask(112, 0, _8419) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383)) * 10000 * _8661 * Mask(112, 0, _8383) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8663
                                mem[_8768 + 64] = u - (10000 * 10000 * _8661 * Mask(112, 0, _8383) / (_8733 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8383))) / _8663
                                t = t + 1
                                t = _8768
                                continue 
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _8419)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _8383)
                            _8666 = mem[t]
                            _8668 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _8735 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _8769 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8769 + 96] = _8668
                            require (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))
                            mem[_8769] = 10000 * _8666 * Mask(112, 0, _8419) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))
                            mem[_8769 + 32] = _8735 * Mask(112, 0, _7741) * Mask(112, 0, _8383) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))
                            t = (10000 * _8668 * _8735 * Mask(112, 0, _7741) * Mask(112, 0, _8383) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419)) * 10000 * _8666 * Mask(112, 0, _8419) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))) + 1 / 2
                            u = 10000 * _8668 * _8735 * Mask(112, 0, _7741) * Mask(112, 0, _8383) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419)) * 10000 * _8666 * Mask(112, 0, _8419) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))
                            while t < u:
                                require t
                                t = (10000 * _8668 * _8735 * Mask(112, 0, _7741) * Mask(112, 0, _8383) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419)) * 10000 * _8666 * Mask(112, 0, _8419) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419)) / t) + t / 2
                                u = t
                                continue 
                            require _8668
                            mem[_8769 + 64] = u - (10000 * 10000 * _8666 * Mask(112, 0, _8419) / (_8735 * Mask(112, 0, _7741)) + (10000 * Mask(112, 0, _8419))) / _8668
                            t = t + 1
                            t = _8769
                            continue 
                        _8111 = mem[(32 * s) + _3084 + (32 * _3081) + 256]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _7679)
                        mem[_8111] = Mask(112, 0, _7741)
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[t] = mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        mem[t + 32] = Mask(112, 0, _7679)
                        require 0 < mem[_3088]
                        mem[t + 96] = mem[mem[_3088 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8384 = mem[_8353]
                        require mem[_8353] == mem[_8353 + 18 len 14]
                        _8420 = mem[_8353 + 32]
                        require mem[_8353 + 32] == mem[_8353 + 50 len 14]
                        require mem[_8353 + 64] == mem[_8353 + 92 len 4]
                        require s + 1 < mem[_3088]
                        require ext_code.size(mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _3088 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8527] == mem[_8527 + 12 len 20]
                        require s + 1 < mem[_3088]
                        require s + 1 < mem[_3084 + (32 * _3081) + 224]
                        if mem[mem[(32 * s + 1) + _3088 + 32] + 44 len 20] == mem[_8527 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _8384)
                            require s + 1 < mem[_3084 + (32 * _3081) + 224]
                            mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _8420)
                            _8671 = mem[t]
                            _8673 = mem[t + 96]
                            require s + 1 < mem[_3088]
                            _8737 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                            _8770 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8770 + 96] = _8673
                            require (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))
                            mem[_8770] = 10000 * _8671 * Mask(112, 0, _8384) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))
                            mem[_8770 + 32] = _8737 * Mask(112, 0, _7679) * Mask(112, 0, _8420) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))
                            t = (10000 * _8673 * _8737 * Mask(112, 0, _7679) * Mask(112, 0, _8420) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384)) * 10000 * _8671 * Mask(112, 0, _8384) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))) + 1 / 2
                            u = 10000 * _8673 * _8737 * Mask(112, 0, _7679) * Mask(112, 0, _8420) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384)) * 10000 * _8671 * Mask(112, 0, _8384) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))
                            while t < u:
                                require t
                                t = (10000 * _8673 * _8737 * Mask(112, 0, _7679) * Mask(112, 0, _8420) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384)) * 10000 * _8671 * Mask(112, 0, _8384) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384)) / t) + t / 2
                                u = t
                                continue 
                            require _8673
                            mem[_8770 + 64] = u - (10000 * 10000 * _8671 * Mask(112, 0, _8384) / (_8737 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8384))) / _8673
                            t = t + 1
                            t = _8770
                            continue 
                        mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256]] = Mask(112, 0, _8420)
                        require s + 1 < mem[_3084 + (32 * _3081) + 224]
                        mem[mem[(32 * s + 1) + _3084 + (32 * _3081) + 256] + 32] = Mask(112, 0, _8384)
                        _8676 = mem[t]
                        _8678 = mem[t + 96]
                        require s + 1 < mem[_3088]
                        _8739 = mem[mem[(32 * s + 1) + _3088 + 32] + 64]
                        _8771 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8771 + 96] = _8678
                        require (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))
                        mem[_8771] = 10000 * _8676 * Mask(112, 0, _8420) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))
                        mem[_8771 + 32] = _8739 * Mask(112, 0, _7679) * Mask(112, 0, _8384) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))
                        t = (10000 * _8678 * _8739 * Mask(112, 0, _7679) * Mask(112, 0, _8384) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420)) * 10000 * _8676 * Mask(112, 0, _8420) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))) + 1 / 2
                        u = 10000 * _8678 * _8739 * Mask(112, 0, _7679) * Mask(112, 0, _8384) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420)) * 10000 * _8676 * Mask(112, 0, _8420) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))
                        while t < u:
                            require t
                            t = (10000 * _8678 * _8739 * Mask(112, 0, _7679) * Mask(112, 0, _8384) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420)) * 10000 * _8676 * Mask(112, 0, _8420) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420)) / t) + t / 2
                            u = t
                            continue 
                        require _8678
                        mem[_8771 + 64] = u - (10000 * 10000 * _8676 * Mask(112, 0, _8420) / (_8739 * Mask(112, 0, _7679)) + (10000 * Mask(112, 0, _8420))) / _8678
                        t = t + 1
                        t = _8771
                        continue 
                    require 0 < mem[_3084]
                    mem[mem[_3084 + 32] + 64] = mem[t + 64]
                    _9012 = mem[_3088]
                    s = 0
                    while s < _9012:
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3084]
                        if mem[mem[(32 * s) + _3084 + 32] + 64] > mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]]:
                            _9065 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3084]
                            mem[_9065] = mem[mem[_3084 + 32] + 64]
                            mem[_9065 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _9065
                            idx = idx + 1
                            continue 
                        require s < mem[_3088]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32]] = mem[mem[(32 * s) + _3088 + 32] + 12 len 20]
                        require s < mem[_3088]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 32] = mem[mem[(32 * s) + _3088 + 32] + 44 len 20]
                        require s < mem[_3084]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3084 + (32 * _3081) + 224]
                        require s < mem[_3088]
                        require (mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]])
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 96] = mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64] * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256] + 32] / (mem[mem[(32 * s) + _3088 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _3084 + (32 * _3081) + 256]])
                        if s != mem[_3088] - 1:
                            require s < mem[_3084]
                            require s + 1 < mem[_3084]
                            mem[mem[(32 * s + 1) + _3084 + 32] + 64] = mem[mem[(32 * s) + _3084 + 32] + 96]
                        s = s + 1
                        continue 
                    _9018 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3084]
                    mem[_9018] = mem[mem[_3084 + 32] + 64]
                    require mem[_3088] - 1 < mem[_3084]
                    mem[_9018 + 32] = mem[mem[(32 * mem[_3088] - 1) + _3084 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _9018
            else:
                mem[64] = mem[64] + (32 * _3081) + 160
                mem[_3084 + (32 * _3081) + 32] = 0
                mem[_3084 + (32 * _3081) + 64] = 0
                mem[_3084 + (32 * _3081) + 96] = 0
                mem[_3084 + (32 * _3081) + 128] = 0
                mem[var28001] = _3084 + (32 * _3081) + 32
                t = var28001
                s = var28002
                while s - 1:
                    mem[64] = mem[64] + 128
                    mem[_3084 + (32 * _3081) + 32] = 0
                    mem[_3084 + (32 * _3081) + 64] = 0
                    mem[_3084 + (32 * _3081) + 96] = 0
                    mem[_3084 + (32 * _3081) + 128] = 0
                    mem[t + 32] = _3084 + (32 * _3081) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                require idx < mem[96]
                _6212 = mem[(32 * idx) + 128]
                _6228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6228 len 64] = call.data[calldata.size len 64]
                _6246 = mem[64]
                mem[64] = mem[64] + 128
                mem[_6246] = 0
                mem[_6246 + 32] = 0
                mem[_6246 + 64] = 0
                mem[_6246 + 96] = 0
                _6260 = mem[_6212]
                require mem[_6212] <= test266151307()
                _6270 = mem[64]
                mem[mem[64]] = mem[_6212]
                mem[64] = mem[64] + (32 * _6260) + 32
                if not _6260:
                    _7570 = mem[_6212]
                    s = 0
                    t = _6246
                    while s < _7570 - 1:
                        if s:
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7683 = mem[_7645]
                            require mem[_7645] == mem[_7645 + 18 len 14]
                            _7746 = mem[_7645 + 32]
                            require mem[_7645 + 32] == mem[_7645 + 50 len 14]
                            require mem[_7645 + 64] == mem[_7645 + 92 len 4]
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7917] == mem[_7917 + 12 len 20]
                            require s + 1 < mem[_6212]
                            require s + 1 < mem[_6270]
                            if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_7917 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _7683)
                                require s + 1 < mem[_6270]
                                mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _7746)
                                _8152 = mem[t]
                                _8153 = mem[t + 32]
                                _8154 = mem[t + 96]
                                require s + 1 < mem[_6212]
                                _8198 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                                _8254 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8254 + 96] = _8154
                                require (_8198 * _8153) + (10000 * Mask(112, 0, _7683))
                                mem[_8254] = 10000 * _8152 * Mask(112, 0, _7683) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683))
                                mem[_8254 + 32] = _8198 * _8153 * Mask(112, 0, _7746) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683))
                                t = (10000 * _8154 * _8198 * _8153 * Mask(112, 0, _7746) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683)) * 10000 * _8152 * Mask(112, 0, _7683) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683))) + 1 / 2
                                u = 10000 * _8154 * _8198 * _8153 * Mask(112, 0, _7746) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683)) * 10000 * _8152 * Mask(112, 0, _7683) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683))
                                while t < u:
                                    require t
                                    t = (10000 * _8154 * _8198 * _8153 * Mask(112, 0, _7746) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683)) * 10000 * _8152 * Mask(112, 0, _7683) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8154
                                mem[_8254 + 64] = u - (10000 * 10000 * _8152 * Mask(112, 0, _7683) / (_8198 * _8153) + (10000 * Mask(112, 0, _7683))) / _8154
                                s = s + 1
                                t = _8254
                                continue 
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _7746)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _7683)
                            _8157 = mem[t]
                            _8158 = mem[t + 32]
                            _8159 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _8200 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _8255 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8255 + 96] = _8159
                            require (_8200 * _8158) + (10000 * Mask(112, 0, _7746))
                            mem[_8255] = 10000 * _8157 * Mask(112, 0, _7746) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746))
                            mem[_8255 + 32] = _8200 * _8158 * Mask(112, 0, _7683) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746))
                            t = (10000 * _8159 * _8200 * _8158 * Mask(112, 0, _7683) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746)) * 10000 * _8157 * Mask(112, 0, _7746) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746))) + 1 / 2
                            u = 10000 * _8159 * _8200 * _8158 * Mask(112, 0, _7683) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746)) * 10000 * _8157 * Mask(112, 0, _7746) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746))
                            while t < u:
                                require t
                                t = (10000 * _8159 * _8200 * _8158 * Mask(112, 0, _7683) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746)) * 10000 * _8157 * Mask(112, 0, _7746) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746)) / t) + t / 2
                                u = t
                                continue 
                            require _8159
                            mem[_8255 + 64] = u - (10000 * 10000 * _8157 * Mask(112, 0, _7746) / (_8200 * _8158) + (10000 * Mask(112, 0, _7746))) / _8159
                            s = s + 1
                            t = _8255
                            continue 
                        require s < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6212 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7684 = mem[_7646]
                        require mem[_7646] == mem[_7646 + 18 len 14]
                        _7747 = mem[_7646 + 32]
                        require mem[_7646 + 32] == mem[_7646 + 50 len 14]
                        require mem[_7646 + 64] == mem[_7646 + 92 len 4]
                        require s < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6212 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7918 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7918] == mem[_7918 + 12 len 20]
                        require s < mem[_6212]
                        require s < mem[_6270]
                        if mem[mem[(32 * s) + _6212 + 32] + 44 len 20] == mem[_7918 + 12 len 20]:
                            _8117 = mem[(32 * s) + _6270 + 32]
                            require s < mem[_6270]
                            mem[mem[(32 * s) + _6270 + 32] + 32] = Mask(112, 0, _7747)
                            mem[_8117] = Mask(112, 0, _7684)
                            require s < mem[_6270]
                            mem[t] = mem[mem[(32 * s) + _6270 + 32]]
                            require s < mem[_6270]
                            mem[t + 32] = Mask(112, 0, _7747)
                            require 0 < mem[_6212]
                            mem[t + 96] = mem[mem[_6212 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8385 = mem[_8354]
                            require mem[_8354] == mem[_8354 + 18 len 14]
                            _8421 = mem[_8354 + 32]
                            require mem[_8354 + 32] == mem[_8354 + 50 len 14]
                            require mem[_8354 + 64] == mem[_8354 + 92 len 4]
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8528] == mem[_8528 + 12 len 20]
                            require s + 1 < mem[_6212]
                            require s + 1 < mem[_6270]
                            if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_8528 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _8385)
                                require s + 1 < mem[_6270]
                                mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _8421)
                                _8681 = mem[t]
                                _8683 = mem[t + 96]
                                require s + 1 < mem[_6212]
                                _8741 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                                _8772 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8772 + 96] = _8683
                                require (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))
                                mem[_8772] = 10000 * _8681 * Mask(112, 0, _8385) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))
                                mem[_8772 + 32] = _8741 * Mask(112, 0, _7747) * Mask(112, 0, _8421) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))
                                t = (10000 * _8683 * _8741 * Mask(112, 0, _7747) * Mask(112, 0, _8421) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385)) * 10000 * _8681 * Mask(112, 0, _8385) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))) + 1 / 2
                                u = 10000 * _8683 * _8741 * Mask(112, 0, _7747) * Mask(112, 0, _8421) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385)) * 10000 * _8681 * Mask(112, 0, _8385) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))
                                while t < u:
                                    require t
                                    t = (10000 * _8683 * _8741 * Mask(112, 0, _7747) * Mask(112, 0, _8421) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385)) * 10000 * _8681 * Mask(112, 0, _8385) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8683
                                mem[_8772 + 64] = u - (10000 * 10000 * _8681 * Mask(112, 0, _8385) / (_8741 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8385))) / _8683
                                t = t + 1
                                t = _8772
                                continue 
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _8421)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _8385)
                            _8686 = mem[t]
                            _8688 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _8743 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _8773 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8773 + 96] = _8688
                            require (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))
                            mem[_8773] = 10000 * _8686 * Mask(112, 0, _8421) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))
                            mem[_8773 + 32] = _8743 * Mask(112, 0, _7747) * Mask(112, 0, _8385) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))
                            t = (10000 * _8688 * _8743 * Mask(112, 0, _7747) * Mask(112, 0, _8385) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421)) * 10000 * _8686 * Mask(112, 0, _8421) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))) + 1 / 2
                            u = 10000 * _8688 * _8743 * Mask(112, 0, _7747) * Mask(112, 0, _8385) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421)) * 10000 * _8686 * Mask(112, 0, _8421) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))
                            while t < u:
                                require t
                                t = (10000 * _8688 * _8743 * Mask(112, 0, _7747) * Mask(112, 0, _8385) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421)) * 10000 * _8686 * Mask(112, 0, _8421) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421)) / t) + t / 2
                                u = t
                                continue 
                            require _8688
                            mem[_8773 + 64] = u - (10000 * 10000 * _8686 * Mask(112, 0, _8421) / (_8743 * Mask(112, 0, _7747)) + (10000 * Mask(112, 0, _8421))) / _8688
                            t = t + 1
                            t = _8773
                            continue 
                        _8119 = mem[(32 * s) + _6270 + 32]
                        require s < mem[_6270]
                        mem[mem[(32 * s) + _6270 + 32] + 32] = Mask(112, 0, _7684)
                        mem[_8119] = Mask(112, 0, _7747)
                        require s < mem[_6270]
                        mem[t] = mem[mem[(32 * s) + _6270 + 32]]
                        require s < mem[_6270]
                        mem[t + 32] = Mask(112, 0, _7684)
                        require 0 < mem[_6212]
                        mem[t + 96] = mem[mem[_6212 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8386 = mem[_8355]
                        require mem[_8355] == mem[_8355 + 18 len 14]
                        _8422 = mem[_8355 + 32]
                        require mem[_8355 + 32] == mem[_8355 + 50 len 14]
                        require mem[_8355 + 64] == mem[_8355 + 92 len 4]
                        require s + 1 < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8529] == mem[_8529 + 12 len 20]
                        require s + 1 < mem[_6212]
                        require s + 1 < mem[_6270]
                        if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_8529 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _8386)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _8422)
                            _8691 = mem[t]
                            _8693 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _8745 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _8774 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8774 + 96] = _8693
                            require (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))
                            mem[_8774] = 10000 * _8691 * Mask(112, 0, _8386) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))
                            mem[_8774 + 32] = _8745 * Mask(112, 0, _7684) * Mask(112, 0, _8422) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))
                            t = (10000 * _8693 * _8745 * Mask(112, 0, _7684) * Mask(112, 0, _8422) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386)) * 10000 * _8691 * Mask(112, 0, _8386) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))) + 1 / 2
                            u = 10000 * _8693 * _8745 * Mask(112, 0, _7684) * Mask(112, 0, _8422) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386)) * 10000 * _8691 * Mask(112, 0, _8386) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))
                            while t < u:
                                require t
                                t = (10000 * _8693 * _8745 * Mask(112, 0, _7684) * Mask(112, 0, _8422) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386)) * 10000 * _8691 * Mask(112, 0, _8386) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386)) / t) + t / 2
                                u = t
                                continue 
                            require _8693
                            mem[_8774 + 64] = u - (10000 * 10000 * _8691 * Mask(112, 0, _8386) / (_8745 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8386))) / _8693
                            t = t + 1
                            t = _8774
                            continue 
                        mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _8422)
                        require s + 1 < mem[_6270]
                        mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _8386)
                        _8696 = mem[t]
                        _8698 = mem[t + 96]
                        require s + 1 < mem[_6212]
                        _8747 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                        _8775 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8775 + 96] = _8698
                        require (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))
                        mem[_8775] = 10000 * _8696 * Mask(112, 0, _8422) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))
                        mem[_8775 + 32] = _8747 * Mask(112, 0, _7684) * Mask(112, 0, _8386) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))
                        t = (10000 * _8698 * _8747 * Mask(112, 0, _7684) * Mask(112, 0, _8386) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422)) * 10000 * _8696 * Mask(112, 0, _8422) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))) + 1 / 2
                        u = 10000 * _8698 * _8747 * Mask(112, 0, _7684) * Mask(112, 0, _8386) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422)) * 10000 * _8696 * Mask(112, 0, _8422) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))
                        while t < u:
                            require t
                            t = (10000 * _8698 * _8747 * Mask(112, 0, _7684) * Mask(112, 0, _8386) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422)) * 10000 * _8696 * Mask(112, 0, _8422) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422)) / t) + t / 2
                            u = t
                            continue 
                        require _8698
                        mem[_8775 + 64] = u - (10000 * 10000 * _8696 * Mask(112, 0, _8422) / (_8747 * Mask(112, 0, _7684)) + (10000 * Mask(112, 0, _8422))) / _8698
                        t = t + 1
                        t = _8775
                        continue 
                    require 0 < mem[_3084]
                    mem[mem[_3084 + 32] + 64] = mem[t + 64]
                    _9013 = mem[_6212]
                    s = 0
                    while s < _9013:
                        require s < mem[_6270]
                        require s < mem[_3084]
                        if mem[mem[(32 * s) + _3084 + 32] + 64] > mem[mem[(32 * s) + _6270 + 32]]:
                            _9068 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3084]
                            mem[_9068] = mem[mem[_3084 + 32] + 64]
                            mem[_9068 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _9068
                            idx = idx + 1
                            continue 
                        require s < mem[_6212]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32]] = mem[mem[(32 * s) + _6212 + 32] + 12 len 20]
                        require s < mem[_6212]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 32] = mem[mem[(32 * s) + _6212 + 32] + 44 len 20]
                        require s < mem[_3084]
                        require s < mem[_6270]
                        require s < mem[_6270]
                        require s < mem[_6212]
                        require (mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6270 + 32]])
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 96] = mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64] * mem[mem[(32 * s) + _6270 + 32] + 32] / (mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6270 + 32]])
                        if s != mem[_6212] - 1:
                            require s < mem[_3084]
                            require s + 1 < mem[_3084]
                            mem[mem[(32 * s + 1) + _3084 + 32] + 64] = mem[mem[(32 * s) + _3084 + 32] + 96]
                        s = s + 1
                        continue 
                    _9021 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3084]
                    mem[_9021] = mem[mem[_3084 + 32] + 64]
                    require mem[_6212] - 1 < mem[_3084]
                    mem[_9021 + 32] = mem[mem[(32 * mem[_6212] - 1) + _3084 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _9021
                else:
                    mem[64] = _6270 + (32 * _6260) + 96
                    mem[_6270 + (32 * _6260) + 32] = 0
                    mem[_6270 + (32 * _6260) + 64] = 0
                    mem[var43001] = _6270 + (32 * _6260) + 32
                    t = var43001
                    s = var43002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_6270 + (32 * _6260) + 32] = 0
                        mem[_6270 + (32 * _6260) + 64] = 0
                        mem[t + 32] = _6270 + (32 * _6260) + 32
                        t = t + 32
                        s = s - 1
                        continue 
                    _9922 = mem[_6212]
                    s = 0
                    t = _6246
                    while s < _9922 - 1:
                        if s:
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10023 = mem[_9985]
                            require mem[_9985] == mem[_9985 + 18 len 14]
                            _10073 = mem[_9985 + 32]
                            require mem[_9985 + 32] == mem[_9985 + 50 len 14]
                            require mem[_9985 + 64] == mem[_9985 + 92 len 4]
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10197] == mem[_10197 + 12 len 20]
                            require s + 1 < mem[_6212]
                            require s + 1 < mem[_6270]
                            if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_10197 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10023)
                                require s + 1 < mem[_6270]
                                mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10073)
                                _10311 = mem[t]
                                _10312 = mem[t + 32]
                                _10313 = mem[t + 96]
                                require s + 1 < mem[_6212]
                                _10354 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                                _10403 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10403 + 96] = _10313
                                require (_10354 * _10312) + (10000 * Mask(112, 0, _10023))
                                mem[_10403] = 10000 * _10311 * Mask(112, 0, _10023) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023))
                                mem[_10403 + 32] = _10354 * _10312 * Mask(112, 0, _10073) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023))
                                t = (10000 * _10313 * _10354 * _10312 * Mask(112, 0, _10073) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023)) * 10000 * _10311 * Mask(112, 0, _10023) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023))) + 1 / 2
                                u = 10000 * _10313 * _10354 * _10312 * Mask(112, 0, _10073) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023)) * 10000 * _10311 * Mask(112, 0, _10023) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023))
                                while t < u:
                                    require t
                                    t = (10000 * _10313 * _10354 * _10312 * Mask(112, 0, _10073) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023)) * 10000 * _10311 * Mask(112, 0, _10023) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10313
                                mem[_10403 + 64] = u - (10000 * 10000 * _10311 * Mask(112, 0, _10023) / (_10354 * _10312) + (10000 * Mask(112, 0, _10023))) / _10313
                                s = s + 1
                                t = _10403
                                continue 
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10073)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10023)
                            _10316 = mem[t]
                            _10317 = mem[t + 32]
                            _10318 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _10356 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _10404 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10404 + 96] = _10318
                            require (_10356 * _10317) + (10000 * Mask(112, 0, _10073))
                            mem[_10404] = 10000 * _10316 * Mask(112, 0, _10073) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073))
                            mem[_10404 + 32] = _10356 * _10317 * Mask(112, 0, _10023) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073))
                            t = (10000 * _10318 * _10356 * _10317 * Mask(112, 0, _10023) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073)) * 10000 * _10316 * Mask(112, 0, _10073) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073))) + 1 / 2
                            u = 10000 * _10318 * _10356 * _10317 * Mask(112, 0, _10023) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073)) * 10000 * _10316 * Mask(112, 0, _10073) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073))
                            while t < u:
                                require t
                                t = (10000 * _10318 * _10356 * _10317 * Mask(112, 0, _10023) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073)) * 10000 * _10316 * Mask(112, 0, _10073) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073)) / t) + t / 2
                                u = t
                                continue 
                            require _10318
                            mem[_10404 + 64] = u - (10000 * 10000 * _10316 * Mask(112, 0, _10073) / (_10356 * _10317) + (10000 * Mask(112, 0, _10073))) / _10318
                            s = s + 1
                            t = _10404
                            continue 
                        require s < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6212 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10024 = mem[_9986]
                        require mem[_9986] == mem[_9986 + 18 len 14]
                        _10074 = mem[_9986 + 32]
                        require mem[_9986 + 32] == mem[_9986 + 50 len 14]
                        require mem[_9986 + 64] == mem[_9986 + 92 len 4]
                        require s < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6212 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10198] == mem[_10198 + 12 len 20]
                        require s < mem[_6212]
                        require s < mem[_6270]
                        if mem[mem[(32 * s) + _6212 + 32] + 44 len 20] == mem[_10198 + 12 len 20]:
                            _10290 = mem[(32 * s) + _6270 + 32]
                            require s < mem[_6270]
                            mem[mem[(32 * s) + _6270 + 32] + 32] = Mask(112, 0, _10074)
                            mem[_10290] = Mask(112, 0, _10024)
                            require s < mem[_6270]
                            mem[t] = mem[mem[(32 * s) + _6270 + 32]]
                            require s < mem[_6270]
                            mem[t + 32] = Mask(112, 0, _10074)
                            require 0 < mem[_6212]
                            mem[t + 96] = mem[mem[_6212 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10473 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10489 = mem[_10473]
                            require mem[_10473] == mem[_10473 + 18 len 14]
                            _10505 = mem[_10473 + 32]
                            require mem[_10473 + 32] == mem[_10473 + 50 len 14]
                            require mem[_10473 + 64] == mem[_10473 + 92 len 4]
                            require s + 1 < mem[_6212]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10553 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10553] == mem[_10553 + 12 len 20]
                            require s + 1 < mem[_6212]
                            require s + 1 < mem[_6270]
                            if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_10553 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10489)
                                require s + 1 < mem[_6270]
                                mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10505)
                                _10636 = mem[t]
                                _10638 = mem[t + 96]
                                require s + 1 < mem[_6212]
                                _10698 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                                _10725 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10725 + 96] = _10638
                                require (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))
                                mem[_10725] = 10000 * _10636 * Mask(112, 0, _10489) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))
                                mem[_10725 + 32] = _10698 * Mask(112, 0, _10074) * Mask(112, 0, _10505) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))
                                t = (10000 * _10638 * _10698 * Mask(112, 0, _10074) * Mask(112, 0, _10505) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489)) * 10000 * _10636 * Mask(112, 0, _10489) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))) + 1 / 2
                                u = 10000 * _10638 * _10698 * Mask(112, 0, _10074) * Mask(112, 0, _10505) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489)) * 10000 * _10636 * Mask(112, 0, _10489) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))
                                while t < u:
                                    require t
                                    t = (10000 * _10638 * _10698 * Mask(112, 0, _10074) * Mask(112, 0, _10505) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489)) * 10000 * _10636 * Mask(112, 0, _10489) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10638
                                mem[_10725 + 64] = u - (10000 * 10000 * _10636 * Mask(112, 0, _10489) / (_10698 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10489))) / _10638
                                t = t + 1
                                t = _10725
                                continue 
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10505)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10489)
                            _10641 = mem[t]
                            _10643 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _10700 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _10726 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10726 + 96] = _10643
                            require (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))
                            mem[_10726] = 10000 * _10641 * Mask(112, 0, _10505) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))
                            mem[_10726 + 32] = _10700 * Mask(112, 0, _10074) * Mask(112, 0, _10489) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))
                            t = (10000 * _10643 * _10700 * Mask(112, 0, _10074) * Mask(112, 0, _10489) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10641 * Mask(112, 0, _10505) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))) + 1 / 2
                            u = 10000 * _10643 * _10700 * Mask(112, 0, _10074) * Mask(112, 0, _10489) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10641 * Mask(112, 0, _10505) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))
                            while t < u:
                                require t
                                t = (10000 * _10643 * _10700 * Mask(112, 0, _10074) * Mask(112, 0, _10489) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505)) * 10000 * _10641 * Mask(112, 0, _10505) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505)) / t) + t / 2
                                u = t
                                continue 
                            require _10643
                            mem[_10726 + 64] = u - (10000 * 10000 * _10641 * Mask(112, 0, _10505) / (_10700 * Mask(112, 0, _10074)) + (10000 * Mask(112, 0, _10505))) / _10643
                            t = t + 1
                            t = _10726
                            continue 
                        _10292 = mem[(32 * s) + _6270 + 32]
                        require s < mem[_6270]
                        mem[mem[(32 * s) + _6270 + 32] + 32] = Mask(112, 0, _10024)
                        mem[_10292] = Mask(112, 0, _10074)
                        require s < mem[_6270]
                        mem[t] = mem[mem[(32 * s) + _6270 + 32]]
                        require s < mem[_6270]
                        mem[t + 32] = Mask(112, 0, _10024)
                        require 0 < mem[_6212]
                        mem[t + 96] = mem[mem[_6212 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10490 = mem[_10474]
                        require mem[_10474] == mem[_10474 + 18 len 14]
                        _10506 = mem[_10474 + 32]
                        require mem[_10474 + 32] == mem[_10474 + 50 len 14]
                        require mem[_10474 + 64] == mem[_10474 + 92 len 4]
                        require s + 1 < mem[_6212]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6212 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10554] == mem[_10554 + 12 len 20]
                        require s + 1 < mem[_6212]
                        require s + 1 < mem[_6270]
                        if mem[mem[(32 * s + 1) + _6212 + 32] + 44 len 20] == mem[_10554 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10490)
                            require s + 1 < mem[_6270]
                            mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10506)
                            _10646 = mem[t]
                            _10648 = mem[t + 96]
                            require s + 1 < mem[_6212]
                            _10702 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                            _10727 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10727 + 96] = _10648
                            require (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))
                            mem[_10727] = 10000 * _10646 * Mask(112, 0, _10490) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))
                            mem[_10727 + 32] = _10702 * Mask(112, 0, _10024) * Mask(112, 0, _10506) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))
                            t = (10000 * _10648 * _10702 * Mask(112, 0, _10024) * Mask(112, 0, _10506) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490)) * 10000 * _10646 * Mask(112, 0, _10490) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))) + 1 / 2
                            u = 10000 * _10648 * _10702 * Mask(112, 0, _10024) * Mask(112, 0, _10506) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490)) * 10000 * _10646 * Mask(112, 0, _10490) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))
                            while t < u:
                                require t
                                t = (10000 * _10648 * _10702 * Mask(112, 0, _10024) * Mask(112, 0, _10506) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490)) * 10000 * _10646 * Mask(112, 0, _10490) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490)) / t) + t / 2
                                u = t
                                continue 
                            require _10648
                            mem[_10727 + 64] = u - (10000 * 10000 * _10646 * Mask(112, 0, _10490) / (_10702 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10490))) / _10648
                            t = t + 1
                            t = _10727
                            continue 
                        mem[mem[(32 * s + 1) + _6270 + 32]] = Mask(112, 0, _10506)
                        require s + 1 < mem[_6270]
                        mem[mem[(32 * s + 1) + _6270 + 32] + 32] = Mask(112, 0, _10490)
                        _10651 = mem[t]
                        _10653 = mem[t + 96]
                        require s + 1 < mem[_6212]
                        _10704 = mem[mem[(32 * s + 1) + _6212 + 32] + 64]
                        _10728 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10728 + 96] = _10653
                        require (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))
                        mem[_10728] = 10000 * _10651 * Mask(112, 0, _10506) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))
                        mem[_10728 + 32] = _10704 * Mask(112, 0, _10024) * Mask(112, 0, _10490) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))
                        t = (10000 * _10653 * _10704 * Mask(112, 0, _10024) * Mask(112, 0, _10490) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10651 * Mask(112, 0, _10506) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))) + 1 / 2
                        u = 10000 * _10653 * _10704 * Mask(112, 0, _10024) * Mask(112, 0, _10490) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10651 * Mask(112, 0, _10506) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))
                        while t < u:
                            require t
                            t = (10000 * _10653 * _10704 * Mask(112, 0, _10024) * Mask(112, 0, _10490) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506)) * 10000 * _10651 * Mask(112, 0, _10506) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506)) / t) + t / 2
                            u = t
                            continue 
                        require _10653
                        mem[_10728 + 64] = u - (10000 * 10000 * _10651 * Mask(112, 0, _10506) / (_10704 * Mask(112, 0, _10024)) + (10000 * Mask(112, 0, _10506))) / _10653
                        t = t + 1
                        t = _10728
                        continue 
                    require 0 < mem[_3084]
                    mem[mem[_3084 + 32] + 64] = mem[t + 64]
                    _10797 = mem[_6212]
                    s = 0
                    while s < _10797:
                        require s < mem[_6270]
                        require s < mem[_3084]
                        if mem[mem[(32 * s) + _3084 + 32] + 64] > mem[mem[(32 * s) + _6270 + 32]]:
                            _10844 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_3084]
                            mem[_10844] = mem[mem[_3084 + 32] + 64]
                            mem[_10844 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _10844
                            idx = idx + 1
                            continue 
                        require s < mem[_6212]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32]] = mem[mem[(32 * s) + _6212 + 32] + 12 len 20]
                        require s < mem[_6212]
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 32] = mem[mem[(32 * s) + _6212 + 32] + 44 len 20]
                        require s < mem[_3084]
                        require s < mem[_6270]
                        require s < mem[_6270]
                        require s < mem[_6212]
                        require (mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6270 + 32]])
                        require s < mem[_3084]
                        mem[mem[(32 * s) + _3084 + 32] + 96] = mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64] * mem[mem[(32 * s) + _6270 + 32] + 32] / (mem[mem[(32 * s) + _6212 + 32] + 64] * mem[mem[(32 * s) + _3084 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6270 + 32]])
                        if s != mem[_6212] - 1:
                            require s < mem[_3084]
                            require s + 1 < mem[_3084]
                            mem[mem[(32 * s + 1) + _3084 + 32] + 64] = mem[mem[(32 * s) + _3084 + 32] + 96]
                        s = s + 1
                        continue 
                    _10801 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_3084]
                    mem[_10801] = mem[mem[_3084 + 32] + 64]
                    require mem[_6212] - 1 < mem[_3084]
                    mem[_10801 + 32] = mem[mem[(32 * mem[_6212] - 1) + _3084 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _10801
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _3085 = mem[_1542]
        mem[mem[64] + 32] = mem[_1542]
        idx = 0
        s = _1542 + 32
        t = mem[64] + 64
        while idx < _3085:
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
        mem[64] = _1542 + (32 * _1541) + 96
        mem[_1542 + (32 * _1541) + 32 len 64] = call.data[calldata.size len 64]
        mem[var23001] = _1542 + (32 * _1541) + 32
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_1542 + (32 * _1541) + 32 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = _1542 + (32 * _1541) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _6184 = mem[96]
        idx = 0
        while idx < _6184:
            _6189 = mem[96]
            require mem[96] <= test266151307()
            _6199 = mem[64]
            mem[mem[64]] = mem[96]
            if not _6189:
                require idx < mem[96]
                _6213 = mem[(32 * idx) + 128]
                mem[mem[64] + (32 * _6189) + 32 len 64] = call.data[calldata.size len 64]
                mem[64] = mem[64] + (32 * _6189) + 224
                mem[_6199 + (32 * _6189) + 96] = 0
                mem[_6199 + (32 * _6189) + 128] = 0
                mem[_6199 + (32 * _6189) + 160] = 0
                mem[_6199 + (32 * _6189) + 192] = 0
                _6261 = mem[_6213]
                require mem[_6213] <= test266151307()
                mem[_6199 + (32 * _6189) + 224] = mem[_6213]
                mem[64] = _6199 + (32 * _6189) + (32 * _6261) + 256
                if not _6261:
                    _7571 = mem[_6213]
                    s = 0
                    t = _6199 + (32 * _6189) + 96
                    while s < _7571 - 1:
                        if s:
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7655 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _7690 = mem[_7655]
                            require mem[_7655] == mem[_7655 + 18 len 14]
                            _7760 = mem[_7655 + 32]
                            require mem[_7655 + 32] == mem[_7655 + 50 len 14]
                            require mem[_7655 + 64] == mem[_7655 + 92 len 4]
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7924] == mem[_7924 + 12 len 20]
                            require s + 1 < mem[_6213]
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_7924 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _7690)
                                require s + 1 < mem[_6199 + (32 * _6189) + 224]
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _7760)
                                _8167 = mem[t]
                                _8168 = mem[t + 32]
                                _8169 = mem[t + 96]
                                require s + 1 < mem[_6213]
                                _8210 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                                _8262 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8262 + 96] = _8169
                                require (_8210 * _8168) + (10000 * Mask(112, 0, _7690))
                                mem[_8262] = 10000 * _8167 * Mask(112, 0, _7690) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690))
                                mem[_8262 + 32] = _8210 * _8168 * Mask(112, 0, _7760) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690))
                                t = (10000 * _8169 * _8210 * _8168 * Mask(112, 0, _7760) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690)) * 10000 * _8167 * Mask(112, 0, _7690) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690))) + 1 / 2
                                u = 10000 * _8169 * _8210 * _8168 * Mask(112, 0, _7760) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690)) * 10000 * _8167 * Mask(112, 0, _7690) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690))
                                while t < u:
                                    require t
                                    t = (10000 * _8169 * _8210 * _8168 * Mask(112, 0, _7760) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690)) * 10000 * _8167 * Mask(112, 0, _7690) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8169
                                mem[_8262 + 64] = u - (10000 * 10000 * _8167 * Mask(112, 0, _7690) / (_8210 * _8168) + (10000 * Mask(112, 0, _7690))) / _8169
                                s = s + 1
                                t = _8262
                                continue 
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _7760)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _7690)
                            _8172 = mem[t]
                            _8173 = mem[t + 32]
                            _8174 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _8212 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _8263 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8263 + 96] = _8174
                            require (_8212 * _8173) + (10000 * Mask(112, 0, _7760))
                            mem[_8263] = 10000 * _8172 * Mask(112, 0, _7760) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760))
                            mem[_8263 + 32] = _8212 * _8173 * Mask(112, 0, _7690) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760))
                            t = (10000 * _8174 * _8212 * _8173 * Mask(112, 0, _7690) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760)) * 10000 * _8172 * Mask(112, 0, _7760) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760))) + 1 / 2
                            u = 10000 * _8174 * _8212 * _8173 * Mask(112, 0, _7690) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760)) * 10000 * _8172 * Mask(112, 0, _7760) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760))
                            while t < u:
                                require t
                                t = (10000 * _8174 * _8212 * _8173 * Mask(112, 0, _7690) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760)) * 10000 * _8172 * Mask(112, 0, _7760) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760)) / t) + t / 2
                                u = t
                                continue 
                            require _8174
                            mem[_8263 + 64] = u - (10000 * 10000 * _8172 * Mask(112, 0, _7760) / (_8212 * _8173) + (10000 * Mask(112, 0, _7760))) / _8174
                            s = s + 1
                            t = _8263
                            continue 
                        require s < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6213 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _7691 = mem[_7656]
                        require mem[_7656] == mem[_7656 + 18 len 14]
                        _7761 = mem[_7656 + 32]
                        require mem[_7656 + 32] == mem[_7656 + 50 len 14]
                        require mem[_7656 + 64] == mem[_7656 + 92 len 4]
                        require s < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6213 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7925] == mem[_7925 + 12 len 20]
                        require s < mem[_6213]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        if mem[mem[(32 * s) + _6213 + 32] + 44 len 20] == mem[_7925 + 12 len 20]:
                            _8125 = mem[(32 * s) + _6199 + (32 * _6189) + 256]
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _7761)
                            mem[_8125] = Mask(112, 0, _7691)
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[t] = mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[t + 32] = Mask(112, 0, _7761)
                            require 0 < mem[_6213]
                            mem[t + 96] = mem[mem[_6213 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _8389 = mem[_8362]
                            require mem[_8362] == mem[_8362 + 18 len 14]
                            _8425 = mem[_8362 + 32]
                            require mem[_8362 + 32] == mem[_8362 + 50 len 14]
                            require mem[_8362 + 64] == mem[_8362 + 92 len 4]
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_8532] == mem[_8532 + 12 len 20]
                            require s + 1 < mem[_6213]
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_8532 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _8389)
                                require s + 1 < mem[_6199 + (32 * _6189) + 224]
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _8425)
                                _8703 = mem[t]
                                _8705 = mem[t + 96]
                                require s + 1 < mem[_6213]
                                _8753 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                                _8780 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_8780 + 96] = _8705
                                require (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))
                                mem[_8780] = 10000 * _8703 * Mask(112, 0, _8389) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))
                                mem[_8780 + 32] = _8753 * Mask(112, 0, _7761) * Mask(112, 0, _8425) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))
                                t = (10000 * _8705 * _8753 * Mask(112, 0, _7761) * Mask(112, 0, _8425) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389)) * 10000 * _8703 * Mask(112, 0, _8389) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))) + 1 / 2
                                u = 10000 * _8705 * _8753 * Mask(112, 0, _7761) * Mask(112, 0, _8425) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389)) * 10000 * _8703 * Mask(112, 0, _8389) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))
                                while t < u:
                                    require t
                                    t = (10000 * _8705 * _8753 * Mask(112, 0, _7761) * Mask(112, 0, _8425) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389)) * 10000 * _8703 * Mask(112, 0, _8389) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389)) / t) + t / 2
                                    u = t
                                    continue 
                                require _8705
                                mem[_8780 + 64] = u - (10000 * 10000 * _8703 * Mask(112, 0, _8389) / (_8753 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8389))) / _8705
                                t = t + 1
                                t = _8780
                                continue 
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _8425)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _8389)
                            _8708 = mem[t]
                            _8710 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _8755 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _8781 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8781 + 96] = _8710
                            require (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))
                            mem[_8781] = 10000 * _8708 * Mask(112, 0, _8425) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))
                            mem[_8781 + 32] = _8755 * Mask(112, 0, _7761) * Mask(112, 0, _8389) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))
                            t = (10000 * _8710 * _8755 * Mask(112, 0, _7761) * Mask(112, 0, _8389) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425)) * 10000 * _8708 * Mask(112, 0, _8425) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))) + 1 / 2
                            u = 10000 * _8710 * _8755 * Mask(112, 0, _7761) * Mask(112, 0, _8389) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425)) * 10000 * _8708 * Mask(112, 0, _8425) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))
                            while t < u:
                                require t
                                t = (10000 * _8710 * _8755 * Mask(112, 0, _7761) * Mask(112, 0, _8389) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425)) * 10000 * _8708 * Mask(112, 0, _8425) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425)) / t) + t / 2
                                u = t
                                continue 
                            require _8710
                            mem[_8781 + 64] = u - (10000 * 10000 * _8708 * Mask(112, 0, _8425) / (_8755 * Mask(112, 0, _7761)) + (10000 * Mask(112, 0, _8425))) / _8710
                            t = t + 1
                            t = _8781
                            continue 
                        _8127 = mem[(32 * s) + _6199 + (32 * _6189) + 256]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _7691)
                        mem[_8127] = Mask(112, 0, _7761)
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[t] = mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[t + 32] = Mask(112, 0, _7691)
                        require 0 < mem[_6213]
                        mem[t + 96] = mem[mem[_6213 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _8390 = mem[_8363]
                        require mem[_8363] == mem[_8363 + 18 len 14]
                        _8426 = mem[_8363 + 32]
                        require mem[_8363 + 32] == mem[_8363 + 50 len 14]
                        require mem[_8363 + 64] == mem[_8363 + 92 len 4]
                        require s + 1 < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_8533] == mem[_8533 + 12 len 20]
                        require s + 1 < mem[_6213]
                        require s + 1 < mem[_6199 + (32 * _6189) + 224]
                        if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_8533 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _8390)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _8426)
                            _8713 = mem[t]
                            _8715 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _8757 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _8782 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_8782 + 96] = _8715
                            require (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))
                            mem[_8782] = 10000 * _8713 * Mask(112, 0, _8390) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))
                            mem[_8782 + 32] = _8757 * Mask(112, 0, _7691) * Mask(112, 0, _8426) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))
                            t = (10000 * _8715 * _8757 * Mask(112, 0, _7691) * Mask(112, 0, _8426) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390)) * 10000 * _8713 * Mask(112, 0, _8390) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))) + 1 / 2
                            u = 10000 * _8715 * _8757 * Mask(112, 0, _7691) * Mask(112, 0, _8426) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390)) * 10000 * _8713 * Mask(112, 0, _8390) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))
                            while t < u:
                                require t
                                t = (10000 * _8715 * _8757 * Mask(112, 0, _7691) * Mask(112, 0, _8426) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390)) * 10000 * _8713 * Mask(112, 0, _8390) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390)) / t) + t / 2
                                u = t
                                continue 
                            require _8715
                            mem[_8782 + 64] = u - (10000 * 10000 * _8713 * Mask(112, 0, _8390) / (_8757 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8390))) / _8715
                            t = t + 1
                            t = _8782
                            continue 
                        mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _8426)
                        require s + 1 < mem[_6199 + (32 * _6189) + 224]
                        mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _8390)
                        _8718 = mem[t]
                        _8720 = mem[t + 96]
                        require s + 1 < mem[_6213]
                        _8759 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                        _8783 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_8783 + 96] = _8720
                        require (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))
                        mem[_8783] = 10000 * _8718 * Mask(112, 0, _8426) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))
                        mem[_8783 + 32] = _8759 * Mask(112, 0, _7691) * Mask(112, 0, _8390) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))
                        t = (10000 * _8720 * _8759 * Mask(112, 0, _7691) * Mask(112, 0, _8390) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426)) * 10000 * _8718 * Mask(112, 0, _8426) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))) + 1 / 2
                        u = 10000 * _8720 * _8759 * Mask(112, 0, _7691) * Mask(112, 0, _8390) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426)) * 10000 * _8718 * Mask(112, 0, _8426) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))
                        while t < u:
                            require t
                            t = (10000 * _8720 * _8759 * Mask(112, 0, _7691) * Mask(112, 0, _8390) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426)) * 10000 * _8718 * Mask(112, 0, _8426) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426)) / t) + t / 2
                            u = t
                            continue 
                        require _8720
                        mem[_8783 + 64] = u - (10000 * 10000 * _8718 * Mask(112, 0, _8426) / (_8759 * Mask(112, 0, _7691)) + (10000 * Mask(112, 0, _8426))) / _8720
                        t = t + 1
                        t = _8783
                        continue 
                    require 0 < mem[_6199]
                    mem[mem[_6199 + 32] + 64] = mem[t + 64]
                    _9015 = mem[_6213]
                    s = 0
                    while s < _9015:
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6199]
                        if mem[mem[(32 * s) + _6199 + 32] + 64] > mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]:
                            _9072 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6199]
                            mem[_9072] = mem[mem[_6199 + 32] + 64]
                            mem[_9072 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _9072
                            idx = idx + 1
                            continue 
                        require s < mem[_6213]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32]] = mem[mem[(32 * s) + _6213 + 32] + 12 len 20]
                        require s < mem[_6213]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 32] = mem[mem[(32 * s) + _6213 + 32] + 44 len 20]
                        require s < mem[_6199]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6213]
                        require (mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]])
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 96] = mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64] * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] / (mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]])
                        if s != mem[_6213] - 1:
                            require s < mem[_6199]
                            require s + 1 < mem[_6199]
                            mem[mem[(32 * s + 1) + _6199 + 32] + 64] = mem[mem[(32 * s) + _6199 + 32] + 96]
                        s = s + 1
                        continue 
                    _9025 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6199]
                    mem[_9025] = mem[mem[_6199 + 32] + 64]
                    require mem[_6213] - 1 < mem[_6199]
                    mem[_9025 + 32] = mem[mem[(32 * mem[_6213] - 1) + _6199 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _9025
                else:
                    mem[64] = _6199 + (32 * _6189) + (32 * _6261) + 320
                    mem[_6199 + (32 * _6189) + (32 * _6261) + 256] = 0
                    mem[_6199 + (32 * _6189) + (32 * _6261) + 288] = 0
                    mem[var43001] = _6199 + (32 * _6189) + (32 * _6261) + 256
                    t = var43001
                    s = var43002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_6199 + (32 * _6189) + (32 * _6261) + 256] = 0
                        mem[_6199 + (32 * _6189) + (32 * _6261) + 288] = 0
                        mem[t + 32] = _6199 + (32 * _6189) + (32 * _6261) + 256
                        t = t + 32
                        s = s - 1
                        continue 
                    _9923 = mem[_6213]
                    s = 0
                    t = _6199 + (32 * _6189) + 96
                    while s < _9923 - 1:
                        if s:
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9994 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10028 = mem[_9994]
                            require mem[_9994] == mem[_9994 + 18 len 14]
                            _10079 = mem[_9994 + 32]
                            require mem[_9994 + 32] == mem[_9994 + 50 len 14]
                            require mem[_9994 + 64] == mem[_9994 + 92 len 4]
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10200 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10200] == mem[_10200 + 12 len 20]
                            require s + 1 < mem[_6213]
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_10200 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10028)
                                require s + 1 < mem[_6199 + (32 * _6189) + 224]
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10079)
                                _10325 = mem[t]
                                _10326 = mem[t + 32]
                                _10327 = mem[t + 96]
                                require s + 1 < mem[_6213]
                                _10364 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                                _10409 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10409 + 96] = _10327
                                require (_10364 * _10326) + (10000 * Mask(112, 0, _10028))
                                mem[_10409] = 10000 * _10325 * Mask(112, 0, _10028) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028))
                                mem[_10409 + 32] = _10364 * _10326 * Mask(112, 0, _10079) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028))
                                t = (10000 * _10327 * _10364 * _10326 * Mask(112, 0, _10079) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028)) * 10000 * _10325 * Mask(112, 0, _10028) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028))) + 1 / 2
                                u = 10000 * _10327 * _10364 * _10326 * Mask(112, 0, _10079) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028)) * 10000 * _10325 * Mask(112, 0, _10028) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028))
                                while t < u:
                                    require t
                                    t = (10000 * _10327 * _10364 * _10326 * Mask(112, 0, _10079) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028)) * 10000 * _10325 * Mask(112, 0, _10028) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10327
                                mem[_10409 + 64] = u - (10000 * 10000 * _10325 * Mask(112, 0, _10028) / (_10364 * _10326) + (10000 * Mask(112, 0, _10028))) / _10327
                                s = s + 1
                                t = _10409
                                continue 
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10079)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10028)
                            _10330 = mem[t]
                            _10331 = mem[t + 32]
                            _10332 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _10366 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _10410 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10410 + 96] = _10332
                            require (_10366 * _10331) + (10000 * Mask(112, 0, _10079))
                            mem[_10410] = 10000 * _10330 * Mask(112, 0, _10079) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079))
                            mem[_10410 + 32] = _10366 * _10331 * Mask(112, 0, _10028) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079))
                            t = (10000 * _10332 * _10366 * _10331 * Mask(112, 0, _10028) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079)) * 10000 * _10330 * Mask(112, 0, _10079) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079))) + 1 / 2
                            u = 10000 * _10332 * _10366 * _10331 * Mask(112, 0, _10028) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079)) * 10000 * _10330 * Mask(112, 0, _10079) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079))
                            while t < u:
                                require t
                                t = (10000 * _10332 * _10366 * _10331 * Mask(112, 0, _10028) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079)) * 10000 * _10330 * Mask(112, 0, _10079) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079)) / t) + t / 2
                                u = t
                                continue 
                            require _10332
                            mem[_10410 + 64] = u - (10000 * 10000 * _10330 * Mask(112, 0, _10079) / (_10366 * _10331) + (10000 * Mask(112, 0, _10079))) / _10332
                            s = s + 1
                            t = _10410
                            continue 
                        require s < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6213 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10029 = mem[_9995]
                        require mem[_9995] == mem[_9995 + 18 len 14]
                        _10080 = mem[_9995 + 32]
                        require mem[_9995 + 32] == mem[_9995 + 50 len 14]
                        require mem[_9995 + 64] == mem[_9995 + 92 len 4]
                        require s < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _6213 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10201] == mem[_10201 + 12 len 20]
                        require s < mem[_6213]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        if mem[mem[(32 * s) + _6213 + 32] + 44 len 20] == mem[_10201 + 12 len 20]:
                            _10298 = mem[(32 * s) + _6199 + (32 * _6189) + 256]
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10080)
                            mem[_10298] = Mask(112, 0, _10029)
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[t] = mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]
                            require s < mem[_6199 + (32 * _6189) + 224]
                            mem[t + 32] = Mask(112, 0, _10080)
                            require 0 < mem[_6213]
                            mem[t + 96] = mem[mem[_6213 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10491 = mem[_10475]
                            require mem[_10475] == mem[_10475 + 18 len 14]
                            _10507 = mem[_10475 + 32]
                            require mem[_10475 + 32] == mem[_10475 + 50 len 14]
                            require mem[_10475 + 64] == mem[_10475 + 92 len 4]
                            require s + 1 < mem[_6213]
                            require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10555 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10555] == mem[_10555 + 12 len 20]
                            require s + 1 < mem[_6213]
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_10555 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10491)
                                require s + 1 < mem[_6199 + (32 * _6189) + 224]
                                mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10507)
                                _10656 = mem[t]
                                _10658 = mem[t + 96]
                                require s + 1 < mem[_6213]
                                _10706 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                                _10729 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10729 + 96] = _10658
                                require (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))
                                mem[_10729] = 10000 * _10656 * Mask(112, 0, _10491) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))
                                mem[_10729 + 32] = _10706 * Mask(112, 0, _10080) * Mask(112, 0, _10507) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))
                                t = (10000 * _10658 * _10706 * Mask(112, 0, _10080) * Mask(112, 0, _10507) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491)) * 10000 * _10656 * Mask(112, 0, _10491) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))) + 1 / 2
                                u = 10000 * _10658 * _10706 * Mask(112, 0, _10080) * Mask(112, 0, _10507) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491)) * 10000 * _10656 * Mask(112, 0, _10491) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))
                                while t < u:
                                    require t
                                    t = (10000 * _10658 * _10706 * Mask(112, 0, _10080) * Mask(112, 0, _10507) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491)) * 10000 * _10656 * Mask(112, 0, _10491) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10658
                                mem[_10729 + 64] = u - (10000 * 10000 * _10656 * Mask(112, 0, _10491) / (_10706 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10491))) / _10658
                                t = t + 1
                                t = _10729
                                continue 
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10507)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10491)
                            _10661 = mem[t]
                            _10663 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _10708 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _10730 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10730 + 96] = _10663
                            require (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))
                            mem[_10730] = 10000 * _10661 * Mask(112, 0, _10507) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))
                            mem[_10730 + 32] = _10708 * Mask(112, 0, _10080) * Mask(112, 0, _10491) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))
                            t = (10000 * _10663 * _10708 * Mask(112, 0, _10080) * Mask(112, 0, _10491) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10661 * Mask(112, 0, _10507) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))) + 1 / 2
                            u = 10000 * _10663 * _10708 * Mask(112, 0, _10080) * Mask(112, 0, _10491) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10661 * Mask(112, 0, _10507) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))
                            while t < u:
                                require t
                                t = (10000 * _10663 * _10708 * Mask(112, 0, _10080) * Mask(112, 0, _10491) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507)) * 10000 * _10661 * Mask(112, 0, _10507) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507)) / t) + t / 2
                                u = t
                                continue 
                            require _10663
                            mem[_10730 + 64] = u - (10000 * 10000 * _10661 * Mask(112, 0, _10507) / (_10708 * Mask(112, 0, _10080)) + (10000 * Mask(112, 0, _10507))) / _10663
                            t = t + 1
                            t = _10730
                            continue 
                        _10300 = mem[(32 * s) + _6199 + (32 * _6189) + 256]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10029)
                        mem[_10300] = Mask(112, 0, _10080)
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[t] = mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        mem[t + 32] = Mask(112, 0, _10029)
                        require 0 < mem[_6213]
                        mem[t + 96] = mem[mem[_6213 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10492 = mem[_10476]
                        require mem[_10476] == mem[_10476 + 18 len 14]
                        _10508 = mem[_10476 + 32]
                        require mem[_10476 + 32] == mem[_10476 + 50 len 14]
                        require mem[_10476 + 64] == mem[_10476 + 92 len 4]
                        require s + 1 < mem[_6213]
                        require ext_code.size(mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _6213 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10556] == mem[_10556 + 12 len 20]
                        require s + 1 < mem[_6213]
                        require s + 1 < mem[_6199 + (32 * _6189) + 224]
                        if mem[mem[(32 * s + 1) + _6213 + 32] + 44 len 20] == mem[_10556 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10492)
                            require s + 1 < mem[_6199 + (32 * _6189) + 224]
                            mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10508)
                            _10666 = mem[t]
                            _10668 = mem[t + 96]
                            require s + 1 < mem[_6213]
                            _10710 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                            _10731 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10731 + 96] = _10668
                            require (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))
                            mem[_10731] = 10000 * _10666 * Mask(112, 0, _10492) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))
                            mem[_10731 + 32] = _10710 * Mask(112, 0, _10029) * Mask(112, 0, _10508) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))
                            t = (10000 * _10668 * _10710 * Mask(112, 0, _10029) * Mask(112, 0, _10508) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492)) * 10000 * _10666 * Mask(112, 0, _10492) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))) + 1 / 2
                            u = 10000 * _10668 * _10710 * Mask(112, 0, _10029) * Mask(112, 0, _10508) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492)) * 10000 * _10666 * Mask(112, 0, _10492) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))
                            while t < u:
                                require t
                                t = (10000 * _10668 * _10710 * Mask(112, 0, _10029) * Mask(112, 0, _10508) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492)) * 10000 * _10666 * Mask(112, 0, _10492) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492)) / t) + t / 2
                                u = t
                                continue 
                            require _10668
                            mem[_10731 + 64] = u - (10000 * 10000 * _10666 * Mask(112, 0, _10492) / (_10710 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10492))) / _10668
                            t = t + 1
                            t = _10731
                            continue 
                        mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256]] = Mask(112, 0, _10508)
                        require s + 1 < mem[_6199 + (32 * _6189) + 224]
                        mem[mem[(32 * s + 1) + _6199 + (32 * _6189) + 256] + 32] = Mask(112, 0, _10492)
                        _10671 = mem[t]
                        _10673 = mem[t + 96]
                        require s + 1 < mem[_6213]
                        _10712 = mem[mem[(32 * s + 1) + _6213 + 32] + 64]
                        _10732 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10732 + 96] = _10673
                        require (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))
                        mem[_10732] = 10000 * _10671 * Mask(112, 0, _10508) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))
                        mem[_10732 + 32] = _10712 * Mask(112, 0, _10029) * Mask(112, 0, _10492) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))
                        t = (10000 * _10673 * _10712 * Mask(112, 0, _10029) * Mask(112, 0, _10492) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10671 * Mask(112, 0, _10508) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))) + 1 / 2
                        u = 10000 * _10673 * _10712 * Mask(112, 0, _10029) * Mask(112, 0, _10492) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10671 * Mask(112, 0, _10508) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))
                        while t < u:
                            require t
                            t = (10000 * _10673 * _10712 * Mask(112, 0, _10029) * Mask(112, 0, _10492) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508)) * 10000 * _10671 * Mask(112, 0, _10508) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508)) / t) + t / 2
                            u = t
                            continue 
                        require _10673
                        mem[_10732 + 64] = u - (10000 * 10000 * _10671 * Mask(112, 0, _10508) / (_10712 * Mask(112, 0, _10029)) + (10000 * Mask(112, 0, _10508))) / _10673
                        t = t + 1
                        t = _10732
                        continue 
                    require 0 < mem[_6199]
                    mem[mem[_6199 + 32] + 64] = mem[t + 64]
                    _10798 = mem[_6213]
                    s = 0
                    while s < _10798:
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6199]
                        if mem[mem[(32 * s) + _6199 + 32] + 64] > mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]]:
                            _10847 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6199]
                            mem[_10847] = mem[mem[_6199 + 32] + 64]
                            mem[_10847 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _10847
                            idx = idx + 1
                            continue 
                        require s < mem[_6213]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32]] = mem[mem[(32 * s) + _6213 + 32] + 12 len 20]
                        require s < mem[_6213]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 32] = mem[mem[(32 * s) + _6213 + 32] + 44 len 20]
                        require s < mem[_6199]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6199 + (32 * _6189) + 224]
                        require s < mem[_6213]
                        require (mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]])
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 96] = mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64] * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256] + 32] / (mem[mem[(32 * s) + _6213 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _6199 + (32 * _6189) + 256]])
                        if s != mem[_6213] - 1:
                            require s < mem[_6199]
                            require s + 1 < mem[_6199]
                            mem[mem[(32 * s + 1) + _6199 + 32] + 64] = mem[mem[(32 * s) + _6199 + 32] + 96]
                        s = s + 1
                        continue 
                    _10804 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6199]
                    mem[_10804] = mem[mem[_6199 + 32] + 64]
                    require mem[_6213] - 1 < mem[_6199]
                    mem[_10804 + 32] = mem[mem[(32 * mem[_6213] - 1) + _6199 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _10804
            else:
                mem[64] = mem[64] + (32 * _6189) + 160
                mem[_6199 + (32 * _6189) + 32] = 0
                mem[_6199 + (32 * _6189) + 64] = 0
                mem[_6199 + (32 * _6189) + 96] = 0
                mem[_6199 + (32 * _6189) + 128] = 0
                mem[var35001] = _6199 + (32 * _6189) + 32
                t = var35001
                s = var35002
                while s - 1:
                    mem[64] = mem[64] + 128
                    mem[_6199 + (32 * _6189) + 32] = 0
                    mem[_6199 + (32 * _6189) + 64] = 0
                    mem[_6199 + (32 * _6189) + 96] = 0
                    mem[_6199 + (32 * _6189) + 128] = 0
                    mem[t + 32] = _6199 + (32 * _6189) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                require idx < mem[96]
                _9075 = mem[(32 * idx) + 128]
                _9108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9108 len 64] = call.data[calldata.size len 64]
                _9143 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9143] = 0
                mem[_9143 + 32] = 0
                mem[_9143 + 64] = 0
                mem[_9143 + 96] = 0
                _9169 = mem[_9075]
                require mem[_9075] <= test266151307()
                _9187 = mem[64]
                mem[mem[64]] = mem[_9075]
                mem[64] = mem[64] + (32 * _9169) + 32
                if not _9169:
                    _9924 = mem[_9075]
                    s = 0
                    t = _9143
                    while s < _9924 - 1:
                        if s:
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10003 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10033 = mem[_10003]
                            require mem[_10003] == mem[_10003 + 18 len 14]
                            _10085 = mem[_10003 + 32]
                            require mem[_10003 + 32] == mem[_10003 + 50 len 14]
                            require mem[_10003 + 64] == mem[_10003 + 92 len 4]
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10203 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10203] == mem[_10203 + 12 len 20]
                            require s + 1 < mem[_9075]
                            require s + 1 < mem[_9187]
                            if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_10203 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10033)
                                require s + 1 < mem[_9187]
                                mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10085)
                                _10339 = mem[t]
                                _10340 = mem[t + 32]
                                _10341 = mem[t + 96]
                                require s + 1 < mem[_9075]
                                _10374 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                                _10415 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10415 + 96] = _10341
                                require (_10374 * _10340) + (10000 * Mask(112, 0, _10033))
                                mem[_10415] = 10000 * _10339 * Mask(112, 0, _10033) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033))
                                mem[_10415 + 32] = _10374 * _10340 * Mask(112, 0, _10085) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033))
                                t = (10000 * _10341 * _10374 * _10340 * Mask(112, 0, _10085) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033)) * 10000 * _10339 * Mask(112, 0, _10033) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033))) + 1 / 2
                                u = 10000 * _10341 * _10374 * _10340 * Mask(112, 0, _10085) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033)) * 10000 * _10339 * Mask(112, 0, _10033) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033))
                                while t < u:
                                    require t
                                    t = (10000 * _10341 * _10374 * _10340 * Mask(112, 0, _10085) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033)) * 10000 * _10339 * Mask(112, 0, _10033) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10341
                                mem[_10415 + 64] = u - (10000 * 10000 * _10339 * Mask(112, 0, _10033) / (_10374 * _10340) + (10000 * Mask(112, 0, _10033))) / _10341
                                s = s + 1
                                t = _10415
                                continue 
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10085)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10033)
                            _10344 = mem[t]
                            _10345 = mem[t + 32]
                            _10346 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _10376 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _10416 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10416 + 96] = _10346
                            require (_10376 * _10345) + (10000 * Mask(112, 0, _10085))
                            mem[_10416] = 10000 * _10344 * Mask(112, 0, _10085) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085))
                            mem[_10416 + 32] = _10376 * _10345 * Mask(112, 0, _10033) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085))
                            t = (10000 * _10346 * _10376 * _10345 * Mask(112, 0, _10033) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085)) * 10000 * _10344 * Mask(112, 0, _10085) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085))) + 1 / 2
                            u = 10000 * _10346 * _10376 * _10345 * Mask(112, 0, _10033) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085)) * 10000 * _10344 * Mask(112, 0, _10085) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085))
                            while t < u:
                                require t
                                t = (10000 * _10346 * _10376 * _10345 * Mask(112, 0, _10033) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085)) * 10000 * _10344 * Mask(112, 0, _10085) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085)) / t) + t / 2
                                u = t
                                continue 
                            require _10346
                            mem[_10416 + 64] = u - (10000 * 10000 * _10344 * Mask(112, 0, _10085) / (_10376 * _10345) + (10000 * Mask(112, 0, _10085))) / _10346
                            s = s + 1
                            t = _10416
                            continue 
                        require s < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9075 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10034 = mem[_10004]
                        require mem[_10004] == mem[_10004 + 18 len 14]
                        _10086 = mem[_10004 + 32]
                        require mem[_10004 + 32] == mem[_10004 + 50 len 14]
                        require mem[_10004 + 64] == mem[_10004 + 92 len 4]
                        require s < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9075 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10204 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10204] == mem[_10204 + 12 len 20]
                        require s < mem[_9075]
                        require s < mem[_9187]
                        if mem[mem[(32 * s) + _9075 + 32] + 44 len 20] == mem[_10204 + 12 len 20]:
                            _10306 = mem[(32 * s) + _9187 + 32]
                            require s < mem[_9187]
                            mem[mem[(32 * s) + _9187 + 32] + 32] = Mask(112, 0, _10086)
                            mem[_10306] = Mask(112, 0, _10034)
                            require s < mem[_9187]
                            mem[t] = mem[mem[(32 * s) + _9187 + 32]]
                            require s < mem[_9187]
                            mem[t + 32] = Mask(112, 0, _10086)
                            require 0 < mem[_9075]
                            mem[t + 96] = mem[mem[_9075 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10477 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _10493 = mem[_10477]
                            require mem[_10477] == mem[_10477 + 18 len 14]
                            _10509 = mem[_10477 + 32]
                            require mem[_10477 + 32] == mem[_10477 + 50 len 14]
                            require mem[_10477 + 64] == mem[_10477 + 92 len 4]
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_10557] == mem[_10557 + 12 len 20]
                            require s + 1 < mem[_9075]
                            require s + 1 < mem[_9187]
                            if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_10557 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10493)
                                require s + 1 < mem[_9187]
                                mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10509)
                                _10676 = mem[t]
                                _10678 = mem[t + 96]
                                require s + 1 < mem[_9075]
                                _10714 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                                _10733 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_10733 + 96] = _10678
                                require (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))
                                mem[_10733] = 10000 * _10676 * Mask(112, 0, _10493) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))
                                mem[_10733 + 32] = _10714 * Mask(112, 0, _10086) * Mask(112, 0, _10509) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))
                                t = (10000 * _10678 * _10714 * Mask(112, 0, _10086) * Mask(112, 0, _10509) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493)) * 10000 * _10676 * Mask(112, 0, _10493) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))) + 1 / 2
                                u = 10000 * _10678 * _10714 * Mask(112, 0, _10086) * Mask(112, 0, _10509) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493)) * 10000 * _10676 * Mask(112, 0, _10493) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))
                                while t < u:
                                    require t
                                    t = (10000 * _10678 * _10714 * Mask(112, 0, _10086) * Mask(112, 0, _10509) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493)) * 10000 * _10676 * Mask(112, 0, _10493) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493)) / t) + t / 2
                                    u = t
                                    continue 
                                require _10678
                                mem[_10733 + 64] = u - (10000 * 10000 * _10676 * Mask(112, 0, _10493) / (_10714 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10493))) / _10678
                                t = t + 1
                                t = _10733
                                continue 
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10509)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10493)
                            _10681 = mem[t]
                            _10683 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _10716 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _10734 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10734 + 96] = _10683
                            require (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))
                            mem[_10734] = 10000 * _10681 * Mask(112, 0, _10509) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))
                            mem[_10734 + 32] = _10716 * Mask(112, 0, _10086) * Mask(112, 0, _10493) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))
                            t = (10000 * _10683 * _10716 * Mask(112, 0, _10086) * Mask(112, 0, _10493) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10681 * Mask(112, 0, _10509) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))) + 1 / 2
                            u = 10000 * _10683 * _10716 * Mask(112, 0, _10086) * Mask(112, 0, _10493) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10681 * Mask(112, 0, _10509) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))
                            while t < u:
                                require t
                                t = (10000 * _10683 * _10716 * Mask(112, 0, _10086) * Mask(112, 0, _10493) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509)) * 10000 * _10681 * Mask(112, 0, _10509) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509)) / t) + t / 2
                                u = t
                                continue 
                            require _10683
                            mem[_10734 + 64] = u - (10000 * 10000 * _10681 * Mask(112, 0, _10509) / (_10716 * Mask(112, 0, _10086)) + (10000 * Mask(112, 0, _10509))) / _10683
                            t = t + 1
                            t = _10734
                            continue 
                        _10308 = mem[(32 * s) + _9187 + 32]
                        require s < mem[_9187]
                        mem[mem[(32 * s) + _9187 + 32] + 32] = Mask(112, 0, _10034)
                        mem[_10308] = Mask(112, 0, _10086)
                        require s < mem[_9187]
                        mem[t] = mem[mem[(32 * s) + _9187 + 32]]
                        require s < mem[_9187]
                        mem[t + 32] = Mask(112, 0, _10034)
                        require 0 < mem[_9075]
                        mem[t + 96] = mem[mem[_9075 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _10494 = mem[_10478]
                        require mem[_10478] == mem[_10478 + 18 len 14]
                        _10510 = mem[_10478 + 32]
                        require mem[_10478 + 32] == mem[_10478 + 50 len 14]
                        require mem[_10478 + 64] == mem[_10478 + 92 len 4]
                        require s + 1 < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_10558] == mem[_10558 + 12 len 20]
                        require s + 1 < mem[_9075]
                        require s + 1 < mem[_9187]
                        if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_10558 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10494)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10510)
                            _10686 = mem[t]
                            _10688 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _10718 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _10735 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_10735 + 96] = _10688
                            require (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))
                            mem[_10735] = 10000 * _10686 * Mask(112, 0, _10494) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))
                            mem[_10735 + 32] = _10718 * Mask(112, 0, _10034) * Mask(112, 0, _10510) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))
                            t = (10000 * _10688 * _10718 * Mask(112, 0, _10034) * Mask(112, 0, _10510) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494)) * 10000 * _10686 * Mask(112, 0, _10494) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))) + 1 / 2
                            u = 10000 * _10688 * _10718 * Mask(112, 0, _10034) * Mask(112, 0, _10510) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494)) * 10000 * _10686 * Mask(112, 0, _10494) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))
                            while t < u:
                                require t
                                t = (10000 * _10688 * _10718 * Mask(112, 0, _10034) * Mask(112, 0, _10510) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494)) * 10000 * _10686 * Mask(112, 0, _10494) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494)) / t) + t / 2
                                u = t
                                continue 
                            require _10688
                            mem[_10735 + 64] = u - (10000 * 10000 * _10686 * Mask(112, 0, _10494) / (_10718 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10494))) / _10688
                            t = t + 1
                            t = _10735
                            continue 
                        mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _10510)
                        require s + 1 < mem[_9187]
                        mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _10494)
                        _10691 = mem[t]
                        _10693 = mem[t + 96]
                        require s + 1 < mem[_9075]
                        _10720 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                        _10736 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_10736 + 96] = _10693
                        require (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))
                        mem[_10736] = 10000 * _10691 * Mask(112, 0, _10510) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))
                        mem[_10736 + 32] = _10720 * Mask(112, 0, _10034) * Mask(112, 0, _10494) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))
                        t = (10000 * _10693 * _10720 * Mask(112, 0, _10034) * Mask(112, 0, _10494) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10691 * Mask(112, 0, _10510) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))) + 1 / 2
                        u = 10000 * _10693 * _10720 * Mask(112, 0, _10034) * Mask(112, 0, _10494) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10691 * Mask(112, 0, _10510) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))
                        while t < u:
                            require t
                            t = (10000 * _10693 * _10720 * Mask(112, 0, _10034) * Mask(112, 0, _10494) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510)) * 10000 * _10691 * Mask(112, 0, _10510) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510)) / t) + t / 2
                            u = t
                            continue 
                        require _10693
                        mem[_10736 + 64] = u - (10000 * 10000 * _10691 * Mask(112, 0, _10510) / (_10720 * Mask(112, 0, _10034)) + (10000 * Mask(112, 0, _10510))) / _10693
                        t = t + 1
                        t = _10736
                        continue 
                    require 0 < mem[_6199]
                    mem[mem[_6199 + 32] + 64] = mem[t + 64]
                    _10799 = mem[_9075]
                    s = 0
                    while s < _10799:
                        require s < mem[_9187]
                        require s < mem[_6199]
                        if mem[mem[(32 * s) + _6199 + 32] + 64] > mem[mem[(32 * s) + _9187 + 32]]:
                            _10850 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6199]
                            mem[_10850] = mem[mem[_6199 + 32] + 64]
                            mem[_10850 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _10850
                            idx = idx + 1
                            continue 
                        require s < mem[_9075]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32]] = mem[mem[(32 * s) + _9075 + 32] + 12 len 20]
                        require s < mem[_9075]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 32] = mem[mem[(32 * s) + _9075 + 32] + 44 len 20]
                        require s < mem[_6199]
                        require s < mem[_9187]
                        require s < mem[_9187]
                        require s < mem[_9075]
                        require (mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9187 + 32]])
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 96] = mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64] * mem[mem[(32 * s) + _9187 + 32] + 32] / (mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9187 + 32]])
                        if s != mem[_9075] - 1:
                            require s < mem[_6199]
                            require s + 1 < mem[_6199]
                            mem[mem[(32 * s + 1) + _6199 + 32] + 64] = mem[mem[(32 * s) + _6199 + 32] + 96]
                        s = s + 1
                        continue 
                    _10807 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6199]
                    mem[_10807] = mem[mem[_6199 + 32] + 64]
                    require mem[_9075] - 1 < mem[_6199]
                    mem[_10807 + 32] = mem[mem[(32 * mem[_9075] - 1) + _6199 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _10807
                else:
                    mem[64] = _9187 + (32 * _9169) + 96
                    mem[_9187 + (32 * _9169) + 32] = 0
                    mem[_9187 + (32 * _9169) + 64] = 0
                    mem[var50001] = _9187 + (32 * _9169) + 32
                    t = var50001
                    s = var50002
                    while s - 1:
                        mem[64] = mem[64] + 64
                        mem[_9187 + (32 * _9169) + 32] = 0
                        mem[_9187 + (32 * _9169) + 64] = 0
                        mem[t + 32] = _9187 + (32 * _9169) + 32
                        t = t + 32
                        s = s - 1
                        continue 
                    _11137 = mem[_9075]
                    s = 0
                    t = _9143
                    while s < _11137 - 1:
                        if s:
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11162 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _11171 = mem[_11162]
                            require mem[_11162] == mem[_11162 + 18 len 14]
                            _11185 = mem[_11162 + 32]
                            require mem[_11162 + 32] == mem[_11162 + 50 len 14]
                            require mem[_11162 + 64] == mem[_11162 + 92 len 4]
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11213] == mem[_11213 + 12 len 20]
                            require s + 1 < mem[_9075]
                            require s + 1 < mem[_9187]
                            if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_11213 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11171)
                                require s + 1 < mem[_9187]
                                mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11185)
                                _11243 = mem[t]
                                _11244 = mem[t + 32]
                                _11245 = mem[t + 96]
                                require s + 1 < mem[_9075]
                                _11257 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                                _11272 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_11272 + 96] = _11245
                                require (_11257 * _11244) + (10000 * Mask(112, 0, _11171))
                                mem[_11272] = 10000 * _11243 * Mask(112, 0, _11171) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171))
                                mem[_11272 + 32] = _11257 * _11244 * Mask(112, 0, _11185) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171))
                                t = (10000 * _11245 * _11257 * _11244 * Mask(112, 0, _11185) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171)) * 10000 * _11243 * Mask(112, 0, _11171) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171))) + 1 / 2
                                u = 10000 * _11245 * _11257 * _11244 * Mask(112, 0, _11185) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171)) * 10000 * _11243 * Mask(112, 0, _11171) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171))
                                while t < u:
                                    require t
                                    t = (10000 * _11245 * _11257 * _11244 * Mask(112, 0, _11185) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171)) * 10000 * _11243 * Mask(112, 0, _11171) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171)) / t) + t / 2
                                    u = t
                                    continue 
                                require _11245
                                mem[_11272 + 64] = u - (10000 * 10000 * _11243 * Mask(112, 0, _11171) / (_11257 * _11244) + (10000 * Mask(112, 0, _11171))) / _11245
                                s = s + 1
                                t = _11272
                                continue 
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11185)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11171)
                            _11248 = mem[t]
                            _11249 = mem[t + 32]
                            _11250 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _11259 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _11273 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11273 + 96] = _11250
                            require (_11259 * _11249) + (10000 * Mask(112, 0, _11185))
                            mem[_11273] = 10000 * _11248 * Mask(112, 0, _11185) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185))
                            mem[_11273 + 32] = _11259 * _11249 * Mask(112, 0, _11171) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185))
                            t = (10000 * _11250 * _11259 * _11249 * Mask(112, 0, _11171) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185)) * 10000 * _11248 * Mask(112, 0, _11185) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185))) + 1 / 2
                            u = 10000 * _11250 * _11259 * _11249 * Mask(112, 0, _11171) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185)) * 10000 * _11248 * Mask(112, 0, _11185) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185))
                            while t < u:
                                require t
                                t = (10000 * _11250 * _11259 * _11249 * Mask(112, 0, _11171) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185)) * 10000 * _11248 * Mask(112, 0, _11185) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185)) / t) + t / 2
                                u = t
                                continue 
                            require _11250
                            mem[_11273 + 64] = u - (10000 * 10000 * _11248 * Mask(112, 0, _11185) / (_11259 * _11249) + (10000 * Mask(112, 0, _11185))) / _11250
                            s = s + 1
                            t = _11273
                            continue 
                        require s < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9075 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11172 = mem[_11163]
                        require mem[_11163] == mem[_11163 + 18 len 14]
                        _11186 = mem[_11163 + 32]
                        require mem[_11163 + 32] == mem[_11163 + 50 len 14]
                        require mem[_11163 + 64] == mem[_11163 + 92 len 4]
                        require s < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s) + _9075 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11214] == mem[_11214 + 12 len 20]
                        require s < mem[_9075]
                        require s < mem[_9187]
                        if mem[mem[(32 * s) + _9075 + 32] + 44 len 20] == mem[_11214 + 12 len 20]:
                            _11238 = mem[(32 * s) + _9187 + 32]
                            require s < mem[_9187]
                            mem[mem[(32 * s) + _9187 + 32] + 32] = Mask(112, 0, _11186)
                            mem[_11238] = Mask(112, 0, _11172)
                            require s < mem[_9187]
                            mem[t] = mem[mem[(32 * s) + _9187 + 32]]
                            require s < mem[_9187]
                            mem[t + 32] = Mask(112, 0, _11186)
                            require 0 < mem[_9075]
                            mem[t + 96] = mem[mem[_9075 + 32] + 64]
                            mem[t + 64] = 0
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _11292 = mem[_11290]
                            require mem[_11290] == mem[_11290 + 18 len 14]
                            _11294 = mem[_11290 + 32]
                            require mem[_11290 + 32] == mem[_11290 + 50 len 14]
                            require mem[_11290 + 64] == mem[_11290 + 92 len 4]
                            require s + 1 < mem[_9075]
                            require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                            staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11308] == mem[_11308 + 12 len 20]
                            require s + 1 < mem[_9075]
                            require s + 1 < mem[_9187]
                            if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_11308 + 12 len 20]:
                                mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11292)
                                require s + 1 < mem[_9187]
                                mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11294)
                                _11331 = mem[t]
                                _11333 = mem[t + 96]
                                require s + 1 < mem[_9075]
                                _11351 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                                _11358 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_11358 + 96] = _11333
                                require (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))
                                mem[_11358] = 10000 * _11331 * Mask(112, 0, _11292) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))
                                mem[_11358 + 32] = _11351 * Mask(112, 0, _11186) * Mask(112, 0, _11294) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))
                                t = (10000 * _11333 * _11351 * Mask(112, 0, _11186) * Mask(112, 0, _11294) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292)) * 10000 * _11331 * Mask(112, 0, _11292) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))) + 1 / 2
                                u = 10000 * _11333 * _11351 * Mask(112, 0, _11186) * Mask(112, 0, _11294) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292)) * 10000 * _11331 * Mask(112, 0, _11292) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))
                                while t < u:
                                    require t
                                    t = (10000 * _11333 * _11351 * Mask(112, 0, _11186) * Mask(112, 0, _11294) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292)) * 10000 * _11331 * Mask(112, 0, _11292) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292)) / t) + t / 2
                                    u = t
                                    continue 
                                require _11333
                                mem[_11358 + 64] = u - (10000 * 10000 * _11331 * Mask(112, 0, _11292) / (_11351 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11292))) / _11333
                                t = t + 1
                                t = _11358
                                continue 
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11294)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11292)
                            _11336 = mem[t]
                            _11338 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _11353 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _11359 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11359 + 96] = _11338
                            require (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))
                            mem[_11359] = 10000 * _11336 * Mask(112, 0, _11294) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))
                            mem[_11359 + 32] = _11353 * Mask(112, 0, _11186) * Mask(112, 0, _11292) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))
                            t = (10000 * _11338 * _11353 * Mask(112, 0, _11186) * Mask(112, 0, _11292) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294)) * 10000 * _11336 * Mask(112, 0, _11294) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))) + 1 / 2
                            u = 10000 * _11338 * _11353 * Mask(112, 0, _11186) * Mask(112, 0, _11292) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294)) * 10000 * _11336 * Mask(112, 0, _11294) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))
                            while t < u:
                                require t
                                t = (10000 * _11338 * _11353 * Mask(112, 0, _11186) * Mask(112, 0, _11292) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294)) * 10000 * _11336 * Mask(112, 0, _11294) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294)) / t) + t / 2
                                u = t
                                continue 
                            require _11338
                            mem[_11359 + 64] = u - (10000 * 10000 * _11336 * Mask(112, 0, _11294) / (_11353 * Mask(112, 0, _11186)) + (10000 * Mask(112, 0, _11294))) / _11338
                            t = t + 1
                            t = _11359
                            continue 
                        _11240 = mem[(32 * s) + _9187 + 32]
                        require s < mem[_9187]
                        mem[mem[(32 * s) + _9187 + 32] + 32] = Mask(112, 0, _11172)
                        mem[_11240] = Mask(112, 0, _11186)
                        require s < mem[_9187]
                        mem[t] = mem[mem[(32 * s) + _9187 + 32]]
                        require s < mem[_9187]
                        mem[t + 32] = Mask(112, 0, _11172)
                        require 0 < mem[_9075]
                        mem[t + 96] = mem[mem[_9075 + 32] + 64]
                        mem[t + 64] = 0
                        require s + 1 < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _11293 = mem[_11291]
                        require mem[_11291] == mem[_11291 + 18 len 14]
                        _11295 = mem[_11291 + 32]
                        require mem[_11291 + 32] == mem[_11291 + 50 len 14]
                        require mem[_11291 + 64] == mem[_11291 + 92 len 4]
                        require s + 1 < mem[_9075]
                        require ext_code.size(mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20])
                        staticcall mem[mem[(32 * s + 1) + _9075 + 32] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11309] == mem[_11309 + 12 len 20]
                        require s + 1 < mem[_9075]
                        require s + 1 < mem[_9187]
                        if mem[mem[(32 * s + 1) + _9075 + 32] + 44 len 20] == mem[_11309 + 12 len 20]:
                            mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11293)
                            require s + 1 < mem[_9187]
                            mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11295)
                            _11341 = mem[t]
                            _11343 = mem[t + 96]
                            require s + 1 < mem[_9075]
                            _11355 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                            _11360 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11360 + 96] = _11343
                            require (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))
                            mem[_11360] = 10000 * _11341 * Mask(112, 0, _11293) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))
                            mem[_11360 + 32] = _11355 * Mask(112, 0, _11172) * Mask(112, 0, _11295) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))
                            t = (10000 * _11343 * _11355 * Mask(112, 0, _11172) * Mask(112, 0, _11295) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293)) * 10000 * _11341 * Mask(112, 0, _11293) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))) + 1 / 2
                            u = 10000 * _11343 * _11355 * Mask(112, 0, _11172) * Mask(112, 0, _11295) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293)) * 10000 * _11341 * Mask(112, 0, _11293) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))
                            while t < u:
                                require t
                                t = (10000 * _11343 * _11355 * Mask(112, 0, _11172) * Mask(112, 0, _11295) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293)) * 10000 * _11341 * Mask(112, 0, _11293) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293)) / t) + t / 2
                                u = t
                                continue 
                            require _11343
                            mem[_11360 + 64] = u - (10000 * 10000 * _11341 * Mask(112, 0, _11293) / (_11355 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11293))) / _11343
                            t = t + 1
                            t = _11360
                            continue 
                        mem[mem[(32 * s + 1) + _9187 + 32]] = Mask(112, 0, _11295)
                        require s + 1 < mem[_9187]
                        mem[mem[(32 * s + 1) + _9187 + 32] + 32] = Mask(112, 0, _11293)
                        _11346 = mem[t]
                        _11348 = mem[t + 96]
                        require s + 1 < mem[_9075]
                        _11357 = mem[mem[(32 * s + 1) + _9075 + 32] + 64]
                        _11361 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11361 + 96] = _11348
                        require (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))
                        mem[_11361] = 10000 * _11346 * Mask(112, 0, _11295) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))
                        mem[_11361 + 32] = _11357 * Mask(112, 0, _11172) * Mask(112, 0, _11293) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))
                        t = (10000 * _11348 * _11357 * Mask(112, 0, _11172) * Mask(112, 0, _11293) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295)) * 10000 * _11346 * Mask(112, 0, _11295) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))) + 1 / 2
                        u = 10000 * _11348 * _11357 * Mask(112, 0, _11172) * Mask(112, 0, _11293) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295)) * 10000 * _11346 * Mask(112, 0, _11295) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))
                        while t < u:
                            require t
                            t = (10000 * _11348 * _11357 * Mask(112, 0, _11172) * Mask(112, 0, _11293) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295)) * 10000 * _11346 * Mask(112, 0, _11295) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295)) / t) + t / 2
                            u = t
                            continue 
                        require _11348
                        mem[_11361 + 64] = u - (10000 * 10000 * _11346 * Mask(112, 0, _11295) / (_11357 * Mask(112, 0, _11172)) + (10000 * Mask(112, 0, _11295))) / _11348
                        t = t + 1
                        t = _11361
                        continue 
                    require 0 < mem[_6199]
                    mem[mem[_6199 + 32] + 64] = mem[t + 64]
                    _11366 = mem[_9075]
                    s = 0
                    while s < _11366:
                        require s < mem[_9187]
                        require s < mem[_6199]
                        if mem[mem[(32 * s) + _6199 + 32] + 64] > mem[mem[(32 * s) + _9187 + 32]]:
                            _11382 = mem[64]
                            mem[64] = mem[64] + 64
                            require 0 < mem[_6199]
                            mem[_11382] = mem[mem[_6199 + 32] + 64]
                            mem[_11382 + 32] = 0
                            require idx < mem[_1542]
                            mem[(32 * idx) + _1542 + 32] = _11382
                            idx = idx + 1
                            continue 
                        require s < mem[_9075]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32]] = mem[mem[(32 * s) + _9075 + 32] + 12 len 20]
                        require s < mem[_9075]
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 32] = mem[mem[(32 * s) + _9075 + 32] + 44 len 20]
                        require s < mem[_6199]
                        require s < mem[_9187]
                        require s < mem[_9187]
                        require s < mem[_9075]
                        require (mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9187 + 32]])
                        require s < mem[_6199]
                        mem[mem[(32 * s) + _6199 + 32] + 96] = mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64] * mem[mem[(32 * s) + _9187 + 32] + 32] / (mem[mem[(32 * s) + _9075 + 32] + 64] * mem[mem[(32 * s) + _6199 + 32] + 64]) + (10000 * mem[mem[(32 * s) + _9187 + 32]])
                        if s != mem[_9075] - 1:
                            require s < mem[_6199]
                            require s + 1 < mem[_6199]
                            mem[mem[(32 * s + 1) + _6199 + 32] + 64] = mem[mem[(32 * s) + _6199 + 32] + 96]
                        s = s + 1
                        continue 
                    _11367 = mem[64]
                    mem[64] = mem[64] + 64
                    require 0 < mem[_6199]
                    mem[_11367] = mem[mem[_6199 + 32] + 64]
                    require mem[_9075] - 1 < mem[_6199]
                    mem[_11367 + 32] = mem[mem[(32 * mem[_9075] - 1) + _6199 + 32] + 96]
                    require idx < mem[_1542]
                    mem[(32 * idx) + _1542 + 32] = _11367
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _6206 = mem[_1542]
        mem[mem[64] + 32] = mem[_1542]
        idx = 0
        s = _1542 + 32
        t = mem[64] + 64
        while idx < _6206:
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
