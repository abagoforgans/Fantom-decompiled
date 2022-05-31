contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'pls no hack ser'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'too much ser'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_be025610(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 36).length + 1 <= test266151307()
    mem[96] = ('cd', 36).length + 1
    mem[64] = (32 * ('cd', 36).length + 1) + 128
    if not ('cd', 36).length + 1:
        require 0 < ('cd', 36).length + 1
        mem[128] = address(cd[4])
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1220] == mem[_1220 + 12 len 20]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != mem[_1220 + 12 len 20]:
                require idx + 1 < mem[96]
                mem[(32 * idx + 1) + 128] = mem[_1220 + 12 len 20]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1311] == mem[_1311 + 12 len 20]
                require idx + 1 < mem[96]
                mem[(32 * idx + 1) + 128] = mem[_1311 + 12 len 20]
            idx = idx + 1
            continue 
        require mem[96] - 1 < mem[96]
        if address(cd[4]) != mem[(32 * mem[96] - 1) + 140 len 20]:
            revert with 0, 'ip'
        _1190 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        mem[_1190] = ('cd', 36).length
        mem[_1190 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[_1190 + (32 * ('cd', 36).length) + 32] = 0
        _1191 = mem[64]
        mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
        mem[_1191] = ('cd', 68).length
        mem[_1191 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_1191 + (32 * ('cd', 68).length) + 32] = 0
        if mem[96] < 2:
            revert with 0, 'INVALID_PATH'
        _1198 = mem[96]
        require mem[96] <= test266151307()
        _1204 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _1198) + 32
        if not _1198:
            require 0 < mem[_1204]
            mem[_1204 + 32] = cd[100]
            _2364 = mem[96]
            idx = 0
            while idx < _2364 - 1:
                require idx < mem[_1190]
                require idx < mem[96]
                _2389 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2402 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1190 + 44 len 20])
                    staticcall mem[(32 * idx) + _1190 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2468] == mem[_2468 + 18 len 14]
                    require mem[_2468 + 32] == mem[_2468 + 50 len 14]
                    require mem[_2468 + 64] == mem[_2468 + 92 len 4]
                    require idx < mem[_1204]
                    require idx < mem[_1191]
                    if mem[(32 * idx) + _1204 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2389) == address(_2389):
                        if mem[_2468 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2468 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2468 + 50 len 14]:
                                require mem[_2468 + 50 len 14]
                                if 0 / mem[_2468 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2468 + 18 len 14] / 10000 != mem[_2468 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2468 + 18 len 14] < 10000 * mem[_2468 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2468 + 18 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2468 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2468 + 50 len 14]:
                                if 10000 * mem[_2468 + 18 len 14] / 10000 != mem[_2468 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2468 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2468 + 50 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2468 + 50 len 14] / mem[_2468 + 50 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2468 + 18 len 14] / 10000 != mem[_2468 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2468 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2468 + 50 len 14] / (10000 * mem[_2468 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                    else:
                        if mem[_2468 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2468 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2468 + 18 len 14]:
                                require mem[_2468 + 18 len 14]
                                if 0 / mem[_2468 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2468 + 50 len 14] / 10000 != mem[_2468 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2468 + 50 len 14] < 10000 * mem[_2468 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2468 + 50 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2468 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2468 + 18 len 14]:
                                if 10000 * mem[_2468 + 50 len 14] / 10000 != mem[_2468 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2468 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2468 + 18 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2468 + 18 len 14] / mem[_2468 + 18 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2468 + 50 len 14] / 10000 != mem[_2468 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2468 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2468 + 18 len 14] / (10000 * mem[_2468 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1190 + 44 len 20])
                    staticcall mem[(32 * idx) + _1190 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2469] == mem[_2469 + 18 len 14]
                    require mem[_2469 + 32] == mem[_2469 + 50 len 14]
                    require mem[_2469 + 64] == mem[_2469 + 92 len 4]
                    require idx < mem[_1204]
                    require idx < mem[_1191]
                    if mem[(32 * idx) + _1204 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2389) == address(_2402):
                        if mem[_2469 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2469 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2469 + 50 len 14]:
                                require mem[_2469 + 50 len 14]
                                if 0 / mem[_2469 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2469 + 18 len 14] / 10000 != mem[_2469 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2469 + 18 len 14] < 10000 * mem[_2469 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2469 + 18 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2469 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2469 + 50 len 14]:
                                if 10000 * mem[_2469 + 18 len 14] / 10000 != mem[_2469 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2469 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2469 + 50 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2469 + 50 len 14] / mem[_2469 + 50 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2469 + 18 len 14] / 10000 != mem[_2469 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2469 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2469 + 50 len 14] / (10000 * mem[_2469 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                    else:
                        if mem[_2469 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2469 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2469 + 18 len 14]:
                                require mem[_2469 + 18 len 14]
                                if 0 / mem[_2469 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2469 + 50 len 14] / 10000 != mem[_2469 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2469 + 50 len 14] < 10000 * mem[_2469 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2469 + 50 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2469 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2469 + 18 len 14]:
                                if 10000 * mem[_2469 + 50 len 14] / 10000 != mem[_2469 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2469 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2469 + 18 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2469 + 18 len 14] / mem[_2469 + 18 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2469 + 50 len 14] / 10000 != mem[_2469 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2469 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2469 + 18 len 14] / (10000 * mem[_2469 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                idx = idx + 1
                continue 
            require mem[_1204] - 1 < mem[_1204]
            if mem[(32 * mem[_1204] - 1) + _1204 + 32] <= cd[100]:
                revert with 0, 'ioa'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2432 = mem[_2424]
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require 0 < mem[_1204]
            _2496 = mem[_1204 + 32]
            mem[mem[64] + 4] = address(('cd', 36)[0])
            mem[mem[64] + 36] = _2496
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), _2496
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2516] == bool(mem[_2516])
            _2540 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_2540] = ('cd', 36).length
            mem[_2540 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_2540 + (32 * ('cd', 36).length) + 32] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1204]
                    _3553 = mem[(32 * idx + 1) + _1204 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2540]
                            _3641 = mem[(32 * idx) + _2540 + 32]
                            _3673 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3673 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3673 + 36] = 0
                            mem[_3673 + 68] = _3553
                            mem[_3673 + 100] = this.address
                            mem[_3673 + 132] = 128
                            mem[_3673 + 164] = mem[_3673]
                            s = 0
                            while s < mem[_3673]:
                                mem[s + _3673 + 196] = mem[s + _3673 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3673]) > mem[_3673]:
                                mem[_3673 + mem[_3673] + 196] = 0
                            require ext_code.size(address(_3641))
                            call address(_3641).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3553, address(this.address), 128, mem[_3673], mem[_3673 + 196 len ceil32(mem[_3673])]
                        else:
                            require idx + 1 < mem[_2540]
                            _3608 = mem[(32 * idx + 1) + _2540 + 32]
                            require idx < mem[_2540]
                            _3672 = mem[(32 * idx) + _2540 + 32]
                            _3704 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3704 + 36] = 0
                            mem[_3704 + 68] = _3553
                            mem[_3704 + 100] = address(_3608)
                            mem[_3704 + 132] = 128
                            mem[_3704 + 164] = mem[_3704]
                            s = 0
                            while s < mem[_3704]:
                                mem[s + _3704 + 196] = mem[s + _3704 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3704]) > mem[_3704]:
                                mem[_3704 + mem[_3704] + 196] = 0
                            require ext_code.size(address(_3672))
                            call address(_3672).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3553, address(_3608), 128, mem[_3704], mem[_3704 + 196 len ceil32(mem[_3704])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2540]
                            _3643 = mem[(32 * idx) + _2540 + 32]
                            _3675 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3675 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3675 + 36] = _3553
                            mem[_3675 + 68] = 0
                            mem[_3675 + 100] = this.address
                            mem[_3675 + 132] = 128
                            mem[_3675 + 164] = mem[_3675]
                            s = 0
                            while s < mem[_3675]:
                                mem[s + _3675 + 196] = mem[s + _3675 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3675]) > mem[_3675]:
                                mem[_3675 + mem[_3675] + 196] = 0
                            require ext_code.size(address(_3643))
                            call address(_3643).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3553, 0, address(this.address), 128, mem[_3675], mem[_3675 + 196 len ceil32(mem[_3675])]
                        else:
                            require idx + 1 < mem[_2540]
                            _3610 = mem[(32 * idx + 1) + _2540 + 32]
                            require idx < mem[_2540]
                            _3674 = mem[(32 * idx) + _2540 + 32]
                            _3706 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3706 + 36] = _3553
                            mem[_3706 + 68] = 0
                            mem[_3706 + 100] = address(_3610)
                            mem[_3706 + 132] = 128
                            mem[_3706 + 164] = mem[_3706]
                            s = 0
                            while s < mem[_3706]:
                                mem[s + _3706 + 196] = mem[s + _3706 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3706]) > mem[_3706]:
                                mem[_3706 + mem[_3706] + 196] = 0
                            require ext_code.size(address(_3674))
                            call address(_3674).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3553, 0, address(_3610), 128, mem[_3706], mem[_3706 + 196 len ceil32(mem[_3706])]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1204]
                    _3555 = mem[(32 * idx + 1) + _1204 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2540]
                            _3645 = mem[(32 * idx) + _2540 + 32]
                            _3677 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3677 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3677 + 36] = 0
                            mem[_3677 + 68] = _3555
                            mem[_3677 + 100] = this.address
                            mem[_3677 + 132] = 128
                            mem[_3677 + 164] = mem[_3677]
                            s = 0
                            while s < mem[_3677]:
                                mem[s + _3677 + 196] = mem[s + _3677 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3677]) > mem[_3677]:
                                mem[_3677 + mem[_3677] + 196] = 0
                            require ext_code.size(address(_3645))
                            call address(_3645).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3555, address(this.address), 128, mem[_3677], mem[_3677 + 196 len ceil32(mem[_3677])]
                        else:
                            require idx + 1 < mem[_2540]
                            _3612 = mem[(32 * idx + 1) + _2540 + 32]
                            require idx < mem[_2540]
                            _3676 = mem[(32 * idx) + _2540 + 32]
                            _3708 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3708 + 36] = 0
                            mem[_3708 + 68] = _3555
                            mem[_3708 + 100] = address(_3612)
                            mem[_3708 + 132] = 128
                            mem[_3708 + 164] = mem[_3708]
                            s = 0
                            while s < mem[_3708]:
                                mem[s + _3708 + 196] = mem[s + _3708 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3708]) > mem[_3708]:
                                mem[_3708 + mem[_3708] + 196] = 0
                            require ext_code.size(address(_3676))
                            call address(_3676).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3555, address(_3612), 128, mem[_3708], mem[_3708 + 196 len ceil32(mem[_3708])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2540]
                            _3647 = mem[(32 * idx) + _2540 + 32]
                            _3679 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3679 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3679 + 36] = _3555
                            mem[_3679 + 68] = 0
                            mem[_3679 + 100] = this.address
                            mem[_3679 + 132] = 128
                            mem[_3679 + 164] = mem[_3679]
                            s = 0
                            while s < mem[_3679]:
                                mem[s + _3679 + 196] = mem[s + _3679 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3679]) > mem[_3679]:
                                mem[_3679 + mem[_3679] + 196] = 0
                            require ext_code.size(address(_3647))
                            call address(_3647).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3555, 0, address(this.address), 128, mem[_3679], mem[_3679 + 196 len ceil32(mem[_3679])]
                        else:
                            require idx + 1 < mem[_2540]
                            _3614 = mem[(32 * idx + 1) + _2540 + 32]
                            require idx < mem[_2540]
                            _3678 = mem[(32 * idx) + _2540 + 32]
                            _3710 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3710 + 36] = _3555
                            mem[_3710 + 68] = 0
                            mem[_3710 + 100] = address(_3614)
                            mem[_3710 + 132] = 128
                            mem[_3710 + 164] = mem[_3710]
                            s = 0
                            while s < mem[_3710]:
                                mem[s + _3710 + 196] = mem[s + _3710 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3710]) > mem[_3710]:
                                mem[_3710 + mem[_3710] + 196] = 0
                            require ext_code.size(address(_3678))
                            call address(_3678).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3555, 0, address(_3614), 128, mem[_3710], mem[_3710 + 196 len ceil32(mem[_3710])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3524 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3524] <= _2432:
                revert with 0, 'ioaa'
        else:
            mem[_1204 + 32 len 32 * _1198] = call.data[calldata.size len 32 * _1198]
            require 0 < mem[_1204]
            mem[_1204 + 32] = cd[100]
            _2365 = mem[96]
            idx = 0
            while idx < _2365 - 1:
                require idx < mem[_1190]
                require idx < mem[96]
                _2392 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2405 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1190 + 44 len 20])
                    staticcall mem[(32 * idx) + _1190 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2470] == mem[_2470 + 18 len 14]
                    require mem[_2470 + 32] == mem[_2470 + 50 len 14]
                    require mem[_2470 + 64] == mem[_2470 + 92 len 4]
                    require idx < mem[_1204]
                    require idx < mem[_1191]
                    if mem[(32 * idx) + _1204 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2392) == address(_2392):
                        if mem[_2470 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2470 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2470 + 50 len 14]:
                                require mem[_2470 + 50 len 14]
                                if 0 / mem[_2470 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2470 + 18 len 14] / 10000 != mem[_2470 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2470 + 18 len 14] < 10000 * mem[_2470 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2470 + 18 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2470 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2470 + 50 len 14]:
                                if 10000 * mem[_2470 + 18 len 14] / 10000 != mem[_2470 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2470 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2470 + 50 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2470 + 50 len 14] / mem[_2470 + 50 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2470 + 18 len 14] / 10000 != mem[_2470 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2470 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2470 + 50 len 14] / (10000 * mem[_2470 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                    else:
                        if mem[_2470 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2470 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2470 + 18 len 14]:
                                require mem[_2470 + 18 len 14]
                                if 0 / mem[_2470 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2470 + 50 len 14] / 10000 != mem[_2470 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2470 + 50 len 14] < 10000 * mem[_2470 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2470 + 50 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2470 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2470 + 18 len 14]:
                                if 10000 * mem[_2470 + 50 len 14] / 10000 != mem[_2470 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2470 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2470 + 18 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2470 + 18 len 14] / mem[_2470 + 18 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2470 + 50 len 14] / 10000 != mem[_2470 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2470 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2470 + 18 len 14] / (10000 * mem[_2470 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1190 + 44 len 20])
                    staticcall mem[(32 * idx) + _1190 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2471] == mem[_2471 + 18 len 14]
                    require mem[_2471 + 32] == mem[_2471 + 50 len 14]
                    require mem[_2471 + 64] == mem[_2471 + 92 len 4]
                    require idx < mem[_1204]
                    require idx < mem[_1191]
                    if mem[(32 * idx) + _1204 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2392) == address(_2405):
                        if mem[_2471 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2471 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2471 + 50 len 14]:
                                require mem[_2471 + 50 len 14]
                                if 0 / mem[_2471 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2471 + 18 len 14] / 10000 != mem[_2471 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2471 + 18 len 14] < 10000 * mem[_2471 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2471 + 18 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2471 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2471 + 50 len 14]:
                                if 10000 * mem[_2471 + 18 len 14] / 10000 != mem[_2471 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2471 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2471 + 50 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2471 + 50 len 14] / mem[_2471 + 50 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2471 + 18 len 14] / 10000 != mem[_2471 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2471 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2471 + 50 len 14] / (10000 * mem[_2471 + 18 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                    else:
                        if mem[_2471 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2471 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1191 + 32]:
                            if mem[_2471 + 18 len 14]:
                                require mem[_2471 + 18 len 14]
                                if 0 / mem[_2471 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2471 + 50 len 14] / 10000 != mem[_2471 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2471 + 50 len 14] < 10000 * mem[_2471 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2471 + 50 len 14]
                            require idx + 1 < mem[_1204]
                            mem[(32 * idx + 1) + _1204 + 32] = 0 / 10000 * mem[_2471 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1191 + 32]
                            if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] / mem[(32 * idx) + _1191 + 32] != mem[(32 * idx) + _1204 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2471 + 18 len 14]:
                                if 10000 * mem[_2471 + 50 len 14] / 10000 != mem[_2471 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2471 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = 0 / (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                            else:
                                require mem[_2471 + 18 len 14]
                                if mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2471 + 18 len 14] / mem[_2471 + 18 len 14] != mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2471 + 50 len 14] / 10000 != mem[_2471 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32]) < 10000 * mem[_2471 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                                require idx + 1 < mem[_1204]
                                mem[(32 * idx + 1) + _1204 + 32] = mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32] * mem[_2471 + 18 len 14] / (10000 * mem[_2471 + 50 len 14]) + (mem[(32 * idx) + _1204 + 32] * mem[(32 * idx) + _1191 + 32])
                idx = idx + 1
                continue 
            require mem[_1204] - 1 < mem[_1204]
            if mem[(32 * mem[_1204] - 1) + _1204 + 32] <= cd[100]:
                revert with 0, 'ioa'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2435 = mem[_2425]
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require 0 < mem[_1204]
            _2498 = mem[_1204 + 32]
            mem[mem[64] + 4] = address(('cd', 36)[0])
            mem[mem[64] + 36] = _2498
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), _2498
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2517] == bool(mem[_2517])
            _2549 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_2549] = ('cd', 36).length
            mem[_2549 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_2549 + (32 * ('cd', 36).length) + 32] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1204]
                    _3558 = mem[(32 * idx + 1) + _1204 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2549]
                            _3649 = mem[(32 * idx) + _2549 + 32]
                            _3681 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3681 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3681 + 36] = 0
                            mem[_3681 + 68] = _3558
                            mem[_3681 + 100] = this.address
                            mem[_3681 + 132] = 128
                            mem[_3681 + 164] = mem[_3681]
                            s = 0
                            while s < mem[_3681]:
                                mem[s + _3681 + 196] = mem[s + _3681 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3681]) > mem[_3681]:
                                mem[_3681 + mem[_3681] + 196] = 0
                            require ext_code.size(address(_3649))
                            call address(_3649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3558, address(this.address), 128, mem[_3681], mem[_3681 + 196 len ceil32(mem[_3681])]
                        else:
                            require idx + 1 < mem[_2549]
                            _3616 = mem[(32 * idx + 1) + _2549 + 32]
                            require idx < mem[_2549]
                            _3680 = mem[(32 * idx) + _2549 + 32]
                            _3712 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3712 + 36] = 0
                            mem[_3712 + 68] = _3558
                            mem[_3712 + 100] = address(_3616)
                            mem[_3712 + 132] = 128
                            mem[_3712 + 164] = mem[_3712]
                            s = 0
                            while s < mem[_3712]:
                                mem[s + _3712 + 196] = mem[s + _3712 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3712]) > mem[_3712]:
                                mem[_3712 + mem[_3712] + 196] = 0
                            require ext_code.size(address(_3680))
                            call address(_3680).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3558, address(_3616), 128, mem[_3712], mem[_3712 + 196 len ceil32(mem[_3712])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2549]
                            _3651 = mem[(32 * idx) + _2549 + 32]
                            _3683 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3683 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3683 + 36] = _3558
                            mem[_3683 + 68] = 0
                            mem[_3683 + 100] = this.address
                            mem[_3683 + 132] = 128
                            mem[_3683 + 164] = mem[_3683]
                            s = 0
                            while s < mem[_3683]:
                                mem[s + _3683 + 196] = mem[s + _3683 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3683]) > mem[_3683]:
                                mem[_3683 + mem[_3683] + 196] = 0
                            require ext_code.size(address(_3651))
                            call address(_3651).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3558, 0, address(this.address), 128, mem[_3683], mem[_3683 + 196 len ceil32(mem[_3683])]
                        else:
                            require idx + 1 < mem[_2549]
                            _3618 = mem[(32 * idx + 1) + _2549 + 32]
                            require idx < mem[_2549]
                            _3682 = mem[(32 * idx) + _2549 + 32]
                            _3714 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3714 + 36] = _3558
                            mem[_3714 + 68] = 0
                            mem[_3714 + 100] = address(_3618)
                            mem[_3714 + 132] = 128
                            mem[_3714 + 164] = mem[_3714]
                            s = 0
                            while s < mem[_3714]:
                                mem[s + _3714 + 196] = mem[s + _3714 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3714]) > mem[_3714]:
                                mem[_3714 + mem[_3714] + 196] = 0
                            require ext_code.size(address(_3682))
                            call address(_3682).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3558, 0, address(_3618), 128, mem[_3714], mem[_3714 + 196 len ceil32(mem[_3714])]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1204]
                    _3560 = mem[(32 * idx + 1) + _1204 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2549]
                            _3653 = mem[(32 * idx) + _2549 + 32]
                            _3685 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3685 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3685 + 36] = 0
                            mem[_3685 + 68] = _3560
                            mem[_3685 + 100] = this.address
                            mem[_3685 + 132] = 128
                            mem[_3685 + 164] = mem[_3685]
                            s = 0
                            while s < mem[_3685]:
                                mem[s + _3685 + 196] = mem[s + _3685 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3685]) > mem[_3685]:
                                mem[_3685 + mem[_3685] + 196] = 0
                            require ext_code.size(address(_3653))
                            call address(_3653).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3560, address(this.address), 128, mem[_3685], mem[_3685 + 196 len ceil32(mem[_3685])]
                        else:
                            require idx + 1 < mem[_2549]
                            _3620 = mem[(32 * idx + 1) + _2549 + 32]
                            require idx < mem[_2549]
                            _3684 = mem[(32 * idx) + _2549 + 32]
                            _3716 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3716 + 36] = 0
                            mem[_3716 + 68] = _3560
                            mem[_3716 + 100] = address(_3620)
                            mem[_3716 + 132] = 128
                            mem[_3716 + 164] = mem[_3716]
                            s = 0
                            while s < mem[_3716]:
                                mem[s + _3716 + 196] = mem[s + _3716 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3716]) > mem[_3716]:
                                mem[_3716 + mem[_3716] + 196] = 0
                            require ext_code.size(address(_3684))
                            call address(_3684).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3560, address(_3620), 128, mem[_3716], mem[_3716 + 196 len ceil32(mem[_3716])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2549]
                            _3655 = mem[(32 * idx) + _2549 + 32]
                            _3687 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3687 + 36] = _3560
                            mem[_3687 + 68] = 0
                            mem[_3687 + 100] = this.address
                            mem[_3687 + 132] = 128
                            mem[_3687 + 164] = mem[_3687]
                            s = 0
                            while s < mem[_3687]:
                                mem[s + _3687 + 196] = mem[s + _3687 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3687]) > mem[_3687]:
                                mem[_3687 + mem[_3687] + 196] = 0
                            require ext_code.size(address(_3655))
                            call address(_3655).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3560, 0, address(this.address), 128, mem[_3687], mem[_3687 + 196 len ceil32(mem[_3687])]
                        else:
                            require idx + 1 < mem[_2549]
                            _3622 = mem[(32 * idx + 1) + _2549 + 32]
                            require idx < mem[_2549]
                            _3686 = mem[(32 * idx) + _2549 + 32]
                            _3718 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3718 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3718 + 36] = _3560
                            mem[_3718 + 68] = 0
                            mem[_3718 + 100] = address(_3622)
                            mem[_3718 + 132] = 128
                            mem[_3718 + 164] = mem[_3718]
                            s = 0
                            while s < mem[_3718]:
                                mem[s + _3718 + 196] = mem[s + _3718 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3718]) > mem[_3718]:
                                mem[_3718 + mem[_3718] + 196] = 0
                            require ext_code.size(address(_3686))
                            call address(_3686).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3560, 0, address(_3622), 128, mem[_3718], mem[_3718 + 196 len ceil32(mem[_3718])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3525] <= _2435:
                revert with 0, 'ioaa'
    else:
        mem[128 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        require 0 < ('cd', 36).length + 1
        mem[128] = address(cd[4])
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1223] == mem[_1223 + 12 len 20]
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] != mem[_1223 + 12 len 20]:
                require idx + 1 < mem[96]
                mem[(32 * idx + 1) + 128] = mem[_1223 + 12 len 20]
            else:
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1319] == mem[_1319 + 12 len 20]
                require idx + 1 < mem[96]
                mem[(32 * idx + 1) + 128] = mem[_1319 + 12 len 20]
            idx = idx + 1
            continue 
        require mem[96] - 1 < mem[96]
        if address(cd[4]) != mem[(32 * mem[96] - 1) + 140 len 20]:
            revert with 0, 'ip'
        _1193 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        mem[_1193] = ('cd', 36).length
        mem[_1193 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[_1193 + (32 * ('cd', 36).length) + 32] = 0
        _1194 = mem[64]
        mem[64] = (32 * ('cd', 68).length) + mem[64] + 32
        mem[_1194] = ('cd', 68).length
        mem[_1194 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_1194 + (32 * ('cd', 68).length) + 32] = 0
        if mem[96] < 2:
            revert with 0, 'INVALID_PATH'
        _1201 = mem[96]
        require mem[96] <= test266151307()
        _1205 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _1201) + 32
        if not _1201:
            require 0 < mem[_1205]
            mem[_1205 + 32] = cd[100]
            _2366 = mem[96]
            idx = 0
            while idx < _2366 - 1:
                require idx < mem[_1193]
                require idx < mem[96]
                _2395 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2408 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1193 + 44 len 20])
                    staticcall mem[(32 * idx) + _1193 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2472] == mem[_2472 + 18 len 14]
                    require mem[_2472 + 32] == mem[_2472 + 50 len 14]
                    require mem[_2472 + 64] == mem[_2472 + 92 len 4]
                    require idx < mem[_1205]
                    require idx < mem[_1194]
                    if mem[(32 * idx) + _1205 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2395) == address(_2395):
                        if mem[_2472 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2472 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2472 + 50 len 14]:
                                require mem[_2472 + 50 len 14]
                                if 0 / mem[_2472 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2472 + 18 len 14] / 10000 != mem[_2472 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2472 + 18 len 14] < 10000 * mem[_2472 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2472 + 18 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2472 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2472 + 50 len 14]:
                                if 10000 * mem[_2472 + 18 len 14] / 10000 != mem[_2472 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2472 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2472 + 50 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2472 + 50 len 14] / mem[_2472 + 50 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2472 + 18 len 14] / 10000 != mem[_2472 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2472 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2472 + 50 len 14] / (10000 * mem[_2472 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                    else:
                        if mem[_2472 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2472 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2472 + 18 len 14]:
                                require mem[_2472 + 18 len 14]
                                if 0 / mem[_2472 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2472 + 50 len 14] / 10000 != mem[_2472 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2472 + 50 len 14] < 10000 * mem[_2472 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2472 + 50 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2472 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2472 + 18 len 14]:
                                if 10000 * mem[_2472 + 50 len 14] / 10000 != mem[_2472 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2472 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2472 + 18 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2472 + 18 len 14] / mem[_2472 + 18 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2472 + 50 len 14] / 10000 != mem[_2472 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2472 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2472 + 18 len 14] / (10000 * mem[_2472 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1193 + 44 len 20])
                    staticcall mem[(32 * idx) + _1193 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2473] == mem[_2473 + 18 len 14]
                    require mem[_2473 + 32] == mem[_2473 + 50 len 14]
                    require mem[_2473 + 64] == mem[_2473 + 92 len 4]
                    require idx < mem[_1205]
                    require idx < mem[_1194]
                    if mem[(32 * idx) + _1205 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2395) == address(_2408):
                        if mem[_2473 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2473 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2473 + 50 len 14]:
                                require mem[_2473 + 50 len 14]
                                if 0 / mem[_2473 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2473 + 18 len 14] / 10000 != mem[_2473 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2473 + 18 len 14] < 10000 * mem[_2473 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2473 + 18 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2473 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2473 + 50 len 14]:
                                if 10000 * mem[_2473 + 18 len 14] / 10000 != mem[_2473 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2473 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2473 + 50 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2473 + 50 len 14] / mem[_2473 + 50 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2473 + 18 len 14] / 10000 != mem[_2473 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2473 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2473 + 50 len 14] / (10000 * mem[_2473 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                    else:
                        if mem[_2473 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2473 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2473 + 18 len 14]:
                                require mem[_2473 + 18 len 14]
                                if 0 / mem[_2473 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2473 + 50 len 14] / 10000 != mem[_2473 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2473 + 50 len 14] < 10000 * mem[_2473 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2473 + 50 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2473 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2473 + 18 len 14]:
                                if 10000 * mem[_2473 + 50 len 14] / 10000 != mem[_2473 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2473 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2473 + 18 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2473 + 18 len 14] / mem[_2473 + 18 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2473 + 50 len 14] / 10000 != mem[_2473 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2473 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2473 + 18 len 14] / (10000 * mem[_2473 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                idx = idx + 1
                continue 
            require mem[_1205] - 1 < mem[_1205]
            if mem[(32 * mem[_1205] - 1) + _1205 + 32] <= cd[100]:
                revert with 0, 'ioa'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2438 = mem[_2426]
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require 0 < mem[_1205]
            _2500 = mem[_1205 + 32]
            mem[mem[64] + 4] = address(('cd', 36)[0])
            mem[mem[64] + 36] = _2500
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), _2500
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2518] == bool(mem[_2518])
            _2558 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_2558] = ('cd', 36).length
            mem[_2558 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_2558 + (32 * ('cd', 36).length) + 32] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1205]
                    _3563 = mem[(32 * idx + 1) + _1205 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2558]
                            _3657 = mem[(32 * idx) + _2558 + 32]
                            _3689 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3689 + 36] = 0
                            mem[_3689 + 68] = _3563
                            mem[_3689 + 100] = this.address
                            mem[_3689 + 132] = 128
                            mem[_3689 + 164] = mem[_3689]
                            s = 0
                            while s < mem[_3689]:
                                mem[s + _3689 + 196] = mem[s + _3689 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3689]) > mem[_3689]:
                                mem[_3689 + mem[_3689] + 196] = 0
                            require ext_code.size(address(_3657))
                            call address(_3657).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3563, address(this.address), 128, mem[_3689], mem[_3689 + 196 len ceil32(mem[_3689])]
                        else:
                            require idx + 1 < mem[_2558]
                            _3624 = mem[(32 * idx + 1) + _2558 + 32]
                            require idx < mem[_2558]
                            _3688 = mem[(32 * idx) + _2558 + 32]
                            _3720 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3720 + 36] = 0
                            mem[_3720 + 68] = _3563
                            mem[_3720 + 100] = address(_3624)
                            mem[_3720 + 132] = 128
                            mem[_3720 + 164] = mem[_3720]
                            s = 0
                            while s < mem[_3720]:
                                mem[s + _3720 + 196] = mem[s + _3720 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3720]) > mem[_3720]:
                                mem[_3720 + mem[_3720] + 196] = 0
                            require ext_code.size(address(_3688))
                            call address(_3688).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3563, address(_3624), 128, mem[_3720], mem[_3720 + 196 len ceil32(mem[_3720])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2558]
                            _3659 = mem[(32 * idx) + _2558 + 32]
                            _3691 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3691 + 36] = _3563
                            mem[_3691 + 68] = 0
                            mem[_3691 + 100] = this.address
                            mem[_3691 + 132] = 128
                            mem[_3691 + 164] = mem[_3691]
                            s = 0
                            while s < mem[_3691]:
                                mem[s + _3691 + 196] = mem[s + _3691 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3691]) > mem[_3691]:
                                mem[_3691 + mem[_3691] + 196] = 0
                            require ext_code.size(address(_3659))
                            call address(_3659).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3563, 0, address(this.address), 128, mem[_3691], mem[_3691 + 196 len ceil32(mem[_3691])]
                        else:
                            require idx + 1 < mem[_2558]
                            _3626 = mem[(32 * idx + 1) + _2558 + 32]
                            require idx < mem[_2558]
                            _3690 = mem[(32 * idx) + _2558 + 32]
                            _3722 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3722 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3722 + 36] = _3563
                            mem[_3722 + 68] = 0
                            mem[_3722 + 100] = address(_3626)
                            mem[_3722 + 132] = 128
                            mem[_3722 + 164] = mem[_3722]
                            s = 0
                            while s < mem[_3722]:
                                mem[s + _3722 + 196] = mem[s + _3722 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3722]) > mem[_3722]:
                                mem[_3722 + mem[_3722] + 196] = 0
                            require ext_code.size(address(_3690))
                            call address(_3690).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3563, 0, address(_3626), 128, mem[_3722], mem[_3722 + 196 len ceil32(mem[_3722])]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1205]
                    _3565 = mem[(32 * idx + 1) + _1205 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2558]
                            _3661 = mem[(32 * idx) + _2558 + 32]
                            _3693 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3693 + 36] = 0
                            mem[_3693 + 68] = _3565
                            mem[_3693 + 100] = this.address
                            mem[_3693 + 132] = 128
                            mem[_3693 + 164] = mem[_3693]
                            s = 0
                            while s < mem[_3693]:
                                mem[s + _3693 + 196] = mem[s + _3693 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3693]) > mem[_3693]:
                                mem[_3693 + mem[_3693] + 196] = 0
                            require ext_code.size(address(_3661))
                            call address(_3661).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3565, address(this.address), 128, mem[_3693], mem[_3693 + 196 len ceil32(mem[_3693])]
                        else:
                            require idx + 1 < mem[_2558]
                            _3628 = mem[(32 * idx + 1) + _2558 + 32]
                            require idx < mem[_2558]
                            _3692 = mem[(32 * idx) + _2558 + 32]
                            _3724 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3724 + 36] = 0
                            mem[_3724 + 68] = _3565
                            mem[_3724 + 100] = address(_3628)
                            mem[_3724 + 132] = 128
                            mem[_3724 + 164] = mem[_3724]
                            s = 0
                            while s < mem[_3724]:
                                mem[s + _3724 + 196] = mem[s + _3724 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3724]) > mem[_3724]:
                                mem[_3724 + mem[_3724] + 196] = 0
                            require ext_code.size(address(_3692))
                            call address(_3692).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3565, address(_3628), 128, mem[_3724], mem[_3724 + 196 len ceil32(mem[_3724])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2558]
                            _3663 = mem[(32 * idx) + _2558 + 32]
                            _3695 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3695 + 36] = _3565
                            mem[_3695 + 68] = 0
                            mem[_3695 + 100] = this.address
                            mem[_3695 + 132] = 128
                            mem[_3695 + 164] = mem[_3695]
                            s = 0
                            while s < mem[_3695]:
                                mem[s + _3695 + 196] = mem[s + _3695 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3695]) > mem[_3695]:
                                mem[_3695 + mem[_3695] + 196] = 0
                            require ext_code.size(address(_3663))
                            call address(_3663).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3565, 0, address(this.address), 128, mem[_3695], mem[_3695 + 196 len ceil32(mem[_3695])]
                        else:
                            require idx + 1 < mem[_2558]
                            _3630 = mem[(32 * idx + 1) + _2558 + 32]
                            require idx < mem[_2558]
                            _3694 = mem[(32 * idx) + _2558 + 32]
                            _3726 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3726 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3726 + 36] = _3565
                            mem[_3726 + 68] = 0
                            mem[_3726 + 100] = address(_3630)
                            mem[_3726 + 132] = 128
                            mem[_3726 + 164] = mem[_3726]
                            s = 0
                            while s < mem[_3726]:
                                mem[s + _3726 + 196] = mem[s + _3726 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3726]) > mem[_3726]:
                                mem[_3726 + mem[_3726] + 196] = 0
                            require ext_code.size(address(_3694))
                            call address(_3694).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3565, 0, address(_3630), 128, mem[_3726], mem[_3726 + 196 len ceil32(mem[_3726])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3526] <= _2438:
                revert with 0, 'ioaa'
        else:
            mem[_1205 + 32 len 32 * _1201] = call.data[calldata.size len 32 * _1201]
            require 0 < mem[_1205]
            mem[_1205 + 32] = cd[100]
            _2367 = mem[96]
            idx = 0
            while idx < _2367 - 1:
                require idx < mem[_1193]
                require idx < mem[96]
                _2398 = mem[(32 * idx) + 128]
                require idx + 1 < mem[96]
                _2411 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1193 + 44 len 20])
                    staticcall mem[(32 * idx) + _1193 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2474] == mem[_2474 + 18 len 14]
                    require mem[_2474 + 32] == mem[_2474 + 50 len 14]
                    require mem[_2474 + 64] == mem[_2474 + 92 len 4]
                    require idx < mem[_1205]
                    require idx < mem[_1194]
                    if mem[(32 * idx) + _1205 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2398) == address(_2398):
                        if mem[_2474 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2474 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2474 + 50 len 14]:
                                require mem[_2474 + 50 len 14]
                                if 0 / mem[_2474 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2474 + 18 len 14] / 10000 != mem[_2474 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2474 + 18 len 14] < 10000 * mem[_2474 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2474 + 18 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2474 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2474 + 50 len 14]:
                                if 10000 * mem[_2474 + 18 len 14] / 10000 != mem[_2474 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2474 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2474 + 50 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2474 + 50 len 14] / mem[_2474 + 50 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2474 + 18 len 14] / 10000 != mem[_2474 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2474 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2474 + 50 len 14] / (10000 * mem[_2474 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                    else:
                        if mem[_2474 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2474 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2474 + 18 len 14]:
                                require mem[_2474 + 18 len 14]
                                if 0 / mem[_2474 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2474 + 50 len 14] / 10000 != mem[_2474 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2474 + 50 len 14] < 10000 * mem[_2474 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2474 + 50 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2474 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2474 + 18 len 14]:
                                if 10000 * mem[_2474 + 50 len 14] / 10000 != mem[_2474 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2474 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2474 + 18 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2474 + 18 len 14] / mem[_2474 + 18 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2474 + 50 len 14] / 10000 != mem[_2474 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2474 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2474 + 18 len 14] / (10000 * mem[_2474 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + _1193 + 44 len 20])
                    staticcall mem[(32 * idx) + _1193 + 44 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2475] == mem[_2475 + 18 len 14]
                    require mem[_2475 + 32] == mem[_2475 + 50 len 14]
                    require mem[_2475 + 64] == mem[_2475 + 92 len 4]
                    require idx < mem[_1205]
                    require idx < mem[_1194]
                    if mem[(32 * idx) + _1205 + 32] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2398) == address(_2411):
                        if mem[_2475 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2475 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2475 + 50 len 14]:
                                require mem[_2475 + 50 len 14]
                                if 0 / mem[_2475 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2475 + 18 len 14] / 10000 != mem[_2475 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2475 + 18 len 14] < 10000 * mem[_2475 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2475 + 18 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2475 + 18 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2475 + 50 len 14]:
                                if 10000 * mem[_2475 + 18 len 14] / 10000 != mem[_2475 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2475 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2475 + 50 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2475 + 50 len 14] / mem[_2475 + 50 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2475 + 18 len 14] / 10000 != mem[_2475 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2475 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2475 + 50 len 14] / (10000 * mem[_2475 + 18 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                    else:
                        if mem[_2475 + 50 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if mem[_2475 + 18 len 14] <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + _1194 + 32]:
                            if mem[_2475 + 18 len 14]:
                                require mem[_2475 + 18 len 14]
                                if 0 / mem[_2475 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2475 + 50 len 14] / 10000 != mem[_2475 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_2475 + 50 len 14] < 10000 * mem[_2475 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * mem[_2475 + 50 len 14]
                            require idx + 1 < mem[_1205]
                            mem[(32 * idx + 1) + _1205 + 32] = 0 / 10000 * mem[_2475 + 50 len 14]
                        else:
                            require mem[(32 * idx) + _1194 + 32]
                            if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] / mem[(32 * idx) + _1194 + 32] != mem[(32 * idx) + _1205 + 32]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not mem[_2475 + 18 len 14]:
                                if 10000 * mem[_2475 + 50 len 14] / 10000 != mem[_2475 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2475 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = 0 / (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                            else:
                                require mem[_2475 + 18 len 14]
                                if mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2475 + 18 len 14] / mem[_2475 + 18 len 14] != mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_2475 + 50 len 14] / 10000 != mem[_2475 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32]) < 10000 * mem[_2475 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                                require idx + 1 < mem[_1205]
                                mem[(32 * idx + 1) + _1205 + 32] = mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32] * mem[_2475 + 18 len 14] / (10000 * mem[_2475 + 50 len 14]) + (mem[(32 * idx) + _1205 + 32] * mem[(32 * idx) + _1194 + 32])
                idx = idx + 1
                continue 
            require mem[_1205] - 1 < mem[_1205]
            if mem[(32 * mem[_1205] - 1) + _1205 + 32] <= cd[100]:
                revert with 0, 'ioa'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2441 = mem[_2427]
            require 0 < ('cd', 36).length
            require ('cd', 36)[0] == address(('cd', 36)[0])
            require 0 < mem[_1205]
            _2502 = mem[_1205 + 32]
            mem[mem[64] + 4] = address(('cd', 36)[0])
            mem[mem[64] + 36] = _2502
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), _2502
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2519] == bool(mem[_2519])
            _2567 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_2567] = ('cd', 36).length
            mem[_2567 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_2567 + (32 * ('cd', 36).length) + 32] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1205]
                    _3568 = mem[(32 * idx + 1) + _1205 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2567]
                            _3665 = mem[(32 * idx) + _2567 + 32]
                            _3697 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3697 + 36] = 0
                            mem[_3697 + 68] = _3568
                            mem[_3697 + 100] = this.address
                            mem[_3697 + 132] = 128
                            mem[_3697 + 164] = mem[_3697]
                            s = 0
                            while s < mem[_3697]:
                                mem[s + _3697 + 196] = mem[s + _3697 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3697]) > mem[_3697]:
                                mem[_3697 + mem[_3697] + 196] = 0
                            require ext_code.size(address(_3665))
                            call address(_3665).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(this.address), 128, mem[_3697], mem[_3697 + 196 len ceil32(mem[_3697])]
                        else:
                            require idx + 1 < mem[_2567]
                            _3632 = mem[(32 * idx + 1) + _2567 + 32]
                            require idx < mem[_2567]
                            _3696 = mem[(32 * idx) + _2567 + 32]
                            _3728 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3728 + 36] = 0
                            mem[_3728 + 68] = _3568
                            mem[_3728 + 100] = address(_3632)
                            mem[_3728 + 132] = 128
                            mem[_3728 + 164] = mem[_3728]
                            s = 0
                            while s < mem[_3728]:
                                mem[s + _3728 + 196] = mem[s + _3728 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3728]) > mem[_3728]:
                                mem[_3728 + mem[_3728] + 196] = 0
                            require ext_code.size(address(_3696))
                            call address(_3696).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3568, address(_3632), 128, mem[_3728], mem[_3728 + 196 len ceil32(mem[_3728])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2567]
                            _3667 = mem[(32 * idx) + _2567 + 32]
                            _3699 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3699 + 36] = _3568
                            mem[_3699 + 68] = 0
                            mem[_3699 + 100] = this.address
                            mem[_3699 + 132] = 128
                            mem[_3699 + 164] = mem[_3699]
                            s = 0
                            while s < mem[_3699]:
                                mem[s + _3699 + 196] = mem[s + _3699 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3699]) > mem[_3699]:
                                mem[_3699 + mem[_3699] + 196] = 0
                            require ext_code.size(address(_3667))
                            call address(_3667).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(this.address), 128, mem[_3699], mem[_3699 + 196 len ceil32(mem[_3699])]
                        else:
                            require idx + 1 < mem[_2567]
                            _3634 = mem[(32 * idx + 1) + _2567 + 32]
                            require idx < mem[_2567]
                            _3698 = mem[(32 * idx) + _2567 + 32]
                            _3730 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3730 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3730 + 36] = _3568
                            mem[_3730 + 68] = 0
                            mem[_3730 + 100] = address(_3634)
                            mem[_3730 + 132] = 128
                            mem[_3730 + 164] = mem[_3730]
                            s = 0
                            while s < mem[_3730]:
                                mem[s + _3730 + 196] = mem[s + _3730 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3730]) > mem[_3730]:
                                mem[_3730 + mem[_3730] + 196] = 0
                            require ext_code.size(address(_3698))
                            call address(_3698).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3568, 0, address(_3634), 128, mem[_3730], mem[_3730 + 196 len ceil32(mem[_3730])]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[_1205]
                    _3570 = mem[(32 * idx + 1) + _1205 + 32]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2567]
                            _3669 = mem[(32 * idx) + _2567 + 32]
                            _3701 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3701 + 36] = 0
                            mem[_3701 + 68] = _3570
                            mem[_3701 + 100] = this.address
                            mem[_3701 + 132] = 128
                            mem[_3701 + 164] = mem[_3701]
                            s = 0
                            while s < mem[_3701]:
                                mem[s + _3701 + 196] = mem[s + _3701 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3701]) > mem[_3701]:
                                mem[_3701 + mem[_3701] + 196] = 0
                            require ext_code.size(address(_3669))
                            call address(_3669).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3570, address(this.address), 128, mem[_3701], mem[_3701 + 196 len ceil32(mem[_3701])]
                        else:
                            require idx + 1 < mem[_2567]
                            _3636 = mem[(32 * idx + 1) + _2567 + 32]
                            require idx < mem[_2567]
                            _3700 = mem[(32 * idx) + _2567 + 32]
                            _3732 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3732 + 36] = 0
                            mem[_3732 + 68] = _3570
                            mem[_3732 + 100] = address(_3636)
                            mem[_3732 + 132] = 128
                            mem[_3732 + 164] = mem[_3732]
                            s = 0
                            while s < mem[_3732]:
                                mem[s + _3732 + 196] = mem[s + _3732 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3732]) > mem[_3732]:
                                mem[_3732 + mem[_3732] + 196] = 0
                            require ext_code.size(address(_3700))
                            call address(_3700).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3570, address(_3636), 128, mem[_3732], mem[_3732 + 196 len ceil32(mem[_3732])]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[_2567]
                            _3671 = mem[(32 * idx) + _2567 + 32]
                            _3703 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3703 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3703 + 36] = _3570
                            mem[_3703 + 68] = 0
                            mem[_3703 + 100] = this.address
                            mem[_3703 + 132] = 128
                            mem[_3703 + 164] = mem[_3703]
                            s = 0
                            while s < mem[_3703]:
                                mem[s + _3703 + 196] = mem[s + _3703 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3703]) > mem[_3703]:
                                mem[_3703 + mem[_3703] + 196] = 0
                            require ext_code.size(address(_3671))
                            call address(_3671).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3570, 0, address(this.address), 128, mem[_3703], mem[_3703 + 196 len ceil32(mem[_3703])]
                        else:
                            require idx + 1 < mem[_2567]
                            _3638 = mem[(32 * idx + 1) + _2567 + 32]
                            require idx < mem[_2567]
                            _3702 = mem[(32 * idx) + _2567 + 32]
                            _3734 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3734 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3734 + 36] = _3570
                            mem[_3734 + 68] = 0
                            mem[_3734 + 100] = address(_3638)
                            mem[_3734 + 132] = 128
                            mem[_3734 + 164] = mem[_3734]
                            s = 0
                            while s < mem[_3734]:
                                mem[s + _3734 + 196] = mem[s + _3734 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_3734]) > mem[_3734]:
                                mem[_3734 + mem[_3734] + 196] = 0
                            require ext_code.size(address(_3702))
                            call address(_3702).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3570, 0, address(_3638), 128, mem[_3734], mem[_3734 + 196 len ceil32(mem[_3734])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3527] <= _2441:
                revert with 0, 'ioaa'
}



}
