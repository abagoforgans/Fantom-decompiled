contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 64
    require cd[(arg5 + 36)] <= 4294967296
    require cd[(arg5 + 36)] + 68 <= arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= 4294967296 and cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68 <= arg5.length + 36
    mem[96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    mem[128 len 32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + 36)] + 68 len 32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]]
    require cd[(arg5 + 68)] <= 4294967296
    require cd[(arg5 + 68)] + 68 <= arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 68)] + 36)] <= 4294967296 and cd[(arg5 + 68)] + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 68 <= arg5.length + 36
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160 len 32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]] = call.data[arg5 + cd[(arg5 + 68)] + 68 len 32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160] = 0
    if cd[(arg5 + cd[(arg5 + 36)] + 36)] - 1 != cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        revert with 0, 
                    32,
                    58,
                    0xfe646578526f757465724164647265737365732073686f756c642068617320636f696e50617468416464726573736573206c656e677468202d20,
                    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 286 len 6]
    require 0 < cd[(arg5 + cd[(arg5 + 68)] + 36)]
    idx = 1
    s = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
    t = 1
    while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
        require idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]
        if address(s) == mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]
        idx = idx + 1
        s = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160]
        t = t + 1
        continue 
    require t <= test266151307()
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160] = t
    mem[64] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 192
    if not t:
        idx = 0
        s = 0
        while idx < cd[(arg5 + cd[(arg5 + 68)] + 36)]:
            if not s:
                _301 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_301 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[96]
                require 0 < mem[_301]
                mem[_301 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_301]
                mem[_301 + 64] = mem[(32 * idx + 1) + 140 len 20]
                mem[64] = _301 + 160
                mem[_301 + 96] = _301
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_301 + 128] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _301 + 96
                idx = idx + 1
                s = s + 1
                continue 
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            if mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 44 len 20] != mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]:
                _323 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_323 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[96]
                require 0 < mem[_323]
                mem[_323 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_323]
                mem[_323 + 64] = mem[(32 * idx + 1) + 140 len 20]
                mem[64] = _323 + 160
                mem[_323 + 96] = _323
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_323 + 128] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _323 + 96
                idx = idx + 1
                s = s + 1
                continue 
            _335 = mem[64]
            mem[64] = mem[64] + 64
            mem[_335] = 96
            mem[_335 + 32] = 0
            require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _351 = mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]
            _353 = mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]]
            require mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]] + 1 <= test266151307()
            _363 = mem[64]
            mem[mem[64]] = mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]] + 1
            mem[64] = mem[64] + (32 * _353 + 1) + 32
            if not _353 + 1:
                _533 = mem[mem[_351]]
                t = 0
                while t < _533:
                    require t < mem[mem[_351]]
                    require t < mem[_363]
                    mem[(32 * t) + _363 + 32] = mem[(32 * t) + mem[_351] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < mem[96]
                require mem[mem[_351]] < mem[_363]
                mem[(32 * mem[mem[_351]]) + _363 + 32] = mem[(32 * idx + 1) + 140 len 20]
                _563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_563] = _363
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_563 + 32] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _563
            else:
                mem[_363 + 32 len 32 * _353 + 1] = call.data[calldata.size len 32 * _353 + 1]
                _535 = mem[mem[_351]]
                t = 0
                while t < _535:
                    require t < mem[mem[_351]]
                    require t < mem[_363]
                    mem[(32 * t) + _363 + 32] = mem[(32 * t) + mem[_351] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < mem[96]
                require mem[mem[_351]] < mem[_363]
                mem[(32 * mem[mem[_351]]) + _363 + 32] = mem[(32 * idx + 1) + 140 len 20]
                _565 = mem[64]
                mem[64] = mem[64] + 64
                mem[_565] = _363
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_565 + 32] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _565
            idx = idx + 1
            s = s
            continue 
        _531 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
        idx = 0
        s = arg3
        while idx < _531:
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _545 = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _562 = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 32]
            require 0 < mem[mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]]
            _580 = mem[mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 44 len 20]
            require ext_code.size(address(_580))
            call address(_580).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            _599 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[_545]
            _601 = mem[_545]
            s = 0
            while s < 32 * _601:
                mem[s + mem[64] + 196] = mem[s + _545 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_562))
            call address(_562).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _601) + _599 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_545] - 1 < mem[_545]
            _751 = mem[(32 * mem[_545] - 1) + _545 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_751))
            staticcall address(_751).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if s <= arg3:
            revert with 0, 
                        32,
                        41,
                        0x6446696e616c20616d6f756e74206973206c6f776572207468616e20696e697469616c20616d6f756e,
                        mem[mem[64] + 109 len 23]
        if s <= arg4 + arg3:
            revert with 0, 32, 39, 0x3146696e616c20616d6f756e74206973206e6f7420656e6f75676820746f20706179206f77696e, mem[mem[64] + 107 len 25]
        _575 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = s - arg4 - arg3
        _576 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_576 + 32 len 4] = unknown_0xa9059cbb(?????)
        _579 = mem[_576]
        mem[mem[64] len floor32(mem[_576])] = mem[_576 + 32 len floor32(mem[_576])]
        mem[mem[64] + floor32(mem[_576]) + -(mem[_576] % 32) + 32 len mem[_576] % 32] = mem[_576 + floor32(mem[_576]) + -(mem[_576] % 32) + 64 len mem[_576] % 32]
        call arg2 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _579 + _575 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                45,
                                0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
        else:
            _739 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_739] = return_data.size
            mem[_739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[_739 + 32]:
                    revert with 0, 
                                32,
                                45,
                                0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
    else:
        mem[64] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 256
        mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 192] = 96
        mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 224] = 0
        mem[var25001] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 192
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 192] = 96
            mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 224] = 0
            mem[s + 32] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * t) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _732 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
        idx = 0
        s = 0
        while idx < _732:
            if not s:
                _745 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_745 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[96]
                require 0 < mem[_745]
                mem[_745 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_745]
                mem[_745 + 64] = mem[(32 * idx + 1) + 140 len 20]
                mem[64] = _745 + 160
                mem[_745 + 96] = _745
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_745 + 128] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _745 + 96
                idx = idx + 1
                s = s + 1
                continue 
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
            require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            if mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 44 len 20] != mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]:
                _780 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_780 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[96]
                require 0 < mem[_780]
                mem[_780 + 32] = mem[(32 * idx) + 140 len 20]
                require idx + 1 < mem[96]
                require 1 < mem[_780]
                mem[_780 + 64] = mem[(32 * idx + 1) + 140 len 20]
                mem[64] = _780 + 160
                mem[_780 + 96] = _780
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_780 + 128] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _780 + 96
                idx = idx + 1
                s = s + 1
                continue 
            _797 = mem[64]
            mem[64] = mem[64] + 64
            mem[_797] = 96
            mem[_797 + 32] = 0
            require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _819 = mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]
            _821 = mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]]
            require mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]] + 1 <= test266151307()
            _828 = mem[64]
            mem[mem[64]] = mem[mem[mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]] + 1
            mem[64] = mem[64] + (32 * _821 + 1) + 32
            if not _821 + 1:
                _929 = mem[mem[_819]]
                t = 0
                while t < _929:
                    require t < mem[mem[_819]]
                    require t < mem[_828]
                    mem[(32 * t) + _828 + 32] = mem[(32 * t) + mem[_819] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < mem[96]
                require mem[mem[_819]] < mem[_828]
                mem[(32 * mem[mem[_819]]) + _828 + 32] = mem[(32 * idx + 1) + 140 len 20]
                _958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_958] = _828
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_958 + 32] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _958
            else:
                mem[_828 + 32 len 32 * _821 + 1] = call.data[calldata.size len 32 * _821 + 1]
                _931 = mem[mem[_819]]
                t = 0
                while t < _931:
                    require t < mem[mem[_819]]
                    require t < mem[_828]
                    mem[(32 * t) + _828 + 32] = mem[(32 * t) + mem[_819] + 44 len 20]
                    t = t + 1
                    continue 
                require idx + 1 < mem[96]
                require mem[mem[_819]] < mem[_828]
                mem[(32 * mem[mem[_819]]) + _828 + 32] = mem[(32 * idx + 1) + 140 len 20]
                _960 = mem[64]
                mem[64] = mem[64] + 64
                mem[_960] = _828
                require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128]
                mem[_960 + 32] = mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 172 len 20]
                require s - 1 < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
                mem[(32 * s - 1) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] = _960
            idx = idx + 1
            s = s
            continue 
        _927 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
        idx = 0
        s = arg3
        while idx < _927:
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _940 = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]
            require idx < mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160]
            _957 = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 32]
            require 0 < mem[mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]]]
            _974 = mem[mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192] + 44 len 20]
            require ext_code.size(address(_974))
            call address(_974).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            _984 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + (500 * 3600)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[_940]
            _986 = mem[_940]
            s = 0
            while s < 32 * _986:
                mem[s + mem[64] + 196] = mem[s + _940 + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_957))
            call address(_957).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _986) + _984 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require mem[_940] - 1 < mem[_940]
            _1047 = mem[(32 * mem[_940] - 1) + _940 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1047))
            staticcall address(_1047).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        if s <= arg3:
            revert with 0, 
                        32,
                        41,
                        0x6446696e616c20616d6f756e74206973206c6f776572207468616e20696e697469616c20616d6f756e,
                        mem[mem[64] + 109 len 23]
        if s <= arg4 + arg3:
            revert with 0, 32, 39, 0x3146696e616c20616d6f756e74206973206e6f7420656e6f75676820746f20706179206f77696e, mem[mem[64] + 107 len 25]
        _969 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = s - arg4 - arg3
        _970 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_970 + 32 len 4] = unknown_0xa9059cbb(?????)
        _973 = mem[_970]
        mem[mem[64] len floor32(mem[_970])] = mem[_970 + 32 len floor32(mem[_970])]
        mem[mem[64] + floor32(mem[_970]) + -(mem[_970] % 32) + 32 len mem[_970] % 32] = mem[_970 + floor32(mem[_970]) + -(mem[_970] % 32) + 64 len mem[_970] % 32]
        call arg2 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _973 + _969 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                45,
                                0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
        else:
            _1042 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1042] = return_data.size
            mem[_1042 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[mem[64] + 113 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[_1042 + 32]:
                    revert with 0, 
                                32,
                                45,
                                0x675472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 113 len 19]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg4 + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fund back failed'
}



}
