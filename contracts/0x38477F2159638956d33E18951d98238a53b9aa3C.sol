contract main {




// =====================  Runtime code  =====================


address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_76d489d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor3
    mem[(2 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 2
    mem[(2 * ceil32(return_data.size)) + 224] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 256] = stor3
    mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = arg1
    mem[(2 * ceil32(return_data.size)) + 324] = 64
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    if address(ext_call.return_data[0]) == stor3:
        if arg2:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _146 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _150 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _146 + (32 * _150) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _146 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _150:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _150 < 1:
                revert with 'NH{q', 17
            if _150 - 1 >= _150:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[(32 * _150 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64] + 36] = 64
            _258 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _258:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], 64, mem[mem[64] + 68 len (32 * _258) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _330 = mem[_326]
            require mem[_326] <= test266151307()
            require _326 + mem[_326] + 31 < _326 + return_data.size
            _334 = mem[_326 + mem[_326]]
            if mem[_326 + mem[_326]] > test266151307():
                revert with 'NH{q', 65
            if _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1 > test266151307() or floor32(mem[_326 + mem[_326]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _326 + ceil32(return_data.size) + floor32(mem[_326 + mem[_326]]) + 1
            mem[_326 + ceil32(return_data.size)] = _334
            require _330 + (32 * _334) + 32 <= return_data.size
            idx = 0
            s = _326 + _330 + 32
            t = _326 + ceil32(return_data.size) + 32
            while idx < _334:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _334 < 1:
                revert with 'NH{q', 17
            if _334 - 1 >= _334:
                revert with 'NH{q', 50
            if mem[(32 * _334 - 1) + _326 + ceil32(return_data.size) + 32] < arg1:
                return 0
            mem[mem[64]] = mem[(32 * _334 - 1) + _326 + ceil32(return_data.size) + 32] - arg1
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _145 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _149 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _145 + (32 * _149) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _145 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _149:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _149 < 1:
                revert with 'NH{q', 17
            if _149 - 1 >= _149:
                revert with 'NH{q', 50
            _249 = mem[(32 * _149 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            _257 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _257:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _249, 64, mem[mem[64] + 68 len (32 * _257) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _329 = mem[_325]
            require mem[_325] <= test266151307()
            require _325 + mem[_325] + 31 < _325 + return_data.size
            _333 = mem[_325 + mem[_325]]
            if mem[_325 + mem[_325]] > test266151307():
                revert with 'NH{q', 65
            if _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1 > test266151307() or floor32(mem[_325 + mem[_325]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _325 + ceil32(return_data.size) + floor32(mem[_325 + mem[_325]]) + 1
            mem[_325 + ceil32(return_data.size)] = _333
            require _329 + (32 * _333) + 32 <= return_data.size
            idx = 0
            s = _325 + _329 + 32
            t = _325 + ceil32(return_data.size) + 32
            while idx < _333:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _333 < 1:
                revert with 'NH{q', 17
            if _333 - 1 >= _333:
                revert with 'NH{q', 50
            if mem[(32 * _333 - 1) + _325 + ceil32(return_data.size) + 32] < arg1:
                return 0
            mem[mem[64]] = mem[(32 * _333 - 1) + _325 + ceil32(return_data.size) + 32] - arg1
    else:
        if not arg2:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _147 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _151 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _147 + (32 * _151) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _147 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _151:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _151 < 1:
                revert with 'NH{q', 17
            if _151 - 1 >= _151:
                revert with 'NH{q', 50
            _254 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[(32 * _151 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64] + 36] = 64
            _259 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _259:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _254 + (32 * _259) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _331 = mem[_327]
            require mem[_327] <= test266151307()
            require _327 + mem[_327] + 31 < _327 + return_data.size
            _335 = mem[_327 + mem[_327]]
            if mem[_327 + mem[_327]] > test266151307():
                revert with 'NH{q', 65
            if _327 + ceil32(return_data.size) + floor32(mem[_327 + mem[_327]]) + 1 > test266151307() or floor32(mem[_327 + mem[_327]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _327 + ceil32(return_data.size) + floor32(mem[_327 + mem[_327]]) + 1
            mem[_327 + ceil32(return_data.size)] = _335
            require _331 + (32 * _335) + 32 <= return_data.size
            idx = 0
            s = _327 + _331 + 32
            t = _327 + ceil32(return_data.size) + 32
            while idx < _335:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _335 < 1:
                revert with 'NH{q', 17
            if _335 - 1 >= _335:
                revert with 'NH{q', 50
            if mem[(32 * _335 - 1) + _327 + ceil32(return_data.size) + 32] < arg1:
                return 0
            mem[mem[64]] = mem[(32 * _335 - 1) + _327 + ceil32(return_data.size) + 32] - arg1
        else:
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _148 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _152 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _148 + (32 * _152) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _148 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _152:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _152 < 1:
                revert with 'NH{q', 17
            if _152 - 1 >= _152:
                revert with 'NH{q', 50
            _255 = mem[(32 * _152 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _255
            mem[mem[64] + 36] = 64
            _260 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _260:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _255, 64, mem[mem[64] + 68 len (32 * _260) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _328 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _332 = mem[_328]
            require mem[_328] <= test266151307()
            require _328 + mem[_328] + 31 < _328 + return_data.size
            _336 = mem[_328 + mem[_328]]
            if mem[_328 + mem[_328]] > test266151307():
                revert with 'NH{q', 65
            if _328 + ceil32(return_data.size) + floor32(mem[_328 + mem[_328]]) + 1 > test266151307() or floor32(mem[_328 + mem[_328]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _328 + ceil32(return_data.size) + floor32(mem[_328 + mem[_328]]) + 1
            mem[_328 + ceil32(return_data.size)] = _336
            require _332 + (32 * _336) + 32 <= return_data.size
            idx = 0
            s = _328 + _332 + 32
            t = _328 + ceil32(return_data.size) + 32
            while idx < _336:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _336 < 1:
                revert with 'NH{q', 17
            if _336 - 1 >= _336:
                revert with 'NH{q', 50
            if mem[(32 * _336 - 1) + _328 + ceil32(return_data.size) + 32] < arg1:
                return 0
            mem[mem[64]] = mem[(32 * _336 - 1) + _328 + ceil32(return_data.size) + 32] - arg1
    return memory
      from mem[64]
       len 32
}



}
