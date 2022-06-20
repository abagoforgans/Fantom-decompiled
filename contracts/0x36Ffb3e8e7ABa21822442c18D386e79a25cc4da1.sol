contract main {




// =====================  Runtime code  =====================


uint256 DIVISOR;
address strategyAddress;
address stor2;
array of struct sub_b7324175;
array of struct sub_4cbae508;

function DIVISOR() payable {
    return DIVISOR
}

function sub_4cbae508(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4cbae508.length
    return sub_4cbae508[arg1].field_0, sub_4cbae508[arg1].field_256
}

function strategy() payable {
    return strategyAddress
}

function sub_b7324175(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b7324175.length
    return sub_b7324175[arg1].field_0, sub_b7324175[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_d18e680d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not arg2:
        return arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (arg2 * ext_call.return_data[0] / 10^18)
}

function sub_16cc3b07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    strategyAddress = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor2 = ext_call.return_data[12 len 20]
}

function sub_dc917407(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (64 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _19 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_19] = cd[s]
        mem[_19 + 32] = cd[(s + 32)]
        mem[t] = _19
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    sub_b7324175.length = 0
    mem[0] = 3
    idx = 0
    while 2 * sub_b7324175.length > idx:
        sub_b7324175[idx].field_0 = 0
        sub_b7324175[idx].field_256 = 0
        idx = idx + 2
        continue 
    _48 = mem[96]
    idx = 0
    while idx < _48:
        _50 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_50] = mem[mem[(32 * idx) + 128] + 12 len 20]
        require idx < mem[96]
        mem[_50 + 32] = mem[mem[(32 * idx) + 128] + 32]
        sub_b7324175.length++
        mem[0] = 3
        sub_b7324175[sub_b7324175.length].field_0 = mem[_50 + 12 len 20]
        sub_b7324175[sub_b7324175.length].field_256 = mem[_50 + 32]
        _48 = mem[96]
        idx = idx + 1
        continue 
    if sub_b7324175.length != mem[96]:
        revert with 0, 'INV LENGTH'
}

function sub_e34fba8c(?) payable {
    require sub_b7324175.length <= test266151307()
    mem[96] = sub_b7324175.length
    if not sub_b7324175.length:
        require sub_b7324175.length <= test266151307()
        mem[(32 * sub_b7324175.length) + 128] = sub_b7324175.length
        mem[64] = (64 * sub_b7324175.length) + 160
        if not sub_b7324175.length:
            idx = 0
            while idx < sub_b7324175.length:
                mem[0] = 3
                if sub_b7324175[idx].field_256 <= 0:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _4472 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_4453] == mem[_4453 + 12 len 20]
                    mem[_4472] = mem[_4453]
                    mem[_4472 + 32] = mem[_4453 + 32]
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = mem[_4472 + 32]
                    idx = idx + 1
                    continue 
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = sub_b7324175[idx].field_0
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_b7324175[idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4465 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4477 = mem[_4465]
                if sub_b7324175[idx].field_256 < mem[_4465]:
                    if not sub_b7324175[idx].field_256:
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = sub_b7324175[idx].field_256
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        mem[mem[64] + 4] = strategyAddress
                        require ext_code.size(sub_b7324175[idx].field_0)
                        staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args strategyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4597 = mem[_4569]
                        if not mem[_4569]:
                            require idx < sub_b7324175.length
                            mem[0] = 3
                            if 0 == _4597 - sub_b7324175[idx].field_256:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4822 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _4890 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_4822] == mem[_4822 + 12 len 20]
                                mem[_4890] = mem[_4822]
                                mem[_4890 + 32] = mem[_4822 + 32]
                                _5071 = mem[_4890 + 32]
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5315 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _5519 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_5315] == mem[_5315 + 12 len 20]
                                mem[_5519] = mem[_5315]
                                mem[_5519 + 32] = mem[_5315 + 32]
                                _5981 = mem[_5519 + 32]
                                _6068 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6068] = 30
                                mem[_6068 + 32] = 'SafeMath: subtraction overflow'
                                if _5071 <= _5981:
                                    require idx < mem[(32 * sub_b7324175.length) + 128]
                                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _5981 - _5071
                                    idx = idx + 1
                                    continue 
                                _6257 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6257 + 68] = mem[idx + _6068 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6257 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _6257 + -mem[64] + 100
                            _4769 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4769] = 30
                            mem[_4769 + 32] = 'SafeMath: subtraction overflow'
                            if _4597 - sub_b7324175[idx].field_256 > _4597:
                                _4805 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4805 + 68] = mem[idx + _4769 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4805 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _4805 + -mem[64] + 100
                            if not sub_b7324175[idx].field_256:
                                _4970 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4970] = 26
                                mem[_4970 + 32] = 'SafeMath: division by zero'
                                if not _4597:
                                    _5039 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5039 + 68] = mem[idx + _4970 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5039 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5039 + -mem[64] + 100
                                _5218 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5218] = 26
                                mem[_5218 + 32] = 'SafeMath: division by zero'
                                if not DIVISOR:
                                    _5317 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5317 + 68] = mem[idx + _5218 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5317 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5317 + -mem[64] + 100
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5913 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _6162 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_5913] == mem[_5913 + 12 len 20]
                                mem[_6162] = mem[_5913]
                                mem[_6162 + 32] = mem[_5913 + 32]
                                _6763 = mem[_6162 + 32]
                                _6849 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6849] = 30
                                mem[_6849 + 32] = 'SafeMath: subtraction overflow'
                                if 0 / _4597 / DIVISOR <= _6763:
                                    require idx < mem[(32 * sub_b7324175.length) + 128]
                                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6763 - (0 / _4597 / DIVISOR)
                                    idx = idx + 1
                                    continue 
                                _7066 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7066 + 68] = mem[idx + _6849 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7066 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7066 + -mem[64] + 100
                            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _5010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5010] = 26
                            mem[_5010 + 32] = 'SafeMath: division by zero'
                            if not _4597:
                                _5072 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5072 + 68] = mem[idx + _5010 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5072 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5072 + -mem[64] + 100
                            _5260 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5260] = 26
                            mem[_5260 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _5382 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5382 + 68] = mem[idx + _5260 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5382 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5382 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5982 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6258 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5982] == mem[_5982 + 12 len 20]
                            mem[_6258] = mem[_5982]
                            mem[_6258 + 32] = mem[_5982 + 32]
                            _6848 = mem[_6258 + 32]
                            _6953 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6953] = 30
                            mem[_6953 + 32] = 'SafeMath: subtraction overflow'
                            if DIVISOR * sub_b7324175[idx].field_256 / _4597 / DIVISOR <= _6848:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6848 - (DIVISOR * sub_b7324175[idx].field_256 / _4597 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _7178 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            s = 0
                            while s < 30:
                                mem[s + _7178 + 68] = mem[s + _6953 + 32]
                                s = s + 32
                                continue 
                            mem[_7178 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7178 + -mem[64] + 100
                        require ext_code.size(sub_b7324175[idx].field_0)
                        staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4714 = mem[_4674]
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == (_4597 * _4714 / 10^18) - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4934 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5037 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_4934] == mem[_4934 + 12 len 20]
                            mem[_5037] = mem[_4934]
                            mem[_5037 + 32] = mem[_4934 + 32]
                            _5312 = mem[_5037 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5643 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5910 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5643] == mem[_5643 + 12 len 20]
                            mem[_5910] = mem[_5643]
                            mem[_5910 + 32] = mem[_5643 + 32]
                            _6443 = mem[_5910 + 32]
                            _6556 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6556] = 30
                            mem[_6556 + 32] = 'SafeMath: subtraction overflow'
                            if _5312 <= _6443:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6443 - _5312
                                idx = idx + 1
                                continue 
                            _6759 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6759 + 68] = mem[idx + _6556 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6759 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6759 + -mem[64] + 100
                        _4869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4869] = 30
                        mem[_4869 + 32] = 'SafeMath: subtraction overflow'
                        if (_4597 * _4714 / 10^18) - sub_b7324175[idx].field_256 > _4597 * _4714 / 10^18:
                            _4912 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4912 + 68] = mem[idx + _4869 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4912 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4912 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5166 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5166] = 26
                            mem[_5166 + 32] = 'SafeMath: division by zero'
                            if not _4597 * _4714 / 10^18:
                                _5259 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5259 + 68] = mem[idx + _5166 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5259 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5259 + -mem[64] + 100
                            _5518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5518] = 26
                            mem[_5518 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _5645 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5645 + 68] = mem[idx + _5518 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5645 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5645 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6667 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6346] == mem[_6346 + 12 len 20]
                            mem[_6667] = mem[_6346]
                            mem[_6667 + 32] = mem[_6346 + 32]
                            _7285 = mem[_6667 + 32]
                            _7382 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7382] = 30
                            mem[_7382 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4597 * _4714 / 10^18 / DIVISOR <= _7285:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7285 - (0 / _4597 * _4714 / 10^18 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _7572 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7572 + 68] = mem[idx + _7382 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7572 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7572 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5214] = 26
                        mem[_5214 + 32] = 'SafeMath: division by zero'
                        if not _4597 * _4714 / 10^18:
                            _5313 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5313 + 68] = mem[idx + _5214 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5313 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5313 + -mem[64] + 100
                        _5572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5572] = 26
                        mem[_5572 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5730 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5730 + 68] = mem[idx + _5572 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5730 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5730 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6444 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6760 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6444] == mem[_6444 + 12 len 20]
                        mem[_6760] = mem[_6444]
                        mem[_6760 + 32] = mem[_6444 + 32]
                        _7381 = mem[_6760 + 32]
                        _7480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7480] = 30
                        mem[_7480 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4597 * _4714 / 10^18 / DIVISOR <= _7381:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7381 - (DIVISOR * sub_b7324175[idx].field_256 / _4597 * _4714 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7652 + 68] = mem[idx + _7480 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7652 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7652 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4528 = mem[_4516]
                    if not sub_b7324175[idx].field_256:
                        _4568 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4568] = 26
                        mem[_4568 + 32] = 'SafeMath: division by zero'
                        if not _4528:
                            _4596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4596 + 68] = mem[idx + _4568 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4596 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4596 + -mem[64] + 100
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = 0 / _4528
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        mem[mem[64] + 4] = strategyAddress
                        require ext_code.size(sub_b7324175[idx].field_0)
                        staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args strategyAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4820 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4868 = mem[_4820]
                        if not mem[_4820]:
                            require idx < sub_b7324175.length
                            mem[0] = 3
                            if 0 == _4868 - sub_b7324175[idx].field_256:
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5310 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _5515 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_5310] == mem[_5310 + 12 len 20]
                                mem[_5515] = mem[_5310]
                                mem[_5515 + 32] = mem[_5310 + 32]
                                _5976 = mem[_5515 + 32]
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6439 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _6757 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_6439] == mem[_6439 + 12 len 20]
                                mem[_6757] = mem[_6439]
                                mem[_6757 + 32] = mem[_6439 + 32]
                                _7378 = mem[_6757 + 32]
                                _7479 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7479] = 30
                                mem[_7479 + 32] = 'SafeMath: subtraction overflow'
                                if _5976 <= _7378:
                                    require idx < mem[(32 * sub_b7324175.length) + 128]
                                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7378 - _5976
                                    idx = idx + 1
                                    continue 
                                _7650 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _7650 + 68] = mem[idx + _7479 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7650 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _7650 + -mem[64] + 100
                            _5165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5165] = 30
                            mem[_5165 + 32] = 'SafeMath: subtraction overflow'
                            if _4868 - sub_b7324175[idx].field_256 > _4868:
                                _5257 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5257 + 68] = mem[idx + _5165 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5257 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5257 + -mem[64] + 100
                            if not sub_b7324175[idx].field_256:
                                _5729 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5729] = 26
                                mem[_5729 + 32] = 'SafeMath: division by zero'
                                if not _4868:
                                    _5909 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _5909 + 68] = mem[idx + _5729 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5909 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5909 + -mem[64] + 100
                                _6254 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6254] = 26
                                mem[_6254 + 32] = 'SafeMath: division by zero'
                                if not DIVISOR:
                                    _6441 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _6441 + 68] = mem[idx + _6254 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6441 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _6441 + -mem[64] + 100
                                require ext_code.size(strategyAddress)
                                staticcall strategyAddress.0x191ac2d2 with:
                                        gas gas_remaining wei
                                       args idx
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _7571 = mem[64]
                                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                                mem[64] = mem[64] + 64
                                require mem[_7282] == mem[_7282 + 12 len 20]
                                mem[_7571] = mem[_7282]
                                mem[_7571 + 32] = mem[_7282 + 32]
                                _8030 = mem[_7571 + 32]
                                _8089 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8089] = 30
                                mem[_8089 + 32] = 'SafeMath: subtraction overflow'
                                if 0 / _4868 / DIVISOR <= _8030:
                                    require idx < mem[(32 * sub_b7324175.length) + 128]
                                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8030 - (0 / _4868 / DIVISOR)
                                    idx = idx + 1
                                    continue 
                                _8240 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8240 + 68] = mem[idx + _8089 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8240 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8240 + -mem[64] + 100
                            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _5830 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5830] = 26
                            mem[_5830 + 32] = 'SafeMath: division by zero'
                            if not _4868:
                                _5977 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5977 + 68] = mem[idx + _5830 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5977 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5977 + -mem[64] + 100
                            _6343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6343] = 26
                            mem[_6343 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6553 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6553 + 68] = mem[idx + _6343 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6553 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6553 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7379 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7651 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7379] == mem[_7379 + 12 len 20]
                            mem[_7651] = mem[_7379]
                            mem[_7651 + 32] = mem[_7379 + 32]
                            _8088 = mem[_7651 + 32]
                            _8167 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8167] = 30
                            mem[_8167 + 32] = 'SafeMath: subtraction overflow'
                            if DIVISOR * sub_b7324175[idx].field_256 / _4868 / DIVISOR <= _8088:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8088 - (DIVISOR * sub_b7324175[idx].field_256 / _4868 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8291 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8291 + 68] = mem[idx + _8167 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8291 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8291 + -mem[64] + 100
                        require ext_code.size(sub_b7324175[idx].field_0)
                        staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5068 = mem[_5008]
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == (_4868 * _5068 / 10^18) - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5907 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5638] == mem[_5638 + 12 len 20]
                            mem[_5907] = mem[_5638]
                            mem[_5907 + 32] = mem[_5638 + 32]
                            _6436 = mem[_5907 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7279 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6944] == mem[_6944 + 12 len 20]
                            mem[_7279] = mem[_6944]
                            mem[_7279 + 32] = mem[_6944 + 32]
                            _7828 = mem[_7279 + 32]
                            _7912 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7912] = 30
                            mem[_7912 + 32] = 'SafeMath: subtraction overflow'
                            if _6436 <= _7828:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7828 - _6436
                                idx = idx + 1
                                continue 
                            _8026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8026 + 68] = mem[idx + _7912 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8026 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8026 + -mem[64] + 100
                        _5457 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5457] = 30
                        mem[_5457 + 32] = 'SafeMath: subtraction overflow'
                        if (_4868 * _5068 / 10^18) - sub_b7324175[idx].field_256 > _4868 * _5068 / 10^18:
                            _5570 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5570 + 68] = mem[idx + _5457 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5570 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5570 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _6157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6157] = 26
                            mem[_6157 + 32] = 'SafeMath: division by zero'
                            if not _4868 * _5068 / 10^18:
                                _6342 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6342 + 68] = mem[idx + _6157 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6342 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6342 + -mem[64] + 100
                            _6756 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6756] = 26
                            mem[_6756 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6946 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6946 + 68] = mem[idx + _6756 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6946 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6946 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7978 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7737] == mem[_7737 + 12 len 20]
                            mem[_7978] = mem[_7737]
                            mem[_7978 + 32] = mem[_7737 + 32]
                            _8333 = mem[_7978 + 32]
                            _8387 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8387] = 30
                            mem[_8387 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4868 * _5068 / 10^18 / DIVISOR <= _8333:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8333 - (0 / _4868 * _5068 / 10^18 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8522 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8522 + 68] = mem[idx + _8387 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8522 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8522 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _6250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6250] = 26
                        mem[_6250 + 32] = 'SafeMath: division by zero'
                        if not _4868 * _5068 / 10^18:
                            _6437 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6437 + 68] = mem[idx + _6250 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6437 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6437 + -mem[64] + 100
                        _6841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6841] = 26
                        mem[_6841 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _7059 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7059 + 68] = mem[idx + _6841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7059 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7059 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _8027 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7829] == mem[_7829 + 12 len 20]
                        mem[_8027] = mem[_7829]
                        mem[_8027 + 32] = mem[_7829 + 32]
                        _8386 = mem[_8027 + 32]
                        _8457 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8457] = 30
                        mem[_8457 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4868 * _5068 / 10^18 / DIVISOR <= _8386:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8386 - (DIVISOR * sub_b7324175[idx].field_256 / _4868 * _5068 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8566 + 68] = mem[idx + _8457 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8566 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8566 + -mem[64] + 100
                    if 10^18 * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4580] = 26
                    mem[_4580 + 32] = 'SafeMath: division by zero'
                    if not _4528:
                        _4612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4612 + 68] = mem[idx + _4580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4612 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4612 + -mem[64] + 100
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 10^18 * sub_b7324175[idx].field_256 / _4528
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4888 = mem[_4844]
                    if not mem[_4844]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4888 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5377 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5569 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5377] == mem[_5377 + 12 len 20]
                            mem[_5569] = mem[_5377]
                            mem[_5569 + 32] = mem[_5377 + 32]
                            _6057 = mem[_5569 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6547 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6839 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6547] == mem[_6547 + 12 len 20]
                            mem[_6839] = mem[_6547]
                            mem[_6839 + 32] = mem[_6547 + 32]
                            _7474 = mem[_6839 + 32]
                            _7567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7567] = 30
                            mem[_7567 + 32] = 'SafeMath: subtraction overflow'
                            if _6057 <= _7474:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7474 - _6057
                                idx = idx + 1
                                continue 
                            _7734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7734 + 68] = mem[idx + _7567 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7734 + -mem[64] + 100
                        _5212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5212] = 30
                        mem[_5212 + 32] = 'SafeMath: subtraction overflow'
                        if _4888 - sub_b7324175[idx].field_256 > _4888:
                            _5308 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5308 + 68] = mem[idx + _5212 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5308 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5308 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5828 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5828] = 26
                            mem[_5828 + 32] = 'SafeMath: division by zero'
                            if not _4888:
                                _5974 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5974 + 68] = mem[idx + _5828 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5974 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5974 + -mem[64] + 100
                            _6340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6340] = 26
                            mem[_6340 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6549 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6549 + 68] = mem[idx + _6340 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6549 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6549 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7647 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7375] == mem[_7375 + 12 len 20]
                            mem[_7647] = mem[_7375]
                            mem[_7647 + 32] = mem[_7375 + 32]
                            _8084 = mem[_7647 + 32]
                            _8164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8164] = 30
                            mem[_8164 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4888 / DIVISOR <= _8084:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8084 - (0 / _4888 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8289 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8289 + 68] = mem[idx + _8164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8289 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8289 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5905] = 26
                        mem[_5905 + 32] = 'SafeMath: division by zero'
                        if not _4888:
                            _6058 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6058 + 68] = mem[idx + _5905 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6058 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6058 + -mem[64] + 100
                        _6434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6434] = 26
                        mem[_6434 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6662 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6662 + 68] = mem[idx + _6434 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6662 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6662 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7735 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7475] == mem[_7475 + 12 len 20]
                        mem[_7735] = mem[_7475]
                        mem[_7735 + 32] = mem[_7475 + 32]
                        _8163 = mem[_7735 + 32]
                        _8238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8238] = 30
                        mem[_8238 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4888 / DIVISOR <= _8163:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8163 - (DIVISOR * sub_b7324175[idx].field_256 / _4888 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8329 + 68] = mem[idx + _8238 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8329 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8329 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5108 = mem[_5036]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4888 * _5108 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5972 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5724] == mem[_5724 + 12 len 20]
                        mem[_5972] = mem[_5724]
                        mem[_5972 + 32] = mem[_5724 + 32]
                        _6544 = mem[_5972 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7372 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7052] == mem[_7052 + 12 len 20]
                        mem[_7372] = mem[_7052]
                        mem[_7372 + 32] = mem[_7052 + 32]
                        _7908 = mem[_7372 + 32]
                        _7976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7976] = 30
                        mem[_7976 + 32] = 'SafeMath: subtraction overflow'
                        if _6544 <= _7908:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7908 - _6544
                            idx = idx + 1
                            continue 
                        _8080 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8080 + 68] = mem[idx + _7976 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8080 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8080 + -mem[64] + 100
                    _5512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5512] = 30
                    mem[_5512 + 32] = 'SafeMath: subtraction overflow'
                    if (_4888 * _5108 / 10^18) - sub_b7324175[idx].field_256 > _4888 * _5108 / 10^18:
                        _5636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5636 + 68] = mem[idx + _5512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5636 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5636 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _6248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6248] = 26
                        mem[_6248 + 32] = 'SafeMath: division by zero'
                        if not _4888 * _5108 / 10^18:
                            _6433 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6433 + 68] = mem[idx + _6248 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6433 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6433 + -mem[64] + 100
                        _6838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6838] = 26
                        mem[_6838 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _7054 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7054 + 68] = mem[idx + _6838 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7054 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7054 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _8024 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7825] == mem[_7825 + 12 len 20]
                        mem[_8024] = mem[_7825]
                        mem[_8024 + 32] = mem[_7825 + 32]
                        _8382 = mem[_8024 + 32]
                        _8454 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8454] = 30
                        mem[_8454 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4888 * _5108 / 10^18 / DIVISOR <= _8382:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8382 - (0 / _4888 * _5108 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8564 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8564 + 68] = mem[idx + _8454 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8564 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8564 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6336] = 26
                    mem[_6336 + 32] = 'SafeMath: division by zero'
                    if not _4888 * _5108 / 10^18:
                        _6545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6545 + 68] = mem[idx + _6336 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6545 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6545 + -mem[64] + 100
                    _6940 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6940] = 26
                    mem[_6940 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        s = 0
                        while s < 26:
                            mem[s + _7168 + 68] = mem[s + _6940 + 32]
                            s = s + 32
                            continue 
                        mem[_7168 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7168 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8081 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7909] == mem[_7909 + 12 len 20]
                    mem[_8081] = mem[_7909]
                    mem[_8081 + 32] = mem[_7909 + 32]
                    _8453 = mem[_8081 + 32]
                    _8520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8520] = 30
                    mem[_8520 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4888 * _5108 / 10^18 / DIVISOR <= _8453:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8453 - (DIVISOR * sub_b7324175[idx].field_256 / _4888 * _5108 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8604 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8604 + 68] = mem[idx + _8520 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8604 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8604 + -mem[64] + 100
                if not mem[_4465]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = mem[_4465]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4583 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4615 = mem[_4583]
                    if not mem[_4583]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4615 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _4916 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_4848] == mem[_4848 + 12 len 20]
                            mem[_4916] = mem[_4848]
                            mem[_4916 + 32] = mem[_4848 + 32]
                            _5119 = mem[_4916 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5583 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5392] == mem[_5392 + 12 len 20]
                            mem[_5583] = mem[_5392]
                            mem[_5583 + 32] = mem[_5392 + 32]
                            _6078 = mem[_5583 + 32]
                            _6175 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6175] = 30
                            mem[_6175 + 32] = 'SafeMath: subtraction overflow'
                            if _5119 <= _6078:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6078 - _5119
                                idx = idx + 1
                                continue 
                            _6358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6358 + 68] = mem[idx + _6175 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6358 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6358 + -mem[64] + 100
                        _4791 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4791] = 30
                        mem[_4791 + 32] = 'SafeMath: subtraction overflow'
                        if _4615 - sub_b7324175[idx].field_256 > _4615:
                            _4825 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4825 + 68] = mem[idx + _4791 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4825 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4825 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5014] = 26
                            mem[_5014 + 32] = 'SafeMath: division by zero'
                            if not _4615:
                                _5077 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5077 + 68] = mem[idx + _5014 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5077 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5077 + -mem[64] + 100
                            _5268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5268] = 26
                            mem[_5268 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _5394 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5394 + 68] = mem[idx + _5268 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5394 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5394 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6269 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5992] == mem[_5992 + 12 len 20]
                            mem[_6269] = mem[_5992]
                            mem[_6269 + 32] = mem[_5992 + 32]
                            _6861 = mem[_6269 + 32]
                            _6967 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6967] = 30
                            mem[_6967 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4615 / DIVISOR <= _6861:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6861 - (0 / _4615 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _7194 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            s = 0
                            while s < 30:
                                mem[s + _7194 + 68] = mem[s + _6967 + 32]
                                s = s + 32
                                continue 
                            mem[_7194 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7194 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5042] = 26
                        mem[_5042 + 32] = 'SafeMath: division by zero'
                        if not _4615:
                            _5120 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5120 + 68] = mem[idx + _5042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5120 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5120 + -mem[64] + 100
                        _5323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5323] = 26
                        mem[_5323 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5467 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5467 + 68] = mem[idx + _5323 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5467 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5467 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6359 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6079] == mem[_6079 + 12 len 20]
                        mem[_6359] = mem[_6079]
                        mem[_6359 + 32] = mem[_6079 + 32]
                        _6966 = mem[_6359 + 32]
                        _7080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7080] = 30
                        mem[_7080 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4615 / DIVISOR <= _6966:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6966 - (DIVISOR * sub_b7324175[idx].field_256 / _4615 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7298 + 68] = mem[idx + _7080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7298 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7298 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4745 = mem[_4693]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4615 * _4745 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5075 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4973] == mem[_4973 + 12 len 20]
                        mem[_5075] = mem[_4973]
                        mem[_5075 + 32] = mem[_4973 + 32]
                        _5389 = mem[_5075 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5989 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5743] == mem[_5743 + 12 len 20]
                        mem[_5989] = mem[_5743]
                        mem[_5989 + 32] = mem[_5743 + 32]
                        _6569 = mem[_5989 + 32]
                        _6681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6681] = 30
                        mem[_6681 + 32] = 'SafeMath: subtraction overflow'
                        if _5389 <= _6569:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6569 - _5389
                            idx = idx + 1
                            continue 
                        _6857 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6857 + 68] = mem[idx + _6681 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6857 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6857 + -mem[64] + 100
                    _4892 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4892] = 30
                    mem[_4892 + 32] = 'SafeMath: subtraction overflow'
                    if (_4615 * _4745 / 10^18) - sub_b7324175[idx].field_256 > _4615 * _4745 / 10^18:
                        _4939 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4939 + 68] = mem[idx + _4892 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4939 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4939 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5221] = 26
                        mem[_5221 + 32] = 'SafeMath: division by zero'
                        if not _4615 * _4745 / 10^18:
                            _5322 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5322 + 68] = mem[idx + _5221 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5322 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5322 + -mem[64] + 100
                        _5582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5582] = 26
                        mem[_5582 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5745 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5745 + 68] = mem[idx + _5582 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5745 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5745 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6771 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6457] == mem[_6457 + 12 len 20]
                        mem[_6771] = mem[_6457]
                        mem[_6771 + 32] = mem[_6457 + 32]
                        _7394 = mem[_6771 + 32]
                        _7492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7492] = 30
                        mem[_7492 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4615 * _4745 / 10^18 / DIVISOR <= _7394:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7394 - (0 / _4615 * _4745 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7664 + 68] = mem[idx + _7492 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7664 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7664 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5264] = 26
                    mem[_5264 + 32] = 'SafeMath: division by zero'
                    if not _4615 * _4745 / 10^18:
                        _5390 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5390 + 68] = mem[idx + _5264 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5390 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5390 + -mem[64] + 100
                    _5654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5654] = 26
                    mem[_5654 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5841 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5841 + 68] = mem[idx + _5654 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5841 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5841 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6570 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6858 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6570] == mem[_6570 + 12 len 20]
                    mem[_6858] = mem[_6570]
                    mem[_6858 + 32] = mem[_6570 + 32]
                    _7491 = mem[_6858 + 32]
                    _7582 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7582] = 30
                    mem[_7582 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4615 * _4745 / 10^18 / DIVISOR <= _7491:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7491 - (DIVISOR * sub_b7324175[idx].field_256 / _4615 * _4745 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7751 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7751 + 68] = mem[idx + _7582 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7751 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7751 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4537 = mem[_4521]
                if not _4477:
                    _4582 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4582] = 26
                    mem[_4582 + 32] = 'SafeMath: division by zero'
                    if not _4537:
                        _4614 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4614 + 68] = mem[idx + _4582 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4614 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4614 + -mem[64] + 100
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0 / _4537
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4891 = mem[_4846]
                    if not mem[_4846]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4891 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5387 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5579 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5387] == mem[_5387 + 12 len 20]
                            mem[_5579] = mem[_5387]
                            mem[_5579 + 32] = mem[_5387 + 32]
                            _6073 = mem[_5579 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6855 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6565] == mem[_6565 + 12 len 20]
                            mem[_6855] = mem[_6565]
                            mem[_6855 + 32] = mem[_6565 + 32]
                            _7488 = mem[_6855 + 32]
                            _7581 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7581] = 30
                            mem[_7581 + 32] = 'SafeMath: subtraction overflow'
                            if _6073 <= _7488:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7488 - _6073
                                idx = idx + 1
                                continue 
                            _7749 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7749 + 68] = mem[idx + _7581 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7749 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7749 + -mem[64] + 100
                        _5220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5220] = 30
                        mem[_5220 + 32] = 'SafeMath: subtraction overflow'
                        if _4891 - sub_b7324175[idx].field_256 > _4891:
                            _5320 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5320 + 68] = mem[idx + _5220 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5320 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5320 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5840 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5840] = 26
                            mem[_5840 + 32] = 'SafeMath: division by zero'
                            if not _4891:
                                _5988 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5988 + 68] = mem[idx + _5840 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5988 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5988 + -mem[64] + 100
                            _6355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6355] = 26
                            mem[_6355 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6567 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6567 + 68] = mem[idx + _6355 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6567 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6567 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7663 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7391] == mem[_7391 + 12 len 20]
                            mem[_7663] = mem[_7391]
                            mem[_7663 + 32] = mem[_7391 + 32]
                            _8097 = mem[_7663 + 32]
                            _8177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8177] = 30
                            mem[_8177 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4891 / DIVISOR <= _8097:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8097 - (0 / _4891 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8297 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8297 + 68] = mem[idx + _8177 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8297 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8297 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5916 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5916] = 26
                        mem[_5916 + 32] = 'SafeMath: division by zero'
                        if not _4891:
                            _6074 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6074 + 68] = mem[idx + _5916 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6074 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6074 + -mem[64] + 100
                        _6454 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6454] = 26
                        mem[_6454 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6678 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6678 + 68] = mem[idx + _6454 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6678 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6678 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7750 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7489] == mem[_7489 + 12 len 20]
                        mem[_7750] = mem[_7489]
                        mem[_7750 + 32] = mem[_7489 + 32]
                        _8176 = mem[_7750 + 32]
                        _8248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8248] = 30
                        mem[_8248 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4891 / DIVISOR <= _8176:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8176 - (DIVISOR * sub_b7324175[idx].field_256 / _4891 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8339 + 68] = mem[idx + _8248 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8339 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8339 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5116 = mem[_5040]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4891 * _5116 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5986 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5738] == mem[_5738 + 12 len 20]
                        mem[_5986] = mem[_5738]
                        mem[_5986 + 32] = mem[_5738 + 32]
                        _6562 = mem[_5986 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7388 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7071] == mem[_7071 + 12 len 20]
                        mem[_7388] = mem[_7071]
                        mem[_7388 + 32] = mem[_7071 + 32]
                        _7919 = mem[_7388 + 32]
                        _7985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7985] = 30
                        mem[_7985 + 32] = 'SafeMath: subtraction overflow'
                        if _6562 <= _7919:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7919 - _6562
                            idx = idx + 1
                            continue 
                        _8093 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8093 + 68] = mem[idx + _7985 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8093 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8093 + -mem[64] + 100
                    _5522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5522] = 30
                    mem[_5522 + 32] = 'SafeMath: subtraction overflow'
                    if (_4891 * _5116 / 10^18) - sub_b7324175[idx].field_256 > _4891 * _5116 / 10^18:
                        _5652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5652 + 68] = mem[idx + _5522 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5652 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5652 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _6264 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6264] = 26
                        mem[_6264 + 32] = 'SafeMath: division by zero'
                        if not _4891 * _5116 / 10^18:
                            _6453 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6453 + 68] = mem[idx + _6264 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6453 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6453 + -mem[64] + 100
                        _6854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6854] = 26
                        mem[_6854 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _7073 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7073 + 68] = mem[idx + _6854 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7073 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7073 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7839 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _8035 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7839] == mem[_7839 + 12 len 20]
                        mem[_8035] = mem[_7839]
                        mem[_8035 + 32] = mem[_7839 + 32]
                        _8395 = mem[_8035 + 32]
                        _8466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8466] = 30
                        mem[_8466 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4891 * _5116 / 10^18 / DIVISOR <= _8395:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8395 - (0 / _4891 * _5116 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8572 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8572 + 68] = mem[idx + _8466 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8572 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8572 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6351 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6351] = 26
                    mem[_6351 + 32] = 'SafeMath: division by zero'
                    if not _4891 * _5116 / 10^18:
                        _6563 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6563 + 68] = mem[idx + _6351 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6563 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6563 + -mem[64] + 100
                    _6959 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6959] = 26
                    mem[_6959 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7187 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        s = 0
                        while s < 26:
                            mem[s + _7187 + 68] = mem[s + _6959 + 32]
                            s = s + 32
                            continue 
                        mem[_7187 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7187 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8094 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7920] == mem[_7920 + 12 len 20]
                    mem[_8094] = mem[_7920]
                    mem[_8094 + 32] = mem[_7920 + 32]
                    _8465 = mem[_8094 + 32]
                    _8529 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8529] = 30
                    mem[_8529 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4891 * _5116 / 10^18 / DIVISOR <= _8465:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8465 - (DIVISOR * sub_b7324175[idx].field_256 / _4891 * _5116 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8613 + 68] = mem[idx + _8529 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8613 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8613 + -mem[64] + 100
                if 10^18 * _4477 / _4477 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4598 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4598] = 26
                mem[_4598 + 32] = 'SafeMath: division by zero'
                if not _4537:
                    _4629 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4629 + 68] = mem[idx + _4598 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4629 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4629 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 10^18 * _4477 / _4537
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4914 = mem[_4871]
                if not mem[_4871]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4914 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5651 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5462] == mem[_5462 + 12 len 20]
                        mem[_5651] = mem[_5462]
                        mem[_5651 + 32] = mem[_5462 + 32]
                        _6164 = mem[_5651 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6957 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6672] == mem[_6672 + 12 len 20]
                        mem[_6957] = mem[_6672]
                        mem[_6957 + 32] = mem[_6672 + 32]
                        _7576 = mem[_6957 + 32]
                        _7659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7659] = 30
                        mem[_7659 + 32] = 'SafeMath: subtraction overflow'
                        if _6164 <= _7576:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7576 - _6164
                            idx = idx + 1
                            continue 
                        _7836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7836 + 68] = mem[idx + _7659 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7836 + -mem[64] + 100
                    _5262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5262] = 30
                    mem[_5262 + 32] = 'SafeMath: subtraction overflow'
                    if _4914 - sub_b7324175[idx].field_256 > _4914:
                        _5385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5385 + 68] = mem[idx + _5262 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5385 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5914 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5914] = 26
                        mem[_5914 + 32] = 'SafeMath: division by zero'
                        if not _4914:
                            _6071 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6071 + 68] = mem[idx + _5914 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6071 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6071 + -mem[64] + 100
                        _6451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6451] = 26
                        mem[_6451 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6674 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6674 + 68] = mem[idx + _6451 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6674 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6674 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7746 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7485] == mem[_7485 + 12 len 20]
                        mem[_7746] = mem[_7485]
                        mem[_7746 + 32] = mem[_7485 + 32]
                        _8172 = mem[_7746 + 32]
                        _8245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8245] = 30
                        mem[_8245 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4914 / DIVISOR <= _8172:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8172 - (0 / _4914 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8337 + 68] = mem[idx + _8245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8337 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8337 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5984] = 26
                    mem[_5984 + 32] = 'SafeMath: division by zero'
                    if not _4914:
                        _6165 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6165 + 68] = mem[idx + _5984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6165 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6165 + -mem[64] + 100
                    _6560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6560] = 26
                    mem[_6560 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6766 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6766 + 68] = mem[idx + _6560 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6766 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6766 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7577 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7837 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7577] == mem[_7577 + 12 len 20]
                    mem[_7837] = mem[_7577]
                    mem[_7837 + 32] = mem[_7577 + 32]
                    _8244 = mem[_7837 + 32]
                    _8295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8295] = 30
                    mem[_8295 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4914 / DIVISOR <= _8244:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8244 - (DIVISOR * sub_b7324175[idx].field_256 / _4914 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8391 + 68] = mem[idx + _8295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8391 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8391 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5074 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5168 = mem[_5074]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4914 * _5168 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6069 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5835] == mem[_5835 + 12 len 20]
                    mem[_6069] = mem[_5835]
                    mem[_6069 + 32] = mem[_5835 + 32]
                    _6669 = mem[_6069 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7482 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7180] == mem[_7180 + 12 len 20]
                    mem[_7482] = mem[_7180]
                    mem[_7482 + 32] = mem[_7180 + 32]
                    _7981 = mem[_7482 + 32]
                    _8033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8033] = 30
                    mem[_8033 + 32] = 'SafeMath: subtraction overflow'
                    if _6669 <= _7981:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7981 - _6669
                        idx = idx + 1
                        continue 
                    _8168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8168 + 68] = mem[idx + _8033 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8168 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8168 + -mem[64] + 100
                _5576 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5576] = 30
                mem[_5576 + 32] = 'SafeMath: subtraction overflow'
                if (_4914 * _5168 / 10^18) - sub_b7324175[idx].field_256 > _4914 * _5168 / 10^18:
                    _5736 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5736 + 68] = mem[idx + _5576 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5736 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5736 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6349 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6349] = 26
                    mem[_6349 + 32] = 'SafeMath: division by zero'
                    if not _4914 * _5168 / 10^18:
                        _6559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6559 + 68] = mem[idx + _6349 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6559 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6559 + -mem[64] + 100
                    _6956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6956] = 26
                    mem[_6956 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7182 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        s = 0
                        while s < 26:
                            mem[s + _7182 + 68] = mem[s + _6956 + 32]
                            s = s + 32
                            continue 
                        mem[_7182 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7182 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7916 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8091 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7916] == mem[_7916 + 12 len 20]
                    mem[_8091] = mem[_7916]
                    mem[_8091 + 32] = mem[_7916 + 32]
                    _8461 = mem[_8091 + 32]
                    _8526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8526] = 30
                    mem[_8526 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4914 * _5168 / 10^18 / DIVISOR <= _8461:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8461 - (0 / _4914 * _5168 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8611 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8611 + 68] = mem[idx + _8526 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8611 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8611 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6447] = 26
                mem[_6447 + 32] = 'SafeMath: division by zero'
                if not _4914 * _5168 / 10^18:
                    _6670 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6670 + 68] = mem[idx + _6447 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6670 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6670 + -mem[64] + 100
                _7067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7067] = 26
                mem[_7067 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7288 + 68] = mem[idx + _7067 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7288 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8169 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7982] == mem[_7982 + 12 len 20]
                mem[_8169] = mem[_7982]
                mem[_8169 + 32] = mem[_7982 + 32]
                _8525 = mem[_8169 + 32]
                _8570 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8570] = 30
                mem[_8570 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4914 * _5168 / 10^18 / DIVISOR <= _8525:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8525 - (DIVISOR * sub_b7324175[idx].field_256 / _4914 * _5168 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8661 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8661 + 68] = mem[idx + _8570 + 32]
                    idx = idx + 32
                    continue 
                mem[_8661 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8661 + -mem[64] + 100
            _4412 = mem[64]
            mem[mem[64]] = 64
            _4424 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _9224 = mem[(32 * sub_b7324175.length) + 128]
            mem[_4412 + (32 * mem[96]) + 96] = mem[(32 * sub_b7324175.length) + 128]
            mem[_4412 + (32 * _4424) + 128 len 32 * _9224] = mem[(32 * sub_b7324175.length) + 160 len 32 * _9224]
            return memory
              from mem[64]
               len _4412 + (32 * _4424) + (32 * _9224) + -mem[64] + 128
        mem[(32 * sub_b7324175.length) + 160 len 32 * sub_b7324175.length] = call.data[calldata.size len 32 * sub_b7324175.length]
        idx = 0
        while idx < sub_b7324175.length:
            mem[0] = 3
            if sub_b7324175[idx].field_256 <= 0:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _4473 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_4456] == mem[_4456 + 12 len 20]
                mem[_4473] = mem[_4456]
                mem[_4473 + 32] = mem[_4456 + 32]
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = mem[_4473 + 32]
                idx = idx + 1
                continue 
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = sub_b7324175[idx].field_0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_b7324175[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4479 = mem[_4467]
            if sub_b7324175[idx].field_256 < mem[_4467]:
                if not sub_b7324175[idx].field_256:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = sub_b7324175[idx].field_256
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4572 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4601 = mem[_4572]
                    if not mem[_4572]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4601 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _4896 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_4828] == mem[_4828 + 12 len 20]
                            mem[_4896] = mem[_4828]
                            mem[_4896 + 32] = mem[_4828 + 32]
                            _5081 = mem[_4896 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5533 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5332] == mem[_5332 + 12 len 20]
                            mem[_5533] = mem[_5332]
                            mem[_5533 + 32] = mem[_5332 + 32]
                            _6002 = mem[_5533 + 32]
                            _6092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6092] = 30
                            mem[_6092 + 32] = 'SafeMath: subtraction overflow'
                            if _5081 <= _6002:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6002 - _5081
                                idx = idx + 1
                                continue 
                            _6279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6279 + 68] = mem[idx + _6092 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6279 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6279 + -mem[64] + 100
                        _4774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4774] = 30
                        mem[_4774 + 32] = 'SafeMath: subtraction overflow'
                        if _4601 - sub_b7324175[idx].field_256 > _4601:
                            _4809 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4809 + 68] = mem[idx + _4774 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4809 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4809 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _4980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4980] = 26
                            mem[_4980 + 32] = 'SafeMath: division by zero'
                            if not _4601:
                                _5047 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5047 + 68] = mem[idx + _4980 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5047 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5047 + -mem[64] + 100
                            _5229 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5229] = 26
                            mem[_5229 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _5334 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5334 + 68] = mem[idx + _5229 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5334 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5334 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6186 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5930] == mem[_5930 + 12 len 20]
                            mem[_6186] = mem[_5930]
                            mem[_6186 + 32] = mem[_5930 + 32]
                            _6784 = mem[_6186 + 32]
                            _6875 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6875] = 30
                            mem[_6875 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4601 / DIVISOR <= _6784:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6784 - (0 / _4601 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _7095 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7095 + 68] = mem[idx + _6875 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7095 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7095 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5017] = 26
                        mem[_5017 + 32] = 'SafeMath: division by zero'
                        if not _4601:
                            _5082 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5082 + 68] = mem[idx + _5017 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5082 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5082 + -mem[64] + 100
                        _5273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5273] = 26
                        mem[_5273 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5402 + 68] = mem[idx + _5273 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5402 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5402 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6280 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6003] == mem[_6003 + 12 len 20]
                        mem[_6280] = mem[_6003]
                        mem[_6280 + 32] = mem[_6003 + 32]
                        _6874 = mem[_6280 + 32]
                        _6981 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6981] = 30
                        mem[_6981 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4601 / DIVISOR <= _6874:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6874 - (DIVISOR * sub_b7324175[idx].field_256 / _4601 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7205 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _7205 + 68] = mem[s + _6981 + 32]
                            s = s + 32
                            continue 
                        mem[_7205 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7205 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4721 = mem[_4678]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4601 * _4721 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5045 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4943] == mem[_4943 + 12 len 20]
                        mem[_5045] = mem[_4943]
                        mem[_5045 + 32] = mem[_4943 + 32]
                        _5329 = mem[_5045 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5927 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5665] == mem[_5665 + 12 len 20]
                        mem[_5927] = mem[_5665]
                        mem[_5927 + 32] = mem[_5665 + 32]
                        _6471 = mem[_5927 + 32]
                        _6585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6585] = 30
                        mem[_6585 + 32] = 'SafeMath: subtraction overflow'
                        if _5329 <= _6471:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6471 - _5329
                            idx = idx + 1
                            continue 
                        _6780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6780 + 68] = mem[idx + _6585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6780 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6780 + -mem[64] + 100
                    _4874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4874] = 30
                    mem[_4874 + 32] = 'SafeMath: subtraction overflow'
                    if (_4601 * _4721 / 10^18) - sub_b7324175[idx].field_256 > _4601 * _4721 / 10^18:
                        _4917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4917 + 68] = mem[idx + _4874 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4917 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4917 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5178] = 26
                        mem[_5178 + 32] = 'SafeMath: division by zero'
                        if not _4601 * _4721 / 10^18:
                            _5272 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5272 + 68] = mem[idx + _5178 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5272 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5272 + -mem[64] + 100
                        _5532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5532] = 26
                        mem[_5532 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5667 + 68] = mem[idx + _5532 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5667 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5667 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6690 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6370] == mem[_6370 + 12 len 20]
                        mem[_6690] = mem[_6370]
                        mem[_6690 + 32] = mem[_6370 + 32]
                        _7309 = mem[_6690 + 32]
                        _7407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7407] = 30
                        mem[_7407 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4601 * _4721 / 10^18 / DIVISOR <= _7309:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7309 - (0 / _4601 * _4721 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7592 + 68] = mem[idx + _7407 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7592 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5225] = 26
                    mem[_5225 + 32] = 'SafeMath: division by zero'
                    if not _4601 * _4721 / 10^18:
                        _5330 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5330 + 68] = mem[idx + _5225 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5330 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5330 + -mem[64] + 100
                    _5589 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5589] = 26
                    mem[_5589 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5756 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5756 + 68] = mem[idx + _5589 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5756 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5756 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6781 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6472] == mem[_6472 + 12 len 20]
                    mem[_6781] = mem[_6472]
                    mem[_6781 + 32] = mem[_6472 + 32]
                    _7406 = mem[_6781 + 32]
                    _7503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7503] = 30
                    mem[_7503 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4601 * _4721 / 10^18 / DIVISOR <= _7406:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7406 - (DIVISOR * sub_b7324175[idx].field_256 / _4601 * _4721 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7674 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7674 + 68] = mem[idx + _7503 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7674 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7674 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4530 = mem[_4517]
                if not sub_b7324175[idx].field_256:
                    _4571 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4571] = 26
                    mem[_4571 + 32] = 'SafeMath: division by zero'
                    if not _4530:
                        _4600 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4600 + 68] = mem[idx + _4571 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4600 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4600 + -mem[64] + 100
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0 / _4530
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4873 = mem[_4826]
                    if not mem[_4826]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4873 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5529 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5327] == mem[_5327 + 12 len 20]
                            mem[_5529] = mem[_5327]
                            mem[_5529 + 32] = mem[_5327 + 32]
                            _5997 = mem[_5529 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6467 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6778 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6467] == mem[_6467 + 12 len 20]
                            mem[_6778] = mem[_6467]
                            mem[_6778 + 32] = mem[_6467 + 32]
                            _7403 = mem[_6778 + 32]
                            _7502 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7502] = 30
                            mem[_7502 + 32] = 'SafeMath: subtraction overflow'
                            if _5997 <= _7403:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7403 - _5997
                                idx = idx + 1
                                continue 
                            _7672 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7672 + 68] = mem[idx + _7502 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7672 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7672 + -mem[64] + 100
                        _5177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5177] = 30
                        mem[_5177 + 32] = 'SafeMath: subtraction overflow'
                        if _4873 - sub_b7324175[idx].field_256 > _4873:
                            _5270 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5270 + 68] = mem[idx + _5177 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5270 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5270 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5755 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5755] = 26
                            mem[_5755 + 32] = 'SafeMath: division by zero'
                            if not _4873:
                                _5926 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5926 + 68] = mem[idx + _5755 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5926 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5926 + -mem[64] + 100
                            _6276 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6276] = 26
                            mem[_6276 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6469 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6469 + 68] = mem[idx + _6276 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6469 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6469 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7591 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7306] == mem[_7306 + 12 len 20]
                            mem[_7591] = mem[_7306]
                            mem[_7591 + 32] = mem[_7306 + 32]
                            _8044 = mem[_7591 + 32]
                            _8109 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8109] = 30
                            mem[_8109 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4873 / DIVISOR <= _8044:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8044 - (0 / _4873 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8253 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8253 + 68] = mem[idx + _8109 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8253 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8253 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5849] = 26
                        mem[_5849 + 32] = 'SafeMath: division by zero'
                        if not _4873:
                            _5998 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5998 + 68] = mem[idx + _5849 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5998 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5998 + -mem[64] + 100
                        _6367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6367] = 26
                        mem[_6367 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6582 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6582 + 68] = mem[idx + _6367 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6582 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6582 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7673 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7404] == mem[_7404 + 12 len 20]
                        mem[_7673] = mem[_7404]
                        mem[_7673 + 32] = mem[_7404 + 32]
                        _8108 = mem[_7673 + 32]
                        _8186 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8186] = 30
                        mem[_8186 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4873 / DIVISOR <= _8108:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8108 - (DIVISOR * sub_b7324175[idx].field_256 / _4873 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8301 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8301 + 68] = mem[idx + _8186 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8301 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8301 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5078 = mem[_5015]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4873 * _5078 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5924 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5660] == mem[_5660 + 12 len 20]
                        mem[_5924] = mem[_5660]
                        mem[_5924 + 32] = mem[_5660 + 32]
                        _6464 = mem[_5924 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6972 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7303 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6972] == mem[_6972 + 12 len 20]
                        mem[_7303] = mem[_6972]
                        mem[_7303 + 32] = mem[_6972 + 32]
                        _7849 = mem[_7303 + 32]
                        _7929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7929] = 30
                        mem[_7929 + 32] = 'SafeMath: subtraction overflow'
                        if _6464 <= _7849:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7849 - _6464
                            idx = idx + 1
                            continue 
                        _8040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8040 + 68] = mem[idx + _7929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8040 + -mem[64] + 100
                    _5471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5471] = 30
                    mem[_5471 + 32] = 'SafeMath: subtraction overflow'
                    if (_4873 * _5078 / 10^18) - sub_b7324175[idx].field_256 > _4873 * _5078 / 10^18:
                        _5587 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5587 + 68] = mem[idx + _5471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5587 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5587 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _6181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6181] = 26
                        mem[_6181 + 32] = 'SafeMath: division by zero'
                        if not _4873 * _5078 / 10^18:
                            _6366 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6366 + 68] = mem[idx + _6181 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6366 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6366 + -mem[64] + 100
                        _6777 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6777] = 26
                        mem[_6777 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6974 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6974 + 68] = mem[idx + _6777 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6974 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6974 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7990 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7760] == mem[_7760 + 12 len 20]
                        mem[_7990] = mem[_7760]
                        mem[_7990 + 32] = mem[_7760 + 32]
                        _8346 = mem[_7990 + 32]
                        _8405 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8405] = 30
                        mem[_8405 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4873 * _5078 / 10^18 / DIVISOR <= _8346:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8346 - (0 / _4873 * _5078 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8533 + 68] = mem[idx + _8405 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8533 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8533 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6272] = 26
                    mem[_6272 + 32] = 'SafeMath: division by zero'
                    if not _4873 * _5078 / 10^18:
                        _6465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6465 + 68] = mem[idx + _6272 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6465 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6465 + -mem[64] + 100
                    _6867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6867] = 26
                    mem[_6867 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7088 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7088 + 68] = mem[idx + _6867 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7088 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7088 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8041 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7850] == mem[_7850 + 12 len 20]
                    mem[_8041] = mem[_7850]
                    mem[_8041 + 32] = mem[_7850 + 32]
                    _8404 = mem[_8041 + 32]
                    _8474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8474] = 30
                    mem[_8474 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4873 * _5078 / 10^18 / DIVISOR <= _8404:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8404 - (DIVISOR * sub_b7324175[idx].field_256 / _4873 * _5078 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8576 + 68] = mem[idx + _8474 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8576 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8576 + -mem[64] + 100
                if 10^18 * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4584 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4584] = 26
                mem[_4584 + 32] = 'SafeMath: division by zero'
                if not _4530:
                    _4616 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4616 + 68] = mem[idx + _4584 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4616 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4616 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 10^18 * sub_b7324175[idx].field_256 / _4530
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4894 = mem[_4850]
                if not mem[_4850]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4894 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5586 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5397] == mem[_5397 + 12 len 20]
                        mem[_5586] = mem[_5397]
                        mem[_5586 + 32] = mem[_5397 + 32]
                        _6081 = mem[_5586 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6865 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6576] == mem[_6576 + 12 len 20]
                        mem[_6865] = mem[_6576]
                        mem[_6865 + 32] = mem[_6576 + 32]
                        _7497 = mem[_6865 + 32]
                        _7587 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7587] = 30
                        mem[_7587 + 32] = 'SafeMath: subtraction overflow'
                        if _6081 <= _7497:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7497 - _6081
                            idx = idx + 1
                            continue 
                        _7757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7757 + 68] = mem[idx + _7587 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7757 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7757 + -mem[64] + 100
                    _5223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5223] = 30
                    mem[_5223 + 32] = 'SafeMath: subtraction overflow'
                    if _4894 - sub_b7324175[idx].field_256 > _4894:
                        _5325 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5325 + 68] = mem[idx + _5223 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5325 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5325 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5847] = 26
                        mem[_5847 + 32] = 'SafeMath: division by zero'
                        if not _4894:
                            _5995 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5995 + 68] = mem[idx + _5847 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5995 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5995 + -mem[64] + 100
                        _6364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6364] = 26
                        mem[_6364 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6578 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6578 + 68] = mem[idx + _6364 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6578 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6578 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7669 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7400] == mem[_7400 + 12 len 20]
                        mem[_7669] = mem[_7400]
                        mem[_7669 + 32] = mem[_7400 + 32]
                        _8104 = mem[_7669 + 32]
                        _8183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8183] = 30
                        mem[_8183 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4894 / DIVISOR <= _8104:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8104 - (0 / _4894 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8299 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8299 + 68] = mem[idx + _8183 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8299 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8299 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5922] = 26
                    mem[_5922 + 32] = 'SafeMath: division by zero'
                    if not _4894:
                        _6082 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6082 + 68] = mem[idx + _5922 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6082 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6082 + -mem[64] + 100
                    _6462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6462] = 26
                    mem[_6462 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6685 + 68] = mem[idx + _6462 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6685 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6685 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7758 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7498] == mem[_7498 + 12 len 20]
                    mem[_7758] = mem[_7498]
                    mem[_7758 + 32] = mem[_7498 + 32]
                    _8182 = mem[_7758 + 32]
                    _8251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8251] = 30
                    mem[_8251 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4894 / DIVISOR <= _8182:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8182 - (DIVISOR * sub_b7324175[idx].field_256 / _4894 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8342 + 68] = mem[idx + _8251 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8342 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8342 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5044 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5122 = mem[_5044]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4894 * _5122 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5993 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5750] == mem[_5750 + 12 len 20]
                    mem[_5993] = mem[_5750]
                    mem[_5993 + 32] = mem[_5750 + 32]
                    _6573 = mem[_5993 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7397 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7081] == mem[_7081 + 12 len 20]
                    mem[_7397] = mem[_7081]
                    mem[_7397 + 32] = mem[_7081 + 32]
                    _7925 = mem[_7397 + 32]
                    _7988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7988] = 30
                    mem[_7988 + 32] = 'SafeMath: subtraction overflow'
                    if _6573 <= _7925:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7925 - _6573
                        idx = idx + 1
                        continue 
                    _8100 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8100 + 68] = mem[idx + _7988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8100 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8100 + -mem[64] + 100
                _5526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5526] = 30
                mem[_5526 + 32] = 'SafeMath: subtraction overflow'
                if (_4894 * _5122 / 10^18) - sub_b7324175[idx].field_256 > _4894 * _5122 / 10^18:
                    _5658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5658 + 68] = mem[idx + _5526 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5658 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5658 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6270] = 26
                    mem[_6270 + 32] = 'SafeMath: division by zero'
                    if not _4894 * _5122 / 10^18:
                        _6461 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6461 + 68] = mem[idx + _6270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6461 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6461 + -mem[64] + 100
                    _6864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6864] = 26
                    mem[_6864 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7083 + 68] = mem[idx + _6864 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7083 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7083 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8038 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7846] == mem[_7846 + 12 len 20]
                    mem[_8038] = mem[_7846]
                    mem[_8038 + 32] = mem[_7846 + 32]
                    _8400 = mem[_8038 + 32]
                    _8471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8471] = 30
                    mem[_8471 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4894 * _5122 / 10^18 / DIVISOR <= _8400:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8400 - (0 / _4894 * _5122 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8574 + 68] = mem[idx + _8471 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8574 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8574 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6360] = 26
                mem[_6360 + 32] = 'SafeMath: division by zero'
                if not _4894 * _5122 / 10^18:
                    _6574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6574 + 68] = mem[idx + _6360 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6574 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6574 + -mem[64] + 100
                _6968 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6968] = 26
                mem[_6968 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7195 + 68] = mem[s + _6968 + 32]
                        s = s + 32
                        continue 
                    mem[_7195 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7195 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8101 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7926] == mem[_7926 + 12 len 20]
                mem[_8101] = mem[_7926]
                mem[_8101 + 32] = mem[_7926 + 32]
                _8470 = mem[_8101 + 32]
                _8531 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8531] = 30
                mem[_8531 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4894 * _5122 / 10^18 / DIVISOR <= _8470:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8470 - (DIVISOR * sub_b7324175[idx].field_256 / _4894 * _5122 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8617 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8617 + 68] = mem[idx + _8531 + 32]
                    idx = idx + 32
                    continue 
                mem[_8617 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8617 + -mem[64] + 100
            if not mem[_4467]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_4467]
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4587 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4619 = mem[_4587]
                if not mem[_4587]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4619 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _4921 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4854] == mem[_4854 + 12 len 20]
                        mem[_4921] = mem[_4854]
                        mem[_4921 + 32] = mem[_4854 + 32]
                        _5133 = mem[_4921 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5600 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5412] == mem[_5412 + 12 len 20]
                        mem[_5600] = mem[_5412]
                        mem[_5600 + 32] = mem[_5412 + 32]
                        _6102 = mem[_5600 + 32]
                        _6199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6199] = 30
                        mem[_6199 + 32] = 'SafeMath: subtraction overflow'
                        if _5133 <= _6102:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6102 - _5133
                            idx = idx + 1
                            continue 
                        _6382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6382 + 68] = mem[idx + _6199 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6382 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6382 + -mem[64] + 100
                    _4795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4795] = 30
                    mem[_4795 + 32] = 'SafeMath: subtraction overflow'
                    if _4619 - sub_b7324175[idx].field_256 > _4619:
                        _4831 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4831 + 68] = mem[idx + _4795 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4831 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4831 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5021 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5021] = 26
                        mem[_5021 + 32] = 'SafeMath: division by zero'
                        if not _4619:
                            _5087 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5087 + 68] = mem[idx + _5021 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5087 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5087 + -mem[64] + 100
                        _5281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5281] = 26
                        mem[_5281 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5414 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5414 + 68] = mem[idx + _5281 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5414 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5414 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6013 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6291 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6013] == mem[_6013 + 12 len 20]
                        mem[_6291] = mem[_6013]
                        mem[_6291 + 32] = mem[_6013 + 32]
                        _6887 = mem[_6291 + 32]
                        _6995 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6995] = 30
                        mem[_6995 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4619 / DIVISOR <= _6887:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6887 - (0 / _4619 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7221 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _7221 + 68] = mem[s + _6995 + 32]
                            s = s + 32
                            continue 
                        mem[_7221 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7221 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5050] = 26
                    mem[_5050 + 32] = 'SafeMath: division by zero'
                    if not _4619:
                        _5134 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5134 + 68] = mem[idx + _5050 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5134 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5134 + -mem[64] + 100
                    _5340 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5340] = 26
                    mem[_5340 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5481 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5481 + 68] = mem[idx + _5340 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5481 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5481 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6383 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6103] == mem[_6103 + 12 len 20]
                    mem[_6383] = mem[_6103]
                    mem[_6383 + 32] = mem[_6103 + 32]
                    _6994 = mem[_6383 + 32]
                    _7109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7109] = 30
                    mem[_7109 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4619 / DIVISOR <= _6994:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6994 - (DIVISOR * sub_b7324175[idx].field_256 / _4619 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7322 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7322 + 68] = mem[idx + _7109 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7322 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7322 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4699 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4752 = mem[_4699]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4619 * _4752 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5085 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_4983] == mem[_4983 + 12 len 20]
                    mem[_5085] = mem[_4983]
                    mem[_5085 + 32] = mem[_4983 + 32]
                    _5409 = mem[_5085 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6010 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5769] == mem[_5769 + 12 len 20]
                    mem[_6010] = mem[_5769]
                    mem[_6010 + 32] = mem[_5769 + 32]
                    _6598 = mem[_6010 + 32]
                    _6704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6704] = 30
                    mem[_6704 + 32] = 'SafeMath: subtraction overflow'
                    if _5409 <= _6598:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6598 - _5409
                        idx = idx + 1
                        continue 
                    _6883 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6883 + 68] = mem[idx + _6704 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6883 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6883 + -mem[64] + 100
                _4898 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4898] = 30
                mem[_4898 + 32] = 'SafeMath: subtraction overflow'
                if (_4619 * _4752 / 10^18) - sub_b7324175[idx].field_256 > _4619 * _4752 / 10^18:
                    _4948 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4948 + 68] = mem[idx + _4898 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4948 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4948 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5232] = 26
                    mem[_5232 + 32] = 'SafeMath: division by zero'
                    if not _4619 * _4752 / 10^18:
                        _5339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5339 + 68] = mem[idx + _5232 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5339 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5339 + -mem[64] + 100
                    _5599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5599] = 26
                    mem[_5599 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5771 + 68] = mem[idx + _5599 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5771 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5771 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6792 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6485] == mem[_6485 + 12 len 20]
                    mem[_6792] = mem[_6485]
                    mem[_6792 + 32] = mem[_6485 + 32]
                    _7419 = mem[_6792 + 32]
                    _7515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7515] = 30
                    mem[_7515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4619 * _4752 / 10^18 / DIVISOR <= _7419:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7419 - (0 / _4619 * _4752 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7686 + 68] = mem[idx + _7515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7686 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7686 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5277] = 26
                mem[_5277 + 32] = 'SafeMath: division by zero'
                if not _4619 * _4752 / 10^18:
                    _5410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5410 + 68] = mem[idx + _5277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5410 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5410 + -mem[64] + 100
                _5676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5676] = 26
                mem[_5676 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _5860 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5860 + 68] = mem[idx + _5676 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5860 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5860 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6884 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6599] == mem[_6599 + 12 len 20]
                mem[_6884] = mem[_6599]
                mem[_6884 + 32] = mem[_6599 + 32]
                _7514 = mem[_6884 + 32]
                _7602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7602] = 30
                mem[_7602 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4619 * _4752 / 10^18 / DIVISOR <= _7514:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7514 - (DIVISOR * sub_b7324175[idx].field_256 / _4619 * _4752 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _7774 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7774 + 68] = mem[idx + _7602 + 32]
                    idx = idx + 32
                    continue 
                mem[_7774 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7774 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4523 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4539 = mem[_4523]
            if not _4479:
                _4586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4586] = 26
                mem[_4586 + 32] = 'SafeMath: division by zero'
                if not _4539:
                    _4618 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4618 + 68] = mem[idx + _4586 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4618 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4618 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0 / _4539
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4897 = mem[_4852]
                if not mem[_4852]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4897 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5596 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5407] == mem[_5407 + 12 len 20]
                        mem[_5596] = mem[_5407]
                        mem[_5596 + 32] = mem[_5407 + 32]
                        _6097 = mem[_5596 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6881 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6594] == mem[_6594 + 12 len 20]
                        mem[_6881] = mem[_6594]
                        mem[_6881 + 32] = mem[_6594 + 32]
                        _7511 = mem[_6881 + 32]
                        _7601 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7601] = 30
                        mem[_7601 + 32] = 'SafeMath: subtraction overflow'
                        if _6097 <= _7511:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7511 - _6097
                            idx = idx + 1
                            continue 
                        _7772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7772 + 68] = mem[idx + _7601 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7772 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7772 + -mem[64] + 100
                    _5231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5231] = 30
                    mem[_5231 + 32] = 'SafeMath: subtraction overflow'
                    if _4897 - sub_b7324175[idx].field_256 > _4897:
                        _5337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5337 + 68] = mem[idx + _5231 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5337 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5337 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5859] = 26
                        mem[_5859 + 32] = 'SafeMath: division by zero'
                        if not _4897:
                            _6009 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6009 + 68] = mem[idx + _5859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6009 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6009 + -mem[64] + 100
                        _6379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6379] = 26
                        mem[_6379 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6596 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6596 + 68] = mem[idx + _6379 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6596 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6596 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7685 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7416] == mem[_7416 + 12 len 20]
                        mem[_7685] = mem[_7416]
                        mem[_7685 + 32] = mem[_7416 + 32]
                        _8117 = mem[_7685 + 32]
                        _8196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8196] = 30
                        mem[_8196 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4897 / DIVISOR <= _8117:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8117 - (0 / _4897 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8307 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8307 + 68] = mem[idx + _8196 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8307 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8307 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5933] = 26
                    mem[_5933 + 32] = 'SafeMath: division by zero'
                    if not _4897:
                        _6098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6098 + 68] = mem[idx + _5933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6098 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6098 + -mem[64] + 100
                    _6482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6482] = 26
                    mem[_6482 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6701 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6701 + 68] = mem[idx + _6482 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6701 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6701 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7773 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7512] == mem[_7512 + 12 len 20]
                    mem[_7773] = mem[_7512]
                    mem[_7773 + 32] = mem[_7512 + 32]
                    _8195 = mem[_7773 + 32]
                    _8261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8261] = 30
                    mem[_8261 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4897 / DIVISOR <= _8195:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8195 - (DIVISOR * sub_b7324175[idx].field_256 / _4897 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8352 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8352 + 68] = mem[idx + _8261 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8352 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8352 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5048 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5130 = mem[_5048]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4897 * _5130 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6007 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5764] == mem[_5764 + 12 len 20]
                    mem[_6007] = mem[_5764]
                    mem[_6007 + 32] = mem[_5764 + 32]
                    _6591 = mem[_6007 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7413 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7100] == mem[_7100 + 12 len 20]
                    mem[_7413] = mem[_7100]
                    mem[_7413 + 32] = mem[_7100 + 32]
                    _7936 = mem[_7413 + 32]
                    _7997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7997] = 30
                    mem[_7997 + 32] = 'SafeMath: subtraction overflow'
                    if _6591 <= _7936:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7936 - _6591
                        idx = idx + 1
                        continue 
                    _8113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8113 + 68] = mem[idx + _7997 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8113 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8113 + -mem[64] + 100
                _5536 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5536] = 30
                mem[_5536 + 32] = 'SafeMath: subtraction overflow'
                if (_4897 * _5130 / 10^18) - sub_b7324175[idx].field_256 > _4897 * _5130 / 10^18:
                    _5674 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5674 + 68] = mem[idx + _5536 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5674 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5674 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6286 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6286] = 26
                    mem[_6286 + 32] = 'SafeMath: division by zero'
                    if not _4897 * _5130 / 10^18:
                        _6481 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6481 + 68] = mem[idx + _6286 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6481 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6481 + -mem[64] + 100
                    _6880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6880] = 26
                    mem[_6880 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7102 + 68] = mem[idx + _6880 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7102 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7102 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8049 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7860] == mem[_7860 + 12 len 20]
                    mem[_8049] = mem[_7860]
                    mem[_8049 + 32] = mem[_7860 + 32]
                    _8413 = mem[_8049 + 32]
                    _8483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8483] = 30
                    mem[_8483 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4897 * _5130 / 10^18 / DIVISOR <= _8413:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8413 - (0 / _4897 * _5130 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8582 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8582 + 68] = mem[idx + _8483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8582 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8582 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6375] = 26
                mem[_6375 + 32] = 'SafeMath: division by zero'
                if not _4897 * _5130 / 10^18:
                    _6592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6592 + 68] = mem[idx + _6375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6592 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6592 + -mem[64] + 100
                _6987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6987] = 26
                mem[_6987 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7214 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7214 + 68] = mem[s + _6987 + 32]
                        s = s + 32
                        continue 
                    mem[_7214 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7214 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8114 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7937] == mem[_7937 + 12 len 20]
                mem[_8114] = mem[_7937]
                mem[_8114 + 32] = mem[_7937 + 32]
                _8482 = mem[_8114 + 32]
                _8540 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8540] = 30
                mem[_8540 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4897 * _5130 / 10^18 / DIVISOR <= _8482:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8482 - (DIVISOR * sub_b7324175[idx].field_256 / _4897 * _5130 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8626 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8626 + 68] = mem[idx + _8540 + 32]
                    idx = idx + 32
                    continue 
                mem[_8626 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8626 + -mem[64] + 100
            if 10^18 * _4479 / _4479 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _4602 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4602] = 26
            mem[_4602 + 32] = 'SafeMath: division by zero'
            if not _4539:
                _4632 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4632 + 68] = mem[idx + _4602 + 32]
                    idx = idx + 32
                    continue 
                mem[_4632 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4632 + -mem[64] + 100
            require idx < mem[96]
            mem[(32 * idx) + 128] = 10^18 * _4479 / _4539
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = strategyAddress
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4919 = mem[_4876]
            if not mem[_4876]:
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == _4919 - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5673 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5476] == mem[_5476 + 12 len 20]
                    mem[_5673] = mem[_5476]
                    mem[_5673 + 32] = mem[_5476 + 32]
                    _6188 = mem[_5673 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6695 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6985 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6695] == mem[_6695 + 12 len 20]
                    mem[_6985] = mem[_6695]
                    mem[_6985 + 32] = mem[_6695 + 32]
                    _7596 = mem[_6985 + 32]
                    _7681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7681] = 30
                    mem[_7681 + 32] = 'SafeMath: subtraction overflow'
                    if _6188 <= _7596:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7596 - _6188
                        idx = idx + 1
                        continue 
                    _7857 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7857 + 68] = mem[idx + _7681 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7857 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7857 + -mem[64] + 100
                _5275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5275] = 30
                mem[_5275 + 32] = 'SafeMath: subtraction overflow'
                if _4919 - sub_b7324175[idx].field_256 > _4919:
                    _5405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5405 + 68] = mem[idx + _5275 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5405 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5405 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5931] = 26
                    mem[_5931 + 32] = 'SafeMath: division by zero'
                    if not _4919:
                        _6095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6095 + 68] = mem[idx + _5931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6095 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6095 + -mem[64] + 100
                    _6479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6479] = 26
                    mem[_6479 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6697 + 68] = mem[idx + _6479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6697 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6697 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7769 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7508] == mem[_7508 + 12 len 20]
                    mem[_7769] = mem[_7508]
                    mem[_7769 + 32] = mem[_7508 + 32]
                    _8191 = mem[_7769 + 32]
                    _8258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8258] = 30
                    mem[_8258 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4919 / DIVISOR <= _8191:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8191 - (0 / _4919 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8350 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8350 + 68] = mem[idx + _8258 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8350 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8350 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6005] = 26
                mem[_6005 + 32] = 'SafeMath: division by zero'
                if not _4919:
                    _6189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6189 + 68] = mem[idx + _6005 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6189 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6189 + -mem[64] + 100
                _6589 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6589] = 26
                mem[_6589 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _6787 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6787 + 68] = mem[idx + _6589 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6787 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6787 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7858 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7597] == mem[_7597 + 12 len 20]
                mem[_7858] = mem[_7597]
                mem[_7858 + 32] = mem[_7597 + 32]
                _8257 = mem[_7858 + 32]
                _8305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8305] = 30
                mem[_8305 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4919 / DIVISOR <= _8257:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8257 - (DIVISOR * sub_b7324175[idx].field_256 / _4919 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8409 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8409 + 68] = mem[idx + _8305 + 32]
                    idx = idx + 32
                    continue 
                mem[_8409 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8409 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5084 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5180 = mem[_5084]
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == (_4919 * _5180 / 10^18) - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6093 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5854] == mem[_5854 + 12 len 20]
                mem[_6093] = mem[_5854]
                mem[_6093 + 32] = mem[_5854 + 32]
                _6692 = mem[_6093 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7505 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7207] == mem[_7207 + 12 len 20]
                mem[_7505] = mem[_7207]
                mem[_7505 + 32] = mem[_7207 + 32]
                _7993 = mem[_7505 + 32]
                _8047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8047] = 30
                mem[_8047 + 32] = 'SafeMath: subtraction overflow'
                if _6692 <= _7993:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7993 - _6692
                    idx = idx + 1
                    continue 
                _8187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8187 + 68] = mem[idx + _8047 + 32]
                    idx = idx + 32
                    continue 
                mem[_8187 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8187 + -mem[64] + 100
            _5593 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5593] = 30
            mem[_5593 + 32] = 'SafeMath: subtraction overflow'
            if (_4919 * _5180 / 10^18) - sub_b7324175[idx].field_256 > _4919 * _5180 / 10^18:
                _5762 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5762 + 68] = mem[idx + _5593 + 32]
                    idx = idx + 32
                    continue 
                mem[_5762 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5762 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _6373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6373] = 26
                mem[_6373 + 32] = 'SafeMath: division by zero'
                if not _4919 * _5180 / 10^18:
                    _6588 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6588 + 68] = mem[idx + _6373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6588 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6588 + -mem[64] + 100
                _6984 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6984] = 26
                mem[_6984 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7209 + 68] = mem[s + _6984 + 32]
                        s = s + 32
                        continue 
                    mem[_7209 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7209 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8111 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7933] == mem[_7933 + 12 len 20]
                mem[_8111] = mem[_7933]
                mem[_8111 + 32] = mem[_7933 + 32]
                _8478 = mem[_8111 + 32]
                _8537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8537] = 30
                mem[_8537 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4919 * _5180 / 10^18 / DIVISOR <= _8478:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8478 - (0 / _4919 * _5180 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8624 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8624 + 68] = mem[idx + _8537 + 32]
                    idx = idx + 32
                    continue 
                mem[_8624 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8624 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _6475 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6475] = 26
            mem[_6475 + 32] = 'SafeMath: division by zero'
            if not _4919 * _5180 / 10^18:
                _6693 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6693 + 68] = mem[idx + _6475 + 32]
                    idx = idx + 32
                    continue 
                mem[_6693 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6693 + -mem[64] + 100
            _7096 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7096] = 26
            mem[_7096 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _7312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7312 + 68] = mem[idx + _7096 + 32]
                    idx = idx + 32
                    continue 
                mem[_7312 + 94] = 0
                revert with memory
                  from mem[64]
                   len _7312 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7994 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _8188 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7994] == mem[_7994 + 12 len 20]
            mem[_8188] = mem[_7994]
            mem[_8188 + 32] = mem[_7994 + 32]
            _8536 = mem[_8188 + 32]
            _8580 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8580] = 30
            mem[_8580 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4919 * _5180 / 10^18 / DIVISOR <= _8536:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8536 - (DIVISOR * sub_b7324175[idx].field_256 / _4919 * _5180 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _8673 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8673 + 68] = mem[idx + _8580 + 32]
                idx = idx + 32
                continue 
            mem[_8673 + 98] = 0
            revert with memory
              from mem[64]
               len _8673 + -mem[64] + 100
        _4414 = mem[64]
        mem[mem[64]] = 64
        _4427 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _9325 = mem[(32 * sub_b7324175.length) + 128]
        mem[_4414 + (32 * mem[96]) + 96] = mem[(32 * sub_b7324175.length) + 128]
        mem[_4414 + (32 * _4427) + 128 len 32 * _9325] = mem[(32 * sub_b7324175.length) + 160 len 32 * _9325]
        return memory
          from mem[64]
           len _4414 + (32 * _4427) + (32 * _9325) + -mem[64] + 128
    mem[128 len 32 * sub_b7324175.length] = call.data[calldata.size len 32 * sub_b7324175.length]
    require sub_b7324175.length <= test266151307()
    mem[(32 * sub_b7324175.length) + 128] = sub_b7324175.length
    mem[64] = (64 * sub_b7324175.length) + 160
    if not sub_b7324175.length:
        idx = 0
        while idx < sub_b7324175.length:
            mem[0] = 3
            if sub_b7324175[idx].field_256 <= 0:
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _4474 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_4459] == mem[_4459 + 12 len 20]
                mem[_4474] = mem[_4459]
                mem[_4474 + 32] = mem[_4459 + 32]
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = mem[_4474 + 32]
                idx = idx + 1
                continue 
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = sub_b7324175[idx].field_0
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_b7324175[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4481 = mem[_4469]
            if sub_b7324175[idx].field_256 < mem[_4469]:
                if not sub_b7324175[idx].field_256:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = sub_b7324175[idx].field_256
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4605 = mem[_4575]
                    if not mem[_4575]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4605 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _4902 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_4834] == mem[_4834 + 12 len 20]
                            mem[_4902] = mem[_4834]
                            mem[_4902 + 32] = mem[_4834 + 32]
                            _5091 = mem[_4902 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5547 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5349] == mem[_5349 + 12 len 20]
                            mem[_5547] = mem[_5349]
                            mem[_5547 + 32] = mem[_5349 + 32]
                            _6023 = mem[_5547 + 32]
                            _6116 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6116] = 30
                            mem[_6116 + 32] = 'SafeMath: subtraction overflow'
                            if _5091 <= _6023:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6023 - _5091
                                idx = idx + 1
                                continue 
                            _6301 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6301 + 68] = mem[idx + _6116 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6301 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6301 + -mem[64] + 100
                        _4779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4779] = 30
                        mem[_4779 + 32] = 'SafeMath: subtraction overflow'
                        if _4605 - sub_b7324175[idx].field_256 > _4605:
                            _4813 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4813 + 68] = mem[idx + _4779 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4813 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _4813 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _4990 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4990] = 26
                            mem[_4990 + 32] = 'SafeMath: division by zero'
                            if not _4605:
                                _5055 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5055 + 68] = mem[idx + _4990 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5055 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5055 + -mem[64] + 100
                            _5240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5240] = 26
                            mem[_5240 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _5351 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5351 + 68] = mem[idx + _5240 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5351 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5351 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6210 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5947] == mem[_5947 + 12 len 20]
                            mem[_6210] = mem[_5947]
                            mem[_6210 + 32] = mem[_5947 + 32]
                            _6805 = mem[_6210 + 32]
                            _6901 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6901] = 30
                            mem[_6901 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4605 / DIVISOR <= _6805:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6805 - (0 / _4605 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _7124 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7124 + 68] = mem[idx + _6901 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7124 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7124 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5024 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5024] = 26
                        mem[_5024 + 32] = 'SafeMath: division by zero'
                        if not _4605:
                            _5092 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5092 + 68] = mem[idx + _5024 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5092 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5092 + -mem[64] + 100
                        _5286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5286] = 26
                        mem[_5286 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5422 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5422 + 68] = mem[idx + _5286 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5422 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5422 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6302 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6024] == mem[_6024 + 12 len 20]
                        mem[_6302] = mem[_6024]
                        mem[_6302 + 32] = mem[_6024 + 32]
                        _6900 = mem[_6302 + 32]
                        _7009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7009] = 30
                        mem[_7009 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4605 / DIVISOR <= _6900:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6900 - (DIVISOR * sub_b7324175[idx].field_256 / _4605 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7232 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _7232 + 68] = mem[s + _7009 + 32]
                            s = s + 32
                            continue 
                        mem[_7232 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7232 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4728 = mem[_4682]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4605 * _4728 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4952 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5053 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4952] == mem[_4952 + 12 len 20]
                        mem[_5053] = mem[_4952]
                        mem[_5053 + 32] = mem[_4952 + 32]
                        _5346 = mem[_5053 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5944 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5687] == mem[_5687 + 12 len 20]
                        mem[_5944] = mem[_5687]
                        mem[_5944 + 32] = mem[_5687 + 32]
                        _6499 = mem[_5944 + 32]
                        _6614 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6614] = 30
                        mem[_6614 + 32] = 'SafeMath: subtraction overflow'
                        if _5346 <= _6499:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6499 - _5346
                            idx = idx + 1
                            continue 
                        _6801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6801 + 68] = mem[idx + _6614 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6801 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6801 + -mem[64] + 100
                    _4879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4879] = 30
                    mem[_4879 + 32] = 'SafeMath: subtraction overflow'
                    if (_4605 * _4728 / 10^18) - sub_b7324175[idx].field_256 > _4605 * _4728 / 10^18:
                        _4922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4922 + 68] = mem[idx + _4879 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4922 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4922 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5190] = 26
                        mem[_5190 + 32] = 'SafeMath: division by zero'
                        if not _4605 * _4728 / 10^18:
                            _5285 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5285 + 68] = mem[idx + _5190 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5285 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5285 + -mem[64] + 100
                        _5546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5546] = 26
                        mem[_5546 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5689 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5689 + 68] = mem[idx + _5546 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5689 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5689 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6713 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6394] == mem[_6394 + 12 len 20]
                        mem[_6713] = mem[_6394]
                        mem[_6713 + 32] = mem[_6394 + 32]
                        _7333 = mem[_6713 + 32]
                        _7432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7432] = 30
                        mem[_7432 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4605 * _4728 / 10^18 / DIVISOR <= _7333:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7333 - (0 / _4605 * _4728 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7612 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7612 + 68] = mem[idx + _7432 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7612 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7612 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5236] = 26
                    mem[_5236 + 32] = 'SafeMath: division by zero'
                    if not _4605 * _4728 / 10^18:
                        _5347 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5347 + 68] = mem[idx + _5236 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5347 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5347 + -mem[64] + 100
                    _5606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5606] = 26
                    mem[_5606 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5782 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5782 + 68] = mem[idx + _5606 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5782 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5782 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6802 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6500] == mem[_6500 + 12 len 20]
                    mem[_6802] = mem[_6500]
                    mem[_6802 + 32] = mem[_6500 + 32]
                    _7431 = mem[_6802 + 32]
                    _7526 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7526] = 30
                    mem[_7526 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4605 * _4728 / 10^18 / DIVISOR <= _7431:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7431 - (DIVISOR * sub_b7324175[idx].field_256 / _4605 * _4728 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7696 + 68] = mem[idx + _7526 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7696 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4532 = mem[_4518]
                if not sub_b7324175[idx].field_256:
                    _4574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4574] = 26
                    mem[_4574 + 32] = 'SafeMath: division by zero'
                    if not _4532:
                        _4604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4604 + 68] = mem[idx + _4574 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4604 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4604 + -mem[64] + 100
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0 / _4532
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    mem[mem[64] + 4] = strategyAddress
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args strategyAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4878 = mem[_4832]
                    if not mem[_4832]:
                        require idx < sub_b7324175.length
                        mem[0] = 3
                        if 0 == _4878 - sub_b7324175[idx].field_256:
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _5543 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_5344] == mem[_5344 + 12 len 20]
                            mem[_5543] = mem[_5344]
                            mem[_5543 + 32] = mem[_5344 + 32]
                            _6018 = mem[_5543 + 32]
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6495 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _6799 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_6495] == mem[_6495 + 12 len 20]
                            mem[_6799] = mem[_6495]
                            mem[_6799 + 32] = mem[_6495 + 32]
                            _7428 = mem[_6799 + 32]
                            _7525 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7525] = 30
                            mem[_7525 + 32] = 'SafeMath: subtraction overflow'
                            if _6018 <= _7428:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7428 - _6018
                                idx = idx + 1
                                continue 
                            _7694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _7694 + 68] = mem[idx + _7525 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _7694 + -mem[64] + 100
                        _5189 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5189] = 30
                        mem[_5189 + 32] = 'SafeMath: subtraction overflow'
                        if _4878 - sub_b7324175[idx].field_256 > _4878:
                            _5283 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5283 + 68] = mem[idx + _5189 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5283 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5283 + -mem[64] + 100
                        if not sub_b7324175[idx].field_256:
                            _5781 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5781] = 26
                            mem[_5781 + 32] = 'SafeMath: division by zero'
                            if not _4878:
                                _5943 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5943 + 68] = mem[idx + _5781 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5943 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5943 + -mem[64] + 100
                            _6298 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6298] = 26
                            mem[_6298 + 32] = 'SafeMath: division by zero'
                            if not DIVISOR:
                                _6497 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6497 + 68] = mem[idx + _6298 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6497 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _6497 + -mem[64] + 100
                            require ext_code.size(strategyAddress)
                            staticcall strategyAddress.0x191ac2d2 with:
                                    gas gas_remaining wei
                                   args idx
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _7611 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require mem[_7330] == mem[_7330 + 12 len 20]
                            mem[_7611] = mem[_7330]
                            mem[_7611 + 32] = mem[_7330 + 32]
                            _8058 = mem[_7611 + 32]
                            _8129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8129] = 30
                            mem[_8129 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _4878 / DIVISOR <= _8058:
                                require idx < mem[(32 * sub_b7324175.length) + 128]
                                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8058 - (0 / _4878 / DIVISOR)
                                idx = idx + 1
                                continue 
                            _8266 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8266 + 68] = mem[idx + _8129 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8266 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8266 + -mem[64] + 100
                        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _5868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5868] = 26
                        mem[_5868 + 32] = 'SafeMath: division by zero'
                        if not _4878:
                            _6019 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6019 + 68] = mem[idx + _5868 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6019 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6019 + -mem[64] + 100
                        _6391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6391] = 26
                        mem[_6391 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6611 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6611 + 68] = mem[idx + _6391 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6611 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6611 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7695 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7429] == mem[_7429 + 12 len 20]
                        mem[_7695] = mem[_7429]
                        mem[_7695 + 32] = mem[_7429 + 32]
                        _8128 = mem[_7695 + 32]
                        _8205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8205] = 30
                        mem[_8205 + 32] = 'SafeMath: subtraction overflow'
                        if DIVISOR * sub_b7324175[idx].field_256 / _4878 / DIVISOR <= _8128:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8128 - (DIVISOR * sub_b7324175[idx].field_256 / _4878 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8311 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8311 + 68] = mem[idx + _8205 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8311 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8311 + -mem[64] + 100
                    require ext_code.size(sub_b7324175[idx].field_0)
                    staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5088 = mem[_5022]
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == (_4878 * _5088 / 10^18) - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5941 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5682] == mem[_5682 + 12 len 20]
                        mem[_5941] = mem[_5682]
                        mem[_5941 + 32] = mem[_5682 + 32]
                        _6492 = mem[_5941 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7000 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7327 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7000] == mem[_7000 + 12 len 20]
                        mem[_7327] = mem[_7000]
                        mem[_7327 + 32] = mem[_7000 + 32]
                        _7870 = mem[_7327 + 32]
                        _7946 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7946] = 30
                        mem[_7946 + 32] = 'SafeMath: subtraction overflow'
                        if _6492 <= _7870:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7870 - _6492
                            idx = idx + 1
                            continue 
                        _8054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8054 + 68] = mem[idx + _7946 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8054 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8054 + -mem[64] + 100
                    _5485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5485] = 30
                    mem[_5485 + 32] = 'SafeMath: subtraction overflow'
                    if (_4878 * _5088 / 10^18) - sub_b7324175[idx].field_256 > _4878 * _5088 / 10^18:
                        _5604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5604 + 68] = mem[idx + _5485 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5604 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _6205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6205] = 26
                        mem[_6205 + 32] = 'SafeMath: division by zero'
                        if not _4878 * _5088 / 10^18:
                            _6390 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6390 + 68] = mem[idx + _6205 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6390 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6390 + -mem[64] + 100
                        _6798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6798] = 26
                        mem[_6798 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _7002 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _7002 + 68] = mem[idx + _6798 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7002 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _7002 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _8002 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7783] == mem[_7783 + 12 len 20]
                        mem[_8002] = mem[_7783]
                        mem[_8002 + 32] = mem[_7783 + 32]
                        _8359 = mem[_8002 + 32]
                        _8423 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8423] = 30
                        mem[_8423 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4878 * _5088 / 10^18 / DIVISOR <= _8359:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8359 - (0 / _4878 * _5088 / 10^18 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8544 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8544 + 68] = mem[idx + _8423 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8544 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8544 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _6294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6294] = 26
                    mem[_6294 + 32] = 'SafeMath: division by zero'
                    if not _4878 * _5088 / 10^18:
                        _6493 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6493 + 68] = mem[idx + _6294 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6493 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6493 + -mem[64] + 100
                    _6893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6893] = 26
                    mem[_6893 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7117 + 68] = mem[idx + _6893 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7117 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7117 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8055 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7871] == mem[_7871 + 12 len 20]
                    mem[_8055] = mem[_7871]
                    mem[_8055 + 32] = mem[_7871 + 32]
                    _8422 = mem[_8055 + 32]
                    _8491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8491] = 30
                    mem[_8491 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4878 * _5088 / 10^18 / DIVISOR <= _8422:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8422 - (DIVISOR * sub_b7324175[idx].field_256 / _4878 * _5088 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8586 + 68] = mem[idx + _8491 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8586 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8586 + -mem[64] + 100
                if 10^18 * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4588 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4588] = 26
                mem[_4588 + 32] = 'SafeMath: division by zero'
                if not _4532:
                    _4620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4620 + 68] = mem[idx + _4588 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4620 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4620 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 10^18 * sub_b7324175[idx].field_256 / _4532
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4900 = mem[_4856]
                if not mem[_4856]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4900 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5417 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5603 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5417] == mem[_5417 + 12 len 20]
                        mem[_5603] = mem[_5417]
                        mem[_5603 + 32] = mem[_5417 + 32]
                        _6105 = mem[_5603 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6891 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6605] == mem[_6605 + 12 len 20]
                        mem[_6891] = mem[_6605]
                        mem[_6891 + 32] = mem[_6605 + 32]
                        _7520 = mem[_6891 + 32]
                        _7607 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7607] = 30
                        mem[_7607 + 32] = 'SafeMath: subtraction overflow'
                        if _6105 <= _7520:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7520 - _6105
                            idx = idx + 1
                            continue 
                        _7780 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7780 + 68] = mem[idx + _7607 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7780 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7780 + -mem[64] + 100
                    _5234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5234] = 30
                    mem[_5234 + 32] = 'SafeMath: subtraction overflow'
                    if _4900 - sub_b7324175[idx].field_256 > _4900:
                        _5342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5342 + 68] = mem[idx + _5234 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5342 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5866 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5866] = 26
                        mem[_5866 + 32] = 'SafeMath: division by zero'
                        if not _4900:
                            _6016 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6016 + 68] = mem[idx + _5866 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6016 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6016 + -mem[64] + 100
                        _6388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6388] = 26
                        mem[_6388 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6607 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6607 + 68] = mem[idx + _6388 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6607 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6607 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7691 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7425] == mem[_7425 + 12 len 20]
                        mem[_7691] = mem[_7425]
                        mem[_7691 + 32] = mem[_7425 + 32]
                        _8124 = mem[_7691 + 32]
                        _8202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8202] = 30
                        mem[_8202 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4900 / DIVISOR <= _8124:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8124 - (0 / _4900 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8309 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8309 + 68] = mem[idx + _8202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8309 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8309 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5939] = 26
                    mem[_5939 + 32] = 'SafeMath: division by zero'
                    if not _4900:
                        _6106 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6106 + 68] = mem[idx + _5939 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6106 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6106 + -mem[64] + 100
                    _6490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6490] = 26
                    mem[_6490 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6708 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6708 + 68] = mem[idx + _6490 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6708 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6708 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7781 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7521] == mem[_7521 + 12 len 20]
                    mem[_7781] = mem[_7521]
                    mem[_7781 + 32] = mem[_7521 + 32]
                    _8201 = mem[_7781 + 32]
                    _8264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8264] = 30
                    mem[_8264 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4900 / DIVISOR <= _8201:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8201 - (DIVISOR * sub_b7324175[idx].field_256 / _4900 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8355 + 68] = mem[idx + _8264 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8355 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5052 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5136 = mem[_5052]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4900 * _5136 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5776 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6014 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5776] == mem[_5776 + 12 len 20]
                    mem[_6014] = mem[_5776]
                    mem[_6014 + 32] = mem[_5776 + 32]
                    _6602 = mem[_6014 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7422 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7110] == mem[_7110 + 12 len 20]
                    mem[_7422] = mem[_7110]
                    mem[_7422 + 32] = mem[_7110 + 32]
                    _7942 = mem[_7422 + 32]
                    _8000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8000] = 30
                    mem[_8000 + 32] = 'SafeMath: subtraction overflow'
                    if _6602 <= _7942:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7942 - _6602
                        idx = idx + 1
                        continue 
                    _8120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8120 + 68] = mem[idx + _8000 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8120 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8120 + -mem[64] + 100
                _5540 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5540] = 30
                mem[_5540 + 32] = 'SafeMath: subtraction overflow'
                if (_4900 * _5136 / 10^18) - sub_b7324175[idx].field_256 > _4900 * _5136 / 10^18:
                    _5680 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5680 + 68] = mem[idx + _5540 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5680 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5680 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6292] = 26
                    mem[_6292 + 32] = 'SafeMath: division by zero'
                    if not _4900 * _5136 / 10^18:
                        _6489 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6489 + 68] = mem[idx + _6292 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6489 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6489 + -mem[64] + 100
                    _6890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6890] = 26
                    mem[_6890 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7112 + 68] = mem[idx + _6890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7112 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7112 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7867 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8052 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7867] == mem[_7867 + 12 len 20]
                    mem[_8052] = mem[_7867]
                    mem[_8052 + 32] = mem[_7867 + 32]
                    _8418 = mem[_8052 + 32]
                    _8488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8488] = 30
                    mem[_8488 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4900 * _5136 / 10^18 / DIVISOR <= _8418:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8418 - (0 / _4900 * _5136 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8584 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8584 + 68] = mem[idx + _8488 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8584 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8584 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6384 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6384] = 26
                mem[_6384 + 32] = 'SafeMath: division by zero'
                if not _4900 * _5136 / 10^18:
                    _6603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6603 + 68] = mem[idx + _6384 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6603 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6603 + -mem[64] + 100
                _6996 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6996] = 26
                mem[_6996 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7222 + 68] = mem[s + _6996 + 32]
                        s = s + 32
                        continue 
                    mem[_7222 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7222 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7943 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8121 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7943] == mem[_7943 + 12 len 20]
                mem[_8121] = mem[_7943]
                mem[_8121 + 32] = mem[_7943 + 32]
                _8487 = mem[_8121 + 32]
                _8542 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8542] = 30
                mem[_8542 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4900 * _5136 / 10^18 / DIVISOR <= _8487:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8487 - (DIVISOR * sub_b7324175[idx].field_256 / _4900 * _5136 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8630 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8630 + 68] = mem[idx + _8542 + 32]
                    idx = idx + 32
                    continue 
                mem[_8630 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8630 + -mem[64] + 100
            if not mem[_4469]:
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_4469]
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4623 = mem[_4591]
                if not mem[_4591]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4623 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _4926 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4860] == mem[_4860 + 12 len 20]
                        mem[_4926] = mem[_4860]
                        mem[_4926 + 32] = mem[_4860 + 32]
                        _5147 = mem[_4926 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5617 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5432] == mem[_5432 + 12 len 20]
                        mem[_5617] = mem[_5432]
                        mem[_5617 + 32] = mem[_5432 + 32]
                        _6126 = mem[_5617 + 32]
                        _6223 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6223] = 30
                        mem[_6223 + 32] = 'SafeMath: subtraction overflow'
                        if _5147 <= _6126:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6126 - _5147
                            idx = idx + 1
                            continue 
                        _6406 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6406 + 68] = mem[idx + _6223 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6406 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6406 + -mem[64] + 100
                    _4799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4799] = 30
                    mem[_4799 + 32] = 'SafeMath: subtraction overflow'
                    if _4623 - sub_b7324175[idx].field_256 > _4623:
                        _4837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4837 + 68] = mem[idx + _4799 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4837 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4837 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5028 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5028] = 26
                        mem[_5028 + 32] = 'SafeMath: division by zero'
                        if not _4623:
                            _5097 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5097 + 68] = mem[idx + _5028 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5097 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5097 + -mem[64] + 100
                        _5294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5294] = 26
                        mem[_5294 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5434 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5434 + 68] = mem[idx + _5294 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5434 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5434 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6313 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6034] == mem[_6034 + 12 len 20]
                        mem[_6313] = mem[_6034]
                        mem[_6313 + 32] = mem[_6034 + 32]
                        _6913 = mem[_6313 + 32]
                        _7023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7023] = 30
                        mem[_7023 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4623 / DIVISOR <= _6913:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6913 - (0 / _4623 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7248 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _7248 + 68] = mem[s + _7023 + 32]
                            s = s + 32
                            continue 
                        mem[_7248 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7248 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5058] = 26
                    mem[_5058 + 32] = 'SafeMath: division by zero'
                    if not _4623:
                        _5148 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5148 + 68] = mem[idx + _5058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5148 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5148 + -mem[64] + 100
                    _5357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5357] = 26
                    mem[_5357 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5495 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5495 + 68] = mem[idx + _5357 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5495 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5495 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6407 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6127] == mem[_6127 + 12 len 20]
                    mem[_6407] = mem[_6127]
                    mem[_6407 + 32] = mem[_6127 + 32]
                    _7022 = mem[_6407 + 32]
                    _7138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7138] = 30
                    mem[_7138 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4623 / DIVISOR <= _7022:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7022 - (DIVISOR * sub_b7324175[idx].field_256 / _4623 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7346 + 68] = mem[idx + _7138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7346 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7346 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4705 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4759 = mem[_4705]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4623 * _4759 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5095 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_4993] == mem[_4993 + 12 len 20]
                    mem[_5095] = mem[_4993]
                    mem[_5095 + 32] = mem[_4993 + 32]
                    _5429 = mem[_5095 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6031 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5795] == mem[_5795 + 12 len 20]
                    mem[_6031] = mem[_5795]
                    mem[_6031 + 32] = mem[_5795 + 32]
                    _6627 = mem[_6031 + 32]
                    _6727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6727] = 30
                    mem[_6727 + 32] = 'SafeMath: subtraction overflow'
                    if _5429 <= _6627:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6627 - _5429
                        idx = idx + 1
                        continue 
                    _6909 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6909 + 68] = mem[idx + _6727 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6909 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6909 + -mem[64] + 100
                _4904 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4904] = 30
                mem[_4904 + 32] = 'SafeMath: subtraction overflow'
                if (_4623 * _4759 / 10^18) - sub_b7324175[idx].field_256 > _4623 * _4759 / 10^18:
                    _4957 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4957 + 68] = mem[idx + _4904 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4957 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4957 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5243] = 26
                    mem[_5243 + 32] = 'SafeMath: division by zero'
                    if not _4623 * _4759 / 10^18:
                        _5356 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5356 + 68] = mem[idx + _5243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5356 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5356 + -mem[64] + 100
                    _5616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5616] = 26
                    mem[_5616 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5797 + 68] = mem[idx + _5616 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5797 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5797 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6813 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6513] == mem[_6513 + 12 len 20]
                    mem[_6813] = mem[_6513]
                    mem[_6813 + 32] = mem[_6513 + 32]
                    _7444 = mem[_6813 + 32]
                    _7538 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7538] = 30
                    mem[_7538 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4623 * _4759 / 10^18 / DIVISOR <= _7444:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7444 - (0 / _4623 * _4759 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7708 + 68] = mem[idx + _7538 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7708 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7708 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5290] = 26
                mem[_5290 + 32] = 'SafeMath: division by zero'
                if not _4623 * _4759 / 10^18:
                    _5430 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5430 + 68] = mem[idx + _5290 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5430 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5430 + -mem[64] + 100
                _5698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5698] = 26
                mem[_5698 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _5879 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5879 + 68] = mem[idx + _5698 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5879 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5879 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6910 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6628] == mem[_6628 + 12 len 20]
                mem[_6910] = mem[_6628]
                mem[_6910 + 32] = mem[_6628 + 32]
                _7537 = mem[_6910 + 32]
                _7622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7622] = 30
                mem[_7622 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4623 * _4759 / 10^18 / DIVISOR <= _7537:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7537 - (DIVISOR * sub_b7324175[idx].field_256 / _4623 * _4759 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _7797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7797 + 68] = mem[idx + _7622 + 32]
                    idx = idx + 32
                    continue 
                mem[_7797 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7797 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4541 = mem[_4525]
            if not _4481:
                _4590 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4590] = 26
                mem[_4590 + 32] = 'SafeMath: division by zero'
                if not _4541:
                    _4622 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4622 + 68] = mem[idx + _4590 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4622 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4622 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0 / _4541
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4903 = mem[_4858]
                if not mem[_4858]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4903 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5613 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5427] == mem[_5427 + 12 len 20]
                        mem[_5613] = mem[_5427]
                        mem[_5613 + 32] = mem[_5427 + 32]
                        _6121 = mem[_5613 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6907 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6623] == mem[_6623 + 12 len 20]
                        mem[_6907] = mem[_6623]
                        mem[_6907 + 32] = mem[_6623 + 32]
                        _7534 = mem[_6907 + 32]
                        _7621 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7621] = 30
                        mem[_7621 + 32] = 'SafeMath: subtraction overflow'
                        if _6121 <= _7534:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7534 - _6121
                            idx = idx + 1
                            continue 
                        _7795 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7795 + 68] = mem[idx + _7621 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7795 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7795 + -mem[64] + 100
                    _5242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5242] = 30
                    mem[_5242 + 32] = 'SafeMath: subtraction overflow'
                    if _4903 - sub_b7324175[idx].field_256 > _4903:
                        _5354 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5354 + 68] = mem[idx + _5242 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5354 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5354 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5878 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5878] = 26
                        mem[_5878 + 32] = 'SafeMath: division by zero'
                        if not _4903:
                            _6030 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6030 + 68] = mem[idx + _5878 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6030 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6030 + -mem[64] + 100
                        _6403 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6403] = 26
                        mem[_6403 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6625 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6625 + 68] = mem[idx + _6403 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6625 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6625 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7441 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7707 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7441] == mem[_7441 + 12 len 20]
                        mem[_7707] = mem[_7441]
                        mem[_7707 + 32] = mem[_7441 + 32]
                        _8137 = mem[_7707 + 32]
                        _8215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8215] = 30
                        mem[_8215 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4903 / DIVISOR <= _8137:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8137 - (0 / _4903 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8317 + 68] = mem[idx + _8215 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8317 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8317 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5950] = 26
                    mem[_5950 + 32] = 'SafeMath: division by zero'
                    if not _4903:
                        _6122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6122 + 68] = mem[idx + _5950 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6122 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6122 + -mem[64] + 100
                    _6510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6510] = 26
                    mem[_6510 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6724 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6724 + 68] = mem[idx + _6510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6724 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6724 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7796 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7535] == mem[_7535 + 12 len 20]
                    mem[_7796] = mem[_7535]
                    mem[_7796 + 32] = mem[_7535 + 32]
                    _8214 = mem[_7796 + 32]
                    _8274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8274] = 30
                    mem[_8274 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4903 / DIVISOR <= _8214:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8214 - (DIVISOR * sub_b7324175[idx].field_256 / _4903 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8365 + 68] = mem[idx + _8274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8365 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8365 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5056 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5144 = mem[_5056]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4903 * _5144 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5790 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6028 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5790] == mem[_5790 + 12 len 20]
                    mem[_6028] = mem[_5790]
                    mem[_6028 + 32] = mem[_5790 + 32]
                    _6620 = mem[_6028 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7438 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7129] == mem[_7129 + 12 len 20]
                    mem[_7438] = mem[_7129]
                    mem[_7438 + 32] = mem[_7129 + 32]
                    _7953 = mem[_7438 + 32]
                    _8009 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8009] = 30
                    mem[_8009 + 32] = 'SafeMath: subtraction overflow'
                    if _6620 <= _7953:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7953 - _6620
                        idx = idx + 1
                        continue 
                    _8133 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8133 + 68] = mem[idx + _8009 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8133 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8133 + -mem[64] + 100
                _5550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5550] = 30
                mem[_5550 + 32] = 'SafeMath: subtraction overflow'
                if (_4903 * _5144 / 10^18) - sub_b7324175[idx].field_256 > _4903 * _5144 / 10^18:
                    _5696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5696 + 68] = mem[idx + _5550 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5696 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6308 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6308] = 26
                    mem[_6308 + 32] = 'SafeMath: division by zero'
                    if not _4903 * _5144 / 10^18:
                        _6509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6509 + 68] = mem[idx + _6308 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6509 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6509 + -mem[64] + 100
                    _6906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6906] = 26
                    mem[_6906 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7131 + 68] = mem[idx + _6906 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7131 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7131 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7881 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8063 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7881] == mem[_7881 + 12 len 20]
                    mem[_8063] = mem[_7881]
                    mem[_8063 + 32] = mem[_7881 + 32]
                    _8431 = mem[_8063 + 32]
                    _8500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8500] = 30
                    mem[_8500 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4903 * _5144 / 10^18 / DIVISOR <= _8431:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8431 - (0 / _4903 * _5144 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8592 + 68] = mem[idx + _8500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8592 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8592 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6399 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6399] = 26
                mem[_6399 + 32] = 'SafeMath: division by zero'
                if not _4903 * _5144 / 10^18:
                    _6621 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6621 + 68] = mem[idx + _6399 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6621 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6621 + -mem[64] + 100
                _7015 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7015] = 26
                mem[_7015 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7241 + 68] = mem[s + _7015 + 32]
                        s = s + 32
                        continue 
                    mem[_7241 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7241 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7954 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8134 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7954] == mem[_7954 + 12 len 20]
                mem[_8134] = mem[_7954]
                mem[_8134 + 32] = mem[_7954 + 32]
                _8499 = mem[_8134 + 32]
                _8551 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8551] = 30
                mem[_8551 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4903 * _5144 / 10^18 / DIVISOR <= _8499:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8499 - (DIVISOR * sub_b7324175[idx].field_256 / _4903 * _5144 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8639 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8639 + 68] = mem[idx + _8551 + 32]
                    idx = idx + 32
                    continue 
                mem[_8639 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8639 + -mem[64] + 100
            if 10^18 * _4481 / _4481 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _4606 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4606] = 26
            mem[_4606 + 32] = 'SafeMath: division by zero'
            if not _4541:
                _4635 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4635 + 68] = mem[idx + _4606 + 32]
                    idx = idx + 32
                    continue 
                mem[_4635 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4635 + -mem[64] + 100
            require idx < mem[96]
            mem[(32 * idx) + 128] = 10^18 * _4481 / _4541
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = strategyAddress
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4881 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4924 = mem[_4881]
            if not mem[_4881]:
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == _4924 - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5695 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5490] == mem[_5490 + 12 len 20]
                    mem[_5695] = mem[_5490]
                    mem[_5695 + 32] = mem[_5490 + 32]
                    _6212 = mem[_5695 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7013 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6718] == mem[_6718 + 12 len 20]
                    mem[_7013] = mem[_6718]
                    mem[_7013 + 32] = mem[_6718 + 32]
                    _7616 = mem[_7013 + 32]
                    _7703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7703] = 30
                    mem[_7703 + 32] = 'SafeMath: subtraction overflow'
                    if _6212 <= _7616:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7616 - _6212
                        idx = idx + 1
                        continue 
                    _7878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7878 + 68] = mem[idx + _7703 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7878 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7878 + -mem[64] + 100
                _5288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5288] = 30
                mem[_5288 + 32] = 'SafeMath: subtraction overflow'
                if _4924 - sub_b7324175[idx].field_256 > _4924:
                    _5425 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5425 + 68] = mem[idx + _5288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5425 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5425 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5948] = 26
                    mem[_5948 + 32] = 'SafeMath: division by zero'
                    if not _4924:
                        _6119 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6119 + 68] = mem[idx + _5948 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6119 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6119 + -mem[64] + 100
                    _6507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6507] = 26
                    mem[_6507 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6720 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6720 + 68] = mem[idx + _6507 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6720 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6720 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7792 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7531] == mem[_7531 + 12 len 20]
                    mem[_7792] = mem[_7531]
                    mem[_7792 + 32] = mem[_7531 + 32]
                    _8210 = mem[_7792 + 32]
                    _8271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8271] = 30
                    mem[_8271 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4924 / DIVISOR <= _8210:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8210 - (0 / _4924 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8363 + 68] = mem[idx + _8271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8363 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8363 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6026] = 26
                mem[_6026 + 32] = 'SafeMath: division by zero'
                if not _4924:
                    _6213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6213 + 68] = mem[idx + _6026 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6213 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6213 + -mem[64] + 100
                _6618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6618] = 26
                mem[_6618 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _6808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6808 + 68] = mem[idx + _6618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6808 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6808 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7879 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7617] == mem[_7617 + 12 len 20]
                mem[_7879] = mem[_7617]
                mem[_7879 + 32] = mem[_7617 + 32]
                _8270 = mem[_7879 + 32]
                _8315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8315] = 30
                mem[_8315 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4924 / DIVISOR <= _8270:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8270 - (DIVISOR * sub_b7324175[idx].field_256 / _4924 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8427 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8427 + 68] = mem[idx + _8315 + 32]
                    idx = idx + 32
                    continue 
                mem[_8427 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8427 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5094 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5192 = mem[_5094]
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == (_4924 * _5192 / 10^18) - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6117 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5873] == mem[_5873 + 12 len 20]
                mem[_6117] = mem[_5873]
                mem[_6117 + 32] = mem[_5873 + 32]
                _6715 = mem[_6117 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7234 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7528 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7234] == mem[_7234 + 12 len 20]
                mem[_7528] = mem[_7234]
                mem[_7528 + 32] = mem[_7234 + 32]
                _8005 = mem[_7528 + 32]
                _8061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8061] = 30
                mem[_8061 + 32] = 'SafeMath: subtraction overflow'
                if _6715 <= _8005:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8005 - _6715
                    idx = idx + 1
                    continue 
                _8206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8206 + 68] = mem[idx + _8061 + 32]
                    idx = idx + 32
                    continue 
                mem[_8206 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8206 + -mem[64] + 100
            _5610 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5610] = 30
            mem[_5610 + 32] = 'SafeMath: subtraction overflow'
            if (_4924 * _5192 / 10^18) - sub_b7324175[idx].field_256 > _4924 * _5192 / 10^18:
                _5788 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5788 + 68] = mem[idx + _5610 + 32]
                    idx = idx + 32
                    continue 
                mem[_5788 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5788 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _6397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6397] = 26
                mem[_6397 + 32] = 'SafeMath: division by zero'
                if not _4924 * _5192 / 10^18:
                    _6617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6617 + 68] = mem[idx + _6397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6617 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6617 + -mem[64] + 100
                _7012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7012] = 26
                mem[_7012 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7236 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _7236 + 68] = mem[s + _7012 + 32]
                        s = s + 32
                        continue 
                    mem[_7236 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7236 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7950 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8131 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7950] == mem[_7950 + 12 len 20]
                mem[_8131] = mem[_7950]
                mem[_8131 + 32] = mem[_7950 + 32]
                _8495 = mem[_8131 + 32]
                _8548 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8548] = 30
                mem[_8548 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4924 * _5192 / 10^18 / DIVISOR <= _8495:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8495 - (0 / _4924 * _5192 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8637 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8637 + 68] = mem[idx + _8548 + 32]
                    idx = idx + 32
                    continue 
                mem[_8637 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8637 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _6503 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6503] = 26
            mem[_6503 + 32] = 'SafeMath: division by zero'
            if not _4924 * _5192 / 10^18:
                _6716 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6716 + 68] = mem[idx + _6503 + 32]
                    idx = idx + 32
                    continue 
                mem[_6716 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6716 + -mem[64] + 100
            _7125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7125] = 26
            mem[_7125 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _7336 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _7336 + 68] = mem[idx + _7125 + 32]
                    idx = idx + 32
                    continue 
                mem[_7336 + 94] = 0
                revert with memory
                  from mem[64]
                   len _7336 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _8207 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_8006] == mem[_8006 + 12 len 20]
            mem[_8207] = mem[_8006]
            mem[_8207 + 32] = mem[_8006 + 32]
            _8547 = mem[_8207 + 32]
            _8590 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8590] = 30
            mem[_8590 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4924 * _5192 / 10^18 / DIVISOR <= _8547:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8547 - (DIVISOR * sub_b7324175[idx].field_256 / _4924 * _5192 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _8685 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8685 + 68] = mem[idx + _8590 + 32]
                idx = idx + 32
                continue 
            mem[_8685 + 98] = 0
            revert with memory
              from mem[64]
               len _8685 + -mem[64] + 100
        _4416 = mem[64]
        mem[mem[64]] = 64
        _4430 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _9426 = mem[(32 * sub_b7324175.length) + 128]
        mem[_4416 + (32 * mem[96]) + 96] = mem[(32 * sub_b7324175.length) + 128]
        mem[_4416 + (32 * _4430) + 128 len 32 * _9426] = mem[(32 * sub_b7324175.length) + 160 len 32 * _9426]
        return memory
          from mem[64]
           len _4416 + (32 * _4430) + (32 * _9426) + -mem[64] + 128
    mem[(32 * sub_b7324175.length) + 160 len 32 * sub_b7324175.length] = call.data[calldata.size len 32 * sub_b7324175.length]
    idx = 0
    while idx < sub_b7324175.length:
        mem[0] = 3
        if sub_b7324175[idx].field_256 <= 0:
            require idx < mem[96]
            mem[(32 * idx) + 128] = 0
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _4475 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_4462] == mem[_4462 + 12 len 20]
            mem[_4475] = mem[_4462]
            mem[_4475 + 32] = mem[_4462 + 32]
            require idx < mem[(32 * sub_b7324175.length) + 128]
            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = mem[_4475 + 32]
            idx = idx + 1
            continue 
        require idx < sub_b7324175.length
        mem[0] = 3
        mem[mem[64] + 4] = sub_b7324175[idx].field_0
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args sub_b7324175[idx].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4483 = mem[_4471]
        if sub_b7324175[idx].field_256 < mem[_4471]:
            if not sub_b7324175[idx].field_256:
                require idx < mem[96]
                mem[(32 * idx) + 128] = sub_b7324175[idx].field_256
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4609 = mem[_4578]
                if not mem[_4578]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4609 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _4908 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_4840] == mem[_4840 + 12 len 20]
                        mem[_4908] = mem[_4840]
                        mem[_4908 + 32] = mem[_4840 + 32]
                        _5101 = mem[_4908 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5561 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5366] == mem[_5366 + 12 len 20]
                        mem[_5561] = mem[_5366]
                        mem[_5561 + 32] = mem[_5366 + 32]
                        _6044 = mem[_5561 + 32]
                        _6140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6140] = 30
                        mem[_6140 + 32] = 'SafeMath: subtraction overflow'
                        if _5101 <= _6044:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6044 - _5101
                            idx = idx + 1
                            continue 
                        _6323 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6323 + 68] = mem[idx + _6140 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6323 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6323 + -mem[64] + 100
                    _4784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4784] = 30
                    mem[_4784 + 32] = 'SafeMath: subtraction overflow'
                    if _4609 - sub_b7324175[idx].field_256 > _4609:
                        _4817 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4817 + 68] = mem[idx + _4784 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4817 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _4817 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5000] = 26
                        mem[_5000 + 32] = 'SafeMath: division by zero'
                        if not _4609:
                            _5063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5063 + 68] = mem[idx + _5000 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5063 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5063 + -mem[64] + 100
                        _5251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5251] = 26
                        mem[_5251 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _5368 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5368 + 68] = mem[idx + _5251 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5368 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5368 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6234 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5964] == mem[_5964 + 12 len 20]
                        mem[_6234] = mem[_5964]
                        mem[_6234 + 32] = mem[_5964 + 32]
                        _6826 = mem[_6234 + 32]
                        _6927 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6927] = 30
                        mem[_6927 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4609 / DIVISOR <= _6826:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6826 - (0 / _4609 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _7153 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7153 + 68] = mem[idx + _6927 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7153 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7153 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5031 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5031] = 26
                    mem[_5031 + 32] = 'SafeMath: division by zero'
                    if not _4609:
                        _5102 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5102 + 68] = mem[idx + _5031 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5102 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5102 + -mem[64] + 100
                    _5299 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5299] = 26
                    mem[_5299 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5442 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5442 + 68] = mem[idx + _5299 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5442 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5442 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6324 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6045] == mem[_6045 + 12 len 20]
                    mem[_6324] = mem[_6045]
                    mem[_6324 + 32] = mem[_6045 + 32]
                    _6926 = mem[_6324 + 32]
                    _7037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7037] = 30
                    mem[_7037 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4609 / DIVISOR <= _6926:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6926 - (DIVISOR * sub_b7324175[idx].field_256 / _4609 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _7259 + 68] = mem[s + _7037 + 32]
                        s = s + 32
                        continue 
                    mem[_7259 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7259 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4735 = mem[_4686]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4609 * _4735 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5061 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_4961] == mem[_4961 + 12 len 20]
                    mem[_5061] = mem[_4961]
                    mem[_5061 + 32] = mem[_4961 + 32]
                    _5363 = mem[_5061 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5709 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5961 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5709] == mem[_5709 + 12 len 20]
                    mem[_5961] = mem[_5709]
                    mem[_5961 + 32] = mem[_5709 + 32]
                    _6527 = mem[_5961 + 32]
                    _6643 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6643] = 30
                    mem[_6643 + 32] = 'SafeMath: subtraction overflow'
                    if _5363 <= _6527:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6527 - _5363
                        idx = idx + 1
                        continue 
                    _6822 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6822 + 68] = mem[idx + _6643 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6822 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6822 + -mem[64] + 100
                _4884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4884] = 30
                mem[_4884 + 32] = 'SafeMath: subtraction overflow'
                if (_4609 * _4735 / 10^18) - sub_b7324175[idx].field_256 > _4609 * _4735 / 10^18:
                    _4927 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4927 + 68] = mem[idx + _4884 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4927 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4927 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5202] = 26
                    mem[_5202 + 32] = 'SafeMath: division by zero'
                    if not _4609 * _4735 / 10^18:
                        _5298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5298 + 68] = mem[idx + _5202 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5298 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5298 + -mem[64] + 100
                    _5560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5560] = 26
                    mem[_5560 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5711 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5711 + 68] = mem[idx + _5560 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5711 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5711 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6418 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6736 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6418] == mem[_6418 + 12 len 20]
                    mem[_6736] = mem[_6418]
                    mem[_6736 + 32] = mem[_6418 + 32]
                    _7357 = mem[_6736 + 32]
                    _7457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7457] = 30
                    mem[_7457 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4609 * _4735 / 10^18 / DIVISOR <= _7357:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7357 - (0 / _4609 * _4735 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7632 + 68] = mem[idx + _7457 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7632 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7632 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5247] = 26
                mem[_5247 + 32] = 'SafeMath: division by zero'
                if not _4609 * _4735 / 10^18:
                    _5364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5364 + 68] = mem[idx + _5247 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5364 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5364 + -mem[64] + 100
                _5623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5623] = 26
                mem[_5623 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _5808 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5808 + 68] = mem[idx + _5623 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5808 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5808 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6823 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6528] == mem[_6528 + 12 len 20]
                mem[_6823] = mem[_6528]
                mem[_6823 + 32] = mem[_6528 + 32]
                _7456 = mem[_6823 + 32]
                _7549 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7549] = 30
                mem[_7549 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4609 * _4735 / 10^18 / DIVISOR <= _7456:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7456 - (DIVISOR * sub_b7324175[idx].field_256 / _4609 * _4735 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _7718 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7718 + 68] = mem[idx + _7549 + 32]
                    idx = idx + 32
                    continue 
                mem[_7718 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7718 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4534 = mem[_4519]
            if not sub_b7324175[idx].field_256:
                _4577 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4577] = 26
                mem[_4577 + 32] = 'SafeMath: division by zero'
                if not _4534:
                    _4608 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4608 + 68] = mem[idx + _4577 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4608 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4608 + -mem[64] + 100
                require idx < mem[96]
                mem[(32 * idx) + 128] = 0 / _4534
                require idx < sub_b7324175.length
                mem[0] = 3
                mem[mem[64] + 4] = strategyAddress
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args strategyAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4883 = mem[_4838]
                if not mem[_4838]:
                    require idx < sub_b7324175.length
                    mem[0] = 3
                    if 0 == _4883 - sub_b7324175[idx].field_256:
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _5557 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_5361] == mem[_5361 + 12 len 20]
                        mem[_5557] = mem[_5361]
                        mem[_5557 + 32] = mem[_5361 + 32]
                        _6039 = mem[_5557 + 32]
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _6820 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_6523] == mem[_6523 + 12 len 20]
                        mem[_6820] = mem[_6523]
                        mem[_6820 + 32] = mem[_6523 + 32]
                        _7453 = mem[_6820 + 32]
                        _7548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7548] = 30
                        mem[_7548 + 32] = 'SafeMath: subtraction overflow'
                        if _6039 <= _7453:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7453 - _6039
                            idx = idx + 1
                            continue 
                        _7716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _7716 + 68] = mem[idx + _7548 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7716 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _7716 + -mem[64] + 100
                    _5201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5201] = 30
                    mem[_5201 + 32] = 'SafeMath: subtraction overflow'
                    if _4883 - sub_b7324175[idx].field_256 > _4883:
                        _5296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5296 + 68] = mem[idx + _5201 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5296 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5296 + -mem[64] + 100
                    if not sub_b7324175[idx].field_256:
                        _5807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5807] = 26
                        mem[_5807 + 32] = 'SafeMath: division by zero'
                        if not _4883:
                            _5960 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5960 + 68] = mem[idx + _5807 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5960 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5960 + -mem[64] + 100
                        _6320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6320] = 26
                        mem[_6320 + 32] = 'SafeMath: division by zero'
                        if not DIVISOR:
                            _6525 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _6525 + 68] = mem[idx + _6320 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6525 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _6525 + -mem[64] + 100
                        require ext_code.size(strategyAddress)
                        staticcall strategyAddress.0x191ac2d2 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7631 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require mem[_7354] == mem[_7354 + 12 len 20]
                        mem[_7631] = mem[_7354]
                        mem[_7631 + 32] = mem[_7354 + 32]
                        _8072 = mem[_7631 + 32]
                        _8149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8149] = 30
                        mem[_8149 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _4883 / DIVISOR <= _8072:
                            require idx < mem[(32 * sub_b7324175.length) + 128]
                            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8072 - (0 / _4883 / DIVISOR)
                            idx = idx + 1
                            continue 
                        _8279 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _8279 + 68] = mem[idx + _8149 + 32]
                            idx = idx + 32
                            continue 
                        mem[_8279 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _8279 + -mem[64] + 100
                    if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _5887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5887] = 26
                    mem[_5887 + 32] = 'SafeMath: division by zero'
                    if not _4883:
                        _6040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6040 + 68] = mem[idx + _5887 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6040 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6040 + -mem[64] + 100
                    _6415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6415] = 26
                    mem[_6415 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6640 + 68] = mem[idx + _6415 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6640 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6640 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7717 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7454] == mem[_7454 + 12 len 20]
                    mem[_7717] = mem[_7454]
                    mem[_7717 + 32] = mem[_7454 + 32]
                    _8148 = mem[_7717 + 32]
                    _8224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8224] = 30
                    mem[_8224 + 32] = 'SafeMath: subtraction overflow'
                    if DIVISOR * sub_b7324175[idx].field_256 / _4883 / DIVISOR <= _8148:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8148 - (DIVISOR * sub_b7324175[idx].field_256 / _4883 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8321 + 68] = mem[idx + _8224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8321 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8321 + -mem[64] + 100
                require ext_code.size(sub_b7324175[idx].field_0)
                staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5029 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5098 = mem[_5029]
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == (_4883 * _5098 / 10^18) - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5704 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5958 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5704] == mem[_5704 + 12 len 20]
                    mem[_5958] = mem[_5704]
                    mem[_5958 + 32] = mem[_5704 + 32]
                    _6520 = mem[_5958 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7028 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7351 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7028] == mem[_7028 + 12 len 20]
                    mem[_7351] = mem[_7028]
                    mem[_7351 + 32] = mem[_7028 + 32]
                    _7891 = mem[_7351 + 32]
                    _7963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7963] = 30
                    mem[_7963 + 32] = 'SafeMath: subtraction overflow'
                    if _6520 <= _7891:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7891 - _6520
                        idx = idx + 1
                        continue 
                    _8068 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8068 + 68] = mem[idx + _7963 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8068 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8068 + -mem[64] + 100
                _5499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5499] = 30
                mem[_5499 + 32] = 'SafeMath: subtraction overflow'
                if (_4883 * _5098 / 10^18) - sub_b7324175[idx].field_256 > _4883 * _5098 / 10^18:
                    _5621 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5621 + 68] = mem[idx + _5499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5621 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5621 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _6229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6229] = 26
                    mem[_6229 + 32] = 'SafeMath: division by zero'
                    if not _4883 * _5098 / 10^18:
                        _6414 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6414 + 68] = mem[idx + _6229 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6414 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6414 + -mem[64] + 100
                    _6819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6819] = 26
                    mem[_6819 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _7030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _7030 + 68] = mem[idx + _6819 + 32]
                            idx = idx + 32
                            continue 
                        mem[_7030 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _7030 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7806 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8014 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7806] == mem[_7806 + 12 len 20]
                    mem[_8014] = mem[_7806]
                    mem[_8014 + 32] = mem[_7806 + 32]
                    _8372 = mem[_8014 + 32]
                    _8441 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8441] = 30
                    mem[_8441 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4883 * _5098 / 10^18 / DIVISOR <= _8372:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8372 - (0 / _4883 * _5098 / 10^18 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8555 + 68] = mem[idx + _8441 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8555 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8555 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _6316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6316] = 26
                mem[_6316 + 32] = 'SafeMath: division by zero'
                if not _4883 * _5098 / 10^18:
                    _6521 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6521 + 68] = mem[idx + _6316 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6521 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6521 + -mem[64] + 100
                _6919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6919] = 26
                mem[_6919 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7146 + 68] = mem[idx + _6919 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7146 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7146 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8069 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7892] == mem[_7892 + 12 len 20]
                mem[_8069] = mem[_7892]
                mem[_8069 + 32] = mem[_7892 + 32]
                _8440 = mem[_8069 + 32]
                _8508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8508] = 30
                mem[_8508 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4883 * _5098 / 10^18 / DIVISOR <= _8440:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8440 - (DIVISOR * sub_b7324175[idx].field_256 / _4883 * _5098 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8596 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8596 + 68] = mem[idx + _8508 + 32]
                    idx = idx + 32
                    continue 
                mem[_8596 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8596 + -mem[64] + 100
            if 10^18 * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _4592 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4592] = 26
            mem[_4592 + 32] = 'SafeMath: division by zero'
            if not _4534:
                _4624 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4624 + 68] = mem[idx + _4592 + 32]
                    idx = idx + 32
                    continue 
                mem[_4624 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4624 + -mem[64] + 100
            require idx < mem[96]
            mem[(32 * idx) + 128] = 10^18 * sub_b7324175[idx].field_256 / _4534
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = strategyAddress
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4862 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4906 = mem[_4862]
            if not mem[_4862]:
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == _4906 - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5437 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5620 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5437] == mem[_5437 + 12 len 20]
                    mem[_5620] = mem[_5437]
                    mem[_5620 + 32] = mem[_5437 + 32]
                    _6129 = mem[_5620 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6634 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6917 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6634] == mem[_6634 + 12 len 20]
                    mem[_6917] = mem[_6634]
                    mem[_6917 + 32] = mem[_6634 + 32]
                    _7543 = mem[_6917 + 32]
                    _7627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7627] = 30
                    mem[_7627 + 32] = 'SafeMath: subtraction overflow'
                    if _6129 <= _7543:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7543 - _6129
                        idx = idx + 1
                        continue 
                    _7803 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7803 + 68] = mem[idx + _7627 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7803 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7803 + -mem[64] + 100
                _5245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5245] = 30
                mem[_5245 + 32] = 'SafeMath: subtraction overflow'
                if _4906 - sub_b7324175[idx].field_256 > _4906:
                    _5359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5359 + 68] = mem[idx + _5245 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5359 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5359 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5885] = 26
                    mem[_5885 + 32] = 'SafeMath: division by zero'
                    if not _4906:
                        _6037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6037 + 68] = mem[idx + _5885 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6037 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6037 + -mem[64] + 100
                    _6412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6412] = 26
                    mem[_6412 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6636 + 68] = mem[idx + _6412 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6636 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6636 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7713 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7450] == mem[_7450 + 12 len 20]
                    mem[_7713] = mem[_7450]
                    mem[_7713 + 32] = mem[_7450 + 32]
                    _8144 = mem[_7713 + 32]
                    _8221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8221] = 30
                    mem[_8221 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4906 / DIVISOR <= _8144:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8144 - (0 / _4906 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8319 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8319 + 68] = mem[idx + _8221 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8319 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8319 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5956 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5956] = 26
                mem[_5956 + 32] = 'SafeMath: division by zero'
                if not _4906:
                    _6130 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6130 + 68] = mem[idx + _5956 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6130 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6130 + -mem[64] + 100
                _6518 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6518] = 26
                mem[_6518 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _6731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6731 + 68] = mem[idx + _6518 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6731 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6731 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7804 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7544] == mem[_7544 + 12 len 20]
                mem[_7804] = mem[_7544]
                mem[_7804 + 32] = mem[_7544 + 32]
                _8220 = mem[_7804 + 32]
                _8277 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8277] = 30
                mem[_8277 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4906 / DIVISOR <= _8220:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8220 - (DIVISOR * sub_b7324175[idx].field_256 / _4906 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8368 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8368 + 68] = mem[idx + _8277 + 32]
                    idx = idx + 32
                    continue 
                mem[_8368 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8368 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5060 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5150 = mem[_5060]
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == (_4906 * _5150 / 10^18) - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6035 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5802] == mem[_5802 + 12 len 20]
                mem[_6035] = mem[_5802]
                mem[_6035 + 32] = mem[_5802 + 32]
                _6631 = mem[_6035 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7447 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7139] == mem[_7139 + 12 len 20]
                mem[_7447] = mem[_7139]
                mem[_7447 + 32] = mem[_7139 + 32]
                _7959 = mem[_7447 + 32]
                _8012 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8012] = 30
                mem[_8012 + 32] = 'SafeMath: subtraction overflow'
                if _6631 <= _7959:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7959 - _6631
                    idx = idx + 1
                    continue 
                _8140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8140 + 68] = mem[idx + _8012 + 32]
                    idx = idx + 32
                    continue 
                mem[_8140 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8140 + -mem[64] + 100
            _5554 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5554] = 30
            mem[_5554 + 32] = 'SafeMath: subtraction overflow'
            if (_4906 * _5150 / 10^18) - sub_b7324175[idx].field_256 > _4906 * _5150 / 10^18:
                _5702 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5702 + 68] = mem[idx + _5554 + 32]
                    idx = idx + 32
                    continue 
                mem[_5702 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5702 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _6314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6314] = 26
                mem[_6314 + 32] = 'SafeMath: division by zero'
                if not _4906 * _5150 / 10^18:
                    _6517 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6517 + 68] = mem[idx + _6314 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6517 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6517 + -mem[64] + 100
                _6916 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6916] = 26
                mem[_6916 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7141 + 68] = mem[idx + _6916 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7141 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7141 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7888 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8066 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7888] == mem[_7888 + 12 len 20]
                mem[_8066] = mem[_7888]
                mem[_8066 + 32] = mem[_7888 + 32]
                _8436 = mem[_8066 + 32]
                _8505 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8505] = 30
                mem[_8505 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4906 * _5150 / 10^18 / DIVISOR <= _8436:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8436 - (0 / _4906 * _5150 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8594 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8594 + 68] = mem[idx + _8505 + 32]
                    idx = idx + 32
                    continue 
                mem[_8594 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8594 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _6408 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6408] = 26
            mem[_6408 + 32] = 'SafeMath: division by zero'
            if not _4906 * _5150 / 10^18:
                _6632 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6632 + 68] = mem[idx + _6408 + 32]
                    idx = idx + 32
                    continue 
                mem[_6632 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6632 + -mem[64] + 100
            _7024 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7024] = 26
            mem[_7024 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _7249 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[s + _7249 + 68] = mem[s + _7024 + 32]
                    s = s + 32
                    continue 
                mem[_7249 + 94] = 0
                revert with memory
                  from mem[64]
                   len _7249 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7960 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _8141 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7960] == mem[_7960 + 12 len 20]
            mem[_8141] = mem[_7960]
            mem[_8141 + 32] = mem[_7960 + 32]
            _8504 = mem[_8141 + 32]
            _8553 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8553] = 30
            mem[_8553 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4906 * _5150 / 10^18 / DIVISOR <= _8504:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8504 - (DIVISOR * sub_b7324175[idx].field_256 / _4906 * _5150 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _8643 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8643 + 68] = mem[idx + _8553 + 32]
                idx = idx + 32
                continue 
            mem[_8643 + 98] = 0
            revert with memory
              from mem[64]
               len _8643 + -mem[64] + 100
        if not mem[_4471]:
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_4471]
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = strategyAddress
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4595 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4627 = mem[_4595]
            if not mem[_4595]:
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == _4627 - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _4931 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_4866] == mem[_4866 + 12 len 20]
                    mem[_4931] = mem[_4866]
                    mem[_4931 + 32] = mem[_4866 + 32]
                    _5161 = mem[_4931 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5634 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5452] == mem[_5452 + 12 len 20]
                    mem[_5634] = mem[_5452]
                    mem[_5634 + 32] = mem[_5452 + 32]
                    _6150 = mem[_5634 + 32]
                    _6247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6247] = 30
                    mem[_6247 + 32] = 'SafeMath: subtraction overflow'
                    if _5161 <= _6150:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6150 - _5161
                        idx = idx + 1
                        continue 
                    _6430 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6430 + 68] = mem[idx + _6247 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6430 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6430 + -mem[64] + 100
                _4803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4803] = 30
                mem[_4803 + 32] = 'SafeMath: subtraction overflow'
                if _4627 - sub_b7324175[idx].field_256 > _4627:
                    _4843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4843 + 68] = mem[idx + _4803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4843 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4843 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5035 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5035] = 26
                    mem[_5035 + 32] = 'SafeMath: division by zero'
                    if not _4627:
                        _5107 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5107 + 68] = mem[idx + _5035 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5107 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5107 + -mem[64] + 100
                    _5307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5307] = 26
                    mem[_5307 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _5454 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5454 + 68] = mem[idx + _5307 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5454 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5454 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6335 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6055] == mem[_6055 + 12 len 20]
                    mem[_6335] = mem[_6055]
                    mem[_6335 + 32] = mem[_6055 + 32]
                    _6939 = mem[_6335 + 32]
                    _7051 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7051] = 30
                    mem[_7051 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4627 / DIVISOR <= _6939:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6939 - (0 / _4627 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _7275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _7275 + 68] = mem[s + _7051 + 32]
                        s = s + 32
                        continue 
                    mem[_7275 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7275 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5066 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5066] = 26
                mem[_5066 + 32] = 'SafeMath: division by zero'
                if not _4627:
                    _5162 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5162 + 68] = mem[idx + _5066 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5162 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5162 + -mem[64] + 100
                _5374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5374] = 26
                mem[_5374 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _5509 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5509 + 68] = mem[idx + _5374 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5509 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5509 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6431 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6151] == mem[_6151 + 12 len 20]
                mem[_6431] = mem[_6151]
                mem[_6431 + 32] = mem[_6151 + 32]
                _7050 = mem[_6431 + 32]
                _7167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7167] = 30
                mem[_7167 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4627 / DIVISOR <= _7050:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7050 - (DIVISOR * sub_b7324175[idx].field_256 / _4627 / DIVISOR)
                    idx = idx + 1
                    continue 
                _7370 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7370 + 68] = mem[idx + _7167 + 32]
                    idx = idx + 32
                    continue 
                mem[_7370 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7370 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4766 = mem[_4711]
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == (_4627 * _4766 / 10^18) - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5003 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _5105 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5003] == mem[_5003 + 12 len 20]
                mem[_5105] = mem[_5003]
                mem[_5105 + 32] = mem[_5003 + 32]
                _5449 = mem[_5105 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6052 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5821] == mem[_5821 + 12 len 20]
                mem[_6052] = mem[_5821]
                mem[_6052 + 32] = mem[_5821 + 32]
                _6656 = mem[_6052 + 32]
                _6750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6750] = 30
                mem[_6750 + 32] = 'SafeMath: subtraction overflow'
                if _5449 <= _6656:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _6656 - _5449
                    idx = idx + 1
                    continue 
                _6935 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _6935 + 68] = mem[idx + _6750 + 32]
                    idx = idx + 32
                    continue 
                mem[_6935 + 98] = 0
                revert with memory
                  from mem[64]
                   len _6935 + -mem[64] + 100
            _4910 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4910] = 30
            mem[_4910 + 32] = 'SafeMath: subtraction overflow'
            if (_4627 * _4766 / 10^18) - sub_b7324175[idx].field_256 > _4627 * _4766 / 10^18:
                _4966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4966 + 68] = mem[idx + _4910 + 32]
                    idx = idx + 32
                    continue 
                mem[_4966 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4966 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _5254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5254] = 26
                mem[_5254 + 32] = 'SafeMath: division by zero'
                if not _4627 * _4766 / 10^18:
                    _5373 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5373 + 68] = mem[idx + _5254 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5373 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5373 + -mem[64] + 100
                _5633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5633] = 26
                mem[_5633 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _5823 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _5823 + 68] = mem[idx + _5633 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5823 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _5823 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6834 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6541] == mem[_6541 + 12 len 20]
                mem[_6834] = mem[_6541]
                mem[_6834 + 32] = mem[_6541 + 32]
                _7469 = mem[_6834 + 32]
                _7561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7561] = 30
                mem[_7561 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4627 * _4766 / 10^18 / DIVISOR <= _7469:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7469 - (0 / _4627 * _4766 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _7730 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7730 + 68] = mem[idx + _7561 + 32]
                    idx = idx + 32
                    continue 
                mem[_7730 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7730 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _5303 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5303] = 26
            mem[_5303 + 32] = 'SafeMath: division by zero'
            if not _4627 * _4766 / 10^18:
                _5450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5450 + 68] = mem[idx + _5303 + 32]
                    idx = idx + 32
                    continue 
                mem[_5450 + 94] = 0
                revert with memory
                  from mem[64]
                   len _5450 + -mem[64] + 100
            _5720 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5720] = 26
            mem[_5720 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _5898 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _5898 + 68] = mem[idx + _5720 + 32]
                    idx = idx + 32
                    continue 
                mem[_5898 + 94] = 0
                revert with memory
                  from mem[64]
                   len _5898 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _6936 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_6657] == mem[_6657 + 12 len 20]
            mem[_6936] = mem[_6657]
            mem[_6936 + 32] = mem[_6657 + 32]
            _7560 = mem[_6936 + 32]
            _7642 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7642] = 30
            mem[_7642 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4627 * _4766 / 10^18 / DIVISOR <= _7560:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7560 - (DIVISOR * sub_b7324175[idx].field_256 / _4627 * _4766 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _7820 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _7820 + 68] = mem[idx + _7642 + 32]
                idx = idx + 32
                continue 
            mem[_7820 + 98] = 0
            revert with memory
              from mem[64]
               len _7820 + -mem[64] + 100
        require ext_code.size(sub_b7324175[idx].field_0)
        staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4527 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4543 = mem[_4527]
        if not _4483:
            _4594 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4594] = 26
            mem[_4594 + 32] = 'SafeMath: division by zero'
            if not _4543:
                _4626 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _4626 + 68] = mem[idx + _4594 + 32]
                    idx = idx + 32
                    continue 
                mem[_4626 + 94] = 0
                revert with memory
                  from mem[64]
                   len _4626 + -mem[64] + 100
            require idx < mem[96]
            mem[(32 * idx) + 128] = 0 / _4543
            require idx < sub_b7324175.length
            mem[0] = 3
            mem[mem[64] + 4] = strategyAddress
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args strategyAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4864 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4909 = mem[_4864]
            if not mem[_4864]:
                require idx < sub_b7324175.length
                mem[0] = 3
                if 0 == _4909 - sub_b7324175[idx].field_256:
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _5630 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_5447] == mem[_5447 + 12 len 20]
                    mem[_5630] = mem[_5447]
                    mem[_5630 + 32] = mem[_5447 + 32]
                    _6145 = mem[_5630 + 32]
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6652 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _6933 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_6652] == mem[_6652 + 12 len 20]
                    mem[_6933] = mem[_6652]
                    mem[_6933 + 32] = mem[_6652 + 32]
                    _7557 = mem[_6933 + 32]
                    _7641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7641] = 30
                    mem[_7641 + 32] = 'SafeMath: subtraction overflow'
                    if _6145 <= _7557:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7557 - _6145
                        idx = idx + 1
                        continue 
                    _7818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _7818 + 68] = mem[idx + _7641 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7818 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _7818 + -mem[64] + 100
                _5253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5253] = 30
                mem[_5253 + 32] = 'SafeMath: subtraction overflow'
                if _4909 - sub_b7324175[idx].field_256 > _4909:
                    _5371 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _5371 + 68] = mem[idx + _5253 + 32]
                        idx = idx + 32
                        continue 
                    mem[_5371 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _5371 + -mem[64] + 100
                if not sub_b7324175[idx].field_256:
                    _5897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5897] = 26
                    mem[_5897 + 32] = 'SafeMath: division by zero'
                    if not _4909:
                        _6051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6051 + 68] = mem[idx + _5897 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6051 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6051 + -mem[64] + 100
                    _6427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6427] = 26
                    mem[_6427 + 32] = 'SafeMath: division by zero'
                    if not DIVISOR:
                        _6654 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6654 + 68] = mem[idx + _6427 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6654 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6654 + -mem[64] + 100
                    require ext_code.size(strategyAddress)
                    staticcall strategyAddress.0x191ac2d2 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7729 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require mem[_7466] == mem[_7466 + 12 len 20]
                    mem[_7729] = mem[_7466]
                    mem[_7729 + 32] = mem[_7466 + 32]
                    _8157 = mem[_7729 + 32]
                    _8234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8234] = 30
                    mem[_8234 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _4909 / DIVISOR <= _8157:
                        require idx < mem[(32 * sub_b7324175.length) + 128]
                        mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8157 - (0 / _4909 / DIVISOR)
                        idx = idx + 1
                        continue 
                    _8327 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _8327 + 68] = mem[idx + _8234 + 32]
                        idx = idx + 32
                        continue 
                    mem[_8327 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _8327 + -mem[64] + 100
                if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                    revert with 0, 'SafeMath: multiplication overflow'
                _5967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5967] = 26
                mem[_5967 + 32] = 'SafeMath: division by zero'
                if not _4909:
                    _6146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6146 + 68] = mem[idx + _5967 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6146 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6146 + -mem[64] + 100
                _6538 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6538] = 26
                mem[_6538 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _6747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6747 + 68] = mem[idx + _6538 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6747 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6747 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7558 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7819 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7558] == mem[_7558 + 12 len 20]
                mem[_7819] = mem[_7558]
                mem[_7819 + 32] = mem[_7558 + 32]
                _8233 = mem[_7819 + 32]
                _8287 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8287] = 30
                mem[_8287 + 32] = 'SafeMath: subtraction overflow'
                if DIVISOR * sub_b7324175[idx].field_256 / _4909 / DIVISOR <= _8233:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8233 - (DIVISOR * sub_b7324175[idx].field_256 / _4909 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8378 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8378 + 68] = mem[idx + _8287 + 32]
                    idx = idx + 32
                    continue 
                mem[_8378 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8378 + -mem[64] + 100
            require ext_code.size(sub_b7324175[idx].field_0)
            staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5064 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5158 = mem[_5064]
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == (_4909 * _5158 / 10^18) - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _6049 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5816] == mem[_5816 + 12 len 20]
                mem[_6049] = mem[_5816]
                mem[_6049 + 32] = mem[_5816 + 32]
                _6649 = mem[_6049 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7158 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7463 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7158] == mem[_7158 + 12 len 20]
                mem[_7463] = mem[_7158]
                mem[_7463 + 32] = mem[_7158 + 32]
                _7970 = mem[_7463 + 32]
                _8021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8021] = 30
                mem[_8021 + 32] = 'SafeMath: subtraction overflow'
                if _6649 <= _7970:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7970 - _6649
                    idx = idx + 1
                    continue 
                _8153 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8153 + 68] = mem[idx + _8021 + 32]
                    idx = idx + 32
                    continue 
                mem[_8153 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8153 + -mem[64] + 100
            _5564 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5564] = 30
            mem[_5564 + 32] = 'SafeMath: subtraction overflow'
            if (_4909 * _5158 / 10^18) - sub_b7324175[idx].field_256 > _4909 * _5158 / 10^18:
                _5718 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5718 + 68] = mem[idx + _5564 + 32]
                    idx = idx + 32
                    continue 
                mem[_5718 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5718 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _6330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6330] = 26
                mem[_6330 + 32] = 'SafeMath: division by zero'
                if not _4909 * _5158 / 10^18:
                    _6537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6537 + 68] = mem[idx + _6330 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6537 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6537 + -mem[64] + 100
                _6932 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6932] = 26
                mem[_6932 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _7160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _7160 + 68] = mem[idx + _6932 + 32]
                        idx = idx + 32
                        continue 
                    mem[_7160 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _7160 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7902 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8077 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7902] == mem[_7902 + 12 len 20]
                mem[_8077] = mem[_7902]
                mem[_8077 + 32] = mem[_7902 + 32]
                _8449 = mem[_8077 + 32]
                _8517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8517] = 30
                mem[_8517 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4909 * _5158 / 10^18 / DIVISOR <= _8449:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8449 - (0 / _4909 * _5158 / 10^18 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8602 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8602 + 68] = mem[idx + _8517 + 32]
                    idx = idx + 32
                    continue 
                mem[_8602 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8602 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _6423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6423] = 26
            mem[_6423 + 32] = 'SafeMath: division by zero'
            if not _4909 * _5158 / 10^18:
                _6650 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6650 + 68] = mem[idx + _6423 + 32]
                    idx = idx + 32
                    continue 
                mem[_6650 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6650 + -mem[64] + 100
            _7043 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7043] = 26
            mem[_7043 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _7268 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[s + _7268 + 68] = mem[s + _7043 + 32]
                    s = s + 32
                    continue 
                mem[_7268 + 94] = 0
                revert with memory
                  from mem[64]
                   len _7268 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _8154 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7971] == mem[_7971 + 12 len 20]
            mem[_8154] = mem[_7971]
            mem[_8154 + 32] = mem[_7971 + 32]
            _8516 = mem[_8154 + 32]
            _8562 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8562] = 30
            mem[_8562 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4909 * _5158 / 10^18 / DIVISOR <= _8516:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8516 - (DIVISOR * sub_b7324175[idx].field_256 / _4909 * _5158 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _8652 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8652 + 68] = mem[idx + _8562 + 32]
                idx = idx + 32
                continue 
            mem[_8652 + 98] = 0
            revert with memory
              from mem[64]
               len _8652 + -mem[64] + 100
        if 10^18 * _4483 / _4483 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        _4610 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4610] = 26
        mem[_4610 + 32] = 'SafeMath: division by zero'
        if not _4543:
            _4638 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _4638 + 68] = mem[idx + _4610 + 32]
                idx = idx + 32
                continue 
            mem[_4638 + 94] = 0
            revert with memory
              from mem[64]
               len _4638 + -mem[64] + 100
        require idx < mem[96]
        mem[(32 * idx) + 128] = 10^18 * _4483 / _4543
        require idx < sub_b7324175.length
        mem[0] = 3
        mem[mem[64] + 4] = strategyAddress
        require ext_code.size(sub_b7324175[idx].field_0)
        staticcall sub_b7324175[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args strategyAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4886 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4929 = mem[_4886]
        if not mem[_4886]:
            require idx < sub_b7324175.length
            mem[0] = 3
            if 0 == _4929 - sub_b7324175[idx].field_256:
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _5717 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_5504] == mem[_5504 + 12 len 20]
                mem[_5717] = mem[_5504]
                mem[_5717 + 32] = mem[_5504 + 32]
                _6236 = mem[_5717 + 32]
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7041 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_6741] == mem[_6741 + 12 len 20]
                mem[_7041] = mem[_6741]
                mem[_7041 + 32] = mem[_6741 + 32]
                _7636 = mem[_7041 + 32]
                _7725 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7725] = 30
                mem[_7725 + 32] = 'SafeMath: subtraction overflow'
                if _6236 <= _7636:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _7636 - _6236
                    idx = idx + 1
                    continue 
                _7899 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _7899 + 68] = mem[idx + _7725 + 32]
                    idx = idx + 32
                    continue 
                mem[_7899 + 98] = 0
                revert with memory
                  from mem[64]
                   len _7899 + -mem[64] + 100
            _5301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5301] = 30
            mem[_5301 + 32] = 'SafeMath: subtraction overflow'
            if _4929 - sub_b7324175[idx].field_256 > _4929:
                _5445 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _5445 + 68] = mem[idx + _5301 + 32]
                    idx = idx + 32
                    continue 
                mem[_5445 + 98] = 0
                revert with memory
                  from mem[64]
                   len _5445 + -mem[64] + 100
            if not sub_b7324175[idx].field_256:
                _5965 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5965] = 26
                mem[_5965 + 32] = 'SafeMath: division by zero'
                if not _4929:
                    _6143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6143 + 68] = mem[idx + _5965 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6143 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6143 + -mem[64] + 100
                _6535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6535] = 26
                mem[_6535 + 32] = 'SafeMath: division by zero'
                if not DIVISOR:
                    _6743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6743 + 68] = mem[idx + _6535 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6743 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6743 + -mem[64] + 100
                require ext_code.size(strategyAddress)
                staticcall strategyAddress.0x191ac2d2 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7815 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require mem[_7554] == mem[_7554 + 12 len 20]
                mem[_7815] = mem[_7554]
                mem[_7815 + 32] = mem[_7554 + 32]
                _8229 = mem[_7815 + 32]
                _8284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8284] = 30
                mem[_8284 + 32] = 'SafeMath: subtraction overflow'
                if 0 / _4929 / DIVISOR <= _8229:
                    require idx < mem[(32 * sub_b7324175.length) + 128]
                    mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8229 - (0 / _4929 / DIVISOR)
                    idx = idx + 1
                    continue 
                _8376 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _8376 + 68] = mem[idx + _8284 + 32]
                    idx = idx + 32
                    continue 
                mem[_8376 + 98] = 0
                revert with memory
                  from mem[64]
                   len _8376 + -mem[64] + 100
            if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
                revert with 0, 'SafeMath: multiplication overflow'
            _6047 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6047] = 26
            mem[_6047 + 32] = 'SafeMath: division by zero'
            if not _4929:
                _6237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6237 + 68] = mem[idx + _6047 + 32]
                    idx = idx + 32
                    continue 
                mem[_6237 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6237 + -mem[64] + 100
            _6647 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6647] = 26
            mem[_6647 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _6829 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6829 + 68] = mem[idx + _6647 + 32]
                    idx = idx + 32
                    continue 
                mem[_6829 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6829 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _7900 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7637] == mem[_7637 + 12 len 20]
            mem[_7900] = mem[_7637]
            mem[_7900 + 32] = mem[_7637 + 32]
            _8283 = mem[_7900 + 32]
            _8325 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8325] = 30
            mem[_8325 + 32] = 'SafeMath: subtraction overflow'
            if DIVISOR * sub_b7324175[idx].field_256 / _4929 / DIVISOR <= _8283:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8283 - (DIVISOR * sub_b7324175[idx].field_256 / _4929 / DIVISOR)
                idx = idx + 1
                continue 
            _8445 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8445 + 68] = mem[idx + _8325 + 32]
                idx = idx + 32
                continue 
            mem[_8445 + 98] = 0
            revert with memory
              from mem[64]
               len _8445 + -mem[64] + 100
        require ext_code.size(sub_b7324175[idx].field_0)
        staticcall sub_b7324175[idx].field_0.exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5204 = mem[_5104]
        require idx < sub_b7324175.length
        mem[0] = 3
        if 0 == (_4929 * _5204 / 10^18) - sub_b7324175[idx].field_256:
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5892 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _6141 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_5892] == mem[_5892 + 12 len 20]
            mem[_6141] = mem[_5892]
            mem[_6141 + 32] = mem[_5892 + 32]
            _6738 = mem[_6141 + 32]
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _7551 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7261] == mem[_7261 + 12 len 20]
            mem[_7551] = mem[_7261]
            mem[_7551 + 32] = mem[_7261 + 32]
            _8017 = mem[_7551 + 32]
            _8075 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8075] = 30
            mem[_8075 + 32] = 'SafeMath: subtraction overflow'
            if _6738 <= _8017:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8017 - _6738
                idx = idx + 1
                continue 
            _8225 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8225 + 68] = mem[idx + _8075 + 32]
                idx = idx + 32
                continue 
            mem[_8225 + 98] = 0
            revert with memory
              from mem[64]
               len _8225 + -mem[64] + 100
        _5627 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5627] = 30
        mem[_5627 + 32] = 'SafeMath: subtraction overflow'
        if (_4929 * _5204 / 10^18) - sub_b7324175[idx].field_256 > _4929 * _5204 / 10^18:
            _5814 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _5814 + 68] = mem[idx + _5627 + 32]
                idx = idx + 32
                continue 
            mem[_5814 + 98] = 0
            revert with memory
              from mem[64]
               len _5814 + -mem[64] + 100
        if not sub_b7324175[idx].field_256:
            _6421 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6421] = 26
            mem[_6421 + 32] = 'SafeMath: division by zero'
            if not _4929 * _5204 / 10^18:
                _6646 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _6646 + 68] = mem[idx + _6421 + 32]
                    idx = idx + 32
                    continue 
                mem[_6646 + 94] = 0
                revert with memory
                  from mem[64]
                   len _6646 + -mem[64] + 100
            _7040 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7040] = 26
            mem[_7040 + 32] = 'SafeMath: division by zero'
            if not DIVISOR:
                _7263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[s + _7263 + 68] = mem[s + _7040 + 32]
                    s = s + 32
                    continue 
                mem[_7263 + 94] = 0
                revert with memory
                  from mem[64]
                   len _7263 + -mem[64] + 100
            require ext_code.size(strategyAddress)
            staticcall strategyAddress.0x191ac2d2 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _8151 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require mem[_7967] == mem[_7967 + 12 len 20]
            mem[_8151] = mem[_7967]
            mem[_8151 + 32] = mem[_7967 + 32]
            _8512 = mem[_8151 + 32]
            _8559 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8559] = 30
            mem[_8559 + 32] = 'SafeMath: subtraction overflow'
            if 0 / _4929 * _5204 / 10^18 / DIVISOR <= _8512:
                require idx < mem[(32 * sub_b7324175.length) + 128]
                mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8512 - (0 / _4929 * _5204 / 10^18 / DIVISOR)
                idx = idx + 1
                continue 
            _8650 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _8650 + 68] = mem[idx + _8559 + 32]
                idx = idx + 32
                continue 
            mem[_8650 + 98] = 0
            revert with memory
              from mem[64]
               len _8650 + -mem[64] + 100
        if DIVISOR * sub_b7324175[idx].field_256 / sub_b7324175[idx].field_256 != DIVISOR:
            revert with 0, 'SafeMath: multiplication overflow'
        _6531 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6531] = 26
        mem[_6531 + 32] = 'SafeMath: division by zero'
        if not _4929 * _5204 / 10^18:
            _6739 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _6739 + 68] = mem[idx + _6531 + 32]
                idx = idx + 32
                continue 
            mem[_6739 + 94] = 0
            revert with memory
              from mem[64]
               len _6739 + -mem[64] + 100
        _7154 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7154] = 26
        mem[_7154 + 32] = 'SafeMath: division by zero'
        if not DIVISOR:
            _7360 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _7360 + 68] = mem[idx + _7154 + 32]
                idx = idx + 32
                continue 
            mem[_7360 + 94] = 0
            revert with memory
              from mem[64]
               len _7360 + -mem[64] + 100
        require ext_code.size(strategyAddress)
        staticcall strategyAddress.0x191ac2d2 with:
                gas gas_remaining wei
               args idx
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8018 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _8226 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require mem[_8018] == mem[_8018 + 12 len 20]
        mem[_8226] = mem[_8018]
        mem[_8226 + 32] = mem[_8018 + 32]
        _8558 = mem[_8226 + 32]
        _8600 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8600] = 30
        mem[_8600 + 32] = 'SafeMath: subtraction overflow'
        if DIVISOR * sub_b7324175[idx].field_256 / _4929 * _5204 / 10^18 / DIVISOR <= _8558:
            require idx < mem[(32 * sub_b7324175.length) + 128]
            mem[(32 * idx) + (32 * sub_b7324175.length) + 160] = _8558 - (DIVISOR * sub_b7324175[idx].field_256 / _4929 * _5204 / 10^18 / DIVISOR)
            idx = idx + 1
            continue 
        _8697 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _8697 + 68] = mem[idx + _8600 + 32]
            idx = idx + 32
            continue 
        mem[_8697 + 98] = 0
        revert with memory
          from mem[64]
           len _8697 + -mem[64] + 100
    _4418 = mem[64]
    mem[mem[64]] = 64
    _4433 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _9527 = mem[(32 * sub_b7324175.length) + 128]
    mem[_4418 + (32 * mem[96]) + 96] = mem[(32 * sub_b7324175.length) + 128]
    mem[_4418 + (32 * _4433) + 128 len 32 * _9527] = mem[(32 * sub_b7324175.length) + 160 len 32 * _9527]
    return memory
      from mem[64]
       len _4418 + (32 * _4433) + (32 * _9527) + -mem[64] + 128
}



}
