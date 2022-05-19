contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_5e63547a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[64] = (98 * ('cd', 4).length) + 192
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                    require idx < ('cd', 4).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
                    require idx < ('cd', 4).length
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                _216 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = mem[96]
                _218 = mem[96]
                mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_216 + 32] = (32 * _218) + 128
                mem[(32 * _218) + _216 + 128] = mem[(32 * ('cd', 4).length) + 128]
                _425 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _218) + _216 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_216 + 64] = (32 * _425) + (32 * _218) + 160
                mem[(32 * _425) + (32 * _218) + _216 + 160] = mem[(64 * ('cd', 4).length) + 160]
                _489 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _425) + (32 * _218) + _216 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _489) + (32 * _425) + (32 * _218) + _216 + -mem[64] + 192
            mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _221 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _223 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_221 + 32] = (32 * _223) + 128
            mem[(32 * _223) + _221 + 128] = mem[(32 * ('cd', 4).length) + 128]
            _428 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _223) + _221 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_221 + 64] = (32 * _428) + (32 * _223) + 160
            mem[(32 * _428) + (32 * _223) + _221 + 160] = mem[(64 * ('cd', 4).length) + 160]
            _492 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _428) + (32 * _223) + _221 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _492) + (32 * _428) + (32 * _223) + _221 + -mem[64] + 192
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _226 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _228 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_226 + 32] = (32 * _228) + 128
            mem[(32 * _228) + _226 + 128] = mem[(32 * ('cd', 4).length) + 128]
            _431 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _228) + _226 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_226 + 64] = (32 * _431) + (32 * _228) + 160
            mem[(32 * _431) + (32 * _228) + _226 + 160] = mem[(64 * ('cd', 4).length) + 160]
            _495 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _431) + (32 * _228) + _226 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _495) + (32 * _431) + (32 * _228) + _226 + -mem[64] + 192
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _231 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _233 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_231 + 32] = (32 * _233) + 128
        mem[(32 * _233) + _231 + 128] = mem[(32 * ('cd', 4).length) + 128]
        _434 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _233) + _231 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_231 + 64] = (32 * _434) + (32 * _233) + 160
        mem[(32 * _434) + (32 * _233) + _231 + 160] = mem[(64 * ('cd', 4).length) + 160]
        _498 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _434) + (32 * _233) + _231 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _498) + (32 * _434) + (32 * _233) + _231 + -mem[64] + 192
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[(32 * idx) + 128] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
                require idx < ('cd', 4).length
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            _236 = mem[64]
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[96]
            _238 = mem[96]
            mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_236 + 32] = (32 * _238) + 128
            mem[(32 * _238) + _236 + 128] = mem[(32 * ('cd', 4).length) + 128]
            _437 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _238) + _236 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_236 + 64] = (32 * _437) + (32 * _238) + 160
            mem[(32 * _437) + (32 * _238) + _236 + 160] = mem[(64 * ('cd', 4).length) + 160]
            _501 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _437) + (32 * _238) + _236 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _501) + (32 * _437) + (32 * _238) + _236 + -mem[64] + 192
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _241 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _243 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_241 + 32] = (32 * _243) + 128
        mem[(32 * _243) + _241 + 128] = mem[(32 * ('cd', 4).length) + 128]
        _440 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _243) + _241 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_241 + 64] = (32 * _440) + (32 * _243) + 160
        mem[(32 * _440) + (32 * _243) + _241 + 160] = mem[(64 * ('cd', 4).length) + 160]
        _504 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _440) + (32 * _243) + _241 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _504) + (32 * _440) + (32 * _243) + _241 + -mem[64] + 192
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    mem[64] = (98 * ('cd', 4).length) + 192
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
            require idx < ('cd', 4).length
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        _246 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _248 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_246 + 32] = (32 * _248) + 128
        mem[(32 * _248) + _246 + 128] = mem[(32 * ('cd', 4).length) + 128]
        _443 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _248) + _246 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_246 + 64] = (32 * _443) + (32 * _248) + 160
        mem[(32 * _443) + (32 * _248) + _246 + 160] = mem[(64 * ('cd', 4).length) + 160]
        _507 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _443) + (32 * _248) + _246 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _507) + (32 * _443) + (32 * _248) + _246 + -mem[64] + 192
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(ext_call.return_data[0])
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = address(ext_call.return_data[0])
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    _251 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _253 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_251 + 32] = (32 * _253) + 128
    mem[(32 * _253) + _251 + 128] = mem[(32 * ('cd', 4).length) + 128]
    _446 = mem[(32 * ('cd', 4).length) + 128]
    mem[(32 * _253) + _251 + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    mem[_251 + 64] = (32 * _446) + (32 * _253) + 160
    mem[(32 * _446) + (32 * _253) + _251 + 160] = mem[(64 * ('cd', 4).length) + 160]
    _510 = mem[(64 * ('cd', 4).length) + 160]
    mem[(32 * _446) + (32 * _253) + _251 + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
    return memory
      from mem[64]
       len (32 * _510) + (32 * _446) + (32 * _253) + _251 + -mem[64] + 192
}



}
