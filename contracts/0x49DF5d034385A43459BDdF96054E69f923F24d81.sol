contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address stor0;
array of address stor1;

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_7bdc7241(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require msg.sender == stor0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        stor1.length++
        mem[0] = 1
        stor1[stor1.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_73ce20d2(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor0
    if not eth.balance(this.address):
        idx = 0
        s = eth.balance(this.address)
        while idx < stor1.length:
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1[idx])
            staticcall stor1[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_66]
            if not mem[_66]:
                idx = idx + 1
                s = mem[_66]
                continue 
            _70 = mem[64]
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = _68
            _71 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_71 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_71 + 36 len 28]
            _74 = mem[_71]
            t = _71 + 32
            u = _70 + 100
            s = mem[_71]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_70 + floor32(mem[_71]) + 100] = mem[_71 + -(mem[_71] % 32) + floor32(mem[_71]) + 64 len mem[_71] % 32] or Mask(8 * -(mem[_71] % 32) + 32, -(8 * -(mem[_71] % 32) + 32) + 256, mem[_70 + floor32(mem[_71]) + 100])
            call stor1[idx].mem[_70 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_70 + 104 len _74 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_70 + 208 len 24]
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_70 + 208 len 24]
            else:
                mem[64] = _70 + ceil32(return_data.size) + 101
                mem[_70 + 100] = return_data.size
                mem[_70 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[_70 + ceil32(return_data.size) + 209 len 24]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_70 + 132]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[_70 + ceil32(return_data.size) + 209 len 24]
            idx = idx + 1
            s = _68
            continue 
    else:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = eth.balance(this.address)
        while idx < stor1.length:
            mem[0] = 1
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor1[idx])
            staticcall stor1[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _69 = mem[_67]
            if not mem[_67]:
                idx = idx + 1
                s = mem[_67]
                continue 
            _75 = mem[64]
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = _69
            _76 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_76 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_76 + 36 len 28]
            _79 = mem[_76]
            t = _76 + 32
            u = mem[64]
            s = mem[_76]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_76])] = mem[_76 + floor32(mem[_76]) + -(mem[_76] % 32) + 64 len mem[_76] % 32] or Mask(8 * -(mem[_76] % 32) + 32, -(8 * -(mem[_76] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_76])])
            call stor1[idx].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _79 + _75 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
            else:
                _127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_127] = return_data.size
                mem[_127 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_127 + 32]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
            idx = idx + 1
            s = _69
            continue 
}

function sub_c8452b83(?) {
    mem[96] = calldata.size - 4
    mem[128 len calldata.size - 4] = call.data[4 len calldata.size - 4]
    if calldata.size - 4 < 14:
        revert with 0, 'toUint112_outOfBounds'
    if calldata.size - 4 < 18:
        revert with 0, 'toUint24_outOfBounds'
    if calldata.size - 4 < 19:
        revert with 0, 'toUint8_outOfBounds'
    if 0 < block.timestamp:
        revert with 0, 'FlashArbs: EXPIRED'
    if calldata.size - 4 < 39:
        revert with 0, 'toAddress_outOfBounds'
    _17 = mem[147]
    require ext_code.size(mem[159 len 8])
    staticcall mem[159 len 8].token0() with:
            gas gas_remaining wei
    mem[floor32(calldata.size + 155)] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(calldata.size + 155) + ceil32(return_data.size)] = 96
    mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 32] = 96
    if calldata.size - 23 / 21 < 1:
        revert with 0, 'FlashArbs: INVALID_PATH'
    require (calldata.size - 23 / 21) + 1 <= test266151307()
    mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64] = (calldata.size - 23 / 21) + 1
    mem[64] = floor32(calldata.size + 155) + ceil32(return_data.size) + (32 * (calldata.size - 23 / 21) + 1) + 96
    if not (calldata.size - 23 / 21) + 1:
        require 0 < (calldata.size - 23 / 21) + 1
        mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0
        idx = 0
        s = ext_call.return_data[0]
        while idx < calldata.size - 23 / 21:
            if mem[96] < (21 * idx) + 39:
                revert with 0, 'toAddress_outOfBounds'
            _298 = mem[(21 * idx) + 147]
            if mem[96] < (21 * idx) + 40:
                revert with 0, 'toUint8_outOfBounds'
            require ext_code.size(mem[(21 * idx) + 159 len 8])
            staticcall mem[(21 * idx) + 159 len 8].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _351 = mem[_336]
            require mem[_336] == mem[_336 + 12 len 20]
            require ext_code.size(Mask(64, 96, _298) >> 96)
            staticcall Mask(64, 96, _298) >> 96.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_371] == mem[_371 + 18 len 14]
            require mem[_371 + 32] == mem[_371 + 50 len 14]
            require mem[_371 + 64] == mem[_371 + 92 len 4]
            require idx < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            if mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_INPUT_AMOUNT'
            if address(s) == address(_351):
                if mem[_371 + 18 len 14] <= 0:
                    revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
                if mem[_371 + 50 len 14] <= 0:
                    revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
                if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] / 1000 != mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if not mem[_371 + 50 len 14]:
                    if 1000 * mem[_371 + 18 len 14] / 1000 != mem[_371 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-mul-overflow'
                    if (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_371 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-add-overflow'
                    require (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                    require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                    mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0 / (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                    require ext_code.size(Mask(64, 96, _298) >> 96)
                    staticcall Mask(64, 96, _298) >> 96.token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _499 = mem[_487]
                    require mem[_487] == mem[_487 + 12 len 20]
                    require ext_code.size(Mask(64, 96, _298) >> 96)
                    staticcall Mask(64, 96, _298) >> 96.token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_519] == mem[_519 + 12 len 20]
                    if address(s) == address(_499):
                        idx = idx + 1
                        s = mem[_519]
                        continue 
                    idx = idx + 1
                    s = _499
                    continue 
                require mem[_371 + 50 len 14]
                if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_371 + 50 len 14] / mem[_371 + 50 len 14] != 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if 1000 * mem[_371 + 18 len 14] / 1000 != mem[_371 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_371 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_371 + 50 len 14] / (1000 * mem[_371 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require ext_code.size(Mask(64, 96, _298) >> 96)
                staticcall Mask(64, 96, _298) >> 96.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _507 = mem[_500]
                require mem[_500] == mem[_500 + 12 len 20]
                require ext_code.size(Mask(64, 96, _298) >> 96)
                staticcall Mask(64, 96, _298) >> 96.token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_532] == mem[_532 + 12 len 20]
                if address(s) == address(_507):
                    idx = idx + 1
                    s = mem[_532]
                    continue 
                idx = idx + 1
                s = _507
                continue 
            if mem[_371 + 50 len 14] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
            if mem[_371 + 18 len 14] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
            if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] / 1000 != mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if not mem[_371 + 18 len 14]:
                if 1000 * mem[_371 + 50 len 14] / 1000 != mem[_371 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_371 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0 / (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require ext_code.size(Mask(64, 96, _298) >> 96)
                staticcall Mask(64, 96, _298) >> 96.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _501 = mem[_490]
                require mem[_490] == mem[_490 + 12 len 20]
                require ext_code.size(Mask(64, 96, _298) >> 96)
                staticcall Mask(64, 96, _298) >> 96.token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _522 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_522] == mem[_522 + 12 len 20]
                if address(s) == address(_501):
                    idx = idx + 1
                    s = mem[_522]
                    continue 
                idx = idx + 1
                s = _501
                continue 
            require mem[_371 + 18 len 14]
            if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_371 + 18 len 14] / mem[_371 + 18 len 14] != 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if 1000 * mem[_371 + 50 len 14] / 1000 != mem[_371 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_371 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-add-overflow'
            require (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
            require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_371 + 18 len 14] / (1000 * mem[_371 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
            require ext_code.size(Mask(64, 96, _298) >> 96)
            staticcall Mask(64, 96, _298) >> 96.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _508 = mem[_502]
            require mem[_502] == mem[_502 + 12 len 20]
            require ext_code.size(Mask(64, 96, _298) >> 96)
            staticcall Mask(64, 96, _298) >> 96.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _534 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_534] == mem[_534 + 12 len 20]
            if address(s) == address(_508):
                idx = idx + 1
                s = mem[_534]
                continue 
            idx = idx + 1
            s = _508
            continue 
        mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 32] = floor32(calldata.size + 155) + ceil32(return_data.size) + 64
        require mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64] - 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
        if mem[(32 * mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64] - 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] < 0:
            revert with 0, 'FlashArbs: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[floor32(calldata.size + 155) + ceil32(return_data.size)] = 96
        _287 = mem[64]
        mem[mem[64] + 32] = 32
        mem[mem[64] + 64] = 64
        _305 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + 96] = ceil32(mem[96]) + 96
            _546 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_305) + mem[64] + 160] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_305) + mem[64] + 192 len 32 * _546] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96 len 32 * _546]
            _597 = mem[64]
            mem[mem[64]] = ceil32(_305) + (32 * _546) + 160
            mem[64] = ceil32(_305) + mem[64] + (32 * _546) + 192
            require 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            _609 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 128]
            mem[ceil32(_305) + _287 + (32 * _546) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(_305) + _287 + (32 * _546) + 196] = 0
            mem[ceil32(_305) + _287 + (32 * _546) + 228] = _609
            mem[ceil32(_305) + _287 + (32 * _546) + 260] = this.address
            mem[ceil32(_305) + _287 + (32 * _546) + 292] = 128
            _617 = mem[_597]
            mem[ceil32(_305) + _287 + (32 * _546) + 324] = mem[_597]
            mem[ceil32(_305) + _287 + (32 * _546) + 356 len ceil32(_617)] = mem[_597 + 32 len ceil32(_617)]
            if ceil32(_617) > _617:
                mem[ceil32(_305) + _287 + (32 * _546) + _617 + 356] = 0
            require ext_code.size(Mask(64, 96, _17) >> 96)
            call Mask(64, 96, _17) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _609, address(this.address), 128, mem[ceil32(_305) + _287 + (32 * _546) + 324 len ceil32(_617) + 32]
        else:
            mem[mem[64] + mem[96] + 160] = 0
            mem[mem[64] + 96] = ceil32(mem[96]) + 96
            _550 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_305) + mem[64] + 160] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_305) + mem[64] + 192 len 32 * _550] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96 len 32 * _550]
            _600 = mem[64]
            mem[mem[64]] = ceil32(_305) + (32 * _550) + 160
            mem[64] = ceil32(_305) + mem[64] + (32 * _550) + 192
            require 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            _610 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 128]
            mem[ceil32(_305) + _287 + (32 * _550) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(_305) + _287 + (32 * _550) + 196] = 0
            mem[ceil32(_305) + _287 + (32 * _550) + 228] = _610
            mem[ceil32(_305) + _287 + (32 * _550) + 260] = this.address
            mem[ceil32(_305) + _287 + (32 * _550) + 292] = 128
            _618 = mem[_600]
            mem[ceil32(_305) + _287 + (32 * _550) + 324] = mem[_600]
            mem[ceil32(_305) + _287 + (32 * _550) + 356 len ceil32(_618)] = mem[_600 + 32 len ceil32(_618)]
            if ceil32(_618) > _618:
                mem[ceil32(_305) + _287 + (32 * _550) + _618 + 356] = 0
            require ext_code.size(Mask(64, 96, _17) >> 96)
            call Mask(64, 96, _17) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _610, address(this.address), 128, mem[ceil32(_305) + _287 + (32 * _550) + 324 len ceil32(_618) + 32]
    else:
        mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96 len 32 * (calldata.size - 23 / 21) + 1] = call.data[calldata.size len 32 * (calldata.size - 23 / 21) + 1]
        require 0 < (calldata.size - 23 / 21) + 1
        mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0
        idx = 0
        s = ext_call.return_data[0]
        while idx < calldata.size - 23 / 21:
            if mem[96] < (21 * idx) + 39:
                revert with 0, 'toAddress_outOfBounds'
            _302 = mem[(21 * idx) + 147]
            if mem[96] < (21 * idx) + 40:
                revert with 0, 'toUint8_outOfBounds'
            require ext_code.size(mem[(21 * idx) + 159 len 8])
            staticcall mem[(21 * idx) + 159 len 8].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _356 = mem[_338]
            require mem[_338] == mem[_338 + 12 len 20]
            require ext_code.size(Mask(64, 96, _302) >> 96)
            staticcall Mask(64, 96, _302) >> 96.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _372 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_372] == mem[_372 + 18 len 14]
            require mem[_372 + 32] == mem[_372 + 50 len 14]
            require mem[_372 + 64] == mem[_372 + 92 len 4]
            require idx < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            if mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_INPUT_AMOUNT'
            if address(s) == address(_356):
                if mem[_372 + 18 len 14] <= 0:
                    revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
                if mem[_372 + 50 len 14] <= 0:
                    revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
                if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] / 1000 != mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if not mem[_372 + 50 len 14]:
                    if 1000 * mem[_372 + 18 len 14] / 1000 != mem[_372 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-mul-overflow'
                    if (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_372 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-add-overflow'
                    require (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                    require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                    mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0 / (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                    require ext_code.size(Mask(64, 96, _302) >> 96)
                    staticcall Mask(64, 96, _302) >> 96.token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _503 = mem[_493]
                    require mem[_493] == mem[_493 + 12 len 20]
                    require ext_code.size(Mask(64, 96, _302) >> 96)
                    staticcall Mask(64, 96, _302) >> 96.token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _525 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_525] == mem[_525 + 12 len 20]
                    if address(s) == address(_503):
                        idx = idx + 1
                        s = mem[_525]
                        continue 
                    idx = idx + 1
                    s = _503
                    continue 
                require mem[_372 + 50 len 14]
                if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_372 + 50 len 14] / mem[_372 + 50 len 14] != 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if 1000 * mem[_372 + 18 len 14] / 1000 != mem[_372 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_372 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_372 + 50 len 14] / (1000 * mem[_372 + 18 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require ext_code.size(Mask(64, 96, _302) >> 96)
                staticcall Mask(64, 96, _302) >> 96.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _509 = mem[_504]
                require mem[_504] == mem[_504 + 12 len 20]
                require ext_code.size(Mask(64, 96, _302) >> 96)
                staticcall Mask(64, 96, _302) >> 96.token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_536] == mem[_536 + 12 len 20]
                if address(s) == address(_509):
                    idx = idx + 1
                    s = mem[_536]
                    continue 
                idx = idx + 1
                s = _509
                continue 
            if mem[_372 + 50 len 14] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
            if mem[_372 + 18 len 14] <= 0:
                revert with 0, 'FlashArbs: INSUFFICIENT_LIQUIDITY'
            if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] / 1000 != mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if not mem[_372 + 18 len 14]:
                if 1000 * mem[_372 + 50 len 14] / 1000 != mem[_372 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_372 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
                mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 0 / (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
                require ext_code.size(Mask(64, 96, _302) >> 96)
                staticcall Mask(64, 96, _302) >> 96.token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _496 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _505 = mem[_496]
                require mem[_496] == mem[_496 + 12 len 20]
                require ext_code.size(Mask(64, 96, _302) >> 96)
                staticcall Mask(64, 96, _302) >> 96.token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_528] == mem[_528 + 12 len 20]
                if address(s) == address(_505):
                    idx = idx + 1
                    s = mem[_528]
                    continue 
                idx = idx + 1
                s = _505
                continue 
            require mem[_372 + 18 len 14]
            if 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_372 + 18 len 14] / mem[_372 + 18 len 14] != 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if 1000 * mem[_372 + 50 len 14] / 1000 != mem[_372 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96]) < 1000 * mem[_372 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-add-overflow'
            require (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
            require idx + 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[(32 * idx + 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] = 1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] * mem[_372 + 18 len 14] / (1000 * mem[_372 + 50 len 14]) + (1000 * mem[(32 * idx) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96])
            require ext_code.size(Mask(64, 96, _302) >> 96)
            staticcall Mask(64, 96, _302) >> 96.token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _510 = mem[_506]
            require mem[_506] == mem[_506 + 12 len 20]
            require ext_code.size(Mask(64, 96, _302) >> 96)
            staticcall Mask(64, 96, _302) >> 96.token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_538] == mem[_538 + 12 len 20]
            if address(s) == address(_510):
                idx = idx + 1
                s = mem[_538]
                continue 
            idx = idx + 1
            s = _510
            continue 
        mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 32] = floor32(calldata.size + 155) + ceil32(return_data.size) + 64
        require mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64] - 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
        if mem[(32 * mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64] - 1) + floor32(calldata.size + 155) + ceil32(return_data.size) + 96] < 0:
            revert with 0, 'FlashArbs: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[floor32(calldata.size + 155) + ceil32(return_data.size)] = 96
        _292 = mem[64]
        mem[mem[64] + 32] = 32
        mem[mem[64] + 64] = 64
        _307 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            mem[mem[64] + 96] = ceil32(mem[96]) + 96
            _548 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_307) + mem[64] + 160] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_307) + mem[64] + 192 len 32 * _548] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96 len 32 * _548]
            _603 = mem[64]
            mem[mem[64]] = ceil32(_307) + (32 * _548) + 160
            mem[64] = ceil32(_307) + mem[64] + (32 * _548) + 192
            require 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            _611 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 128]
            mem[ceil32(_307) + _292 + (32 * _548) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(_307) + _292 + (32 * _548) + 196] = 0
            mem[ceil32(_307) + _292 + (32 * _548) + 228] = _611
            mem[ceil32(_307) + _292 + (32 * _548) + 260] = this.address
            mem[ceil32(_307) + _292 + (32 * _548) + 292] = 128
            _619 = mem[_603]
            mem[ceil32(_307) + _292 + (32 * _548) + 324] = mem[_603]
            mem[ceil32(_307) + _292 + (32 * _548) + 356 len ceil32(_619)] = mem[_603 + 32 len ceil32(_619)]
            if ceil32(_619) > _619:
                mem[ceil32(_307) + _292 + (32 * _548) + _619 + 356] = 0
            require ext_code.size(Mask(64, 96, _17) >> 96)
            call Mask(64, 96, _17) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _611, address(this.address), 128, mem[ceil32(_307) + _292 + (32 * _548) + 324 len ceil32(_619) + 32]
        else:
            mem[mem[64] + mem[96] + 160] = 0
            mem[mem[64] + 96] = ceil32(mem[96]) + 96
            _552 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_307) + mem[64] + 160] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            mem[ceil32(_307) + mem[64] + 192 len 32 * _552] = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 96 len 32 * _552]
            _606 = mem[64]
            mem[mem[64]] = ceil32(_307) + (32 * _552) + 160
            mem[64] = ceil32(_307) + mem[64] + (32 * _552) + 192
            require 1 < mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 64]
            _612 = mem[floor32(calldata.size + 155) + ceil32(return_data.size) + 128]
            mem[ceil32(_307) + _292 + (32 * _552) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(_307) + _292 + (32 * _552) + 196] = 0
            mem[ceil32(_307) + _292 + (32 * _552) + 228] = _612
            mem[ceil32(_307) + _292 + (32 * _552) + 260] = this.address
            mem[ceil32(_307) + _292 + (32 * _552) + 292] = 128
            _620 = mem[_606]
            mem[ceil32(_307) + _292 + (32 * _552) + 324] = mem[_606]
            mem[ceil32(_307) + _292 + (32 * _552) + 356 len ceil32(_620)] = mem[_606 + 32 len ceil32(_620)]
            if ceil32(_620) > _620:
                mem[ceil32(_307) + _292 + (32 * _552) + _620 + 356] = 0
            require ext_code.size(Mask(64, 96, _17) >> 96)
            call Mask(64, 96, _17) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _612, address(this.address), 128, mem[ceil32(_307) + _292 + (32 * _552) + 324 len ceil32(_620) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
