contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_76d489d1(?) {
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

function sub_a95e4341(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require msg.sender == stor0
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
    if address(ext_call.return_data[0]) == stor3:
        if not arg2:
            mem[(2 * ceil32(return_data.size)) + 292] = stor4
            mem[(2 * ceil32(return_data.size)) + 324] = 999999999999999999999999
            require ext_code.size(stor3)
            call stor3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4, 999999999999999999999999
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 292] = stor5
            mem[(4 * ceil32(return_data.size)) + 324] = 999999999999999999999999
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = arg1
            mem[(4 * ceil32(return_data.size)) + 324] = 64
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[(4 * ceil32(return_data.size)) + 356 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _177 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
            _183 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(6 * ceil32(return_data.size)) + 288] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _177 + (32 * _183) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _177 + 320
            t = (6 * ceil32(return_data.size)) + 320
            while idx < _183:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _183 < 1:
                revert with 'NH{q', 17
            if _183 - 1 >= _183:
                revert with 'NH{q', 50
            _457 = mem[(32 * _183 - 1) + (6 * ceil32(return_data.size)) + 320]
            _458 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _469 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _469:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_458 + 100] = stor0
            mem[_458 + 132] = 99999999999
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _458 + (32 * _469) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _731 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _737 = mem[_731]
            require mem[_731] <= test266151307()
            require _731 + mem[_731] + 31 < _731 + return_data.size
            _743 = mem[_731 + mem[_731]]
            if mem[_731 + mem[_731]] > test266151307():
                revert with 'NH{q', 65
            if _731 + ceil32(return_data.size) + floor32(mem[_731 + mem[_731]]) + 1 > test266151307() or floor32(mem[_731 + mem[_731]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _731 + ceil32(return_data.size) + floor32(mem[_731 + mem[_731]]) + 1
            mem[_731 + ceil32(return_data.size)] = _743
            require _737 + (32 * _743) + 32 <= return_data.size
            idx = 0
            s = _731 + _737 + 32
            t = _731 + ceil32(return_data.size) + 32
            while idx < _743:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1021 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _457
            mem[mem[64] + 36] = 64
            _1035 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _1035:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1021 + (32 * _1035) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1311 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1321 = mem[_1311]
            require mem[_1311] <= test266151307()
            require _1311 + mem[_1311] + 31 < _1311 + return_data.size
            _1331 = mem[_1311 + mem[_1311]]
            if mem[_1311 + mem[_1311]] > test266151307():
                revert with 'NH{q', 65
            if _1311 + ceil32(return_data.size) + floor32(mem[_1311 + mem[_1311]]) + 1 > test266151307() or floor32(mem[_1311 + mem[_1311]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1311 + ceil32(return_data.size) + floor32(mem[_1311 + mem[_1311]]) + 1
            mem[_1311 + ceil32(return_data.size)] = _1331
            require _1321 + (32 * _1331) + 32 <= return_data.size
            idx = 0
            s = _1311 + _1321 + 32
            t = _1311 + ceil32(return_data.size) + 32
            while idx < _1331:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1511 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _457
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1521 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _1521:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1511 + 100] = stor0
            mem[_1511 + 132] = 99999999999
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1511 + (32 * _1521) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1671 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1681 = mem[_1671]
            require mem[_1671] <= test266151307()
            require _1671 + mem[_1671] + 31 < _1671 + return_data.size
            _1691 = mem[_1671 + mem[_1671]]
            if mem[_1671 + mem[_1671]] > test266151307():
                revert with 'NH{q', 65
            if _1671 + ceil32(return_data.size) + floor32(mem[_1671 + mem[_1671]]) + 1 > test266151307() or floor32(mem[_1671 + mem[_1671]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1671 + ceil32(return_data.size) + floor32(mem[_1671 + mem[_1671]]) + 1
            mem[_1671 + ceil32(return_data.size)] = _1691
            require _1681 + (32 * _1691) + 32 <= return_data.size
            idx = 0
            s = _1671 + _1681 + 32
            t = _1671 + ceil32(return_data.size) + 32
            while idx < _1691:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_1311 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_1311 + ceil32(return_data.size)] - 1 >= mem[_1311 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1311 + ceil32(return_data.size)] - 1) + _1311 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_1311 + ceil32(return_data.size)] - 1) + _1311 + ceil32(return_data.size) + 32] - arg1
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = stor2
            require ext_code.size(stor3)
            staticcall stor3.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor2
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > arg1:
                mem[(4 * ceil32(return_data.size)) + 292] = stor0
                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                mem[(4 * ceil32(return_data.size)) + 356] = arg1
                require ext_code.size(stor3)
                call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = arg1
                mem[(4 * ceil32(return_data.size)) + 324] = 64
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, 64, mem[(4 * ceil32(return_data.size)) + 356 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _178 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                _184 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
                mem[(6 * ceil32(return_data.size)) + 288] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                require _178 + (32 * _184) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _178 + 320
                t = (6 * ceil32(return_data.size)) + 320
                while idx < _184:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _184 < 1:
                    revert with 'NH{q', 17
                if _184 - 1 >= _184:
                    revert with 'NH{q', 50
                _459 = mem[(32 * _184 - 1) + (6 * ceil32(return_data.size)) + 320]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _470 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < _470:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 99999999999
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), 99999999999, mem[mem[64] + 164 len (32 * _470) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _738 = mem[_732]
                require mem[_732] <= test266151307()
                require _732 + mem[_732] + 31 < _732 + return_data.size
                _744 = mem[_732 + mem[_732]]
                if mem[_732 + mem[_732]] > test266151307():
                    revert with 'NH{q', 65
                if _732 + ceil32(return_data.size) + floor32(mem[_732 + mem[_732]]) + 1 > test266151307() or floor32(mem[_732 + mem[_732]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _732 + ceil32(return_data.size) + floor32(mem[_732 + mem[_732]]) + 1
                mem[_732 + ceil32(return_data.size)] = _744
                require _738 + (32 * _744) + 32 <= return_data.size
                idx = 0
                s = _732 + _738 + 32
                t = _732 + ceil32(return_data.size) + 32
                while idx < _744:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= mem[(2 * ceil32(return_data.size)) + 192]:
                    revert with 'NH{q', 50
                _1027 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor1
                require ext_code.size(address(_1027))
                staticcall address(_1027).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1046] == mem[_1046]
                if mem[_1046] > _459:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _459
                    mem[mem[64] + 36] = 64
                    _1069 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1069:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _459, 64, mem[mem[64] + 68 len (32 * _1069) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1312 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1322 = mem[_1312]
                    require mem[_1312] <= test266151307()
                    require _1312 + mem[_1312] + 31 < _1312 + return_data.size
                    _1332 = mem[_1312 + mem[_1312]]
                    if mem[_1312 + mem[_1312]] > test266151307():
                        revert with 'NH{q', 65
                    if _1312 + ceil32(return_data.size) + floor32(mem[_1312 + mem[_1312]]) + 1 > test266151307() or floor32(mem[_1312 + mem[_1312]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1312 + ceil32(return_data.size) + floor32(mem[_1312 + mem[_1312]]) + 1
                    mem[_1312 + ceil32(return_data.size)] = _1332
                    require _1322 + (32 * _1332) + 32 <= return_data.size
                    idx = 0
                    s = _1312 + _1322 + 32
                    t = _1312 + ceil32(return_data.size) + 32
                    while idx < _1332:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1512 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _459
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1522 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1522:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1512 + 100] = stor0
                    mem[_1512 + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1512 + (32 * _1522) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1672 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1682 = mem[_1672]
                    require mem[_1672] <= test266151307()
                    require _1672 + mem[_1672] + 31 < _1672 + return_data.size
                    _1692 = mem[_1672 + mem[_1672]]
                    if mem[_1672 + mem[_1672]] > test266151307():
                        revert with 'NH{q', 65
                    if _1672 + ceil32(return_data.size) + floor32(mem[_1672 + mem[_1672]]) + 1 > test266151307() or floor32(mem[_1672 + mem[_1672]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1672 + ceil32(return_data.size) + floor32(mem[_1672 + mem[_1672]]) + 1
                    mem[_1672 + ceil32(return_data.size)] = _1692
                    require _1682 + (32 * _1692) + 32 <= return_data.size
                    idx = 0
                    s = _1672 + _1682 + 32
                    t = _1672 + ceil32(return_data.size) + 32
                    while idx < _1692:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1312 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1312 + ceil32(return_data.size)] - 1 >= mem[_1312 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1312 + ceil32(return_data.size)] - 1) + _1312 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1312 + ceil32(return_data.size)] - 1) + _1312 + ceil32(return_data.size) + 32] - arg1
                else:
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _459
                    require ext_code.size(address(_1027))
                    call address(_1027).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor1, _459
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1081] == bool(mem[_1081])
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _459
                    mem[mem[64] + 36] = 64
                    _1120 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1120:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _459, 64, mem[mem[64] + 68 len (32 * _1120) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1313 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1323 = mem[_1313]
                    require mem[_1313] <= test266151307()
                    require _1313 + mem[_1313] + 31 < _1313 + return_data.size
                    _1333 = mem[_1313 + mem[_1313]]
                    if mem[_1313 + mem[_1313]] > test266151307():
                        revert with 'NH{q', 65
                    if _1313 + ceil32(return_data.size) + floor32(mem[_1313 + mem[_1313]]) + 1 > test266151307() or floor32(mem[_1313 + mem[_1313]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1313 + ceil32(return_data.size) + floor32(mem[_1313 + mem[_1313]]) + 1
                    mem[_1313 + ceil32(return_data.size)] = _1333
                    require _1323 + (32 * _1333) + 32 <= return_data.size
                    idx = 0
                    s = _1313 + _1323 + 32
                    t = _1313 + ceil32(return_data.size) + 32
                    while idx < _1333:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1513 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _459
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1523 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1523:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1513 + 100] = stor0
                    mem[_1513 + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1513 + (32 * _1523) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1673 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1683 = mem[_1673]
                    require mem[_1673] <= test266151307()
                    require _1673 + mem[_1673] + 31 < _1673 + return_data.size
                    _1693 = mem[_1673 + mem[_1673]]
                    if mem[_1673 + mem[_1673]] > test266151307():
                        revert with 'NH{q', 65
                    if _1673 + ceil32(return_data.size) + floor32(mem[_1673 + mem[_1673]]) + 1 > test266151307() or floor32(mem[_1673 + mem[_1673]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1673 + ceil32(return_data.size) + floor32(mem[_1673 + mem[_1673]]) + 1
                    mem[_1673 + ceil32(return_data.size)] = _1693
                    require _1683 + (32 * _1693) + 32 <= return_data.size
                    idx = 0
                    s = _1673 + _1683 + 32
                    t = _1673 + ceil32(return_data.size) + 32
                    while idx < _1693:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1313 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1313 + ceil32(return_data.size)] - 1 >= mem[_1313 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1313 + ceil32(return_data.size)] - 1) + _1313 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1313 + ceil32(return_data.size)] - 1) + _1313 + ceil32(return_data.size) + 32] - arg1
            else:
                mem[(4 * ceil32(return_data.size)) + 292] = stor2
                mem[(4 * ceil32(return_data.size)) + 324] = arg1
                require ext_code.size(stor3)
                call stor3.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 292] = stor0
                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                mem[(4 * ceil32(return_data.size)) + 356] = arg1
                require ext_code.size(stor3)
                call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (7 * ceil32(return_data.size)) + 96]
                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = arg1
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _179 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (8 * ceil32(return_data.size)) + return_data.size + 288
                _185 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
                mem[(10 * ceil32(return_data.size)) + 288] = _185
                require _179 + (32 * _185) + 32 <= return_data.size
                idx = 0
                s = (8 * ceil32(return_data.size)) + _179 + 320
                t = (10 * ceil32(return_data.size)) + 320
                while idx < _185:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _185 < 1:
                    revert with 'NH{q', 17
                if _185 - 1 >= _185:
                    revert with 'NH{q', 50
                _461 = mem[(32 * _185 - 1) + (10 * ceil32(return_data.size)) + 320]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _471 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < _471:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 99999999999
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), 99999999999, mem[mem[64] + 164 len (32 * _471) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _739 = mem[_733]
                require mem[_733] <= test266151307()
                require _733 + mem[_733] + 31 < _733 + return_data.size
                _745 = mem[_733 + mem[_733]]
                if mem[_733 + mem[_733]] > test266151307():
                    revert with 'NH{q', 65
                if _733 + ceil32(return_data.size) + floor32(mem[_733 + mem[_733]]) + 1 > test266151307() or floor32(mem[_733 + mem[_733]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _733 + ceil32(return_data.size) + floor32(mem[_733 + mem[_733]]) + 1
                mem[_733 + ceil32(return_data.size)] = _745
                require _739 + (32 * _745) + 32 <= return_data.size
                idx = 0
                s = _733 + _739 + 32
                t = _733 + ceil32(return_data.size) + 32
                while idx < _745:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= mem[(2 * ceil32(return_data.size)) + 192]:
                    revert with 'NH{q', 50
                _1028 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor1
                require ext_code.size(address(_1028))
                staticcall address(_1028).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1047 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1047] == mem[_1047]
                if mem[_1047] > _461:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _461
                    mem[mem[64] + 36] = 64
                    _1070 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1070:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _461, 64, mem[mem[64] + 68 len (32 * _1070) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1314 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1324 = mem[_1314]
                    require mem[_1314] <= test266151307()
                    require _1314 + mem[_1314] + 31 < _1314 + return_data.size
                    _1334 = mem[_1314 + mem[_1314]]
                    if mem[_1314 + mem[_1314]] > test266151307():
                        revert with 'NH{q', 65
                    if _1314 + ceil32(return_data.size) + floor32(mem[_1314 + mem[_1314]]) + 1 > test266151307() or floor32(mem[_1314 + mem[_1314]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1314 + ceil32(return_data.size) + floor32(mem[_1314 + mem[_1314]]) + 1
                    mem[_1314 + ceil32(return_data.size)] = _1334
                    require _1324 + (32 * _1334) + 32 <= return_data.size
                    idx = 0
                    s = _1314 + _1324 + 32
                    t = _1314 + ceil32(return_data.size) + 32
                    while idx < _1334:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1514 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _461
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1524 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1524:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1514 + 100] = stor0
                    mem[_1514 + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1514 + (32 * _1524) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1674 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1684 = mem[_1674]
                    require mem[_1674] <= test266151307()
                    require _1674 + mem[_1674] + 31 < _1674 + return_data.size
                    _1694 = mem[_1674 + mem[_1674]]
                    if mem[_1674 + mem[_1674]] > test266151307():
                        revert with 'NH{q', 65
                    if _1674 + ceil32(return_data.size) + floor32(mem[_1674 + mem[_1674]]) + 1 > test266151307() or floor32(mem[_1674 + mem[_1674]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1674 + ceil32(return_data.size) + floor32(mem[_1674 + mem[_1674]]) + 1
                    mem[_1674 + ceil32(return_data.size)] = _1694
                    require _1684 + (32 * _1694) + 32 <= return_data.size
                    idx = 0
                    s = _1674 + _1684 + 32
                    t = _1674 + ceil32(return_data.size) + 32
                    while idx < _1694:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1314 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1314 + ceil32(return_data.size)] - 1 >= mem[_1314 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1314 + ceil32(return_data.size)] - 1) + _1314 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1314 + ceil32(return_data.size)] - 1) + _1314 + ceil32(return_data.size) + 32] - arg1
                else:
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _461
                    require ext_code.size(address(_1028))
                    call address(_1028).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor1, _461
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1082 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1082] == bool(mem[_1082])
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _461
                    mem[mem[64] + 36] = 64
                    _1121 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1121:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _461, 64, mem[mem[64] + 68 len (32 * _1121) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1315 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1325 = mem[_1315]
                    require mem[_1315] <= test266151307()
                    require _1315 + mem[_1315] + 31 < _1315 + return_data.size
                    _1335 = mem[_1315 + mem[_1315]]
                    if mem[_1315 + mem[_1315]] > test266151307():
                        revert with 'NH{q', 65
                    if _1315 + ceil32(return_data.size) + floor32(mem[_1315 + mem[_1315]]) + 1 > test266151307() or floor32(mem[_1315 + mem[_1315]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1315 + ceil32(return_data.size) + floor32(mem[_1315 + mem[_1315]]) + 1
                    mem[_1315 + ceil32(return_data.size)] = _1335
                    require _1325 + (32 * _1335) + 32 <= return_data.size
                    idx = 0
                    s = _1315 + _1325 + 32
                    t = _1315 + ceil32(return_data.size) + 32
                    while idx < _1335:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _461
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1525 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1525:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _461, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _1525) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1675 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1685 = mem[_1675]
                    require mem[_1675] <= test266151307()
                    require _1675 + mem[_1675] + 31 < _1675 + return_data.size
                    _1695 = mem[_1675 + mem[_1675]]
                    if mem[_1675 + mem[_1675]] > test266151307():
                        revert with 'NH{q', 65
                    if _1675 + ceil32(return_data.size) + floor32(mem[_1675 + mem[_1675]]) + 1 > test266151307() or floor32(mem[_1675 + mem[_1675]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1675 + ceil32(return_data.size) + floor32(mem[_1675 + mem[_1675]]) + 1
                    mem[_1675 + ceil32(return_data.size)] = _1695
                    require _1685 + (32 * _1695) + 32 <= return_data.size
                    idx = 0
                    s = _1675 + _1685 + 32
                    t = _1675 + ceil32(return_data.size) + 32
                    while idx < _1695:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1315 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1315 + ceil32(return_data.size)] - 1 >= mem[_1315 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1315 + ceil32(return_data.size)] - 1) + _1315 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1315 + ceil32(return_data.size)] - 1) + _1315 + ceil32(return_data.size) + 32] - arg1
    else:
        if not arg2:
            mem[(2 * ceil32(return_data.size)) + 292] = stor4
            mem[(2 * ceil32(return_data.size)) + 324] = 999999999999999999999999
            require ext_code.size(stor3)
            call stor3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4, 999999999999999999999999
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 292] = stor5
            mem[(4 * ceil32(return_data.size)) + 324] = 999999999999999999999999
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = arg1
            mem[(4 * ceil32(return_data.size)) + 324] = 64
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg1, 64, mem[(4 * ceil32(return_data.size)) + 356 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            _180 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
            _186 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(6 * ceil32(return_data.size)) + 288] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _180 + (32 * _186) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _180 + 320
            t = (6 * ceil32(return_data.size)) + 320
            while idx < _186:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _186 < 1:
                revert with 'NH{q', 17
            if _186 - 1 >= _186:
                revert with 'NH{q', 50
            _463 = mem[(32 * _186 - 1) + (6 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _472 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _472:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = stor0
            mem[mem[64] + 132] = 99999999999
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _472) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _734 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _740 = mem[_734]
            require mem[_734] <= test266151307()
            require _734 + mem[_734] + 31 < _734 + return_data.size
            _746 = mem[_734 + mem[_734]]
            if mem[_734 + mem[_734]] > test266151307():
                revert with 'NH{q', 65
            if _734 + ceil32(return_data.size) + floor32(mem[_734 + mem[_734]]) + 1 > test266151307() or floor32(mem[_734 + mem[_734]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _734 + ceil32(return_data.size) + floor32(mem[_734 + mem[_734]]) + 1
            mem[_734 + ceil32(return_data.size)] = _746
            require _740 + (32 * _746) + 32 <= return_data.size
            idx = 0
            s = _734 + _740 + 32
            t = _734 + ceil32(return_data.size) + 32
            while idx < _746:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _463
            mem[mem[64] + 36] = 64
            _1036 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _1036:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _463, 64, mem[mem[64] + 68 len (32 * _1036) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1316 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1326 = mem[_1316]
            require mem[_1316] <= test266151307()
            require _1316 + mem[_1316] + 31 < _1316 + return_data.size
            _1336 = mem[_1316 + mem[_1316]]
            if mem[_1316 + mem[_1316]] > test266151307():
                revert with 'NH{q', 65
            if _1316 + ceil32(return_data.size) + floor32(mem[_1316 + mem[_1316]]) + 1 > test266151307() or floor32(mem[_1316 + mem[_1316]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1316 + ceil32(return_data.size) + floor32(mem[_1316 + mem[_1316]]) + 1
            mem[_1316 + ceil32(return_data.size)] = _1336
            require _1326 + (32 * _1336) + 32 <= return_data.size
            idx = 0
            s = _1316 + _1326 + 32
            t = _1316 + ceil32(return_data.size) + 32
            while idx < _1336:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _463
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1526 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _1526:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = stor0
            mem[mem[64] + 132] = 99999999999
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _463, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _1526) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1676 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1686 = mem[_1676]
            require mem[_1676] <= test266151307()
            require _1676 + mem[_1676] + 31 < _1676 + return_data.size
            _1696 = mem[_1676 + mem[_1676]]
            if mem[_1676 + mem[_1676]] > test266151307():
                revert with 'NH{q', 65
            if _1676 + ceil32(return_data.size) + floor32(mem[_1676 + mem[_1676]]) + 1 > test266151307() or floor32(mem[_1676 + mem[_1676]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1676 + ceil32(return_data.size) + floor32(mem[_1676 + mem[_1676]]) + 1
            mem[_1676 + ceil32(return_data.size)] = _1696
            require _1686 + (32 * _1696) + 32 <= return_data.size
            idx = 0
            s = _1676 + _1686 + 32
            t = _1676 + ceil32(return_data.size) + 32
            while idx < _1696:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_1316 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_1316 + ceil32(return_data.size)] - 1 >= mem[_1316 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_1316 + ceil32(return_data.size)] - 1) + _1316 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_1316 + ceil32(return_data.size)] - 1) + _1316 + ceil32(return_data.size) + 32] - arg1
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = stor2
            require ext_code.size(stor3)
            staticcall stor3.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor2
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] > arg1:
                mem[(4 * ceil32(return_data.size)) + 292] = stor0
                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                mem[(4 * ceil32(return_data.size)) + 356] = arg1
                require ext_code.size(stor3)
                call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = arg1
                mem[(4 * ceil32(return_data.size)) + 324] = 64
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, 64, mem[(4 * ceil32(return_data.size)) + 356 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _181 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
                _187 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
                mem[(6 * ceil32(return_data.size)) + 288] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                require _181 + (32 * _187) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _181 + 320
                t = (6 * ceil32(return_data.size)) + 320
                while idx < _187:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _187 < 1:
                    revert with 'NH{q', 17
                if _187 - 1 >= _187:
                    revert with 'NH{q', 50
                _465 = mem[(32 * _187 - 1) + (6 * ceil32(return_data.size)) + 320]
                _466 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _473 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < _473:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_466 + 100] = this.address
                mem[_466 + 132] = 99999999999
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _466 + (32 * _473) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _735 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _741 = mem[_735]
                require mem[_735] <= test266151307()
                require _735 + mem[_735] + 31 < _735 + return_data.size
                _747 = mem[_735 + mem[_735]]
                if mem[_735 + mem[_735]] > test266151307():
                    revert with 'NH{q', 65
                if _735 + ceil32(return_data.size) + floor32(mem[_735 + mem[_735]]) + 1 > test266151307() or floor32(mem[_735 + mem[_735]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _735 + ceil32(return_data.size) + floor32(mem[_735 + mem[_735]]) + 1
                mem[_735 + ceil32(return_data.size)] = _747
                require _741 + (32 * _747) + 32 <= return_data.size
                idx = 0
                s = _735 + _741 + 32
                t = _735 + ceil32(return_data.size) + 32
                while idx < _747:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= mem[(2 * ceil32(return_data.size)) + 192]:
                    revert with 'NH{q', 50
                _1029 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor1
                require ext_code.size(address(_1029))
                staticcall address(_1029).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1049 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1049] == mem[_1049]
                if mem[_1049] > _465:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _465
                    mem[mem[64] + 36] = 64
                    _1071 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1071:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _465, 64, mem[mem[64] + 68 len (32 * _1071) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1327 = mem[_1317]
                    require mem[_1317] <= test266151307()
                    require _1317 + mem[_1317] + 31 < _1317 + return_data.size
                    _1337 = mem[_1317 + mem[_1317]]
                    if mem[_1317 + mem[_1317]] > test266151307():
                        revert with 'NH{q', 65
                    if _1317 + ceil32(return_data.size) + floor32(mem[_1317 + mem[_1317]]) + 1 > test266151307() or floor32(mem[_1317 + mem[_1317]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1317 + ceil32(return_data.size) + floor32(mem[_1317 + mem[_1317]]) + 1
                    mem[_1317 + ceil32(return_data.size)] = _1337
                    require _1327 + (32 * _1337) + 32 <= return_data.size
                    idx = 0
                    s = _1317 + _1327 + 32
                    t = _1317 + ceil32(return_data.size) + 32
                    while idx < _1337:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _465
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1527 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1527:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _465, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _1527) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1677 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1687 = mem[_1677]
                    require mem[_1677] <= test266151307()
                    require _1677 + mem[_1677] + 31 < _1677 + return_data.size
                    _1697 = mem[_1677 + mem[_1677]]
                    if mem[_1677 + mem[_1677]] > test266151307():
                        revert with 'NH{q', 65
                    if _1677 + ceil32(return_data.size) + floor32(mem[_1677 + mem[_1677]]) + 1 > test266151307() or floor32(mem[_1677 + mem[_1677]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1677 + ceil32(return_data.size) + floor32(mem[_1677 + mem[_1677]]) + 1
                    mem[_1677 + ceil32(return_data.size)] = _1697
                    require _1687 + (32 * _1697) + 32 <= return_data.size
                    idx = 0
                    s = _1677 + _1687 + 32
                    t = _1677 + ceil32(return_data.size) + 32
                    while idx < _1697:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1317 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1317 + ceil32(return_data.size)] - 1 >= mem[_1317 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1317 + ceil32(return_data.size)] - 1) + _1317 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1317 + ceil32(return_data.size)] - 1) + _1317 + ceil32(return_data.size) + 32] - arg1
                else:
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _465
                    require ext_code.size(address(_1029))
                    call address(_1029).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor1, _465
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1083 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1083] == bool(mem[_1083])
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _465
                    mem[mem[64] + 36] = 64
                    _1123 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1123:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _465, 64, mem[mem[64] + 68 len (32 * _1123) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1318 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1328 = mem[_1318]
                    require mem[_1318] <= test266151307()
                    require _1318 + mem[_1318] + 31 < _1318 + return_data.size
                    _1338 = mem[_1318 + mem[_1318]]
                    if mem[_1318 + mem[_1318]] > test266151307():
                        revert with 'NH{q', 65
                    if _1318 + ceil32(return_data.size) + floor32(mem[_1318 + mem[_1318]]) + 1 > test266151307() or floor32(mem[_1318 + mem[_1318]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1318 + ceil32(return_data.size) + floor32(mem[_1318 + mem[_1318]]) + 1
                    mem[_1318 + ceil32(return_data.size)] = _1338
                    require _1328 + (32 * _1338) + 32 <= return_data.size
                    idx = 0
                    s = _1318 + _1328 + 32
                    t = _1318 + ceil32(return_data.size) + 32
                    while idx < _1338:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _465
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1528 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1528:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = stor0
                    mem[mem[64] + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _465, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _1528) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1678 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1688 = mem[_1678]
                    require mem[_1678] <= test266151307()
                    require _1678 + mem[_1678] + 31 < _1678 + return_data.size
                    _1698 = mem[_1678 + mem[_1678]]
                    if mem[_1678 + mem[_1678]] > test266151307():
                        revert with 'NH{q', 65
                    if _1678 + ceil32(return_data.size) + floor32(mem[_1678 + mem[_1678]]) + 1 > test266151307() or floor32(mem[_1678 + mem[_1678]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1678 + ceil32(return_data.size) + floor32(mem[_1678 + mem[_1678]]) + 1
                    mem[_1678 + ceil32(return_data.size)] = _1698
                    require _1688 + (32 * _1698) + 32 <= return_data.size
                    idx = 0
                    s = _1678 + _1688 + 32
                    t = _1678 + ceil32(return_data.size) + 32
                    while idx < _1698:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1318 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1318 + ceil32(return_data.size)] - 1 >= mem[_1318 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1318 + ceil32(return_data.size)] - 1) + _1318 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1318 + ceil32(return_data.size)] - 1) + _1318 + ceil32(return_data.size) + 32] - arg1
            else:
                mem[(4 * ceil32(return_data.size)) + 292] = stor2
                mem[(4 * ceil32(return_data.size)) + 324] = arg1
                require ext_code.size(stor3)
                call stor3.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 292] = stor0
                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                mem[(4 * ceil32(return_data.size)) + 356] = arg1
                require ext_code.size(stor3)
                call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 292 len (7 * ceil32(return_data.size)) + 96]
                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 292] = arg1
                mem[(8 * ceil32(return_data.size)) + 324] = 64
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (8 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 388 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _182 = mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
                require mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (8 * ceil32(return_data.size)) + return_data.size + 288
                _188 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                    revert with 'NH{q', 65
                if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
                mem[(10 * ceil32(return_data.size)) + 288] = _188
                require _182 + (32 * _188) + 32 <= return_data.size
                idx = 0
                s = (8 * ceil32(return_data.size)) + _182 + 320
                t = (10 * ceil32(return_data.size)) + 320
                while idx < _188:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _188 < 1:
                    revert with 'NH{q', 17
                if _188 - 1 >= _188:
                    revert with 'NH{q', 50
                _467 = mem[(32 * _188 - 1) + (10 * ceil32(return_data.size)) + 320]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _474 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < _474:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = 99999999999
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), 99999999999, mem[mem[64] + 164 len (32 * _474) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _742 = mem[_736]
                require mem[_736] <= test266151307()
                require _736 + mem[_736] + 31 < _736 + return_data.size
                _748 = mem[_736 + mem[_736]]
                if mem[_736 + mem[_736]] > test266151307():
                    revert with 'NH{q', 65
                if _736 + ceil32(return_data.size) + floor32(mem[_736 + mem[_736]]) + 1 > test266151307() or floor32(mem[_736 + mem[_736]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _736 + ceil32(return_data.size) + floor32(mem[_736 + mem[_736]]) + 1
                mem[_736 + ceil32(return_data.size)] = _748
                require _742 + (32 * _748) + 32 <= return_data.size
                idx = 0
                s = _736 + _742 + 32
                t = _736 + ceil32(return_data.size) + 32
                while idx < _748:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= mem[(2 * ceil32(return_data.size)) + 192]:
                    revert with 'NH{q', 50
                _1030 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor1
                require ext_code.size(address(_1030))
                staticcall address(_1030).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1050 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1050] == mem[_1050]
                if mem[_1050] > _467:
                    _1068 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _467
                    mem[mem[64] + 36] = 64
                    _1072 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1072:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1068 + (32 * _1072) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1329 = mem[_1319]
                    require mem[_1319] <= test266151307()
                    require _1319 + mem[_1319] + 31 < _1319 + return_data.size
                    _1339 = mem[_1319 + mem[_1319]]
                    if mem[_1319 + mem[_1319]] > test266151307():
                        revert with 'NH{q', 65
                    if _1319 + ceil32(return_data.size) + floor32(mem[_1319 + mem[_1319]]) + 1 > test266151307() or floor32(mem[_1319 + mem[_1319]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1319 + ceil32(return_data.size) + floor32(mem[_1319 + mem[_1319]]) + 1
                    mem[_1319 + ceil32(return_data.size)] = _1339
                    require _1329 + (32 * _1339) + 32 <= return_data.size
                    idx = 0
                    s = _1319 + _1329 + 32
                    t = _1319 + ceil32(return_data.size) + 32
                    while idx < _1339:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1519 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _467
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1529 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1529:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1519 + 100] = stor0
                    mem[_1519 + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1519 + (32 * _1529) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1679 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1689 = mem[_1679]
                    require mem[_1679] <= test266151307()
                    require _1679 + mem[_1679] + 31 < _1679 + return_data.size
                    _1699 = mem[_1679 + mem[_1679]]
                    if mem[_1679 + mem[_1679]] > test266151307():
                        revert with 'NH{q', 65
                    if _1679 + ceil32(return_data.size) + floor32(mem[_1679 + mem[_1679]]) + 1 > test266151307() or floor32(mem[_1679 + mem[_1679]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1679 + ceil32(return_data.size) + floor32(mem[_1679 + mem[_1679]]) + 1
                    mem[_1679 + ceil32(return_data.size)] = _1699
                    require _1689 + (32 * _1699) + 32 <= return_data.size
                    idx = 0
                    s = _1679 + _1689 + 32
                    t = _1679 + ceil32(return_data.size) + 32
                    while idx < _1699:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1319 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1319 + ceil32(return_data.size)] - 1 >= mem[_1319 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1319 + ceil32(return_data.size)] - 1) + _1319 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1319 + ceil32(return_data.size)] - 1) + _1319 + ceil32(return_data.size) + 32] - arg1
                else:
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _467
                    require ext_code.size(address(_1030))
                    call address(_1030).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor1, _467
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1084] == bool(mem[_1084])
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _467
                    mem[mem[64] + 36] = 64
                    _1124 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 100
                    while idx < _1124:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor4)
                    staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _467, 64, mem[mem[64] + 68 len (32 * _1124) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1320 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1330 = mem[_1320]
                    require mem[_1320] <= test266151307()
                    require _1320 + mem[_1320] + 31 < _1320 + return_data.size
                    _1340 = mem[_1320 + mem[_1320]]
                    if mem[_1320 + mem[_1320]] > test266151307():
                        revert with 'NH{q', 65
                    if _1320 + ceil32(return_data.size) + floor32(mem[_1320 + mem[_1320]]) + 1 > test266151307() or floor32(mem[_1320 + mem[_1320]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1320 + ceil32(return_data.size) + floor32(mem[_1320 + mem[_1320]]) + 1
                    mem[_1320 + ceil32(return_data.size)] = _1340
                    require _1330 + (32 * _1340) + 32 <= return_data.size
                    idx = 0
                    s = _1320 + _1330 + 32
                    t = _1320 + ceil32(return_data.size) + 32
                    while idx < _1340:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1520 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _467
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1530 = mem[(2 * ceil32(return_data.size)) + 192]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 224
                    t = mem[64] + 196
                    while idx < _1530:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1520 + 100] = stor0
                    mem[_1520 + 132] = 99999999999
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1520 + (32 * _1530) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1680 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1690 = mem[_1680]
                    require mem[_1680] <= test266151307()
                    require _1680 + mem[_1680] + 31 < _1680 + return_data.size
                    _1700 = mem[_1680 + mem[_1680]]
                    if mem[_1680 + mem[_1680]] > test266151307():
                        revert with 'NH{q', 65
                    if _1680 + ceil32(return_data.size) + floor32(mem[_1680 + mem[_1680]]) + 1 > test266151307() or floor32(mem[_1680 + mem[_1680]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1680 + ceil32(return_data.size) + floor32(mem[_1680 + mem[_1680]]) + 1
                    mem[_1680 + ceil32(return_data.size)] = _1700
                    require _1690 + (32 * _1700) + 32 <= return_data.size
                    idx = 0
                    s = _1680 + _1690 + 32
                    t = _1680 + ceil32(return_data.size) + 32
                    while idx < _1700:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if mem[_1320 + ceil32(return_data.size)] < 1:
                        revert with 'NH{q', 17
                    if mem[_1320 + ceil32(return_data.size)] - 1 >= mem[_1320 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[_1320 + ceil32(return_data.size)] - 1) + _1320 + ceil32(return_data.size) + 32] < arg1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = mem[(32 * mem[_1320 + ceil32(return_data.size)] - 1) + _1320 + ceil32(return_data.size) + 32] - arg1
    return memory
      from mem[64]
       len 32
}



}
