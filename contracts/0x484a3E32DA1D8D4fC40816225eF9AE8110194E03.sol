contract main {




// =====================  Runtime code  =====================


address stor0;
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
            _142 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _146 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _142 + (32 * _146) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _142 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _146:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _146 < 1:
                revert with 'NH{q', 17
            if _146 - 1 >= _146:
                revert with 'NH{q', 50
            _295 = mem[(32 * _146 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _302 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _302:
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
                args arg1, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _302) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _434 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _438 = mem[_434]
            require mem[_434] <= test266151307()
            require _434 + mem[_434] + 31 < _434 + return_data.size
            _442 = mem[_434 + mem[_434]]
            if mem[_434 + mem[_434]] > test266151307():
                revert with 'NH{q', 65
            if _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1 > test266151307() or floor32(mem[_434 + mem[_434]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _434 + ceil32(return_data.size) + floor32(mem[_434 + mem[_434]]) + 1
            mem[_434 + ceil32(return_data.size)] = _442
            require _438 + (32 * _442) + 32 <= return_data.size
            idx = 0
            s = _434 + _438 + 32
            t = _434 + ceil32(return_data.size) + 32
            while idx < _442:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _295
            mem[mem[64] + 36] = 64
            _554 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _554:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _295, 64, mem[mem[64] + 68 len (32 * _554) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _654 = mem[_650]
            require mem[_650] <= test266151307()
            require _650 + mem[_650] + 31 < _650 + return_data.size
            _658 = mem[_650 + mem[_650]]
            if mem[_650 + mem[_650]] > test266151307():
                revert with 'NH{q', 65
            if _650 + ceil32(return_data.size) + floor32(mem[_650 + mem[_650]]) + 1 > test266151307() or floor32(mem[_650 + mem[_650]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _650 + ceil32(return_data.size) + floor32(mem[_650 + mem[_650]]) + 1
            mem[_650 + ceil32(return_data.size)] = _658
            require _654 + (32 * _658) + 32 <= return_data.size
            idx = 0
            s = _650 + _654 + 32
            t = _650 + ceil32(return_data.size) + 32
            while idx < _658:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _295
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _734 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _734:
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
                args _295, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _734) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _794 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _798 = mem[_794]
            require mem[_794] <= test266151307()
            require _794 + mem[_794] + 31 < _794 + return_data.size
            _802 = mem[_794 + mem[_794]]
            if mem[_794 + mem[_794]] > test266151307():
                revert with 'NH{q', 65
            if _794 + ceil32(return_data.size) + floor32(mem[_794 + mem[_794]]) + 1 > test266151307() or floor32(mem[_794 + mem[_794]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _794 + ceil32(return_data.size) + floor32(mem[_794 + mem[_794]]) + 1
            mem[_794 + ceil32(return_data.size)] = _802
            require _798 + (32 * _802) + 32 <= return_data.size
            idx = 0
            s = _794 + _798 + 32
            t = _794 + ceil32(return_data.size) + 32
            while idx < _802:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_650 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_650 + ceil32(return_data.size)] - 1 >= mem[_650 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_650 + ceil32(return_data.size)] - 1) + _650 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_650 + ceil32(return_data.size)] - 1) + _650 + ceil32(return_data.size) + 32] - arg1
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
            _141 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _145 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _141 + (32 * _145) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _141 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _145:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _145 < 1:
                revert with 'NH{q', 17
            if _145 - 1 >= _145:
                revert with 'NH{q', 50
            _293 = mem[(32 * _145 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _301 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _301:
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
                args arg1, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _301) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _433 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _437 = mem[_433]
            require mem[_433] <= test266151307()
            require _433 + mem[_433] + 31 < _433 + return_data.size
            _441 = mem[_433 + mem[_433]]
            if mem[_433 + mem[_433]] > test266151307():
                revert with 'NH{q', 65
            if _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1 > test266151307() or floor32(mem[_433 + mem[_433]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _433 + ceil32(return_data.size) + floor32(mem[_433 + mem[_433]]) + 1
            mem[_433 + ceil32(return_data.size)] = _441
            require _437 + (32 * _441) + 32 <= return_data.size
            idx = 0
            s = _433 + _437 + 32
            t = _433 + ceil32(return_data.size) + 32
            while idx < _441:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _549 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _293
            mem[mem[64] + 36] = 64
            _553 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _553:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _549 + (32 * _553) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _649 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _653 = mem[_649]
            require mem[_649] <= test266151307()
            require _649 + mem[_649] + 31 < _649 + return_data.size
            _657 = mem[_649 + mem[_649]]
            if mem[_649 + mem[_649]] > test266151307():
                revert with 'NH{q', 65
            if _649 + ceil32(return_data.size) + floor32(mem[_649 + mem[_649]]) + 1 > test266151307() or floor32(mem[_649 + mem[_649]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _649 + ceil32(return_data.size) + floor32(mem[_649 + mem[_649]]) + 1
            mem[_649 + ceil32(return_data.size)] = _657
            require _653 + (32 * _657) + 32 <= return_data.size
            idx = 0
            s = _649 + _653 + 32
            t = _649 + ceil32(return_data.size) + 32
            while idx < _657:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _293
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _733 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _733:
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
                args _293, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _733) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _797 = mem[_793]
            require mem[_793] <= test266151307()
            require _793 + mem[_793] + 31 < _793 + return_data.size
            _801 = mem[_793 + mem[_793]]
            if mem[_793 + mem[_793]] > test266151307():
                revert with 'NH{q', 65
            if _793 + ceil32(return_data.size) + floor32(mem[_793 + mem[_793]]) + 1 > test266151307() or floor32(mem[_793 + mem[_793]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _793 + ceil32(return_data.size) + floor32(mem[_793 + mem[_793]]) + 1
            mem[_793 + ceil32(return_data.size)] = _801
            require _797 + (32 * _801) + 32 <= return_data.size
            idx = 0
            s = _793 + _797 + 32
            t = _793 + ceil32(return_data.size) + 32
            while idx < _801:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_649 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_649 + ceil32(return_data.size)] - 1 >= mem[_649 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_649 + ceil32(return_data.size)] - 1) + _649 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_649 + ceil32(return_data.size)] - 1) + _649 + ceil32(return_data.size) + 32] - arg1
    else:
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
            _144 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _148 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _144 + (32 * _148) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _144 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _148:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _148 < 1:
                revert with 'NH{q', 17
            if _148 - 1 >= _148:
                revert with 'NH{q', 50
            _299 = mem[(32 * _148 - 1) + (4 * ceil32(return_data.size)) + 320]
            _300 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _304 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _304:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_300 + 100] = stor0
            mem[_300 + 132] = 99999999999
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _300 + (32 * _304) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _436 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _440 = mem[_436]
            require mem[_436] <= test266151307()
            require _436 + mem[_436] + 31 < _436 + return_data.size
            _444 = mem[_436 + mem[_436]]
            if mem[_436 + mem[_436]] > test266151307():
                revert with 'NH{q', 65
            if _436 + ceil32(return_data.size) + floor32(mem[_436 + mem[_436]]) + 1 > test266151307() or floor32(mem[_436 + mem[_436]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _436 + ceil32(return_data.size) + floor32(mem[_436 + mem[_436]]) + 1
            mem[_436 + ceil32(return_data.size)] = _444
            require _440 + (32 * _444) + 32 <= return_data.size
            idx = 0
            s = _436 + _440 + 32
            t = _436 + ceil32(return_data.size) + 32
            while idx < _444:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _299
            mem[mem[64] + 36] = 64
            _556 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _556:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _299, 64, mem[mem[64] + 68 len (32 * _556) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _656 = mem[_652]
            require mem[_652] <= test266151307()
            require _652 + mem[_652] + 31 < _652 + return_data.size
            _660 = mem[_652 + mem[_652]]
            if mem[_652 + mem[_652]] > test266151307():
                revert with 'NH{q', 65
            if _652 + ceil32(return_data.size) + floor32(mem[_652 + mem[_652]]) + 1 > test266151307() or floor32(mem[_652 + mem[_652]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _652 + ceil32(return_data.size) + floor32(mem[_652 + mem[_652]]) + 1
            mem[_652 + ceil32(return_data.size)] = _660
            require _656 + (32 * _660) + 32 <= return_data.size
            idx = 0
            s = _652 + _656 + 32
            t = _652 + ceil32(return_data.size) + 32
            while idx < _660:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _299
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _736 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _736:
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
                args _299, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _736) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _796 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _800 = mem[_796]
            require mem[_796] <= test266151307()
            require _796 + mem[_796] + 31 < _796 + return_data.size
            _804 = mem[_796 + mem[_796]]
            if mem[_796 + mem[_796]] > test266151307():
                revert with 'NH{q', 65
            if _796 + ceil32(return_data.size) + floor32(mem[_796 + mem[_796]]) + 1 > test266151307() or floor32(mem[_796 + mem[_796]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _796 + ceil32(return_data.size) + floor32(mem[_796 + mem[_796]]) + 1
            mem[_796 + ceil32(return_data.size)] = _804
            require _800 + (32 * _804) + 32 <= return_data.size
            idx = 0
            s = _796 + _800 + 32
            t = _796 + ceil32(return_data.size) + 32
            while idx < _804:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_652 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_652 + ceil32(return_data.size)] - 1 >= mem[_652 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_652 + ceil32(return_data.size)] - 1) + _652 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_652 + ceil32(return_data.size)] - 1) + _652 + ceil32(return_data.size) + 32] - arg1
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
            _143 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32
            require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
            _147 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 289
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
            require _143 + (32 * _147) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _143 + 320
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _147:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _147 < 1:
                revert with 'NH{q', 17
            if _147 - 1 >= _147:
                revert with 'NH{q', 50
            _297 = mem[(32 * _147 - 1) + (4 * ceil32(return_data.size)) + 320]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _303 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _303:
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
                args arg1, 0, 160, stor0, 99999999999, mem[mem[64] + 164 len (32 * _303) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _435 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _439 = mem[_435]
            require mem[_435] <= test266151307()
            require _435 + mem[_435] + 31 < _435 + return_data.size
            _443 = mem[_435 + mem[_435]]
            if mem[_435 + mem[_435]] > test266151307():
                revert with 'NH{q', 65
            if _435 + ceil32(return_data.size) + floor32(mem[_435 + mem[_435]]) + 1 > test266151307() or floor32(mem[_435 + mem[_435]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _435 + ceil32(return_data.size) + floor32(mem[_435 + mem[_435]]) + 1
            mem[_435 + ceil32(return_data.size)] = _443
            require _439 + (32 * _443) + 32 <= return_data.size
            idx = 0
            s = _435 + _439 + 32
            t = _435 + ceil32(return_data.size) + 32
            while idx < _443:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _551 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _297
            mem[mem[64] + 36] = 64
            _555 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 100
            while idx < _555:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _551 + (32 * _555) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _651 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _655 = mem[_651]
            require mem[_651] <= test266151307()
            require _651 + mem[_651] + 31 < _651 + return_data.size
            _659 = mem[_651 + mem[_651]]
            if mem[_651 + mem[_651]] > test266151307():
                revert with 'NH{q', 65
            if _651 + ceil32(return_data.size) + floor32(mem[_651 + mem[_651]]) + 1 > test266151307() or floor32(mem[_651 + mem[_651]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _651 + ceil32(return_data.size) + floor32(mem[_651 + mem[_651]]) + 1
            mem[_651 + ceil32(return_data.size)] = _659
            require _655 + (32 * _659) + 32 <= return_data.size
            idx = 0
            s = _651 + _655 + 32
            t = _651 + ceil32(return_data.size) + 32
            while idx < _659:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _731 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _297
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _735 = mem[(2 * ceil32(return_data.size)) + 192]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 192]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = mem[64] + 196
            while idx < _735:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_731 + 100] = stor0
            mem[_731 + 132] = 99999999999
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _731 + (32 * _735) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _795 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _799 = mem[_795]
            require mem[_795] <= test266151307()
            require _795 + mem[_795] + 31 < _795 + return_data.size
            _803 = mem[_795 + mem[_795]]
            if mem[_795 + mem[_795]] > test266151307():
                revert with 'NH{q', 65
            if _795 + ceil32(return_data.size) + floor32(mem[_795 + mem[_795]]) + 1 > test266151307() or floor32(mem[_795 + mem[_795]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _795 + ceil32(return_data.size) + floor32(mem[_795 + mem[_795]]) + 1
            mem[_795 + ceil32(return_data.size)] = _803
            require _799 + (32 * _803) + 32 <= return_data.size
            idx = 0
            s = _795 + _799 + 32
            t = _795 + ceil32(return_data.size) + 32
            while idx < _803:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_651 + ceil32(return_data.size)] < 1:
                revert with 'NH{q', 17
            if mem[_651 + ceil32(return_data.size)] - 1 >= mem[_651 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[(32 * mem[_651 + ceil32(return_data.size)] - 1) + _651 + ceil32(return_data.size) + 32] < arg1:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[(32 * mem[_651 + ceil32(return_data.size)] - 1) + _651 + ceil32(return_data.size) + 32] - arg1
    return memory
      from mem[64]
       len 32
}



}
