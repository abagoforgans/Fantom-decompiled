contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
}

function sub_bd27dbef(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[132] <= cd[100]:
        revert with 0, '-_-'
    require ('cd', 36).length + 1 <= test266151307()
    mem[96] = ('cd', 36).length + 1
    if not ('cd', 36).length + 1:
        require 0 < ('cd', 36).length + 1
        mem[128] = address(cd[4])
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 36).length + 1) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length + 1
            if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length + 1) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require idx < ('cd', 36).length
            mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        require ('cd', 36).length < ('cd', 36).length + 1
        if address(cd[4]) != mem[(32 * ('cd', 36).length) + 140 len 20]:
            revert with 0, 'invalid path'
        mem[(32 * ('cd', 36).length + 1) + 128] = ('cd', 36).length
        mem[(32 * ('cd', 36).length + 1) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
        mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        if ('cd', 36).length + 1 < 2:
            revert with 0, 'INVALID_PATH'
        require ('cd', 36).length + 1 <= test266151307()
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] = ('cd', 36).length + 1
        if not ('cd', 36).length + 1:
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = cd[100]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length + 1) + 128]
                require idx < ('cd', 36).length + 1
                _2463 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                _2478 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2463) == address(_2463):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2478) == address(_2463):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] < cd[132]:
                revert with 0, 'insufficient output'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[100]:
                revert with 0, 'insufficient balance'
            require 0 < ('cd', 36).length
            require 0 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 228] = address(('cd', 36)[0])
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 260] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + 256
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (64 * ('cd', 36).length) + 256] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3654 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3727 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3759 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3759 + 36] = 0
                            mem[_3759 + 68] = _3654
                            mem[_3759 + 100] = this.address
                            mem[_3759 + 132] = 128
                            mem[_3759 + 164] = mem[_3759]
                            s = 0
                            while s < mem[_3759]:
                                mem[s + _3759 + 196] = mem[s + _3759 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3759] % 32:
                                require ext_code.size(address(_3727))
                                call address(_3727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3654, address(this.address), 128, mem[_3759 + 164 len mem[_3759] + 32]
                            else:
                                mem[floor32(mem[_3759]) + _3759 + 196] = mem[floor32(mem[_3759]) + _3759 + -(mem[_3759] % 32) + 228 len mem[_3759] % 32]
                                require ext_code.size(address(_3727))
                                call address(_3727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3654, address(this.address), 128, mem[_3759], mem[_3759 + 196 len floor32(mem[_3759]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3694 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3758 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3790 + 36] = 0
                            mem[_3790 + 68] = _3654
                            mem[_3790 + 100] = address(_3694)
                            mem[_3790 + 132] = 128
                            mem[_3790 + 164] = mem[_3790]
                            s = 0
                            while s < mem[_3790]:
                                mem[s + _3790 + 196] = mem[s + _3790 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3790] % 32:
                                require ext_code.size(address(_3758))
                                call address(_3758).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3654, address(_3694), 128, mem[_3790 + 164 len mem[_3790] + 32]
                            else:
                                mem[floor32(mem[_3790]) + _3790 + 196] = mem[floor32(mem[_3790]) + _3790 + -(mem[_3790] % 32) + 228 len mem[_3790] % 32]
                                require ext_code.size(address(_3758))
                                call address(_3758).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3654, address(_3694), 128, mem[_3790], mem[_3790 + 196 len floor32(mem[_3790]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3729 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3761 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3761 + 36] = _3654
                            mem[_3761 + 68] = 0
                            mem[_3761 + 100] = this.address
                            mem[_3761 + 132] = 128
                            mem[_3761 + 164] = mem[_3761]
                            s = 0
                            while s < mem[_3761]:
                                mem[s + _3761 + 196] = mem[s + _3761 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3761] % 32:
                                require ext_code.size(address(_3729))
                                call address(_3729).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3654, 0, address(this.address), 128, mem[_3761 + 164 len mem[_3761] + 32]
                            else:
                                mem[floor32(mem[_3761]) + _3761 + 196] = mem[floor32(mem[_3761]) + _3761 + -(mem[_3761] % 32) + 228 len mem[_3761] % 32]
                                require ext_code.size(address(_3729))
                                call address(_3729).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3654, 0, address(this.address), 128, mem[_3761], mem[_3761 + 196 len floor32(mem[_3761]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3696 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3760 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3794 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3794 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3794 + 36] = _3654
                            mem[_3794 + 68] = 0
                            mem[_3794 + 100] = address(_3696)
                            mem[_3794 + 132] = 128
                            mem[_3794 + 164] = mem[_3794]
                            s = 0
                            while s < mem[_3794]:
                                mem[s + _3794 + 196] = mem[s + _3794 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3794] % 32:
                                require ext_code.size(address(_3760))
                                call address(_3760).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3654, 0, address(_3696), 128, mem[_3794 + 164 len mem[_3794] + 32]
                            else:
                                mem[floor32(mem[_3794]) + _3794 + 196] = mem[floor32(mem[_3794]) + _3794 + -(mem[_3794] % 32) + 228 len mem[_3794] % 32]
                                require ext_code.size(address(_3760))
                                call address(_3760).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3654, 0, address(_3696), 128, mem[_3794], mem[_3794 + 196 len floor32(mem[_3794]) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3655 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3731 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3763 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3763 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3763 + 36] = 0
                            mem[_3763 + 68] = _3655
                            mem[_3763 + 100] = this.address
                            mem[_3763 + 132] = 128
                            mem[_3763 + 164] = mem[_3763]
                            s = 0
                            while s < mem[_3763]:
                                mem[s + _3763 + 196] = mem[s + _3763 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3763] % 32:
                                require ext_code.size(address(_3731))
                                call address(_3731).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3655, address(this.address), 128, mem[_3763 + 164 len mem[_3763] + 32]
                            else:
                                mem[floor32(mem[_3763]) + _3763 + 196] = mem[floor32(mem[_3763]) + _3763 + -(mem[_3763] % 32) + 228 len mem[_3763] % 32]
                                require ext_code.size(address(_3731))
                                call address(_3731).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3655, address(this.address), 128, mem[_3763], mem[_3763 + 196 len floor32(mem[_3763]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3698 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3762 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3798 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3798 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3798 + 36] = 0
                            mem[_3798 + 68] = _3655
                            mem[_3798 + 100] = address(_3698)
                            mem[_3798 + 132] = 128
                            mem[_3798 + 164] = mem[_3798]
                            s = 0
                            while s < mem[_3798]:
                                mem[s + _3798 + 196] = mem[s + _3798 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3798] % 32:
                                require ext_code.size(address(_3762))
                                call address(_3762).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3655, address(_3698), 128, mem[_3798 + 164 len mem[_3798] + 32]
                            else:
                                mem[floor32(mem[_3798]) + _3798 + 196] = mem[floor32(mem[_3798]) + _3798 + -(mem[_3798] % 32) + 228 len mem[_3798] % 32]
                                require ext_code.size(address(_3762))
                                call address(_3762).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3655, address(_3698), 128, mem[_3798], mem[_3798 + 196 len floor32(mem[_3798]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3733 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3765 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3765 + 36] = _3655
                            mem[_3765 + 68] = 0
                            mem[_3765 + 100] = this.address
                            mem[_3765 + 132] = 128
                            mem[_3765 + 164] = mem[_3765]
                            s = 0
                            while s < mem[_3765]:
                                mem[s + _3765 + 196] = mem[s + _3765 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3765] % 32:
                                require ext_code.size(address(_3733))
                                call address(_3733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3655, 0, address(this.address), 128, mem[_3765 + 164 len mem[_3765] + 32]
                            else:
                                mem[floor32(mem[_3765]) + _3765 + 196] = mem[floor32(mem[_3765]) + _3765 + -(mem[_3765] % 32) + 228 len mem[_3765] % 32]
                                require ext_code.size(address(_3733))
                                call address(_3733).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3655, 0, address(this.address), 128, mem[_3765], mem[_3765 + 196 len floor32(mem[_3765]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3700 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3764 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3802 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3802 + 36] = _3655
                            mem[_3802 + 68] = 0
                            mem[_3802 + 100] = address(_3700)
                            mem[_3802 + 132] = 128
                            mem[_3802 + 164] = mem[_3802]
                            s = 0
                            while s < mem[_3802]:
                                mem[s + _3802 + 196] = mem[s + _3802 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3802] % 32:
                                require ext_code.size(address(_3764))
                                call address(_3764).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3655, 0, address(_3700), 128, mem[_3802 + 164 len mem[_3802] + 32]
                            else:
                                mem[floor32(mem[_3802]) + _3802 + 196] = mem[floor32(mem[_3802]) + _3802 + -(mem[_3802] % 32) + 228 len mem[_3802] % 32]
                                require ext_code.size(address(_3764))
                                call address(_3764).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3655, 0, address(_3700), 128, mem[_3802], mem[_3802 + 196 len floor32(mem[_3802]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = cd[100]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length + 1) + 128]
                require idx < ('cd', 36).length + 1
                _2466 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                _2483 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2466) == address(_2466):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2483) == address(_2466):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] < cd[132]:
                revert with 0, 'insufficient output'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[100]:
                revert with 0, 'insufficient balance'
            require 0 < ('cd', 36).length
            require 0 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 228] = address(('cd', 36)[0])
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 260] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + 256
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (64 * ('cd', 36).length) + 256] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3656 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3735 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3767 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3767 + 36] = 0
                            mem[_3767 + 68] = _3656
                            mem[_3767 + 100] = this.address
                            mem[_3767 + 132] = 128
                            mem[_3767 + 164] = mem[_3767]
                            s = 0
                            while s < mem[_3767]:
                                mem[s + _3767 + 196] = mem[s + _3767 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3767] % 32:
                                require ext_code.size(address(_3735))
                                call address(_3735).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3656, address(this.address), 128, mem[_3767 + 164 len mem[_3767] + 32]
                            else:
                                mem[floor32(mem[_3767]) + _3767 + 196] = mem[floor32(mem[_3767]) + _3767 + -(mem[_3767] % 32) + 228 len mem[_3767] % 32]
                                require ext_code.size(address(_3735))
                                call address(_3735).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3656, address(this.address), 128, mem[_3767], mem[_3767 + 196 len floor32(mem[_3767]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3702 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3766 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3806 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3806 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3806 + 36] = 0
                            mem[_3806 + 68] = _3656
                            mem[_3806 + 100] = address(_3702)
                            mem[_3806 + 132] = 128
                            mem[_3806 + 164] = mem[_3806]
                            s = 0
                            while s < mem[_3806]:
                                mem[s + _3806 + 196] = mem[s + _3806 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3806] % 32:
                                require ext_code.size(address(_3766))
                                call address(_3766).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3656, address(_3702), 128, mem[_3806 + 164 len mem[_3806] + 32]
                            else:
                                mem[floor32(mem[_3806]) + _3806 + 196] = mem[floor32(mem[_3806]) + _3806 + -(mem[_3806] % 32) + 228 len mem[_3806] % 32]
                                require ext_code.size(address(_3766))
                                call address(_3766).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3656, address(_3702), 128, mem[_3806], mem[_3806 + 196 len floor32(mem[_3806]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3737 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3769 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3769 + 36] = _3656
                            mem[_3769 + 68] = 0
                            mem[_3769 + 100] = this.address
                            mem[_3769 + 132] = 128
                            mem[_3769 + 164] = mem[_3769]
                            s = 0
                            while s < mem[_3769]:
                                mem[s + _3769 + 196] = mem[s + _3769 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3769] % 32:
                                require ext_code.size(address(_3737))
                                call address(_3737).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3656, 0, address(this.address), 128, mem[_3769 + 164 len mem[_3769] + 32]
                            else:
                                mem[floor32(mem[_3769]) + _3769 + 196] = mem[floor32(mem[_3769]) + _3769 + -(mem[_3769] % 32) + 228 len mem[_3769] % 32]
                                require ext_code.size(address(_3737))
                                call address(_3737).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3656, 0, address(this.address), 128, mem[_3769], mem[_3769 + 196 len floor32(mem[_3769]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3704 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3768 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3810 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3810 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3810 + 36] = _3656
                            mem[_3810 + 68] = 0
                            mem[_3810 + 100] = address(_3704)
                            mem[_3810 + 132] = 128
                            mem[_3810 + 164] = mem[_3810]
                            s = 0
                            while s < mem[_3810]:
                                mem[s + _3810 + 196] = mem[s + _3810 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3810] % 32:
                                require ext_code.size(address(_3768))
                                call address(_3768).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3656, 0, address(_3704), 128, mem[_3810 + 164 len mem[_3810] + 32]
                            else:
                                mem[floor32(mem[_3810]) + _3810 + 196] = mem[floor32(mem[_3810]) + _3810 + -(mem[_3810] % 32) + 228 len mem[_3810] % 32]
                                require ext_code.size(address(_3768))
                                call address(_3768).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3656, 0, address(_3704), 128, mem[_3810], mem[_3810 + 196 len floor32(mem[_3810]) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3657 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3739 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3771 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3771 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3771 + 36] = 0
                            mem[_3771 + 68] = _3657
                            mem[_3771 + 100] = this.address
                            mem[_3771 + 132] = 128
                            mem[_3771 + 164] = mem[_3771]
                            s = 0
                            while s < mem[_3771]:
                                mem[s + _3771 + 196] = mem[s + _3771 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3771] % 32:
                                require ext_code.size(address(_3739))
                                call address(_3739).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3657, address(this.address), 128, mem[_3771 + 164 len mem[_3771] + 32]
                            else:
                                mem[floor32(mem[_3771]) + _3771 + 196] = mem[floor32(mem[_3771]) + _3771 + -(mem[_3771] % 32) + 228 len mem[_3771] % 32]
                                require ext_code.size(address(_3739))
                                call address(_3739).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3657, address(this.address), 128, mem[_3771], mem[_3771 + 196 len floor32(mem[_3771]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3706 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3770 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3814 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3814 + 36] = 0
                            mem[_3814 + 68] = _3657
                            mem[_3814 + 100] = address(_3706)
                            mem[_3814 + 132] = 128
                            mem[_3814 + 164] = mem[_3814]
                            s = 0
                            while s < mem[_3814]:
                                mem[s + _3814 + 196] = mem[s + _3814 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3814] % 32:
                                require ext_code.size(address(_3770))
                                call address(_3770).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3657, address(_3706), 128, mem[_3814 + 164 len mem[_3814] + 32]
                            else:
                                mem[floor32(mem[_3814]) + _3814 + 196] = mem[floor32(mem[_3814]) + _3814 + -(mem[_3814] % 32) + 228 len mem[_3814] % 32]
                                require ext_code.size(address(_3770))
                                call address(_3770).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3657, address(_3706), 128, mem[_3814], mem[_3814 + 196 len floor32(mem[_3814]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3741 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3773 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3773 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3773 + 36] = _3657
                            mem[_3773 + 68] = 0
                            mem[_3773 + 100] = this.address
                            mem[_3773 + 132] = 128
                            mem[_3773 + 164] = mem[_3773]
                            s = 0
                            while s < mem[_3773]:
                                mem[s + _3773 + 196] = mem[s + _3773 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3773] % 32:
                                require ext_code.size(address(_3741))
                                call address(_3741).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3657, 0, address(this.address), 128, mem[_3773 + 164 len mem[_3773] + 32]
                            else:
                                mem[floor32(mem[_3773]) + _3773 + 196] = mem[floor32(mem[_3773]) + _3773 + -(mem[_3773] % 32) + 228 len mem[_3773] % 32]
                                require ext_code.size(address(_3741))
                                call address(_3741).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3657, 0, address(this.address), 128, mem[_3773], mem[_3773 + 196 len floor32(mem[_3773]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3708 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3772 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3818 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3818 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3818 + 36] = _3657
                            mem[_3818 + 68] = 0
                            mem[_3818 + 100] = address(_3708)
                            mem[_3818 + 132] = 128
                            mem[_3818 + 164] = mem[_3818]
                            s = 0
                            while s < mem[_3818]:
                                mem[s + _3818 + 196] = mem[s + _3818 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3818] % 32:
                                require ext_code.size(address(_3772))
                                call address(_3772).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3657, 0, address(_3708), 128, mem[_3818 + 164 len mem[_3818] + 32]
                            else:
                                mem[floor32(mem[_3818]) + _3818 + 196] = mem[floor32(mem[_3818]) + _3818 + -(mem[_3818] % 32) + 228 len mem[_3818] % 32]
                                require ext_code.size(address(_3772))
                                call address(_3772).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3657, 0, address(_3708), 128, mem[_3818], mem[_3818 + 196 len floor32(mem[_3818]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        mem[128 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
        require 0 < ('cd', 36).length + 1
        mem[128] = address(cd[4])
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 36).length + 1) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 36).length + 1
            if mem[(32 * idx) + 140 len 20] == address(ext_call.return_data[0]):
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 36).length + 1) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require idx < ('cd', 36).length
            mem[(32 * idx + 1) + 128] = address(ext_call.return_data[0])
            idx = idx + 1
            continue 
        require ('cd', 36).length < ('cd', 36).length + 1
        if address(cd[4]) != mem[(32 * ('cd', 36).length) + 140 len 20]:
            revert with 0, 'invalid path'
        mem[(32 * ('cd', 36).length + 1) + 128] = ('cd', 36).length
        mem[(32 * ('cd', 36).length + 1) + 160 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
        mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        if ('cd', 36).length + 1 < 2:
            revert with 0, 'INVALID_PATH'
        require ('cd', 36).length + 1 <= test266151307()
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] = ('cd', 36).length + 1
        if not ('cd', 36).length + 1:
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = cd[100]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length + 1) + 128]
                require idx < ('cd', 36).length + 1
                _2469 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                _2488 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2469) == address(_2469):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2488) == address(_2469):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] < cd[132]:
                revert with 0, 'insufficient output'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[100]:
                revert with 0, 'insufficient balance'
            require 0 < ('cd', 36).length
            require 0 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 228] = address(('cd', 36)[0])
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 260] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + 256
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (64 * ('cd', 36).length) + 256] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3658 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3743 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3775 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3775 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3775 + 36] = 0
                            mem[_3775 + 68] = _3658
                            mem[_3775 + 100] = this.address
                            mem[_3775 + 132] = 128
                            mem[_3775 + 164] = mem[_3775]
                            s = 0
                            while s < mem[_3775]:
                                mem[s + _3775 + 196] = mem[s + _3775 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3775] % 32:
                                require ext_code.size(address(_3743))
                                call address(_3743).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3658, address(this.address), 128, mem[_3775 + 164 len mem[_3775] + 32]
                            else:
                                mem[floor32(mem[_3775]) + _3775 + 196] = mem[floor32(mem[_3775]) + _3775 + -(mem[_3775] % 32) + 228 len mem[_3775] % 32]
                                require ext_code.size(address(_3743))
                                call address(_3743).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3658, address(this.address), 128, mem[_3775], mem[_3775 + 196 len floor32(mem[_3775]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3710 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3774 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3822 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3822 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3822 + 36] = 0
                            mem[_3822 + 68] = _3658
                            mem[_3822 + 100] = address(_3710)
                            mem[_3822 + 132] = 128
                            mem[_3822 + 164] = mem[_3822]
                            s = 0
                            while s < mem[_3822]:
                                mem[s + _3822 + 196] = mem[s + _3822 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3822] % 32:
                                require ext_code.size(address(_3774))
                                call address(_3774).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3658, address(_3710), 128, mem[_3822 + 164 len mem[_3822] + 32]
                            else:
                                mem[floor32(mem[_3822]) + _3822 + 196] = mem[floor32(mem[_3822]) + _3822 + -(mem[_3822] % 32) + 228 len mem[_3822] % 32]
                                require ext_code.size(address(_3774))
                                call address(_3774).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3658, address(_3710), 128, mem[_3822], mem[_3822 + 196 len floor32(mem[_3822]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3745 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3777 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3777 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3777 + 36] = _3658
                            mem[_3777 + 68] = 0
                            mem[_3777 + 100] = this.address
                            mem[_3777 + 132] = 128
                            mem[_3777 + 164] = mem[_3777]
                            s = 0
                            while s < mem[_3777]:
                                mem[s + _3777 + 196] = mem[s + _3777 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3777] % 32:
                                require ext_code.size(address(_3745))
                                call address(_3745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3658, 0, address(this.address), 128, mem[_3777 + 164 len mem[_3777] + 32]
                            else:
                                mem[floor32(mem[_3777]) + _3777 + 196] = mem[floor32(mem[_3777]) + _3777 + -(mem[_3777] % 32) + 228 len mem[_3777] % 32]
                                require ext_code.size(address(_3745))
                                call address(_3745).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3658, 0, address(this.address), 128, mem[_3777], mem[_3777 + 196 len floor32(mem[_3777]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3712 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3776 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3826 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3826 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3826 + 36] = _3658
                            mem[_3826 + 68] = 0
                            mem[_3826 + 100] = address(_3712)
                            mem[_3826 + 132] = 128
                            mem[_3826 + 164] = mem[_3826]
                            s = 0
                            while s < mem[_3826]:
                                mem[s + _3826 + 196] = mem[s + _3826 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3826] % 32:
                                require ext_code.size(address(_3776))
                                call address(_3776).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3658, 0, address(_3712), 128, mem[_3826 + 164 len mem[_3826] + 32]
                            else:
                                mem[floor32(mem[_3826]) + _3826 + 196] = mem[floor32(mem[_3826]) + _3826 + -(mem[_3826] % 32) + 228 len mem[_3826] % 32]
                                require ext_code.size(address(_3776))
                                call address(_3776).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3658, 0, address(_3712), 128, mem[_3826], mem[_3826 + 196 len floor32(mem[_3826]) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3659 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3747 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3779 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3779 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3779 + 36] = 0
                            mem[_3779 + 68] = _3659
                            mem[_3779 + 100] = this.address
                            mem[_3779 + 132] = 128
                            mem[_3779 + 164] = mem[_3779]
                            s = 0
                            while s < mem[_3779]:
                                mem[s + _3779 + 196] = mem[s + _3779 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3779] % 32:
                                require ext_code.size(address(_3747))
                                call address(_3747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3659, address(this.address), 128, mem[_3779 + 164 len mem[_3779] + 32]
                            else:
                                mem[floor32(mem[_3779]) + _3779 + 196] = mem[floor32(mem[_3779]) + _3779 + -(mem[_3779] % 32) + 228 len mem[_3779] % 32]
                                require ext_code.size(address(_3747))
                                call address(_3747).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3659, address(this.address), 128, mem[_3779], mem[_3779 + 196 len floor32(mem[_3779]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3714 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3778 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3830 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3830 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3830 + 36] = 0
                            mem[_3830 + 68] = _3659
                            mem[_3830 + 100] = address(_3714)
                            mem[_3830 + 132] = 128
                            mem[_3830 + 164] = mem[_3830]
                            s = 0
                            while s < mem[_3830]:
                                mem[s + _3830 + 196] = mem[s + _3830 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3830] % 32:
                                require ext_code.size(address(_3778))
                                call address(_3778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3659, address(_3714), 128, mem[_3830 + 164 len mem[_3830] + 32]
                            else:
                                mem[floor32(mem[_3830]) + _3830 + 196] = mem[floor32(mem[_3830]) + _3830 + -(mem[_3830] % 32) + 228 len mem[_3830] % 32]
                                require ext_code.size(address(_3778))
                                call address(_3778).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3659, address(_3714), 128, mem[_3830], mem[_3830 + 196 len floor32(mem[_3830]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3749 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3781 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3781 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3781 + 36] = _3659
                            mem[_3781 + 68] = 0
                            mem[_3781 + 100] = this.address
                            mem[_3781 + 132] = 128
                            mem[_3781 + 164] = mem[_3781]
                            s = 0
                            while s < mem[_3781]:
                                mem[s + _3781 + 196] = mem[s + _3781 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3781] % 32:
                                require ext_code.size(address(_3749))
                                call address(_3749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3659, 0, address(this.address), 128, mem[_3781 + 164 len mem[_3781] + 32]
                            else:
                                mem[floor32(mem[_3781]) + _3781 + 196] = mem[floor32(mem[_3781]) + _3781 + -(mem[_3781] % 32) + 228 len mem[_3781] % 32]
                                require ext_code.size(address(_3749))
                                call address(_3749).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3659, 0, address(this.address), 128, mem[_3781], mem[_3781 + 196 len floor32(mem[_3781]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3716 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3780 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3834 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3834 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3834 + 36] = _3659
                            mem[_3834 + 68] = 0
                            mem[_3834 + 100] = address(_3716)
                            mem[_3834 + 132] = 128
                            mem[_3834 + 164] = mem[_3834]
                            s = 0
                            while s < mem[_3834]:
                                mem[s + _3834 + 196] = mem[s + _3834 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3834] % 32:
                                require ext_code.size(address(_3780))
                                call address(_3780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3659, 0, address(_3716), 128, mem[_3834 + 164 len mem[_3834] + 32]
                            else:
                                mem[floor32(mem[_3834]) + _3834 + 196] = mem[floor32(mem[_3834]) + _3834 + -(mem[_3834] % 32) + 228 len mem[_3834] % 32]
                                require ext_code.size(address(_3780))
                                call address(_3780).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3659, 0, address(_3716), 128, mem[_3834], mem[_3834 + 196 len floor32(mem[_3834]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length + 1] = call.data[calldata.size len 32 * ('cd', 36).length + 1]
            require 0 < ('cd', 36).length + 1
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = cd[100]
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[(32 * ('cd', 36).length + 1) + 128]
                require idx < ('cd', 36).length + 1
                _2472 = mem[(32 * idx) + 128]
                require idx < ('cd', 36).length
                _2493 = mem[(32 * idx + 1) + 128]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2472) == address(_2472):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require ext_code.size(mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20])
                    staticcall mem[(32 * idx) + (32 * ('cd', 36).length + 1) + 172 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    require idx < mem[(32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 160]
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] <= 0:
                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                    if address(_2493) == address(_2472):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[0])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                        if not mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                            if Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require 10000 * Mask(112, 0, ext_call.return_data[32])
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                        else:
                            require mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] / mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]:
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                if (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                                require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                                mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] * mem[(32 * idx) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 216 len 8])
                idx = idx + 1
                continue 
            require mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            if mem[(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192] - 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] < cd[132]:
                revert with 0, 'insufficient output'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[100]:
                revert with 0, 'insufficient balance'
            require 0 < ('cd', 36).length
            require 0 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 228] = address(('cd', 36)[0])
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 260] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + 256
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224] = ('cd', 36).length
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (64 * ('cd', 36).length) + 256] = 0
            idx = 0
            while idx < ('cd', 36).length:
                require idx < mem[96]
                require idx + 1 < mem[96]
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3660 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3751 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3783 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3783 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3783 + 36] = 0
                            mem[_3783 + 68] = _3660
                            mem[_3783 + 100] = this.address
                            mem[_3783 + 132] = 128
                            mem[_3783 + 164] = mem[_3783]
                            s = 0
                            while s < mem[_3783]:
                                mem[s + _3783 + 196] = mem[s + _3783 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3783] % 32:
                                require ext_code.size(address(_3751))
                                call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3660, address(this.address), 128, mem[_3783 + 164 len mem[_3783] + 32]
                            else:
                                mem[floor32(mem[_3783]) + _3783 + 196] = mem[floor32(mem[_3783]) + _3783 + -(mem[_3783] % 32) + 228 len mem[_3783] % 32]
                                require ext_code.size(address(_3751))
                                call address(_3751).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3660, address(this.address), 128, mem[_3783], mem[_3783 + 196 len floor32(mem[_3783]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3718 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3782 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3838 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3838 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3838 + 36] = 0
                            mem[_3838 + 68] = _3660
                            mem[_3838 + 100] = address(_3718)
                            mem[_3838 + 132] = 128
                            mem[_3838 + 164] = mem[_3838]
                            s = 0
                            while s < mem[_3838]:
                                mem[s + _3838 + 196] = mem[s + _3838 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3838] % 32:
                                require ext_code.size(address(_3782))
                                call address(_3782).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3660, address(_3718), 128, mem[_3838 + 164 len mem[_3838] + 32]
                            else:
                                mem[floor32(mem[_3838]) + _3838 + 196] = mem[floor32(mem[_3838]) + _3838 + -(mem[_3838] % 32) + 228 len mem[_3838] % 32]
                                require ext_code.size(address(_3782))
                                call address(_3782).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3660, address(_3718), 128, mem[_3838], mem[_3838 + 196 len floor32(mem[_3838]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3753 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3785 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3785 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3785 + 36] = _3660
                            mem[_3785 + 68] = 0
                            mem[_3785 + 100] = this.address
                            mem[_3785 + 132] = 128
                            mem[_3785 + 164] = mem[_3785]
                            s = 0
                            while s < mem[_3785]:
                                mem[s + _3785 + 196] = mem[s + _3785 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3785] % 32:
                                require ext_code.size(address(_3753))
                                call address(_3753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3660, 0, address(this.address), 128, mem[_3785 + 164 len mem[_3785] + 32]
                            else:
                                mem[floor32(mem[_3785]) + _3785 + 196] = mem[floor32(mem[_3785]) + _3785 + -(mem[_3785] % 32) + 228 len mem[_3785] % 32]
                                require ext_code.size(address(_3753))
                                call address(_3753).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3660, 0, address(this.address), 128, mem[_3785], mem[_3785 + 196 len floor32(mem[_3785]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3720 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3784 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3842 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3842 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3842 + 36] = _3660
                            mem[_3842 + 68] = 0
                            mem[_3842 + 100] = address(_3720)
                            mem[_3842 + 132] = 128
                            mem[_3842 + 164] = mem[_3842]
                            s = 0
                            while s < mem[_3842]:
                                mem[s + _3842 + 196] = mem[s + _3842 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3842] % 32:
                                require ext_code.size(address(_3784))
                                call address(_3784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3660, 0, address(_3720), 128, mem[_3842 + 164 len mem[_3842] + 32]
                            else:
                                mem[floor32(mem[_3842]) + _3842 + 196] = mem[floor32(mem[_3842]) + _3842 + -(mem[_3842] % 32) + 228 len mem[_3842] % 32]
                                require ext_code.size(address(_3784))
                                call address(_3784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3660, 0, address(_3720), 128, mem[_3842], mem[_3842 + 196 len floor32(mem[_3842]) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'ZERO_ADDRESS'
                    require idx + 1 < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 192]
                    _3661 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3755 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3787 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3787 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3787 + 36] = 0
                            mem[_3787 + 68] = _3661
                            mem[_3787 + 100] = this.address
                            mem[_3787 + 132] = 128
                            mem[_3787 + 164] = mem[_3787]
                            s = 0
                            while s < mem[_3787]:
                                mem[s + _3787 + 196] = mem[s + _3787 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3787] % 32:
                                require ext_code.size(address(_3755))
                                call address(_3755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3661, address(this.address), 128, mem[_3787 + 164 len mem[_3787] + 32]
                            else:
                                mem[floor32(mem[_3787]) + _3787 + 196] = mem[floor32(mem[_3787]) + _3787 + -(mem[_3787] % 32) + 228 len mem[_3787] % 32]
                                require ext_code.size(address(_3755))
                                call address(_3755).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3661, address(this.address), 128, mem[_3787], mem[_3787 + 196 len floor32(mem[_3787]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3722 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3786 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3846 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3846 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3846 + 36] = 0
                            mem[_3846 + 68] = _3661
                            mem[_3846 + 100] = address(_3722)
                            mem[_3846 + 132] = 128
                            mem[_3846 + 164] = mem[_3846]
                            s = 0
                            while s < mem[_3846]:
                                mem[s + _3846 + 196] = mem[s + _3846 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3846] % 32:
                                require ext_code.size(address(_3786))
                                call address(_3786).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3661, address(_3722), 128, mem[_3846 + 164 len mem[_3846] + 32]
                            else:
                                mem[floor32(mem[_3846]) + _3846 + 196] = mem[floor32(mem[_3846]) + _3846 + -(mem[_3846] % 32) + 228 len mem[_3846] % 32]
                                require ext_code.size(address(_3786))
                                call address(_3786).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _3661, address(_3722), 128, mem[_3846], mem[_3846 + 196 len floor32(mem[_3846]) + 32]
                    else:
                        if idx >= mem[96] - 2:
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3757 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3789 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3789 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3789 + 36] = _3661
                            mem[_3789 + 68] = 0
                            mem[_3789 + 100] = this.address
                            mem[_3789 + 132] = 128
                            mem[_3789 + 164] = mem[_3789]
                            s = 0
                            while s < mem[_3789]:
                                mem[s + _3789 + 196] = mem[s + _3789 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3789] % 32:
                                require ext_code.size(address(_3757))
                                call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3661, 0, address(this.address), 128, mem[_3789 + 164 len mem[_3789] + 32]
                            else:
                                mem[floor32(mem[_3789]) + _3789 + 196] = mem[floor32(mem[_3789]) + _3789 + -(mem[_3789] % 32) + 228 len mem[_3789] % 32]
                                require ext_code.size(address(_3757))
                                call address(_3757).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3661, 0, address(this.address), 128, mem[_3789], mem[_3789 + 196 len floor32(mem[_3789]) + 32]
                        else:
                            require idx + 1 < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3724 = mem[(32 * idx + 1) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            require idx < mem[(32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 224]
                            _3788 = mem[(32 * idx) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length + 1) + (32 * ('cd', 36).length) + 256]
                            _3850 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3850 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3850 + 36] = _3661
                            mem[_3850 + 68] = 0
                            mem[_3850 + 100] = address(_3724)
                            mem[_3850 + 132] = 128
                            mem[_3850 + 164] = mem[_3850]
                            s = 0
                            while s < mem[_3850]:
                                mem[s + _3850 + 196] = mem[s + _3850 + 32]
                                s = s + 32
                                continue 
                            if not mem[_3850] % 32:
                                require ext_code.size(address(_3788))
                                call address(_3788).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3661, 0, address(_3724), 128, mem[_3850 + 164 len mem[_3850] + 32]
                            else:
                                mem[floor32(mem[_3850]) + _3850 + 196] = mem[floor32(mem[_3850]) + _3850 + -(mem[_3850] % 32) + 228 len mem[_3850] % 32]
                                require ext_code.size(address(_3788))
                                call address(_3788).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _3661, 0, address(_3724), 128, mem[_3850], mem[_3850 + 196 len floor32(mem[_3850]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
