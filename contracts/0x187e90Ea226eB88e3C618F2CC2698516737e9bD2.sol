contract main {




// =====================  Runtime code  =====================


#
#  - sub_659a3f8d(?)
#
address stor0;
address stor1;

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
}

function sub_a0fa0595(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    require msg.sender == stor0
    if cd[132] < block.timestamp:
        revert with 0, 'FLASHARBS: EXPIRED'
    mem[96] = ('cd', 100).length
    mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    if ('cd', 100).length < 1:
        revert with 0, 'FLASHARBS: INVALID_PATH'
    require ('cd', 100).length + 1 <= test266151307()
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length + 1
    mem[64] = (32 * ('cd', 100).length) + (32 * ('cd', 100).length + 1) + 160
    if not ('cd', 100).length + 1:
        require 0 < ('cd', 100).length + 1
        mem[(32 * ('cd', 100).length) + 160] = cd[4]
        idx = 0
        s = cd[68]
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _1105 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1119 = mem[_1117]
            require mem[_1117] == mem[_1117 + 12 len 20]
            require ext_code.size(address(_1105))
            staticcall address(_1105).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1136] == mem[_1136 + 18 len 14]
            require mem[_1136 + 32] == mem[_1136 + 50 len 14]
            require mem[_1136 + 64] == mem[_1136 + 92 len 4]
            require idx < mem[(32 * ('cd', 100).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_INPUT_AMOUNT'
            if address(s) == address(_1119):
                if mem[_1136 + 18 len 14] <= 0:
                    revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
                if mem[_1136 + 50 len 14] <= 0:
                    revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if not mem[_1136 + 50 len 14]:
                    if 1000 * mem[_1136 + 18 len 14] / 1000 != mem[_1136 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-mul-overflow'
                    if (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1136 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-add-overflow'
                    require (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx < mem[96]
                    _1499 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1571 = mem[_1543]
                    require mem[_1543] == mem[_1543 + 12 len 20]
                    require ext_code.size(address(_1499))
                    staticcall address(_1499).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1875] == mem[_1875 + 12 len 20]
                    if address(s) == address(_1571):
                        idx = idx + 1
                        s = mem[_1875]
                        continue 
                    idx = idx + 1
                    s = _1571
                    continue 
                require mem[_1136 + 50 len 14]
                if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1136 + 50 len 14] / mem[_1136 + 50 len 14] != 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if 1000 * mem[_1136 + 18 len 14] / 1000 != mem[_1136 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1136 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1136 + 50 len 14] / (1000 * mem[_1136 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx < mem[96]
                _1531 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1591 = mem[_1567]
                require mem[_1567] == mem[_1567 + 12 len 20]
                require ext_code.size(address(_1531))
                staticcall address(_1531).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1915 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1915] == mem[_1915 + 12 len 20]
                if address(s) == address(_1591):
                    idx = idx + 1
                    s = mem[_1915]
                    continue 
                idx = idx + 1
                s = _1591
                continue 
            if mem[_1136 + 50 len 14] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
            if mem[_1136 + 18 len 14] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
            if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if not mem[_1136 + 18 len 14]:
                if 1000 * mem[_1136 + 50 len 14] / 1000 != mem[_1136 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1136 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx < mem[96]
                _1501 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1572 = mem[_1546]
                require mem[_1546] == mem[_1546 + 12 len 20]
                require ext_code.size(address(_1501))
                staticcall address(_1501).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1878] == mem[_1878 + 12 len 20]
                if address(s) == address(_1572):
                    idx = idx + 1
                    s = mem[_1878]
                    continue 
                idx = idx + 1
                s = _1572
                continue 
            require mem[_1136 + 18 len 14]
            if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1136 + 18 len 14] / mem[_1136 + 18 len 14] != 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if 1000 * mem[_1136 + 50 len 14] / 1000 != mem[_1136 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1136 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-add-overflow'
            require (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1136 + 18 len 14] / (1000 * mem[_1136 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            require idx < mem[96]
            _1532 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1568 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1592 = mem[_1568]
            require mem[_1568] == mem[_1568 + 12 len 20]
            require ext_code.size(address(_1532))
            staticcall address(_1532).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1916] == mem[_1916 + 12 len 20]
            if address(s) == address(_1592):
                idx = idx + 1
                s = mem[_1916]
                continue 
            idx = idx + 1
            s = _1592
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160] < cd[36]:
            revert with 0, 'FLASHARBS: INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 0 < mem[(32 * ('cd', 100).length) + 128]
        _1129 = mem[(32 * ('cd', 100).length) + 160]
        _1131 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(('cd', 100)[0])
        mem[mem[64] + 100] = _1129
        _1132 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_1132 + 32 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        _1135 = mem[_1132]
        mem[_1131 + 132 len floor32(mem[_1132])] = mem[_1132 + 32 len floor32(mem[_1132])]
        mem[_1131 + floor32(mem[_1132]) + -(mem[_1132] % 32) + 164 len mem[_1132] % 32] = mem[_1132 + -(mem[_1132] % 32) + floor32(mem[_1132]) + 64 len mem[_1132] % 32]
        call address(cd[68]).mem[_1131 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_1131 + 136 len _1135 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            44,
                            0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[_1131 + 244 len 20]
            if not mem[96]:
                mem[64] = _1131 + (32 * ('cd', 100).length) + 164
                mem[_1131 + 132] = ('cd', 100).length
                mem[_1131 + 164 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_1131 + (32 * ('cd', 100).length) + 164] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_1131 + 132]
                    _3073 = mem[(32 * idx) + _1131 + 164]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3089 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _1131 + 176 len 20])
                    staticcall mem[(32 * idx) + _1131 + 176 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3113] == mem[_3113 + 12 len 20]
                    if address(s) == mem[_3113 + 12 len 20]:
                        if idx >= mem[_1131 + 132] - 1:
                            _3177 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3177 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3177 + 36] = 0
                            mem[_3177 + 68] = _3089
                            mem[_3177 + 100] = msg.sender
                            mem[_3177 + 132] = 128
                            mem[_3177 + 164] = mem[_3177]
                            t = 0
                            while t < mem[_3177]:
                                mem[_3177 + t + 196] = mem[_3177 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3177]) > mem[_3177]:
                                mem[_3177 + mem[_3177] + 196] = 0
                            require ext_code.size(address(_3073))
                            call address(_3073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3089, msg.sender, 128, mem[_3177], mem[_3177 + 196 len ceil32(mem[_3177])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token0() with:
                                    gas gas_remaining wei
                            mem[_3177 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token1() with:
                                    gas gas_remaining wei
                            mem[_3177 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3177 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + 132]
                            _3161 = mem[(32 * idx + 1) + _1131 + 164]
                            _3193 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3193 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3193 + 36] = 0
                            mem[_3193 + 68] = _3089
                            mem[_3193 + 100] = address(_3161)
                            mem[_3193 + 132] = 128
                            mem[_3193 + 164] = mem[_3193]
                            t = 0
                            while t < mem[_3193]:
                                mem[_3193 + t + 196] = mem[_3193 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3193]) > mem[_3193]:
                                mem[_3193 + mem[_3193] + 196] = 0
                            require ext_code.size(address(_3073))
                            call address(_3073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3089, address(_3161), 128, mem[_3193], mem[_3193 + 196 len ceil32(mem[_3193])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token0() with:
                                    gas gas_remaining wei
                            mem[_3193 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token1() with:
                                    gas gas_remaining wei
                            mem[_3193 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3193 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_1131 + 132] - 1:
                            _3178 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3178 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3178 + 36] = _3089
                            mem[_3178 + 68] = 0
                            mem[_3178 + 100] = msg.sender
                            mem[_3178 + 132] = 128
                            mem[_3178 + 164] = mem[_3178]
                            t = 0
                            while t < mem[_3178]:
                                mem[_3178 + t + 196] = mem[_3178 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3178]) > mem[_3178]:
                                mem[_3178 + mem[_3178] + 196] = 0
                            require ext_code.size(address(_3073))
                            call address(_3073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3089, 0, msg.sender, 128, mem[_3178], mem[_3178 + 196 len ceil32(mem[_3178])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token0() with:
                                    gas gas_remaining wei
                            mem[_3178 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token1() with:
                                    gas gas_remaining wei
                            mem[_3178 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3178 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + 132]
                            _3162 = mem[(32 * idx + 1) + _1131 + 164]
                            _3195 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3195 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3195 + 36] = _3089
                            mem[_3195 + 68] = 0
                            mem[_3195 + 100] = address(_3162)
                            mem[_3195 + 132] = 128
                            mem[_3195 + 164] = mem[_3195]
                            t = 0
                            while t < mem[_3195]:
                                mem[_3195 + t + 196] = mem[_3195 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3195]) > mem[_3195]:
                                mem[_3195 + mem[_3195] + 196] = 0
                            require ext_code.size(address(_3073))
                            call address(_3073).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3089, 0, address(_3162), 128, mem[_3195], mem[_3195 + 196 len ceil32(mem[_3195])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token0() with:
                                    gas gas_remaining wei
                            mem[_3195 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3073))
                            staticcall address(_3073).token1() with:
                                    gas gas_remaining wei
                            mem[_3195 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3195 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                44,
                                0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[_1131 + 244 len 20]
                mem[64] = _1131 + (32 * ('cd', 100).length) + 164
                mem[_1131 + 132] = ('cd', 100).length
                mem[_1131 + 164 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_1131 + (32 * ('cd', 100).length) + 164] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_1131 + 132]
                    _3075 = mem[(32 * idx) + _1131 + 164]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3092 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _1131 + 176 len 20])
                    staticcall mem[(32 * idx) + _1131 + 176 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3114] == mem[_3114 + 12 len 20]
                    if address(s) == mem[_3114 + 12 len 20]:
                        if idx >= mem[_1131 + 132] - 1:
                            _3179 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3179 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3179 + 36] = 0
                            mem[_3179 + 68] = _3092
                            mem[_3179 + 100] = msg.sender
                            mem[_3179 + 132] = 128
                            mem[_3179 + 164] = mem[_3179]
                            t = 0
                            while t < mem[_3179]:
                                mem[_3179 + t + 196] = mem[_3179 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3179]) > mem[_3179]:
                                mem[_3179 + mem[_3179] + 196] = 0
                            require ext_code.size(address(_3075))
                            call address(_3075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3092, msg.sender, 128, mem[_3179], mem[_3179 + 196 len ceil32(mem[_3179])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token0() with:
                                    gas gas_remaining wei
                            mem[_3179 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token1() with:
                                    gas gas_remaining wei
                            mem[_3179 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3179 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + 132]
                            _3163 = mem[(32 * idx + 1) + _1131 + 164]
                            _3197 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3197 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3197 + 36] = 0
                            mem[_3197 + 68] = _3092
                            mem[_3197 + 100] = address(_3163)
                            mem[_3197 + 132] = 128
                            mem[_3197 + 164] = mem[_3197]
                            t = 0
                            while t < mem[_3197]:
                                mem[_3197 + t + 196] = mem[_3197 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3197]) > mem[_3197]:
                                mem[_3197 + mem[_3197] + 196] = 0
                            require ext_code.size(address(_3075))
                            call address(_3075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3092, address(_3163), 128, mem[_3197], mem[_3197 + 196 len ceil32(mem[_3197])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token0() with:
                                    gas gas_remaining wei
                            mem[_3197 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token1() with:
                                    gas gas_remaining wei
                            mem[_3197 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3197 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_1131 + 132] - 1:
                            _3180 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3180 + 36] = _3092
                            mem[_3180 + 68] = 0
                            mem[_3180 + 100] = msg.sender
                            mem[_3180 + 132] = 128
                            mem[_3180 + 164] = mem[_3180]
                            t = 0
                            while t < mem[_3180]:
                                mem[_3180 + t + 196] = mem[_3180 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3180]) > mem[_3180]:
                                mem[_3180 + mem[_3180] + 196] = 0
                            require ext_code.size(address(_3075))
                            call address(_3075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3092, 0, msg.sender, 128, mem[_3180], mem[_3180 + 196 len ceil32(mem[_3180])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token0() with:
                                    gas gas_remaining wei
                            mem[_3180 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token1() with:
                                    gas gas_remaining wei
                            mem[_3180 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3180 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + 132]
                            _3164 = mem[(32 * idx + 1) + _1131 + 164]
                            _3199 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3199 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3199 + 36] = _3092
                            mem[_3199 + 68] = 0
                            mem[_3199 + 100] = address(_3164)
                            mem[_3199 + 132] = 128
                            mem[_3199 + 164] = mem[_3199]
                            t = 0
                            while t < mem[_3199]:
                                mem[_3199 + t + 196] = mem[_3199 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3199]) > mem[_3199]:
                                mem[_3199 + mem[_3199] + 196] = 0
                            require ext_code.size(address(_3075))
                            call address(_3075).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3092, 0, address(_3164), 128, mem[_3199], mem[_3199 + 196 len ceil32(mem[_3199])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token0() with:
                                    gas gas_remaining wei
                            mem[_3199 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3075))
                            staticcall address(_3075).token1() with:
                                    gas gas_remaining wei
                            mem[_3199 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3199 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
        else:
            mem[_1131 + 132] = return_data.size
            mem[_1131 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            44,
                            0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[_1131 + ceil32(return_data.size) + 245 len 20]
            if not return_data.size:
                mem[64] = _1131 + ceil32(return_data.size) + (32 * ('cd', 100).length) + 165
                mem[_1131 + ceil32(return_data.size) + 133] = ('cd', 100).length
                mem[_1131 + ceil32(return_data.size) + 165 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_1131 + ceil32(return_data.size) + (32 * ('cd', 100).length) + 165] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_1131 + ceil32(return_data.size) + 133]
                    _3077 = mem[(32 * idx) + _1131 + ceil32(return_data.size) + 165]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3095 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _1131 + ceil32(return_data.size) + 177 len 20])
                    staticcall mem[(32 * idx) + _1131 + ceil32(return_data.size) + 177 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3115] == mem[_3115 + 12 len 20]
                    if address(s) == mem[_3115 + 12 len 20]:
                        if idx >= mem[_1131 + ceil32(return_data.size) + 133] - 1:
                            _3181 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3181 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3181 + 36] = 0
                            mem[_3181 + 68] = _3095
                            mem[_3181 + 100] = msg.sender
                            mem[_3181 + 132] = 128
                            mem[_3181 + 164] = mem[_3181]
                            t = 0
                            while t < mem[_3181]:
                                mem[_3181 + t + 196] = mem[_3181 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3181]) > mem[_3181]:
                                mem[_3181 + mem[_3181] + 196] = 0
                            require ext_code.size(address(_3077))
                            call address(_3077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3095, msg.sender, 128, mem[_3181], mem[_3181 + 196 len ceil32(mem[_3181])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token0() with:
                                    gas gas_remaining wei
                            mem[_3181 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token1() with:
                                    gas gas_remaining wei
                            mem[_3181 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3181 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + ceil32(return_data.size) + 133]
                            _3165 = mem[(32 * idx + 1) + _1131 + ceil32(return_data.size) + 165]
                            _3201 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3201 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3201 + 36] = 0
                            mem[_3201 + 68] = _3095
                            mem[_3201 + 100] = address(_3165)
                            mem[_3201 + 132] = 128
                            mem[_3201 + 164] = mem[_3201]
                            t = 0
                            while t < mem[_3201]:
                                mem[_3201 + t + 196] = mem[_3201 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3201]) > mem[_3201]:
                                mem[_3201 + mem[_3201] + 196] = 0
                            require ext_code.size(address(_3077))
                            call address(_3077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3095, address(_3165), 128, mem[_3201], mem[_3201 + 196 len ceil32(mem[_3201])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token0() with:
                                    gas gas_remaining wei
                            mem[_3201 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token1() with:
                                    gas gas_remaining wei
                            mem[_3201 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3201 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_1131 + ceil32(return_data.size) + 133] - 1:
                            _3182 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3182 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3182 + 36] = _3095
                            mem[_3182 + 68] = 0
                            mem[_3182 + 100] = msg.sender
                            mem[_3182 + 132] = 128
                            mem[_3182 + 164] = mem[_3182]
                            t = 0
                            while t < mem[_3182]:
                                mem[_3182 + t + 196] = mem[_3182 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3182]) > mem[_3182]:
                                mem[_3182 + mem[_3182] + 196] = 0
                            require ext_code.size(address(_3077))
                            call address(_3077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3095, 0, msg.sender, 128, mem[_3182], mem[_3182 + 196 len ceil32(mem[_3182])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token0() with:
                                    gas gas_remaining wei
                            mem[_3182 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token1() with:
                                    gas gas_remaining wei
                            mem[_3182 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3182 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + ceil32(return_data.size) + 133]
                            _3166 = mem[(32 * idx + 1) + _1131 + ceil32(return_data.size) + 165]
                            _3203 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3203 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3203 + 36] = _3095
                            mem[_3203 + 68] = 0
                            mem[_3203 + 100] = address(_3166)
                            mem[_3203 + 132] = 128
                            mem[_3203 + 164] = mem[_3203]
                            t = 0
                            while t < mem[_3203]:
                                mem[_3203 + t + 196] = mem[_3203 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3203]) > mem[_3203]:
                                mem[_3203 + mem[_3203] + 196] = 0
                            require ext_code.size(address(_3077))
                            call address(_3077).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3095, 0, address(_3166), 128, mem[_3203], mem[_3203 + 196 len ceil32(mem[_3203])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token0() with:
                                    gas gas_remaining wei
                            mem[_3203 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3077))
                            staticcall address(_3077).token1() with:
                                    gas gas_remaining wei
                            mem[_3203 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3203 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_1131 + 164]:
                    revert with 0, 
                                32,
                                44,
                                0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[_1131 + ceil32(return_data.size) + 245 len 20]
                mem[64] = _1131 + ceil32(return_data.size) + (32 * ('cd', 100).length) + 165
                mem[_1131 + ceil32(return_data.size) + 133] = ('cd', 100).length
                mem[_1131 + ceil32(return_data.size) + 165 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_1131 + ceil32(return_data.size) + (32 * ('cd', 100).length) + 165] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_1131 + ceil32(return_data.size) + 133]
                    _3079 = mem[(32 * idx) + _1131 + ceil32(return_data.size) + 165]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3098 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _1131 + ceil32(return_data.size) + 177 len 20])
                    staticcall mem[(32 * idx) + _1131 + ceil32(return_data.size) + 177 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3116] == mem[_3116 + 12 len 20]
                    if address(s) == mem[_3116 + 12 len 20]:
                        if idx >= mem[_1131 + ceil32(return_data.size) + 133] - 1:
                            _3183 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3183 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3183 + 36] = 0
                            mem[_3183 + 68] = _3098
                            mem[_3183 + 100] = msg.sender
                            mem[_3183 + 132] = 128
                            mem[_3183 + 164] = mem[_3183]
                            t = 0
                            while t < mem[_3183]:
                                mem[_3183 + t + 196] = mem[_3183 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3183]) > mem[_3183]:
                                mem[_3183 + mem[_3183] + 196] = 0
                            require ext_code.size(address(_3079))
                            call address(_3079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3098, msg.sender, 128, mem[_3183], mem[_3183 + 196 len ceil32(mem[_3183])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token0() with:
                                    gas gas_remaining wei
                            mem[_3183 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token1() with:
                                    gas gas_remaining wei
                            mem[_3183 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3183 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + ceil32(return_data.size) + 133]
                            _3167 = mem[(32 * idx + 1) + _1131 + ceil32(return_data.size) + 165]
                            _3205 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3205 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3205 + 36] = 0
                            mem[_3205 + 68] = _3098
                            mem[_3205 + 100] = address(_3167)
                            mem[_3205 + 132] = 128
                            mem[_3205 + 164] = mem[_3205]
                            t = 0
                            while t < mem[_3205]:
                                mem[_3205 + t + 196] = mem[_3205 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3205]) > mem[_3205]:
                                mem[_3205 + mem[_3205] + 196] = 0
                            require ext_code.size(address(_3079))
                            call address(_3079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3098, address(_3167), 128, mem[_3205], mem[_3205 + 196 len ceil32(mem[_3205])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token0() with:
                                    gas gas_remaining wei
                            mem[_3205 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token1() with:
                                    gas gas_remaining wei
                            mem[_3205 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3205 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_1131 + ceil32(return_data.size) + 133] - 1:
                            _3184 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3184 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3184 + 36] = _3098
                            mem[_3184 + 68] = 0
                            mem[_3184 + 100] = msg.sender
                            mem[_3184 + 132] = 128
                            mem[_3184 + 164] = mem[_3184]
                            t = 0
                            while t < mem[_3184]:
                                mem[_3184 + t + 196] = mem[_3184 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3184]) > mem[_3184]:
                                mem[_3184 + mem[_3184] + 196] = 0
                            require ext_code.size(address(_3079))
                            call address(_3079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3098, 0, msg.sender, 128, mem[_3184], mem[_3184 + 196 len ceil32(mem[_3184])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token0() with:
                                    gas gas_remaining wei
                            mem[_3184 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token1() with:
                                    gas gas_remaining wei
                            mem[_3184 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3184 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_1131 + ceil32(return_data.size) + 133]
                            _3168 = mem[(32 * idx + 1) + _1131 + ceil32(return_data.size) + 165]
                            _3207 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3207 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3207 + 36] = _3098
                            mem[_3207 + 68] = 0
                            mem[_3207 + 100] = address(_3168)
                            mem[_3207 + 132] = 128
                            mem[_3207 + 164] = mem[_3207]
                            t = 0
                            while t < mem[_3207]:
                                mem[_3207 + t + 196] = mem[_3207 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3207]) > mem[_3207]:
                                mem[_3207 + mem[_3207] + 196] = 0
                            require ext_code.size(address(_3079))
                            call address(_3079).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3098, 0, address(_3168), 128, mem[_3207], mem[_3207 + 196 len ceil32(mem[_3207])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token0() with:
                                    gas gas_remaining wei
                            mem[_3207 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3079))
                            staticcall address(_3079).token1() with:
                                    gas gas_remaining wei
                            mem[_3207 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3207 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
    else:
        mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length + 1] = call.data[calldata.size len 32 * ('cd', 100).length + 1]
        require 0 < ('cd', 100).length + 1
        mem[(32 * ('cd', 100).length) + 160] = cd[4]
        idx = 0
        s = cd[68]
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _1108 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1120 = mem[_1118]
            require mem[_1118] == mem[_1118 + 12 len 20]
            require ext_code.size(address(_1108))
            staticcall address(_1108).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1142] == mem[_1142 + 18 len 14]
            require mem[_1142 + 32] == mem[_1142 + 50 len 14]
            require mem[_1142 + 64] == mem[_1142 + 92 len 4]
            require idx < mem[(32 * ('cd', 100).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 100).length) + 160] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_INPUT_AMOUNT'
            if address(s) == address(_1120):
                if mem[_1142 + 18 len 14] <= 0:
                    revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
                if mem[_1142 + 50 len 14] <= 0:
                    revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
                if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if not mem[_1142 + 50 len 14]:
                    if 1000 * mem[_1142 + 18 len 14] / 1000 != mem[_1142 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-mul-overflow'
                    if (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1142 + 18 len 14]:
                        revert with 0, 'FlashArbs: ds-math-add-overflow'
                    require (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                    require idx < mem[96]
                    _1503 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1573 = mem[_1553]
                    require mem[_1553] == mem[_1553 + 12 len 20]
                    require ext_code.size(address(_1503))
                    staticcall address(_1503).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1889] == mem[_1889 + 12 len 20]
                    if address(s) == address(_1573):
                        idx = idx + 1
                        s = mem[_1889]
                        continue 
                    idx = idx + 1
                    s = _1573
                    continue 
                require mem[_1142 + 50 len 14]
                if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1142 + 50 len 14] / mem[_1142 + 50 len 14] != 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if 1000 * mem[_1142 + 18 len 14] / 1000 != mem[_1142 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1142 + 18 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1142 + 50 len 14] / (1000 * mem[_1142 + 18 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx < mem[96]
                _1537 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1601 = mem[_1569]
                require mem[_1569] == mem[_1569 + 12 len 20]
                require ext_code.size(address(_1537))
                staticcall address(_1537).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1921 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1921] == mem[_1921 + 12 len 20]
                if address(s) == address(_1601):
                    idx = idx + 1
                    s = mem[_1921]
                    continue 
                idx = idx + 1
                s = _1601
                continue 
            if mem[_1142 + 50 len 14] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
            if mem[_1142 + 18 len 14] <= 0:
                revert with 0, 'FLASHARBS: INSUFFICIENT_LIQUIDITY'
            if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] / 997 != mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if not mem[_1142 + 18 len 14]:
                if 1000 * mem[_1142 + 50 len 14] / 1000 != mem[_1142 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-mul-overflow'
                if (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1142 + 50 len 14]:
                    revert with 0, 'FlashArbs: ds-math-add-overflow'
                require (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 0 / (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
                require idx < mem[96]
                _1505 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1574 = mem[_1556]
                require mem[_1556] == mem[_1556 + 12 len 20]
                require ext_code.size(address(_1505))
                staticcall address(_1505).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1892] == mem[_1892 + 12 len 20]
                if address(s) == address(_1574):
                    idx = idx + 1
                    s = mem[_1892]
                    continue 
                idx = idx + 1
                s = _1574
                continue 
            require mem[_1142 + 18 len 14]
            if 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1142 + 18 len 14] / mem[_1142 + 18 len 14] != 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if 1000 * mem[_1142 + 50 len 14] / 1000 != mem[_1142 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-mul-overflow'
            if (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160]) < 1000 * mem[_1142 + 50 len 14]:
                revert with 0, 'FlashArbs: ds-math-add-overflow'
            require (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160] = 997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160] * mem[_1142 + 18 len 14] / (1000 * mem[_1142 + 50 len 14]) + (997 * mem[(32 * idx) + (32 * ('cd', 100).length) + 160])
            require idx < mem[96]
            _1538 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1602 = mem[_1570]
            require mem[_1570] == mem[_1570 + 12 len 20]
            require ext_code.size(address(_1538))
            staticcall address(_1538).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1922] == mem[_1922 + 12 len 20]
            if address(s) == address(_1602):
                idx = idx + 1
                s = mem[_1922]
                continue 
            idx = idx + 1
            s = _1602
            continue 
        require mem[(32 * ('cd', 100).length) + 128] - 1 < mem[(32 * ('cd', 100).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 100).length) + 128] - 1) + (32 * ('cd', 100).length) + 160] < cd[36]:
            revert with 0, 'FLASHARBS: INSUFFICIENT_OUTPUT_AMOUNT'
        require 0 < ('cd', 100).length
        require ('cd', 100)[0] == address(('cd', 100)[0])
        require 0 < mem[(32 * ('cd', 100).length) + 128]
        _1130 = mem[(32 * ('cd', 100).length) + 160]
        _1137 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(('cd', 100)[0])
        mem[mem[64] + 100] = _1130
        _1138 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_1138 + 32 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        _1141 = mem[_1138]
        mem[mem[64] len floor32(mem[_1138])] = mem[_1138 + 32 len floor32(mem[_1138])]
        mem[mem[64] + floor32(mem[_1138]) + -(mem[_1138] % 32) + 32 len mem[_1138] % 32] = mem[_1138 + floor32(mem[_1138]) + -(mem[_1138] % 32) + 64 len mem[_1138] % 32]
        call address(cd[68]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1141 + _1137 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 44, 0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65, address(_1130)
            if not mem[96]:
                _2219 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_2219] = ('cd', 100).length
                mem[_2219 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_2219 + (32 * ('cd', 100).length) + 32] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_2219]
                    _3081 = mem[(32 * idx) + _2219 + 32]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3101 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _2219 + 44 len 20])
                    staticcall mem[(32 * idx) + _2219 + 44 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3117 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3117] == mem[_3117 + 12 len 20]
                    if address(s) == mem[_3117 + 12 len 20]:
                        if idx >= mem[_2219] - 1:
                            _3185 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3185 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3185 + 36] = 0
                            mem[_3185 + 68] = _3101
                            mem[_3185 + 100] = msg.sender
                            mem[_3185 + 132] = 128
                            mem[_3185 + 164] = mem[_3185]
                            t = 0
                            while t < mem[_3185]:
                                mem[_3185 + t + 196] = mem[_3185 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3185]) > mem[_3185]:
                                mem[_3185 + mem[_3185] + 196] = 0
                            require ext_code.size(address(_3081))
                            call address(_3081).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3101, msg.sender, 128, mem[_3185], mem[_3185 + 196 len ceil32(mem[_3185])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token0() with:
                                    gas gas_remaining wei
                            mem[_3185 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token1() with:
                                    gas gas_remaining wei
                            mem[_3185 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3185 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2219]
                            _3169 = mem[(32 * idx + 1) + _2219 + 32]
                            _3209 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3209 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3209 + 36] = 0
                            mem[_3209 + 68] = _3101
                            mem[_3209 + 100] = address(_3169)
                            mem[_3209 + 132] = 128
                            mem[_3209 + 164] = mem[_3209]
                            t = 0
                            while t < mem[_3209]:
                                mem[_3209 + t + 196] = mem[_3209 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3209]) > mem[_3209]:
                                mem[_3209 + mem[_3209] + 196] = 0
                            require ext_code.size(address(_3081))
                            call address(_3081).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3101, address(_3169), 128, mem[_3209], mem[_3209 + 196 len ceil32(mem[_3209])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token0() with:
                                    gas gas_remaining wei
                            mem[_3209 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token1() with:
                                    gas gas_remaining wei
                            mem[_3209 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3209 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_2219] - 1:
                            _3186 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3186 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3186 + 36] = _3101
                            mem[_3186 + 68] = 0
                            mem[_3186 + 100] = msg.sender
                            mem[_3186 + 132] = 128
                            mem[_3186 + 164] = mem[_3186]
                            t = 0
                            while t < mem[_3186]:
                                mem[_3186 + t + 196] = mem[_3186 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3186]) > mem[_3186]:
                                mem[_3186 + mem[_3186] + 196] = 0
                            require ext_code.size(address(_3081))
                            call address(_3081).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3101, 0, msg.sender, 128, mem[_3186], mem[_3186 + 196 len ceil32(mem[_3186])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token0() with:
                                    gas gas_remaining wei
                            mem[_3186 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token1() with:
                                    gas gas_remaining wei
                            mem[_3186 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3186 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2219]
                            _3170 = mem[(32 * idx + 1) + _2219 + 32]
                            _3211 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3211 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3211 + 36] = _3101
                            mem[_3211 + 68] = 0
                            mem[_3211 + 100] = address(_3170)
                            mem[_3211 + 132] = 128
                            mem[_3211 + 164] = mem[_3211]
                            t = 0
                            while t < mem[_3211]:
                                mem[_3211 + t + 196] = mem[_3211 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3211]) > mem[_3211]:
                                mem[_3211 + mem[_3211] + 196] = 0
                            require ext_code.size(address(_3081))
                            call address(_3081).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3101, 0, address(_3170), 128, mem[_3211], mem[_3211 + 196 len ceil32(mem[_3211])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token0() with:
                                    gas gas_remaining wei
                            mem[_3211 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3081))
                            staticcall address(_3081).token1() with:
                                    gas gas_remaining wei
                            mem[_3211 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3211 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 32, 44, 0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65, address(_1130)
                _2234 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_2234] = ('cd', 100).length
                mem[_2234 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_2234 + (32 * ('cd', 100).length) + 32] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_2234]
                    _3083 = mem[(32 * idx) + _2234 + 32]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3104 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _2234 + 44 len 20])
                    staticcall mem[(32 * idx) + _2234 + 44 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3118 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3118] == mem[_3118 + 12 len 20]
                    if address(s) == mem[_3118 + 12 len 20]:
                        if idx >= mem[_2234] - 1:
                            _3187 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3187 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3187 + 36] = 0
                            mem[_3187 + 68] = _3104
                            mem[_3187 + 100] = msg.sender
                            mem[_3187 + 132] = 128
                            mem[_3187 + 164] = mem[_3187]
                            t = 0
                            while t < mem[_3187]:
                                mem[_3187 + t + 196] = mem[_3187 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3187]) > mem[_3187]:
                                mem[_3187 + mem[_3187] + 196] = 0
                            require ext_code.size(address(_3083))
                            call address(_3083).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3104, msg.sender, 128, mem[_3187], mem[_3187 + 196 len ceil32(mem[_3187])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token0() with:
                                    gas gas_remaining wei
                            mem[_3187 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token1() with:
                                    gas gas_remaining wei
                            mem[_3187 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3187 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2234]
                            _3171 = mem[(32 * idx + 1) + _2234 + 32]
                            _3213 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3213 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3213 + 36] = 0
                            mem[_3213 + 68] = _3104
                            mem[_3213 + 100] = address(_3171)
                            mem[_3213 + 132] = 128
                            mem[_3213 + 164] = mem[_3213]
                            t = 0
                            while t < mem[_3213]:
                                mem[_3213 + t + 196] = mem[_3213 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3213]) > mem[_3213]:
                                mem[_3213 + mem[_3213] + 196] = 0
                            require ext_code.size(address(_3083))
                            call address(_3083).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3104, address(_3171), 128, mem[_3213], mem[_3213 + 196 len ceil32(mem[_3213])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token0() with:
                                    gas gas_remaining wei
                            mem[_3213 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token1() with:
                                    gas gas_remaining wei
                            mem[_3213 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3213 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_2234] - 1:
                            _3188 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3188 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3188 + 36] = _3104
                            mem[_3188 + 68] = 0
                            mem[_3188 + 100] = msg.sender
                            mem[_3188 + 132] = 128
                            mem[_3188 + 164] = mem[_3188]
                            t = 0
                            while t < mem[_3188]:
                                mem[_3188 + t + 196] = mem[_3188 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3188]) > mem[_3188]:
                                mem[_3188 + mem[_3188] + 196] = 0
                            require ext_code.size(address(_3083))
                            call address(_3083).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3104, 0, msg.sender, 128, mem[_3188], mem[_3188 + 196 len ceil32(mem[_3188])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token0() with:
                                    gas gas_remaining wei
                            mem[_3188 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token1() with:
                                    gas gas_remaining wei
                            mem[_3188 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3188 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2234]
                            _3172 = mem[(32 * idx + 1) + _2234 + 32]
                            _3215 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3215 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3215 + 36] = _3104
                            mem[_3215 + 68] = 0
                            mem[_3215 + 100] = address(_3172)
                            mem[_3215 + 132] = 128
                            mem[_3215 + 164] = mem[_3215]
                            t = 0
                            while t < mem[_3215]:
                                mem[_3215 + t + 196] = mem[_3215 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3215]) > mem[_3215]:
                                mem[_3215 + mem[_3215] + 196] = 0
                            require ext_code.size(address(_3083))
                            call address(_3083).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3104, 0, address(_3172), 128, mem[_3215], mem[_3215 + 196 len ceil32(mem[_3215])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token0() with:
                                    gas gas_remaining wei
                            mem[_3215 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3083))
                            staticcall address(_3083).token1() with:
                                    gas gas_remaining wei
                            mem[_3215 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3215 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
        else:
            _2196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2196] = return_data.size
            mem[_2196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 32, 44, 0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65, address(_1130)
            if not return_data.size:
                _2220 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_2220] = ('cd', 100).length
                mem[_2220 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_2220 + (32 * ('cd', 100).length) + 32] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_2220]
                    _3085 = mem[(32 * idx) + _2220 + 32]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3107 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _2220 + 44 len 20])
                    staticcall mem[(32 * idx) + _2220 + 44 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3119 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3119] == mem[_3119 + 12 len 20]
                    if address(s) == mem[_3119 + 12 len 20]:
                        if idx >= mem[_2220] - 1:
                            _3189 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3189 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3189 + 36] = 0
                            mem[_3189 + 68] = _3107
                            mem[_3189 + 100] = msg.sender
                            mem[_3189 + 132] = 128
                            mem[_3189 + 164] = mem[_3189]
                            t = 0
                            while t < mem[_3189]:
                                mem[_3189 + t + 196] = mem[_3189 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3189]) > mem[_3189]:
                                mem[_3189 + mem[_3189] + 196] = 0
                            require ext_code.size(address(_3085))
                            call address(_3085).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3107, msg.sender, 128, mem[_3189], mem[_3189 + 196 len ceil32(mem[_3189])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token0() with:
                                    gas gas_remaining wei
                            mem[_3189 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token1() with:
                                    gas gas_remaining wei
                            mem[_3189 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3189 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2220]
                            _3173 = mem[(32 * idx + 1) + _2220 + 32]
                            _3217 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3217 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3217 + 36] = 0
                            mem[_3217 + 68] = _3107
                            mem[_3217 + 100] = address(_3173)
                            mem[_3217 + 132] = 128
                            mem[_3217 + 164] = mem[_3217]
                            t = 0
                            while t < mem[_3217]:
                                mem[_3217 + t + 196] = mem[_3217 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3217]) > mem[_3217]:
                                mem[_3217 + mem[_3217] + 196] = 0
                            require ext_code.size(address(_3085))
                            call address(_3085).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3107, address(_3173), 128, mem[_3217], mem[_3217 + 196 len ceil32(mem[_3217])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token0() with:
                                    gas gas_remaining wei
                            mem[_3217 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token1() with:
                                    gas gas_remaining wei
                            mem[_3217 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3217 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_2220] - 1:
                            _3190 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3190 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3190 + 36] = _3107
                            mem[_3190 + 68] = 0
                            mem[_3190 + 100] = msg.sender
                            mem[_3190 + 132] = 128
                            mem[_3190 + 164] = mem[_3190]
                            t = 0
                            while t < mem[_3190]:
                                mem[_3190 + t + 196] = mem[_3190 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3190]) > mem[_3190]:
                                mem[_3190 + mem[_3190] + 196] = 0
                            require ext_code.size(address(_3085))
                            call address(_3085).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3107, 0, msg.sender, 128, mem[_3190], mem[_3190 + 196 len ceil32(mem[_3190])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token0() with:
                                    gas gas_remaining wei
                            mem[_3190 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token1() with:
                                    gas gas_remaining wei
                            mem[_3190 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3190 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2220]
                            _3174 = mem[(32 * idx + 1) + _2220 + 32]
                            _3219 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3219 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3219 + 36] = _3107
                            mem[_3219 + 68] = 0
                            mem[_3219 + 100] = address(_3174)
                            mem[_3219 + 132] = 128
                            mem[_3219 + 164] = mem[_3219]
                            t = 0
                            while t < mem[_3219]:
                                mem[_3219 + t + 196] = mem[_3219 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3219]) > mem[_3219]:
                                mem[_3219 + mem[_3219] + 196] = 0
                            require ext_code.size(address(_3085))
                            call address(_3085).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3107, 0, address(_3174), 128, mem[_3219], mem[_3219 + 196 len ceil32(mem[_3219])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token0() with:
                                    gas gas_remaining wei
                            mem[_3219 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3085))
                            staticcall address(_3085).token1() with:
                                    gas gas_remaining wei
                            mem[_3219 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3219 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_2196 + 32]:
                    revert with 0, 32, 44, 0x64466c617368417262733a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65, address(_1130)
                _2236 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
                mem[_2236] = ('cd', 100).length
                mem[_2236 + 32 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[_2236 + (32 * ('cd', 100).length) + 32] = 0
                idx = 0
                s = cd[68]
                while idx < ('cd', 100).length:
                    require idx < mem[_2236]
                    _3087 = mem[(32 * idx) + _2236 + 32]
                    require idx + 1 < mem[(32 * ('cd', 100).length) + 128]
                    _3110 = mem[(32 * idx + 1) + (32 * ('cd', 100).length) + 160]
                    require ext_code.size(mem[(32 * idx) + _2236 + 44 len 20])
                    staticcall mem[(32 * idx) + _2236 + 44 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3120] == mem[_3120 + 12 len 20]
                    if address(s) == mem[_3120 + 12 len 20]:
                        if idx >= mem[_2236] - 1:
                            _3191 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3191 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3191 + 36] = 0
                            mem[_3191 + 68] = _3110
                            mem[_3191 + 100] = msg.sender
                            mem[_3191 + 132] = 128
                            mem[_3191 + 164] = mem[_3191]
                            t = 0
                            while t < mem[_3191]:
                                mem[_3191 + t + 196] = mem[_3191 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3191]) > mem[_3191]:
                                mem[_3191 + mem[_3191] + 196] = 0
                            require ext_code.size(address(_3087))
                            call address(_3087).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3110, msg.sender, 128, mem[_3191], mem[_3191 + 196 len ceil32(mem[_3191])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token0() with:
                                    gas gas_remaining wei
                            mem[_3191 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token1() with:
                                    gas gas_remaining wei
                            mem[_3191 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3191 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2236]
                            _3175 = mem[(32 * idx + 1) + _2236 + 32]
                            _3221 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3221 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3221 + 36] = 0
                            mem[_3221 + 68] = _3110
                            mem[_3221 + 100] = address(_3175)
                            mem[_3221 + 132] = 128
                            mem[_3221 + 164] = mem[_3221]
                            t = 0
                            while t < mem[_3221]:
                                mem[_3221 + t + 196] = mem[_3221 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3221]) > mem[_3221]:
                                mem[_3221 + mem[_3221] + 196] = 0
                            require ext_code.size(address(_3087))
                            call address(_3087).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _3110, address(_3175), 128, mem[_3221], mem[_3221 + 196 len ceil32(mem[_3221])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token0() with:
                                    gas gas_remaining wei
                            mem[_3221 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token1() with:
                                    gas gas_remaining wei
                            mem[_3221 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3221 + (2 * ceil32(return_data.size)) + 32
                    else:
                        if idx >= mem[_2236] - 1:
                            _3192 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3192 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3192 + 36] = _3110
                            mem[_3192 + 68] = 0
                            mem[_3192 + 100] = msg.sender
                            mem[_3192 + 132] = 128
                            mem[_3192 + 164] = mem[_3192]
                            t = 0
                            while t < mem[_3192]:
                                mem[_3192 + t + 196] = mem[_3192 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3192]) > mem[_3192]:
                                mem[_3192 + mem[_3192] + 196] = 0
                            require ext_code.size(address(_3087))
                            call address(_3087).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3110, 0, msg.sender, 128, mem[_3192], mem[_3192 + 196 len ceil32(mem[_3192])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token0() with:
                                    gas gas_remaining wei
                            mem[_3192 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token1() with:
                                    gas gas_remaining wei
                            mem[_3192 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3192 + (2 * ceil32(return_data.size)) + 32
                        else:
                            require idx + 1 < mem[_2236]
                            _3176 = mem[(32 * idx + 1) + _2236 + 32]
                            _3223 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_3223 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_3223 + 36] = _3110
                            mem[_3223 + 68] = 0
                            mem[_3223 + 100] = address(_3176)
                            mem[_3223 + 132] = 128
                            mem[_3223 + 164] = mem[_3223]
                            t = 0
                            while t < mem[_3223]:
                                mem[_3223 + t + 196] = mem[_3223 + t + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_3223]) > mem[_3223]:
                                mem[_3223 + mem[_3223] + 196] = 0
                            require ext_code.size(address(_3087))
                            call address(_3087).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _3110, 0, address(_3176), 128, mem[_3223], mem[_3223 + 196 len ceil32(mem[_3223])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token0() with:
                                    gas gas_remaining wei
                            mem[_3223 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(_3087))
                            staticcall address(_3087).token1() with:
                                    gas gas_remaining wei
                            mem[_3223 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _3223 + (2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'FLASHARBS: INVALID_MSG_SENDER'
    if address(arg1) != this.address:
        revert with 0, 'FLASHARBS: INVALID_SENDER'
    require arg4.length >= 32
    _5 = mem[128]
    require mem[128] <= test266151307()
    require arg4.length - mem[128] >= 128
    require bool(ceil32(arg4.length) + 256 <= test266151307())
    mem[64] = ceil32(arg4.length) + 256
    require mem[mem[128] + 128] == mem[mem[128] + 128]
    mem[ceil32(arg4.length) + 128] = mem[mem[128] + 128]
    require mem[_5 + 160] == mem[_5 + 172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[_5 + 160]
    _11 = mem[_5 + 192]
    require mem[_5 + 192] <= test266151307()
    require _5 + mem[_5 + 192] + 159 < arg4.length + 128
    _12 = mem[_5 + mem[_5 + 192] + 128]
    require mem[_5 + mem[_5 + 192] + 128] <= test266151307()
    require ceil32(arg4.length) + (32 * mem[_5 + mem[_5 + 192] + 128]) + 288 <= test266151307() and (32 * mem[_5 + mem[_5 + 192] + 128]) + 288 >= 256
    mem[64] = ceil32(arg4.length) + (32 * mem[_5 + mem[_5 + 192] + 128]) + 288
    mem[ceil32(arg4.length) + 256] = _12
    require _5 + _11 + (32 * _12) + 64 <= arg4.length + 32
    idx = 0
    s = _5 + _11 + 160
    t = ceil32(arg4.length) + 288
    while idx < _12:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg4.length) + 192] = ceil32(arg4.length) + 256
    _1833 = mem[_5 + 224]
    require mem[_5 + 224] <= test266151307()
    require _5 + mem[_5 + 224] + 159 < arg4.length + 128
    _1834 = mem[_5 + mem[_5 + 224] + 128]
    require mem[_5 + mem[_5 + 224] + 128] <= test266151307()
    _1835 = mem[64]
    require mem[64] + (32 * mem[_5 + mem[_5 + 224] + 128]) + 32 <= test266151307() and mem[64] + (32 * mem[_5 + mem[_5 + 224] + 128]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[_5 + mem[_5 + 224] + 128]) + 32
    mem[_1835] = mem[_5 + mem[_5 + 224] + 128]
    require _5 + _1833 + (32 * _1834) + 64 <= arg4.length + 32
    idx = 0
    s = _5 + _1833 + 160
    t = _1835 + 32
    while idx < _1834:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg4.length) + 224] = _1835
    _6051 = mem[ceil32(arg4.length) + 160]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6054 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6055 = mem[_6054]
    require mem[_6054] == mem[_6054 + 12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _6058 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6059 = mem[_6058]
    require mem[_6058] == mem[_6058 + 12 len 20]
    require 0 < mem[_1835]
    if address(_6051) != address(_6055):
        if arg2 <= 0:
            _6087 = mem[64]
            mem[mem[64] + 36] = mem[_1835 + 44 len 20]
            mem[mem[64] + 68] = arg3
            _6088 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_6088 + 32 len 4] = transfer(address arg1, uint256 arg2)
            _6091 = mem[_6088]
            mem[_6087 + 100 len floor32(mem[_6088])] = mem[_6088 + 32 len floor32(mem[_6088])]
            mem[_6087 + floor32(mem[_6088]) + -(mem[_6088] % 32) + 132 len mem[_6088] % 32] = mem[_6088 + -(mem[_6088] % 32) + floor32(mem[_6088]) + 64 len mem[_6088] % 32]
            call address(_6055).mem[_6087 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_6087 + 104 len _6091 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_6087 + 208 len 24]
                if not mem[96]:
                    _10336 = mem[ceil32(arg4.length) + 192]
                    _14448 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14448:
                        require idx < mem[_1835]
                        _14505 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10336]
                        _14552 = mem[(32 * idx + 1) + _10336 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14576] == mem[_14576 + 12 len 20]
                        if address(s) == mem[_14576 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14764 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14764 + 36] = 0
                                mem[_14764 + 68] = _14552
                                mem[_14764 + 100] = this.address
                                mem[_14764 + 132] = 128
                                mem[_14764 + 164] = mem[_14764]
                                t = 0
                                while t < mem[_14764]:
                                    mem[_14764 + t + 196] = mem[_14764 + t + 32]
                                    _14448 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14764]) > mem[_14764]:
                                    mem[_14764 + mem[_14764] + 196] = 0
                                require ext_code.size(address(_14505))
                                call address(_14505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14552, address(this.address), 128, mem[_14764], mem[_14764 + 196 len ceil32(mem[_14764])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token0() with:
                                        gas gas_remaining wei
                                mem[_14764 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token1() with:
                                        gas gas_remaining wei
                                mem[_14764 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14764 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14732 = mem[(32 * idx + 1) + _1835 + 32]
                                _14820 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14820 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14820 + 36] = 0
                                mem[_14820 + 68] = _14552
                                mem[_14820 + 100] = address(_14732)
                                mem[_14820 + 132] = 128
                                mem[_14820 + 164] = mem[_14820]
                                t = 0
                                while t < mem[_14820]:
                                    mem[_14820 + t + 196] = mem[_14820 + t + 32]
                                    _14448 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14820]) > mem[_14820]:
                                    mem[_14820 + mem[_14820] + 196] = 0
                                require ext_code.size(address(_14505))
                                call address(_14505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14552, address(_14732), 128, mem[_14820], mem[_14820 + 196 len ceil32(mem[_14820])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token0() with:
                                        gas gas_remaining wei
                                mem[_14820 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token1() with:
                                        gas gas_remaining wei
                                mem[_14820 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14820 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14765 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14765 + 36] = _14552
                                mem[_14765 + 68] = 0
                                mem[_14765 + 100] = this.address
                                mem[_14765 + 132] = 128
                                mem[_14765 + 164] = mem[_14765]
                                t = 0
                                while t < mem[_14765]:
                                    mem[_14765 + t + 196] = mem[_14765 + t + 32]
                                    _14448 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14765]) > mem[_14765]:
                                    mem[_14765 + mem[_14765] + 196] = 0
                                require ext_code.size(address(_14505))
                                call address(_14505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14552, 0, address(this.address), 128, mem[_14765], mem[_14765 + 196 len ceil32(mem[_14765])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token0() with:
                                        gas gas_remaining wei
                                mem[_14765 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token1() with:
                                        gas gas_remaining wei
                                mem[_14765 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14765 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14733 = mem[(32 * idx + 1) + _1835 + 32]
                                _14822 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14822 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14822 + 36] = _14552
                                mem[_14822 + 68] = 0
                                mem[_14822 + 100] = address(_14733)
                                mem[_14822 + 132] = 128
                                mem[_14822 + 164] = mem[_14822]
                                t = 0
                                while t < mem[_14822]:
                                    mem[_14822 + t + 196] = mem[_14822 + t + 32]
                                    _14448 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14822]) > mem[_14822]:
                                    mem[_14822 + mem[_14822] + 196] = 0
                                require ext_code.size(address(_14505))
                                call address(_14505).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14552, 0, address(_14733), 128, mem[_14822], mem[_14822 + 196 len ceil32(mem[_14822])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token0() with:
                                        gas gas_remaining wei
                                mem[_14822 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14505))
                                staticcall address(_14505).token1() with:
                                        gas gas_remaining wei
                                mem[_14822 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14822 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14448 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14664 = mem[_14624]
                    require mem[_14624] == mem[_14624]
                    _14880 = mem[ceil32(arg4.length) + 128]
                    if mem[_14624] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14960 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14880
                    _14961 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14961 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14964 = mem[_14961]
                    mem[mem[64] len floor32(mem[_14961])] = mem[_14961 + 32 len floor32(mem[_14961])]
                    mem[mem[64] + floor32(mem[_14961]) + -(mem[_14961] % 32) + 32 len mem[_14961] % 32] = mem[_14961 + floor32(mem[_14961]) + -(mem[_14961] % 32) + 64 len mem[_14961] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14964 + _14960 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14664 - _14880 > _14664:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19532 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14664 - _14880
                            _19533 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19533 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19536 = mem[_19533]
                            mem[mem[64] len floor32(mem[_19533])] = mem[_19533 + 32 len floor32(mem[_19533])]
                            mem[mem[64] + floor32(mem[_19533]) + -(mem[_19533] % 32) + 32 len mem[_19533] % 32] = mem[_19533 + floor32(mem[_19533]) + -(mem[_19533] % 32) + 64 len mem[_19533] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19536 + _19532 + -mem[64] + 96]
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
                                _22244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22244] = return_data.size
                                mem[_22244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22244 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14664 - _14880 > _14664:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19888 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14664 - _14880
                            _19889 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19889 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19892 = mem[_19889]
                            mem[_19888 + 100 len floor32(mem[_19889])] = mem[_19889 + 32 len floor32(mem[_19889])]
                            var205001 = _19889 + floor32(mem[_19889]) + 32
                            mem[_19888 + floor32(mem[_19889]) + -(mem[_19889] % 32) + 132 len mem[_19889] % 32] = mem[_19889 + -(mem[_19889] % 32) + floor32(mem[_19889]) + 64 len mem[_19889] % 32]
                            call address(_6051).mem[_19888 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19888 + 104 len _19892 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19888 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19888 + 208 len 24]
                            else:
                                mem[_19888 + 100] = return_data.size
                                mem[_19888 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19888 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19888 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19888 + ceil32(return_data.size) + 209 len 24]
                    else:
                        _18640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18640] = return_data.size
                        mem[_18640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14664 - _14880 > _14664:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19539 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14664 - _14880
                            _19540 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19540 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19543 = mem[_19540]
                            mem[mem[64] len floor32(mem[_19540])] = mem[_19540 + 32 len floor32(mem[_19540])]
                            mem[mem[64] + floor32(mem[_19540]) + -(mem[_19540] % 32) + 32 len mem[_19540] % 32] = mem[_19540 + floor32(mem[_19540]) + -(mem[_19540] % 32) + 64 len mem[_19540] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19543 + _19539 + -mem[64] + 96]
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
                                _22246 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22246] = return_data.size
                                mem[_22246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22246 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18640 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14664 - _14880 > _14664:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19897 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14664 - _14880
                            _19898 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19898 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19901 = mem[_19898]
                            mem[_19897 + 100 len floor32(mem[_19898])] = mem[_19898 + 32 len floor32(mem[_19898])]
                            var205001 = _19898 + floor32(mem[_19898]) + 32
                            mem[_19897 + floor32(mem[_19898]) + -(mem[_19898] % 32) + 132 len mem[_19898] % 32] = mem[_19898 + -(mem[_19898] % 32) + floor32(mem[_19898]) + 64 len mem[_19898] % 32]
                            call address(_6051).mem[_19897 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19897 + 104 len _19901 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19897 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19897 + 208 len 24]
                            else:
                                mem[_19897 + 100] = return_data.size
                                mem[_19897 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19897 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19897 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19897 + ceil32(return_data.size) + 209 len 24]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_6087 + 208 len 24]
                    _10375 = mem[ceil32(arg4.length) + 192]
                    _14449 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14449:
                        require idx < mem[_1835]
                        _14508 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10375]
                        _14555 = mem[(32 * idx + 1) + _10375 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14577] == mem[_14577 + 12 len 20]
                        if address(s) == mem[_14577 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14766 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14766 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14766 + 36] = 0
                                mem[_14766 + 68] = _14555
                                mem[_14766 + 100] = this.address
                                mem[_14766 + 132] = 128
                                mem[_14766 + 164] = mem[_14766]
                                t = 0
                                while t < mem[_14766]:
                                    mem[_14766 + t + 196] = mem[_14766 + t + 32]
                                    _14449 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14766]) > mem[_14766]:
                                    mem[_14766 + mem[_14766] + 196] = 0
                                require ext_code.size(address(_14508))
                                call address(_14508).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14555, address(this.address), 128, mem[_14766], mem[_14766 + 196 len ceil32(mem[_14766])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token0() with:
                                        gas gas_remaining wei
                                mem[_14766 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token1() with:
                                        gas gas_remaining wei
                                mem[_14766 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14766 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14734 = mem[(32 * idx + 1) + _1835 + 32]
                                _14824 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14824 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14824 + 36] = 0
                                mem[_14824 + 68] = _14555
                                mem[_14824 + 100] = address(_14734)
                                mem[_14824 + 132] = 128
                                mem[_14824 + 164] = mem[_14824]
                                t = 0
                                while t < mem[_14824]:
                                    mem[_14824 + t + 196] = mem[_14824 + t + 32]
                                    _14449 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14824]) > mem[_14824]:
                                    mem[_14824 + mem[_14824] + 196] = 0
                                require ext_code.size(address(_14508))
                                call address(_14508).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14555, address(_14734), 128, mem[_14824], mem[_14824 + 196 len ceil32(mem[_14824])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token0() with:
                                        gas gas_remaining wei
                                mem[_14824 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token1() with:
                                        gas gas_remaining wei
                                mem[_14824 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14824 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14767 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14767 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14767 + 36] = _14555
                                mem[_14767 + 68] = 0
                                mem[_14767 + 100] = this.address
                                mem[_14767 + 132] = 128
                                mem[_14767 + 164] = mem[_14767]
                                t = 0
                                while t < mem[_14767]:
                                    mem[_14767 + t + 196] = mem[_14767 + t + 32]
                                    _14449 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14767]) > mem[_14767]:
                                    mem[_14767 + mem[_14767] + 196] = 0
                                require ext_code.size(address(_14508))
                                call address(_14508).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14555, 0, address(this.address), 128, mem[_14767], mem[_14767 + 196 len ceil32(mem[_14767])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token0() with:
                                        gas gas_remaining wei
                                mem[_14767 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token1() with:
                                        gas gas_remaining wei
                                mem[_14767 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14767 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14735 = mem[(32 * idx + 1) + _1835 + 32]
                                _14826 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14826 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14826 + 36] = _14555
                                mem[_14826 + 68] = 0
                                mem[_14826 + 100] = address(_14735)
                                mem[_14826 + 132] = 128
                                mem[_14826 + 164] = mem[_14826]
                                t = 0
                                while t < mem[_14826]:
                                    mem[_14826 + t + 196] = mem[_14826 + t + 32]
                                    _14449 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14826]) > mem[_14826]:
                                    mem[_14826 + mem[_14826] + 196] = 0
                                require ext_code.size(address(_14508))
                                call address(_14508).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14555, 0, address(_14735), 128, mem[_14826], mem[_14826 + 196 len ceil32(mem[_14826])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token0() with:
                                        gas gas_remaining wei
                                mem[_14826 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14508))
                                staticcall address(_14508).token1() with:
                                        gas gas_remaining wei
                                mem[_14826 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14826 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14449 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14667 = mem[_14625]
                    require mem[_14625] == mem[_14625]
                    _14881 = mem[ceil32(arg4.length) + 128]
                    if mem[_14625] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14965 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14881
                    _14966 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14966 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14969 = mem[_14966]
                    mem[mem[64] len floor32(mem[_14966])] = mem[_14966 + 32 len floor32(mem[_14966])]
                    mem[mem[64] + floor32(mem[_14966]) + -(mem[_14966] % 32) + 32 len mem[_14966] % 32] = mem[_14966 + floor32(mem[_14966]) + -(mem[_14966] % 32) + 64 len mem[_14966] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14969 + _14965 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14667 - _14881 > _14667:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19550 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14667 - _14881
                            _19551 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19551 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19554 = mem[_19551]
                            mem[mem[64] len floor32(mem[_19551])] = mem[_19551 + 32 len floor32(mem[_19551])]
                            var205001 = _19551 + floor32(mem[_19551]) + 32
                            mem[mem[64] + floor32(mem[_19551]) + -(mem[_19551] % 32) + 32 len mem[_19551] % 32] = mem[_19551 + floor32(mem[_19551]) + -(mem[_19551] % 32) + 64 len mem[_19551] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19554 + _19550 + -mem[64] + 96]
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
                                _22248 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22248] = return_data.size
                                mem[_22248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22248 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14667 - _14881 > _14667:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19906 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14667 - _14881
                            _19907 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19907 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19910 = mem[_19907]
                            mem[mem[64] len floor32(mem[_19907])] = mem[_19907 + 32 len floor32(mem[_19907])]
                            var207001 = _19907 + floor32(mem[_19907]) + 32
                            mem[mem[64] + floor32(mem[_19907]) + -(mem[_19907] % 32) + 32 len mem[_19907] % 32] = mem[_19907 + floor32(mem[_19907]) + -(mem[_19907] % 32) + 64 len mem[_19907] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19910 + _19906 + -mem[64] + 96]
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
                                _22249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22249] = return_data.size
                                mem[_22249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22249 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18641] = return_data.size
                        mem[_18641 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14667 - _14881 > _14667:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19557 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14667 - _14881
                            _19558 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19558 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19561 = mem[_19558]
                            mem[mem[64] len floor32(mem[_19558])] = mem[_19558 + 32 len floor32(mem[_19558])]
                            var205001 = _19558 + floor32(mem[_19558]) + 32
                            mem[mem[64] + floor32(mem[_19558]) + -(mem[_19558] % 32) + 32 len mem[_19558] % 32] = mem[_19558 + floor32(mem[_19558]) + -(mem[_19558] % 32) + 64 len mem[_19558] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19561 + _19557 + -mem[64] + 96]
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
                                _22250 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22250] = return_data.size
                                mem[_22250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22250 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18641 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14667 - _14881 > _14667:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19915 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14667 - _14881
                            _19916 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19916 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19919 = mem[_19916]
                            mem[mem[64] len floor32(mem[_19916])] = mem[_19916 + 32 len floor32(mem[_19916])]
                            var207001 = _19916 + floor32(mem[_19916]) + 32
                            mem[mem[64] + floor32(mem[_19916]) + -(mem[_19916] % 32) + 32 len mem[_19916] % 32] = mem[_19916 + floor32(mem[_19916]) + -(mem[_19916] % 32) + 64 len mem[_19916] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19919 + _19915 + -mem[64] + 96]
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
                                _22251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22251] = return_data.size
                                mem[_22251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22251 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
            else:
                mem[64] = _6087 + ceil32(return_data.size) + 101
                mem[_6087 + 100] = return_data.size
                mem[_6087 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[_6087 + ceil32(return_data.size) + 209 len 24]
                if not return_data.size:
                    _10338 = mem[ceil32(arg4.length) + 192]
                    _14450 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14450:
                        require idx < mem[_1835]
                        _14511 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10338]
                        _14558 = mem[(32 * idx + 1) + _10338 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14578] == mem[_14578 + 12 len 20]
                        if address(s) == mem[_14578 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14768 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14768 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14768 + 36] = 0
                                mem[_14768 + 68] = _14558
                                mem[_14768 + 100] = this.address
                                mem[_14768 + 132] = 128
                                mem[_14768 + 164] = mem[_14768]
                                t = 0
                                while t < mem[_14768]:
                                    mem[_14768 + t + 196] = mem[_14768 + t + 32]
                                    _14450 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14768]) > mem[_14768]:
                                    mem[_14768 + mem[_14768] + 196] = 0
                                require ext_code.size(address(_14511))
                                call address(_14511).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14558, address(this.address), 128, mem[_14768], mem[_14768 + 196 len ceil32(mem[_14768])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token0() with:
                                        gas gas_remaining wei
                                mem[_14768 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token1() with:
                                        gas gas_remaining wei
                                mem[_14768 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14768 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14736 = mem[(32 * idx + 1) + _1835 + 32]
                                _14828 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14828 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14828 + 36] = 0
                                mem[_14828 + 68] = _14558
                                mem[_14828 + 100] = address(_14736)
                                mem[_14828 + 132] = 128
                                mem[_14828 + 164] = mem[_14828]
                                t = 0
                                while t < mem[_14828]:
                                    mem[_14828 + t + 196] = mem[_14828 + t + 32]
                                    _14450 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14828]) > mem[_14828]:
                                    mem[_14828 + mem[_14828] + 196] = 0
                                require ext_code.size(address(_14511))
                                call address(_14511).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14558, address(_14736), 128, mem[_14828], mem[_14828 + 196 len ceil32(mem[_14828])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token0() with:
                                        gas gas_remaining wei
                                mem[_14828 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token1() with:
                                        gas gas_remaining wei
                                mem[_14828 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14828 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14769 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14769 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14769 + 36] = _14558
                                mem[_14769 + 68] = 0
                                mem[_14769 + 100] = this.address
                                mem[_14769 + 132] = 128
                                mem[_14769 + 164] = mem[_14769]
                                t = 0
                                while t < mem[_14769]:
                                    mem[_14769 + t + 196] = mem[_14769 + t + 32]
                                    _14450 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14769]) > mem[_14769]:
                                    mem[_14769 + mem[_14769] + 196] = 0
                                require ext_code.size(address(_14511))
                                call address(_14511).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14558, 0, address(this.address), 128, mem[_14769], mem[_14769 + 196 len ceil32(mem[_14769])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token0() with:
                                        gas gas_remaining wei
                                mem[_14769 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token1() with:
                                        gas gas_remaining wei
                                mem[_14769 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14769 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14737 = mem[(32 * idx + 1) + _1835 + 32]
                                _14830 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14830 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14830 + 36] = _14558
                                mem[_14830 + 68] = 0
                                mem[_14830 + 100] = address(_14737)
                                mem[_14830 + 132] = 128
                                mem[_14830 + 164] = mem[_14830]
                                t = 0
                                while t < mem[_14830]:
                                    mem[_14830 + t + 196] = mem[_14830 + t + 32]
                                    _14450 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14830]) > mem[_14830]:
                                    mem[_14830 + mem[_14830] + 196] = 0
                                require ext_code.size(address(_14511))
                                call address(_14511).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14558, 0, address(_14737), 128, mem[_14830], mem[_14830 + 196 len ceil32(mem[_14830])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token0() with:
                                        gas gas_remaining wei
                                mem[_14830 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14511))
                                staticcall address(_14511).token1() with:
                                        gas gas_remaining wei
                                mem[_14830 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14830 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14450 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14670 = mem[_14626]
                    require mem[_14626] == mem[_14626]
                    _14882 = mem[ceil32(arg4.length) + 128]
                    if mem[_14626] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14970 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14882
                    _14971 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14971 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14974 = mem[_14971]
                    mem[mem[64] len floor32(mem[_14971])] = mem[_14971 + 32 len floor32(mem[_14971])]
                    mem[mem[64] + floor32(mem[_14971]) + -(mem[_14971] % 32) + 32 len mem[_14971] % 32] = mem[_14971 + floor32(mem[_14971]) + -(mem[_14971] % 32) + 64 len mem[_14971] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14974 + _14970 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14670 - _14882 > _14670:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19568 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14670 - _14882
                            _19569 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19569 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19572 = mem[_19569]
                            mem[mem[64] len floor32(mem[_19569])] = mem[_19569 + 32 len floor32(mem[_19569])]
                            mem[mem[64] + floor32(mem[_19569]) + -(mem[_19569] % 32) + 32 len mem[_19569] % 32] = mem[_19569 + floor32(mem[_19569]) + -(mem[_19569] % 32) + 64 len mem[_19569] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19572 + _19568 + -mem[64] + 96]
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
                                _22252 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22252] = return_data.size
                                mem[_22252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22252 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14670 - _14882 > _14670:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19924 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14670 - _14882
                            _19925 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19925 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19928 = mem[_19925]
                            mem[mem[64] len floor32(mem[_19925])] = mem[_19925 + 32 len floor32(mem[_19925])]
                            var205001 = _19925 + floor32(mem[_19925]) + 32
                            mem[mem[64] + floor32(mem[_19925]) + -(mem[_19925] % 32) + 32 len mem[_19925] % 32] = mem[_19925 + floor32(mem[_19925]) + -(mem[_19925] % 32) + 64 len mem[_19925] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19928 + _19924 + -mem[64] + 96]
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
                                _22253 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22253] = return_data.size
                                mem[_22253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22253 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18642] = return_data.size
                        mem[_18642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14670 - _14882 > _14670:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19575 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14670 - _14882
                            _19576 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19576 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19579 = mem[_19576]
                            mem[mem[64] len floor32(mem[_19576])] = mem[_19576 + 32 len floor32(mem[_19576])]
                            mem[mem[64] + floor32(mem[_19576]) + -(mem[_19576] % 32) + 32 len mem[_19576] % 32] = mem[_19576 + floor32(mem[_19576]) + -(mem[_19576] % 32) + 64 len mem[_19576] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19579 + _19575 + -mem[64] + 96]
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
                                _22254 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22254] = return_data.size
                                mem[_22254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22254 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18642 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14670 - _14882 > _14670:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19933 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14670 - _14882
                            _19934 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19934 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19937 = mem[_19934]
                            mem[mem[64] len floor32(mem[_19934])] = mem[_19934 + 32 len floor32(mem[_19934])]
                            var205001 = _19934 + floor32(mem[_19934]) + 32
                            mem[mem[64] + floor32(mem[_19934]) + -(mem[_19934] % 32) + 32 len mem[_19934] % 32] = mem[_19934 + floor32(mem[_19934]) + -(mem[_19934] % 32) + 64 len mem[_19934] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19937 + _19933 + -mem[64] + 96]
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
                                _22255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22255] = return_data.size
                                mem[_22255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22255 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                else:
                    require return_data.size >= 32
                    if not mem[_6087 + 132]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[_6087 + ceil32(return_data.size) + 209 len 24]
                    _10378 = mem[ceil32(arg4.length) + 192]
                    _14451 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14451:
                        require idx < mem[_1835]
                        _14514 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10378]
                        _14561 = mem[(32 * idx + 1) + _10378 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14579] == mem[_14579 + 12 len 20]
                        if address(s) == mem[_14579 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14770 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14770 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14770 + 36] = 0
                                mem[_14770 + 68] = _14561
                                mem[_14770 + 100] = this.address
                                mem[_14770 + 132] = 128
                                mem[_14770 + 164] = mem[_14770]
                                t = 0
                                while t < mem[_14770]:
                                    mem[_14770 + t + 196] = mem[_14770 + t + 32]
                                    _14451 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14770]) > mem[_14770]:
                                    mem[_14770 + mem[_14770] + 196] = 0
                                require ext_code.size(address(_14514))
                                call address(_14514).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14561, address(this.address), 128, mem[_14770], mem[_14770 + 196 len ceil32(mem[_14770])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token0() with:
                                        gas gas_remaining wei
                                mem[_14770 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token1() with:
                                        gas gas_remaining wei
                                mem[_14770 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14770 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14738 = mem[(32 * idx + 1) + _1835 + 32]
                                _14832 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14832 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14832 + 36] = 0
                                mem[_14832 + 68] = _14561
                                mem[_14832 + 100] = address(_14738)
                                mem[_14832 + 132] = 128
                                mem[_14832 + 164] = mem[_14832]
                                t = 0
                                while t < mem[_14832]:
                                    mem[_14832 + t + 196] = mem[_14832 + t + 32]
                                    _14451 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14832]) > mem[_14832]:
                                    mem[_14832 + mem[_14832] + 196] = 0
                                require ext_code.size(address(_14514))
                                call address(_14514).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14561, address(_14738), 128, mem[_14832], mem[_14832 + 196 len ceil32(mem[_14832])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token0() with:
                                        gas gas_remaining wei
                                mem[_14832 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token1() with:
                                        gas gas_remaining wei
                                mem[_14832 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14832 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14771 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14771 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14771 + 36] = _14561
                                mem[_14771 + 68] = 0
                                mem[_14771 + 100] = this.address
                                mem[_14771 + 132] = 128
                                mem[_14771 + 164] = mem[_14771]
                                t = 0
                                while t < mem[_14771]:
                                    mem[_14771 + t + 196] = mem[_14771 + t + 32]
                                    _14451 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14771]) > mem[_14771]:
                                    mem[_14771 + mem[_14771] + 196] = 0
                                require ext_code.size(address(_14514))
                                call address(_14514).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14561, 0, address(this.address), 128, mem[_14771], mem[_14771 + 196 len ceil32(mem[_14771])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token0() with:
                                        gas gas_remaining wei
                                mem[_14771 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token1() with:
                                        gas gas_remaining wei
                                mem[_14771 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14771 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14739 = mem[(32 * idx + 1) + _1835 + 32]
                                _14834 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14834 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14834 + 36] = _14561
                                mem[_14834 + 68] = 0
                                mem[_14834 + 100] = address(_14739)
                                mem[_14834 + 132] = 128
                                mem[_14834 + 164] = mem[_14834]
                                t = 0
                                while t < mem[_14834]:
                                    mem[_14834 + t + 196] = mem[_14834 + t + 32]
                                    _14451 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14834]) > mem[_14834]:
                                    mem[_14834 + mem[_14834] + 196] = 0
                                require ext_code.size(address(_14514))
                                call address(_14514).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14561, 0, address(_14739), 128, mem[_14834], mem[_14834 + 196 len ceil32(mem[_14834])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token0() with:
                                        gas gas_remaining wei
                                mem[_14834 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14514))
                                staticcall address(_14514).token1() with:
                                        gas gas_remaining wei
                                mem[_14834 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14834 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14451 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14673 = mem[_14627]
                    require mem[_14627] == mem[_14627]
                    _14883 = mem[ceil32(arg4.length) + 128]
                    if mem[_14627] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14975 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14883
                    _14976 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14976 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14979 = mem[_14976]
                    mem[mem[64] len floor32(mem[_14976])] = mem[_14976 + 32 len floor32(mem[_14976])]
                    mem[mem[64] + floor32(mem[_14976]) + -(mem[_14976] % 32) + 32 len mem[_14976] % 32] = mem[_14976 + floor32(mem[_14976]) + -(mem[_14976] % 32) + 64 len mem[_14976] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14979 + _14975 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14673 - _14883 > _14673:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19586 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14673 - _14883
                            _19587 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19587 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19590 = mem[_19587]
                            mem[_19586 + 100 len floor32(mem[_19587])] = mem[_19587 + 32 len floor32(mem[_19587])]
                            var205001 = _19587 + floor32(mem[_19587]) + 32
                            mem[_19586 + floor32(mem[_19587]) + -(mem[_19587] % 32) + 132 len mem[_19587] % 32] = mem[_19587 + -(mem[_19587] % 32) + floor32(mem[_19587]) + 64 len mem[_19587] % 32]
                            call address(_6051).mem[_19586 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19586 + 104 len _19590 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19586 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19586 + 208 len 24]
                            else:
                                mem[_19586 + 100] = return_data.size
                                mem[_19586 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19586 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19586 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19586 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14673 - _14883 > _14673:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19942 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14673 - _14883
                            _19943 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19943 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19946 = mem[_19943]
                            mem[mem[64] len floor32(mem[_19943])] = mem[_19943 + 32 len floor32(mem[_19943])]
                            var207001 = _19943 + floor32(mem[_19943]) + 32
                            mem[mem[64] + floor32(mem[_19943]) + -(mem[_19943] % 32) + 32 len mem[_19943] % 32] = mem[_19943 + floor32(mem[_19943]) + -(mem[_19943] % 32) + 64 len mem[_19943] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19946 + _19942 + -mem[64] + 96]
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
                                _22257 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22257] = return_data.size
                                mem[_22257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22257 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18643] = return_data.size
                        mem[_18643 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14673 - _14883 > _14673:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19593 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14673 - _14883
                            _19594 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19594 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19597 = mem[_19594]
                            mem[mem[64] len floor32(mem[_19594])] = mem[_19594 + 32 len floor32(mem[_19594])]
                            var205001 = _19594 + floor32(mem[_19594]) + 32
                            mem[mem[64] + floor32(mem[_19594]) + -(mem[_19594] % 32) + 32 len mem[_19594] % 32] = mem[_19594 + floor32(mem[_19594]) + -(mem[_19594] % 32) + 64 len mem[_19594] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19597 + _19593 + -mem[64] + 96]
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
                                _22258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22258] = return_data.size
                                mem[_22258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22258 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18643 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14673 - _14883 > _14673:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19951 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14673 - _14883
                            _19952 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19952 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19955 = mem[_19952]
                            mem[_19951 + 100 len floor32(mem[_19952])] = mem[_19952 + 32 len floor32(mem[_19952])]
                            var207001 = _19952 + floor32(mem[_19952]) + 32
                            mem[_19951 + floor32(mem[_19952]) + -(mem[_19952] % 32) + 132 len mem[_19952] % 32] = mem[_19952 + -(mem[_19952] % 32) + floor32(mem[_19952]) + 64 len mem[_19952] % 32]
                            call address(_6051).mem[_19951 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19951 + 104 len _19955 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19951 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19951 + 208 len 24]
                            else:
                                mem[_19951 + 100] = return_data.size
                                mem[_19951 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19951 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19951 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19951 + ceil32(return_data.size) + 209 len 24]
        else:
            _6082 = mem[64]
            mem[mem[64] + 36] = mem[_1835 + 44 len 20]
            mem[mem[64] + 68] = arg2
            _6083 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_6083 + 32 len 4] = transfer(address arg1, uint256 arg2)
            _6086 = mem[_6083]
            mem[mem[64] len floor32(mem[_6083])] = mem[_6083 + 32 len floor32(mem[_6083])]
            mem[mem[64] + floor32(mem[_6083]) + -(mem[_6083] % 32) + 32 len mem[_6083] % 32] = mem[_6083 + floor32(mem[_6083]) + -(mem[_6083] % 32) + 64 len mem[_6083] % 32]
            call address(_6055) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6086 + _6082 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if not mem[96]:
                    _10332 = mem[ceil32(arg4.length) + 192]
                    _14444 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14444:
                        require idx < mem[_1835]
                        _14493 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10332]
                        _14540 = mem[(32 * idx + 1) + _10332 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14572] == mem[_14572 + 12 len 20]
                        if address(s) == mem[_14572 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14756 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14756 + 36] = 0
                                mem[_14756 + 68] = _14540
                                mem[_14756 + 100] = this.address
                                mem[_14756 + 132] = 128
                                mem[_14756 + 164] = mem[_14756]
                                t = 0
                                while t < mem[_14756]:
                                    mem[_14756 + t + 196] = mem[_14756 + t + 32]
                                    _14444 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14756]) > mem[_14756]:
                                    mem[_14756 + mem[_14756] + 196] = 0
                                require ext_code.size(address(_14493))
                                call address(_14493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14540, address(this.address), 128, mem[_14756], mem[_14756 + 196 len ceil32(mem[_14756])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token0() with:
                                        gas gas_remaining wei
                                mem[_14756 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token1() with:
                                        gas gas_remaining wei
                                mem[_14756 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14756 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14724 = mem[(32 * idx + 1) + _1835 + 32]
                                _14804 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14804 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14804 + 36] = 0
                                mem[_14804 + 68] = _14540
                                mem[_14804 + 100] = address(_14724)
                                mem[_14804 + 132] = 128
                                mem[_14804 + 164] = mem[_14804]
                                t = 0
                                while t < mem[_14804]:
                                    mem[_14804 + t + 196] = mem[_14804 + t + 32]
                                    _14444 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14804]) > mem[_14804]:
                                    mem[_14804 + mem[_14804] + 196] = 0
                                require ext_code.size(address(_14493))
                                call address(_14493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14540, address(_14724), 128, mem[_14804], mem[_14804 + 196 len ceil32(mem[_14804])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token0() with:
                                        gas gas_remaining wei
                                mem[_14804 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token1() with:
                                        gas gas_remaining wei
                                mem[_14804 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14804 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14757 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14757 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14757 + 36] = _14540
                                mem[_14757 + 68] = 0
                                mem[_14757 + 100] = this.address
                                mem[_14757 + 132] = 128
                                mem[_14757 + 164] = mem[_14757]
                                t = 0
                                while t < mem[_14757]:
                                    mem[_14757 + t + 196] = mem[_14757 + t + 32]
                                    _14444 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14757]) > mem[_14757]:
                                    mem[_14757 + mem[_14757] + 196] = 0
                                require ext_code.size(address(_14493))
                                call address(_14493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14540, 0, address(this.address), 128, mem[_14757], mem[_14757 + 196 len ceil32(mem[_14757])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token0() with:
                                        gas gas_remaining wei
                                mem[_14757 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token1() with:
                                        gas gas_remaining wei
                                mem[_14757 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14757 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14725 = mem[(32 * idx + 1) + _1835 + 32]
                                _14806 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14806 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14806 + 36] = _14540
                                mem[_14806 + 68] = 0
                                mem[_14806 + 100] = address(_14725)
                                mem[_14806 + 132] = 128
                                mem[_14806 + 164] = mem[_14806]
                                t = 0
                                while t < mem[_14806]:
                                    mem[_14806 + t + 196] = mem[_14806 + t + 32]
                                    _14444 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14806]) > mem[_14806]:
                                    mem[_14806 + mem[_14806] + 196] = 0
                                require ext_code.size(address(_14493))
                                call address(_14493).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14540, 0, address(_14725), 128, mem[_14806], mem[_14806 + 196 len ceil32(mem[_14806])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token0() with:
                                        gas gas_remaining wei
                                mem[_14806 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14493))
                                staticcall address(_14493).token1() with:
                                        gas gas_remaining wei
                                mem[_14806 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14806 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14444 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14652 = mem[_14620]
                    require mem[_14620] == mem[_14620]
                    _14876 = mem[ceil32(arg4.length) + 128]
                    if mem[_14620] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14940 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14876
                    _14941 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14941 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14944 = mem[_14941]
                    mem[mem[64] len floor32(mem[_14941])] = mem[_14941 + 32 len floor32(mem[_14941])]
                    mem[mem[64] + floor32(mem[_14941]) + -(mem[_14941] % 32) + 32 len mem[_14941] % 32] = mem[_14941 + floor32(mem[_14941]) + -(mem[_14941] % 32) + 64 len mem[_14941] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14944 + _14940 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14652 - _14876 > _14652:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19460 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14652 - _14876
                            _19461 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19461 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19464 = mem[_19461]
                            mem[mem[64] len floor32(mem[_19461])] = mem[_19461 + 32 len floor32(mem[_19461])]
                            mem[mem[64] + floor32(mem[_19461]) + -(mem[_19461] % 32) + 32 len mem[_19461] % 32] = mem[_19461 + floor32(mem[_19461]) + -(mem[_19461] % 32) + 64 len mem[_19461] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19464 + _19460 + -mem[64] + 96]
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
                                _22228 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22228] = return_data.size
                                mem[_22228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22228 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14652 - _14876 > _14652:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19816 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14652 - _14876
                            _19817 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19817 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19820 = mem[_19817]
                            mem[mem[64] len floor32(mem[_19817])] = mem[_19817 + 32 len floor32(mem[_19817])]
                            var205001 = _19817 + floor32(mem[_19817]) + 32
                            mem[mem[64] + floor32(mem[_19817]) + -(mem[_19817] % 32) + 32 len mem[_19817] % 32] = mem[_19817 + floor32(mem[_19817]) + -(mem[_19817] % 32) + 64 len mem[_19817] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19820 + _19816 + -mem[64] + 96]
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
                                _22229 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22229] = return_data.size
                                mem[_22229 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22229 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18636] = return_data.size
                        mem[_18636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14652 - _14876 > _14652:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19467 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14652 - _14876
                            _19468 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19468 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19471 = mem[_19468]
                            mem[mem[64] len floor32(mem[_19468])] = mem[_19468 + 32 len floor32(mem[_19468])]
                            mem[mem[64] + floor32(mem[_19468]) + -(mem[_19468] % 32) + 32 len mem[_19468] % 32] = mem[_19468 + floor32(mem[_19468]) + -(mem[_19468] % 32) + 64 len mem[_19468] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19471 + _19467 + -mem[64] + 96]
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
                                _22230 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22230] = return_data.size
                                mem[_22230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22230 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18636 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14652 - _14876 > _14652:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19825 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14652 - _14876
                            _19826 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19826 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19829 = mem[_19826]
                            mem[mem[64] len floor32(mem[_19826])] = mem[_19826 + 32 len floor32(mem[_19826])]
                            var205001 = _19826 + floor32(mem[_19826]) + 32
                            mem[mem[64] + floor32(mem[_19826]) + -(mem[_19826] % 32) + 32 len mem[_19826] % 32] = mem[_19826 + floor32(mem[_19826]) + -(mem[_19826] % 32) + 64 len mem[_19826] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19829 + _19825 + -mem[64] + 96]
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
                                _22231 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22231] = return_data.size
                                mem[_22231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22231 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
                    _10369 = mem[ceil32(arg4.length) + 192]
                    _14445 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14445:
                        require idx < mem[_1835]
                        _14496 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10369]
                        _14543 = mem[(32 * idx + 1) + _10369 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14573] == mem[_14573 + 12 len 20]
                        if address(s) == mem[_14573 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14758 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14758 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14758 + 36] = 0
                                mem[_14758 + 68] = _14543
                                mem[_14758 + 100] = this.address
                                mem[_14758 + 132] = 128
                                mem[_14758 + 164] = mem[_14758]
                                t = 0
                                while t < mem[_14758]:
                                    mem[_14758 + t + 196] = mem[_14758 + t + 32]
                                    _14445 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14758]) > mem[_14758]:
                                    mem[_14758 + mem[_14758] + 196] = 0
                                require ext_code.size(address(_14496))
                                call address(_14496).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14543, address(this.address), 128, mem[_14758], mem[_14758 + 196 len ceil32(mem[_14758])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token0() with:
                                        gas gas_remaining wei
                                mem[_14758 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token1() with:
                                        gas gas_remaining wei
                                mem[_14758 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14758 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14726 = mem[(32 * idx + 1) + _1835 + 32]
                                _14808 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14808 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14808 + 36] = 0
                                mem[_14808 + 68] = _14543
                                mem[_14808 + 100] = address(_14726)
                                mem[_14808 + 132] = 128
                                mem[_14808 + 164] = mem[_14808]
                                t = 0
                                while t < mem[_14808]:
                                    mem[_14808 + t + 196] = mem[_14808 + t + 32]
                                    _14445 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14808]) > mem[_14808]:
                                    mem[_14808 + mem[_14808] + 196] = 0
                                require ext_code.size(address(_14496))
                                call address(_14496).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14543, address(_14726), 128, mem[_14808], mem[_14808 + 196 len ceil32(mem[_14808])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token0() with:
                                        gas gas_remaining wei
                                mem[_14808 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token1() with:
                                        gas gas_remaining wei
                                mem[_14808 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14808 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14759 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14759 + 36] = _14543
                                mem[_14759 + 68] = 0
                                mem[_14759 + 100] = this.address
                                mem[_14759 + 132] = 128
                                mem[_14759 + 164] = mem[_14759]
                                t = 0
                                while t < mem[_14759]:
                                    mem[_14759 + t + 196] = mem[_14759 + t + 32]
                                    _14445 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14759]) > mem[_14759]:
                                    mem[_14759 + mem[_14759] + 196] = 0
                                require ext_code.size(address(_14496))
                                call address(_14496).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14543, 0, address(this.address), 128, mem[_14759], mem[_14759 + 196 len ceil32(mem[_14759])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token0() with:
                                        gas gas_remaining wei
                                mem[_14759 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token1() with:
                                        gas gas_remaining wei
                                mem[_14759 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14759 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14727 = mem[(32 * idx + 1) + _1835 + 32]
                                _14810 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14810 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14810 + 36] = _14543
                                mem[_14810 + 68] = 0
                                mem[_14810 + 100] = address(_14727)
                                mem[_14810 + 132] = 128
                                mem[_14810 + 164] = mem[_14810]
                                t = 0
                                while t < mem[_14810]:
                                    mem[_14810 + t + 196] = mem[_14810 + t + 32]
                                    _14445 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14810]) > mem[_14810]:
                                    mem[_14810 + mem[_14810] + 196] = 0
                                require ext_code.size(address(_14496))
                                call address(_14496).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14543, 0, address(_14727), 128, mem[_14810], mem[_14810 + 196 len ceil32(mem[_14810])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token0() with:
                                        gas gas_remaining wei
                                mem[_14810 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14496))
                                staticcall address(_14496).token1() with:
                                        gas gas_remaining wei
                                mem[_14810 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14810 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14445 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14655 = mem[_14621]
                    require mem[_14621] == mem[_14621]
                    _14877 = mem[ceil32(arg4.length) + 128]
                    if mem[_14621] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14945 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14877
                    _14946 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14946 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14949 = mem[_14946]
                    mem[mem[64] len floor32(mem[_14946])] = mem[_14946 + 32 len floor32(mem[_14946])]
                    mem[mem[64] + floor32(mem[_14946]) + -(mem[_14946] % 32) + 32 len mem[_14946] % 32] = mem[_14946 + floor32(mem[_14946]) + -(mem[_14946] % 32) + 64 len mem[_14946] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14949 + _14945 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14655 - _14877 > _14655:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19478 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14655 - _14877
                            _19479 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19479 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19482 = mem[_19479]
                            mem[mem[64] len floor32(mem[_19479])] = mem[_19479 + 32 len floor32(mem[_19479])]
                            var205001 = _19479 + floor32(mem[_19479]) + 32
                            mem[mem[64] + floor32(mem[_19479]) + -(mem[_19479] % 32) + 32 len mem[_19479] % 32] = mem[_19479 + floor32(mem[_19479]) + -(mem[_19479] % 32) + 64 len mem[_19479] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19482 + _19478 + -mem[64] + 96]
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
                                _22232 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22232] = return_data.size
                                mem[_22232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22232 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14655 - _14877 > _14655:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19834 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14655 - _14877
                            _19835 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19835 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19838 = mem[_19835]
                            mem[mem[64] len floor32(mem[_19835])] = mem[_19835 + 32 len floor32(mem[_19835])]
                            var207001 = _19835 + floor32(mem[_19835]) + 32
                            mem[mem[64] + floor32(mem[_19835]) + -(mem[_19835] % 32) + 32 len mem[_19835] % 32] = mem[_19835 + floor32(mem[_19835]) + -(mem[_19835] % 32) + 64 len mem[_19835] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19838 + _19834 + -mem[64] + 96]
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
                                _22233 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22233] = return_data.size
                                mem[_22233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22233 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18637] = return_data.size
                        mem[_18637 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14655 - _14877 > _14655:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19485 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14655 - _14877
                            _19486 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19486 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19489 = mem[_19486]
                            mem[_19485 + 100 len floor32(mem[_19486])] = mem[_19486 + 32 len floor32(mem[_19486])]
                            var205001 = _19486 + floor32(mem[_19486]) + 32
                            mem[_19485 + floor32(mem[_19486]) + -(mem[_19486] % 32) + 132 len mem[_19486] % 32] = mem[_19486 + -(mem[_19486] % 32) + floor32(mem[_19486]) + 64 len mem[_19486] % 32]
                            call address(_6051).mem[_19485 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19485 + 104 len _19489 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19485 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19485 + 208 len 24]
                            else:
                                mem[_19485 + 100] = return_data.size
                                mem[_19485 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19485 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19485 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19485 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18637 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14655 - _14877 > _14655:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19843 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14655 - _14877
                            _19844 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19844 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19847 = mem[_19844]
                            mem[mem[64] len floor32(mem[_19844])] = mem[_19844 + 32 len floor32(mem[_19844])]
                            var207001 = _19844 + floor32(mem[_19844]) + 32
                            mem[mem[64] + floor32(mem[_19844]) + -(mem[_19844] % 32) + 32 len mem[_19844] % 32] = mem[_19844 + floor32(mem[_19844]) + -(mem[_19844] % 32) + 64 len mem[_19844] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19847 + _19843 + -mem[64] + 96]
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
                                _22235 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22235] = return_data.size
                                mem[_22235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22235 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
            else:
                _10282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_10282] = return_data.size
                mem[_10282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_10282 + 32]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
                    _10372 = mem[ceil32(arg4.length) + 192]
                    _14447 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14447:
                        require idx < mem[_1835]
                        _14502 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10372]
                        _14549 = mem[(32 * idx + 1) + _10372 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14575] == mem[_14575 + 12 len 20]
                        if address(s) == mem[_14575 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14762 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14762 + 36] = 0
                                mem[_14762 + 68] = _14549
                                mem[_14762 + 100] = this.address
                                mem[_14762 + 132] = 128
                                mem[_14762 + 164] = mem[_14762]
                                t = 0
                                while t < mem[_14762]:
                                    mem[_14762 + t + 196] = mem[_14762 + t + 32]
                                    _14447 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14762]) > mem[_14762]:
                                    mem[_14762 + mem[_14762] + 196] = 0
                                require ext_code.size(address(_14502))
                                call address(_14502).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14549, address(this.address), 128, mem[_14762], mem[_14762 + 196 len ceil32(mem[_14762])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token0() with:
                                        gas gas_remaining wei
                                mem[_14762 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token1() with:
                                        gas gas_remaining wei
                                mem[_14762 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14762 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14730 = mem[(32 * idx + 1) + _1835 + 32]
                                _14816 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14816 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14816 + 36] = 0
                                mem[_14816 + 68] = _14549
                                mem[_14816 + 100] = address(_14730)
                                mem[_14816 + 132] = 128
                                mem[_14816 + 164] = mem[_14816]
                                t = 0
                                while t < mem[_14816]:
                                    mem[_14816 + t + 196] = mem[_14816 + t + 32]
                                    _14447 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14816]) > mem[_14816]:
                                    mem[_14816 + mem[_14816] + 196] = 0
                                require ext_code.size(address(_14502))
                                call address(_14502).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14549, address(_14730), 128, mem[_14816], mem[_14816 + 196 len ceil32(mem[_14816])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token0() with:
                                        gas gas_remaining wei
                                mem[_14816 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token1() with:
                                        gas gas_remaining wei
                                mem[_14816 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14816 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14763 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14763 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14763 + 36] = _14549
                                mem[_14763 + 68] = 0
                                mem[_14763 + 100] = this.address
                                mem[_14763 + 132] = 128
                                mem[_14763 + 164] = mem[_14763]
                                t = 0
                                while t < mem[_14763]:
                                    mem[_14763 + t + 196] = mem[_14763 + t + 32]
                                    _14447 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14763]) > mem[_14763]:
                                    mem[_14763 + mem[_14763] + 196] = 0
                                require ext_code.size(address(_14502))
                                call address(_14502).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14549, 0, address(this.address), 128, mem[_14763], mem[_14763 + 196 len ceil32(mem[_14763])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token0() with:
                                        gas gas_remaining wei
                                mem[_14763 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token1() with:
                                        gas gas_remaining wei
                                mem[_14763 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14763 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14731 = mem[(32 * idx + 1) + _1835 + 32]
                                _14818 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14818 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14818 + 36] = _14549
                                mem[_14818 + 68] = 0
                                mem[_14818 + 100] = address(_14731)
                                mem[_14818 + 132] = 128
                                mem[_14818 + 164] = mem[_14818]
                                t = 0
                                while t < mem[_14818]:
                                    mem[_14818 + t + 196] = mem[_14818 + t + 32]
                                    _14447 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14818]) > mem[_14818]:
                                    mem[_14818 + mem[_14818] + 196] = 0
                                require ext_code.size(address(_14502))
                                call address(_14502).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14549, 0, address(_14731), 128, mem[_14818], mem[_14818 + 196 len ceil32(mem[_14818])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token0() with:
                                        gas gas_remaining wei
                                mem[_14818 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14502))
                                staticcall address(_14502).token1() with:
                                        gas gas_remaining wei
                                mem[_14818 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14818 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14447 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14661 = mem[_14623]
                    require mem[_14623] == mem[_14623]
                    _14879 = mem[ceil32(arg4.length) + 128]
                    if mem[_14623] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14955 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14879
                    _14956 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14956 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14959 = mem[_14956]
                    mem[_14955 + 100 len floor32(mem[_14956])] = mem[_14956 + 32 len floor32(mem[_14956])]
                    mem[_14955 + floor32(mem[_14956]) + -(mem[_14956] % 32) + 132 len mem[_14956] % 32] = mem[_14956 + -(mem[_14956] % 32) + floor32(mem[_14956]) + 64 len mem[_14956] % 32]
                    call address(_6051).mem[_14955 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_14955 + 104 len _14959 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14955 + 208 len 24]
                        if not mem[96]:
                            if _14661 - _14879 > _14661:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14955 + 136] = tx.origin
                            mem[_14955 + 168] = _14661 - _14879
                            mem[_14955 + 100] = 68
                            mem[_14955 + 136 len 28] = address(tx.origin) << 64
                            mem[_14955 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14955 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14661 - _14879) >> 32
                            var205001 = _14955 + 196
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14955 + 208 len 24]
                            if _14661 - _14879 > _14661:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14955 + 136] = tx.origin
                            mem[_14955 + 168] = _14661 - _14879
                            mem[_14955 + 100] = 68
                            mem[_14955 + 136 len 28] = address(tx.origin) << 64
                            mem[_14955 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14955 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14661 - _14879) >> 32
                            var207001 = _14955 + 196
                        mem[_14955 + 292 len 4] = Mask(32, 64, _14661 - _14879) >> 64
                        call address(_6051) with:
                             gas gas_remaining wei
                            args Mask(224, 32, _14661 - _14879) << 224, mem[_14955 + 264 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14955 + 308 len 24]
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14955 + 308 len 24]
                        else:
                            mem[_14955 + 200] = return_data.size
                            mem[_14955 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14955 + ceil32(return_data.size) + 309 len 24]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14955 + 232]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14955 + ceil32(return_data.size) + 309 len 24]
                    else:
                        mem[_14955 + 100] = return_data.size
                        mem[_14955 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[_14955 + ceil32(return_data.size) + 209 len 24]
                        if not return_data.size:
                            if _14661 - _14879 > _14661:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14955 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14955 + ceil32(return_data.size) + 169] = _14661 - _14879
                            mem[_14955 + ceil32(return_data.size) + 101] = 68
                            mem[_14955 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14955 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14955 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14661 - _14879) >> 32
                            var205001 = _14955 + ceil32(return_data.size) + 197
                            mem[_14955 + ceil32(return_data.size) + 293 len 4] = Mask(32, 64, _14661 - _14879) >> 64
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, _14661 - _14879) << 224, mem[_14955 + ceil32(return_data.size) + 265 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14955 + ceil32(return_data.size) + 309 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14955 + ceil32(return_data.size) + 309 len 24]
                            else:
                                mem[_14955 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_14955 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14955 + (2 * ceil32(return_data.size)) + 310 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_14955 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14955 + (2 * ceil32(return_data.size)) + 310 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_14955 + 132]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14955 + ceil32(return_data.size) + 209 len 24]
                            if _14661 - _14879 > _14661:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14955 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14955 + ceil32(return_data.size) + 169] = _14661 - _14879
                            mem[_14955 + ceil32(return_data.size) + 101] = 68
                            mem[_14955 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14955 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14955 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14661 - _14879) >> 32
                            var207001 = _14955 + ceil32(return_data.size) + 197
                            mem[_14955 + ceil32(return_data.size) + 293 len 4] = Mask(32, 64, _14661 - _14879) >> 64
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, _14661 - _14879) << 224, mem[_14955 + ceil32(return_data.size) + 265 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14955 + ceil32(return_data.size) + 309 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14955 + ceil32(return_data.size) + 309 len 24]
                            else:
                                mem[_14955 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_14955 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14955 + (2 * ceil32(return_data.size)) + 310 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_14955 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14955 + (2 * ceil32(return_data.size)) + 310 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 24]
                else:
                    _10334 = mem[ceil32(arg4.length) + 192]
                    _14446 = mem[_1835]
                    idx = 0
                    s = _6055
                    while idx < _14446:
                        require idx < mem[_1835]
                        _14499 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10334]
                        _14546 = mem[(32 * idx + 1) + _10334 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14574] == mem[_14574 + 12 len 20]
                        if address(s) == mem[_14574 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14760 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14760 + 36] = 0
                                mem[_14760 + 68] = _14546
                                mem[_14760 + 100] = this.address
                                mem[_14760 + 132] = 128
                                mem[_14760 + 164] = mem[_14760]
                                t = 0
                                while t < mem[_14760]:
                                    mem[_14760 + t + 196] = mem[_14760 + t + 32]
                                    _14446 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14760]) > mem[_14760]:
                                    mem[_14760 + mem[_14760] + 196] = 0
                                require ext_code.size(address(_14499))
                                call address(_14499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14546, address(this.address), 128, mem[_14760], mem[_14760 + 196 len ceil32(mem[_14760])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token0() with:
                                        gas gas_remaining wei
                                mem[_14760 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token1() with:
                                        gas gas_remaining wei
                                mem[_14760 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14760 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14728 = mem[(32 * idx + 1) + _1835 + 32]
                                _14812 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14812 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14812 + 36] = 0
                                mem[_14812 + 68] = _14546
                                mem[_14812 + 100] = address(_14728)
                                mem[_14812 + 132] = 128
                                mem[_14812 + 164] = mem[_14812]
                                t = 0
                                while t < mem[_14812]:
                                    mem[_14812 + t + 196] = mem[_14812 + t + 32]
                                    _14446 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14812]) > mem[_14812]:
                                    mem[_14812 + mem[_14812] + 196] = 0
                                require ext_code.size(address(_14499))
                                call address(_14499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14546, address(_14728), 128, mem[_14812], mem[_14812 + 196 len ceil32(mem[_14812])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token0() with:
                                        gas gas_remaining wei
                                mem[_14812 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token1() with:
                                        gas gas_remaining wei
                                mem[_14812 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14812 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14761 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14761 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14761 + 36] = _14546
                                mem[_14761 + 68] = 0
                                mem[_14761 + 100] = this.address
                                mem[_14761 + 132] = 128
                                mem[_14761 + 164] = mem[_14761]
                                t = 0
                                while t < mem[_14761]:
                                    mem[_14761 + t + 196] = mem[_14761 + t + 32]
                                    _14446 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14761]) > mem[_14761]:
                                    mem[_14761 + mem[_14761] + 196] = 0
                                require ext_code.size(address(_14499))
                                call address(_14499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14546, 0, address(this.address), 128, mem[_14761], mem[_14761 + 196 len ceil32(mem[_14761])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token0() with:
                                        gas gas_remaining wei
                                mem[_14761 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token1() with:
                                        gas gas_remaining wei
                                mem[_14761 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14761 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14729 = mem[(32 * idx + 1) + _1835 + 32]
                                _14814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14814 + 36] = _14546
                                mem[_14814 + 68] = 0
                                mem[_14814 + 100] = address(_14729)
                                mem[_14814 + 132] = 128
                                mem[_14814 + 164] = mem[_14814]
                                t = 0
                                while t < mem[_14814]:
                                    mem[_14814 + t + 196] = mem[_14814 + t + 32]
                                    _14446 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14814]) > mem[_14814]:
                                    mem[_14814 + mem[_14814] + 196] = 0
                                require ext_code.size(address(_14499))
                                call address(_14499).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14546, 0, address(_14729), 128, mem[_14814], mem[_14814 + 196 len ceil32(mem[_14814])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token0() with:
                                        gas gas_remaining wei
                                mem[_14814 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14499))
                                staticcall address(_14499).token1() with:
                                        gas gas_remaining wei
                                mem[_14814 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14814 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14446 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14658 = mem[_14622]
                    require mem[_14622] == mem[_14622]
                    _14878 = mem[ceil32(arg4.length) + 128]
                    if mem[_14622] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14950 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14878
                    _14951 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14951 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14954 = mem[_14951]
                    mem[mem[64] len floor32(mem[_14951])] = mem[_14951 + 32 len floor32(mem[_14951])]
                    mem[mem[64] + floor32(mem[_14951]) + -(mem[_14951] % 32) + 32 len mem[_14951] % 32] = mem[_14951 + floor32(mem[_14951]) + -(mem[_14951] % 32) + 64 len mem[_14951] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14954 + _14950 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14658 - _14878 > _14658:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19496 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14658 - _14878
                            _19497 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19497 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19500 = mem[_19497]
                            mem[_19496 + 100 len floor32(mem[_19497])] = mem[_19497 + 32 len floor32(mem[_19497])]
                            mem[_19496 + floor32(mem[_19497]) + -(mem[_19497] % 32) + 132 len mem[_19497] % 32] = mem[_19497 + -(mem[_19497] % 32) + floor32(mem[_19497]) + 64 len mem[_19497] % 32]
                            call address(_6051).mem[_19496 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19496 + 104 len _19500 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19496 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19496 + 208 len 24]
                            else:
                                mem[_19496 + 100] = return_data.size
                                mem[_19496 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19496 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19496 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19496 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14658 - _14878 > _14658:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19852 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14658 - _14878
                            _19853 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19853 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19856 = mem[_19853]
                            mem[mem[64] len floor32(mem[_19853])] = mem[_19853 + 32 len floor32(mem[_19853])]
                            var205001 = _19853 + floor32(mem[_19853]) + 32
                            mem[mem[64] + floor32(mem[_19853]) + -(mem[_19853] % 32) + 32 len mem[_19853] % 32] = mem[_19853 + floor32(mem[_19853]) + -(mem[_19853] % 32) + 64 len mem[_19853] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19856 + _19852 + -mem[64] + 96]
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
                                _22237 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22237] = return_data.size
                                mem[_22237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22237 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18638] = return_data.size
                        mem[_18638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14658 - _14878 > _14658:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19503 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14658 - _14878
                            _19504 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19504 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19507 = mem[_19504]
                            mem[mem[64] len floor32(mem[_19504])] = mem[_19504 + 32 len floor32(mem[_19504])]
                            mem[mem[64] + floor32(mem[_19504]) + -(mem[_19504] % 32) + 32 len mem[_19504] % 32] = mem[_19504 + floor32(mem[_19504]) + -(mem[_19504] % 32) + 64 len mem[_19504] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19507 + _19503 + -mem[64] + 96]
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
                                _22238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22238] = return_data.size
                                mem[_22238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22238 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18638 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14658 - _14878 > _14658:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19861 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14658 - _14878
                            _19862 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19862 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19865 = mem[_19862]
                            mem[mem[64] len floor32(mem[_19862])] = mem[_19862 + 32 len floor32(mem[_19862])]
                            var205001 = _19862 + floor32(mem[_19862]) + 32
                            mem[mem[64] + floor32(mem[_19862]) + -(mem[_19862] % 32) + 32 len mem[_19862] % 32] = mem[_19862 + floor32(mem[_19862]) + -(mem[_19862] % 32) + 64 len mem[_19862] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19865 + _19861 + -mem[64] + 96]
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
                                _22239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22239] = return_data.size
                                mem[_22239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22239 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
    else:
        if arg2 <= 0:
            _6077 = mem[64]
            mem[mem[64] + 36] = mem[_1835 + 44 len 20]
            mem[mem[64] + 68] = arg3
            _6078 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_6078 + 32 len 4] = transfer(address arg1, uint256 arg2)
            _6081 = mem[_6078]
            mem[_6077 + 100 len floor32(mem[_6078])] = mem[_6078 + 32 len floor32(mem[_6078])]
            mem[_6077 + floor32(mem[_6078]) + -(mem[_6078] % 32) + 132 len mem[_6078] % 32] = mem[_6078 + -(mem[_6078] % 32) + floor32(mem[_6078]) + 64 len mem[_6078] % 32]
            call address(_6059).mem[_6077 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_6077 + 104 len _6081 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_6077 + 208 len 24]
                if not mem[96]:
                    _10328 = mem[ceil32(arg4.length) + 192]
                    _14440 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14440:
                        require idx < mem[_1835]
                        _14481 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10328]
                        _14528 = mem[(32 * idx + 1) + _10328 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14568] == mem[_14568 + 12 len 20]
                        if address(s) == mem[_14568 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14748 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14748 + 36] = 0
                                mem[_14748 + 68] = _14528
                                mem[_14748 + 100] = this.address
                                mem[_14748 + 132] = 128
                                mem[_14748 + 164] = mem[_14748]
                                t = 0
                                while t < mem[_14748]:
                                    mem[_14748 + t + 196] = mem[_14748 + t + 32]
                                    _14440 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14748]) > mem[_14748]:
                                    mem[_14748 + mem[_14748] + 196] = 0
                                require ext_code.size(address(_14481))
                                call address(_14481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14528, address(this.address), 128, mem[_14748], mem[_14748 + 196 len ceil32(mem[_14748])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token0() with:
                                        gas gas_remaining wei
                                mem[_14748 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token1() with:
                                        gas gas_remaining wei
                                mem[_14748 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14748 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14716 = mem[(32 * idx + 1) + _1835 + 32]
                                _14788 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14788 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14788 + 36] = 0
                                mem[_14788 + 68] = _14528
                                mem[_14788 + 100] = address(_14716)
                                mem[_14788 + 132] = 128
                                mem[_14788 + 164] = mem[_14788]
                                t = 0
                                while t < mem[_14788]:
                                    mem[_14788 + t + 196] = mem[_14788 + t + 32]
                                    _14440 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14788]) > mem[_14788]:
                                    mem[_14788 + mem[_14788] + 196] = 0
                                require ext_code.size(address(_14481))
                                call address(_14481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14528, address(_14716), 128, mem[_14788], mem[_14788 + 196 len ceil32(mem[_14788])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token0() with:
                                        gas gas_remaining wei
                                mem[_14788 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token1() with:
                                        gas gas_remaining wei
                                mem[_14788 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14788 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14749 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14749 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14749 + 36] = _14528
                                mem[_14749 + 68] = 0
                                mem[_14749 + 100] = this.address
                                mem[_14749 + 132] = 128
                                mem[_14749 + 164] = mem[_14749]
                                t = 0
                                while t < mem[_14749]:
                                    mem[_14749 + t + 196] = mem[_14749 + t + 32]
                                    _14440 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14749]) > mem[_14749]:
                                    mem[_14749 + mem[_14749] + 196] = 0
                                require ext_code.size(address(_14481))
                                call address(_14481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14528, 0, address(this.address), 128, mem[_14749], mem[_14749 + 196 len ceil32(mem[_14749])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token0() with:
                                        gas gas_remaining wei
                                mem[_14749 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token1() with:
                                        gas gas_remaining wei
                                mem[_14749 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14749 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14717 = mem[(32 * idx + 1) + _1835 + 32]
                                _14790 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14790 + 36] = _14528
                                mem[_14790 + 68] = 0
                                mem[_14790 + 100] = address(_14717)
                                mem[_14790 + 132] = 128
                                mem[_14790 + 164] = mem[_14790]
                                t = 0
                                while t < mem[_14790]:
                                    mem[_14790 + t + 196] = mem[_14790 + t + 32]
                                    _14440 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14790]) > mem[_14790]:
                                    mem[_14790 + mem[_14790] + 196] = 0
                                require ext_code.size(address(_14481))
                                call address(_14481).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14528, 0, address(_14717), 128, mem[_14790], mem[_14790 + 196 len ceil32(mem[_14790])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token0() with:
                                        gas gas_remaining wei
                                mem[_14790 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14481))
                                staticcall address(_14481).token1() with:
                                        gas gas_remaining wei
                                mem[_14790 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14790 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14440 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14640 = mem[_14616]
                    require mem[_14616] == mem[_14616]
                    _14872 = mem[ceil32(arg4.length) + 128]
                    if mem[_14616] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14920 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14872
                    _14921 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14921 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14924 = mem[_14921]
                    mem[mem[64] len floor32(mem[_14921])] = mem[_14921 + 32 len floor32(mem[_14921])]
                    mem[mem[64] + floor32(mem[_14921]) + -(mem[_14921] % 32) + 32 len mem[_14921] % 32] = mem[_14921 + floor32(mem[_14921]) + -(mem[_14921] % 32) + 64 len mem[_14921] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14924 + _14920 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14640 - _14872 > _14640:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19388 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14640 - _14872
                            _19389 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19389 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19392 = mem[_19389]
                            mem[_19388 + 100 len floor32(mem[_19389])] = mem[_19389 + 32 len floor32(mem[_19389])]
                            mem[_19388 + floor32(mem[_19389]) + -(mem[_19389] % 32) + 132 len mem[_19389] % 32] = mem[_19389 + -(mem[_19389] % 32) + floor32(mem[_19389]) + 64 len mem[_19389] % 32]
                            call address(_6051).mem[_19388 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19388 + 104 len _19392 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19388 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19388 + 208 len 24]
                            else:
                                mem[_19388 + 100] = return_data.size
                                mem[_19388 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19388 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19388 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19388 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14640 - _14872 > _14640:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19744 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14640 - _14872
                            _19745 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19745 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19748 = mem[_19745]
                            mem[mem[64] len floor32(mem[_19745])] = mem[_19745 + 32 len floor32(mem[_19745])]
                            var205001 = _19745 + floor32(mem[_19745]) + 32
                            mem[mem[64] + floor32(mem[_19745]) + -(mem[_19745] % 32) + 32 len mem[_19745] % 32] = mem[_19745 + floor32(mem[_19745]) + -(mem[_19745] % 32) + 64 len mem[_19745] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19748 + _19744 + -mem[64] + 96]
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
                                _22213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22213] = return_data.size
                                mem[_22213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22213 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18632] = return_data.size
                        mem[_18632 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14640 - _14872 > _14640:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19395 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14640 - _14872
                            _19396 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19396 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19399 = mem[_19396]
                            mem[_19395 + 100 len floor32(mem[_19396])] = mem[_19396 + 32 len floor32(mem[_19396])]
                            mem[_19395 + floor32(mem[_19396]) + -(mem[_19396] % 32) + 132 len mem[_19396] % 32] = mem[_19396 + -(mem[_19396] % 32) + floor32(mem[_19396]) + 64 len mem[_19396] % 32]
                            call address(_6051).mem[_19395 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19395 + 104 len _19399 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19395 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19395 + 208 len 24]
                            else:
                                mem[_19395 + 100] = return_data.size
                                mem[_19395 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19395 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19395 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19395 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18632 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14640 - _14872 > _14640:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19753 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14640 - _14872
                            _19754 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19754 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19757 = mem[_19754]
                            mem[mem[64] len floor32(mem[_19754])] = mem[_19754 + 32 len floor32(mem[_19754])]
                            var205001 = _19754 + floor32(mem[_19754]) + 32
                            mem[mem[64] + floor32(mem[_19754]) + -(mem[_19754] % 32) + 32 len mem[_19754] % 32] = mem[_19754 + floor32(mem[_19754]) + -(mem[_19754] % 32) + 64 len mem[_19754] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19757 + _19753 + -mem[64] + 96]
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
                                _22215 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22215] = return_data.size
                                mem[_22215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22215 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_6077 + 208 len 24]
                    _10363 = mem[ceil32(arg4.length) + 192]
                    _14441 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14441:
                        require idx < mem[_1835]
                        _14484 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10363]
                        _14531 = mem[(32 * idx + 1) + _10363 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14569] == mem[_14569 + 12 len 20]
                        if address(s) == mem[_14569 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14750 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14750 + 36] = 0
                                mem[_14750 + 68] = _14531
                                mem[_14750 + 100] = this.address
                                mem[_14750 + 132] = 128
                                mem[_14750 + 164] = mem[_14750]
                                t = 0
                                while t < mem[_14750]:
                                    mem[_14750 + t + 196] = mem[_14750 + t + 32]
                                    _14441 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14750]) > mem[_14750]:
                                    mem[_14750 + mem[_14750] + 196] = 0
                                require ext_code.size(address(_14484))
                                call address(_14484).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14531, address(this.address), 128, mem[_14750], mem[_14750 + 196 len ceil32(mem[_14750])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token0() with:
                                        gas gas_remaining wei
                                mem[_14750 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token1() with:
                                        gas gas_remaining wei
                                mem[_14750 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14750 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14718 = mem[(32 * idx + 1) + _1835 + 32]
                                _14792 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14792 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14792 + 36] = 0
                                mem[_14792 + 68] = _14531
                                mem[_14792 + 100] = address(_14718)
                                mem[_14792 + 132] = 128
                                mem[_14792 + 164] = mem[_14792]
                                t = 0
                                while t < mem[_14792]:
                                    mem[_14792 + t + 196] = mem[_14792 + t + 32]
                                    _14441 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14792]) > mem[_14792]:
                                    mem[_14792 + mem[_14792] + 196] = 0
                                require ext_code.size(address(_14484))
                                call address(_14484).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14531, address(_14718), 128, mem[_14792], mem[_14792 + 196 len ceil32(mem[_14792])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token0() with:
                                        gas gas_remaining wei
                                mem[_14792 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token1() with:
                                        gas gas_remaining wei
                                mem[_14792 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14792 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14751 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14751 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14751 + 36] = _14531
                                mem[_14751 + 68] = 0
                                mem[_14751 + 100] = this.address
                                mem[_14751 + 132] = 128
                                mem[_14751 + 164] = mem[_14751]
                                t = 0
                                while t < mem[_14751]:
                                    mem[_14751 + t + 196] = mem[_14751 + t + 32]
                                    _14441 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14751]) > mem[_14751]:
                                    mem[_14751 + mem[_14751] + 196] = 0
                                require ext_code.size(address(_14484))
                                call address(_14484).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14531, 0, address(this.address), 128, mem[_14751], mem[_14751 + 196 len ceil32(mem[_14751])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token0() with:
                                        gas gas_remaining wei
                                mem[_14751 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token1() with:
                                        gas gas_remaining wei
                                mem[_14751 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14751 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14719 = mem[(32 * idx + 1) + _1835 + 32]
                                _14794 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14794 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14794 + 36] = _14531
                                mem[_14794 + 68] = 0
                                mem[_14794 + 100] = address(_14719)
                                mem[_14794 + 132] = 128
                                mem[_14794 + 164] = mem[_14794]
                                t = 0
                                while t < mem[_14794]:
                                    mem[_14794 + t + 196] = mem[_14794 + t + 32]
                                    _14441 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14794]) > mem[_14794]:
                                    mem[_14794 + mem[_14794] + 196] = 0
                                require ext_code.size(address(_14484))
                                call address(_14484).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14531, 0, address(_14719), 128, mem[_14794], mem[_14794 + 196 len ceil32(mem[_14794])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token0() with:
                                        gas gas_remaining wei
                                mem[_14794 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14484))
                                staticcall address(_14484).token1() with:
                                        gas gas_remaining wei
                                mem[_14794 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14794 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14441 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14643 = mem[_14617]
                    require mem[_14617] == mem[_14617]
                    _14873 = mem[ceil32(arg4.length) + 128]
                    if mem[_14617] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14925 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14873
                    _14926 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14926 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14929 = mem[_14926]
                    mem[mem[64] len floor32(mem[_14926])] = mem[_14926 + 32 len floor32(mem[_14926])]
                    mem[mem[64] + floor32(mem[_14926]) + -(mem[_14926] % 32) + 32 len mem[_14926] % 32] = mem[_14926 + floor32(mem[_14926]) + -(mem[_14926] % 32) + 64 len mem[_14926] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14929 + _14925 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14643 - _14873 > _14643:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19406 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14643 - _14873
                            _19407 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19407 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19410 = mem[_19407]
                            mem[mem[64] len floor32(mem[_19407])] = mem[_19407 + 32 len floor32(mem[_19407])]
                            var205001 = _19407 + floor32(mem[_19407]) + 32
                            mem[mem[64] + floor32(mem[_19407]) + -(mem[_19407] % 32) + 32 len mem[_19407] % 32] = mem[_19407 + floor32(mem[_19407]) + -(mem[_19407] % 32) + 64 len mem[_19407] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19410 + _19406 + -mem[64] + 96]
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
                                _22216 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22216] = return_data.size
                                mem[_22216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22216 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14643 - _14873 > _14643:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19762 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14643 - _14873
                            _19763 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19763 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19766 = mem[_19763]
                            mem[mem[64] len floor32(mem[_19763])] = mem[_19763 + 32 len floor32(mem[_19763])]
                            var207001 = _19763 + floor32(mem[_19763]) + 32
                            mem[mem[64] + floor32(mem[_19763]) + -(mem[_19763] % 32) + 32 len mem[_19763] % 32] = mem[_19763 + floor32(mem[_19763]) + -(mem[_19763] % 32) + 64 len mem[_19763] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19766 + _19762 + -mem[64] + 96]
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
                                _22217 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22217] = return_data.size
                                mem[_22217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22217 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18633] = return_data.size
                        mem[_18633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14643 - _14873 > _14643:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19413 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14643 - _14873
                            _19414 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19414 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19417 = mem[_19414]
                            mem[mem[64] len floor32(mem[_19414])] = mem[_19414 + 32 len floor32(mem[_19414])]
                            var205001 = _19414 + floor32(mem[_19414]) + 32
                            mem[mem[64] + floor32(mem[_19414]) + -(mem[_19414] % 32) + 32 len mem[_19414] % 32] = mem[_19414 + floor32(mem[_19414]) + -(mem[_19414] % 32) + 64 len mem[_19414] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19417 + _19413 + -mem[64] + 96]
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
                                _22218 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22218] = return_data.size
                                mem[_22218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22218 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18633 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14643 - _14873 > _14643:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19771 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14643 - _14873
                            _19772 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19772 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19775 = mem[_19772]
                            mem[mem[64] len floor32(mem[_19772])] = mem[_19772 + 32 len floor32(mem[_19772])]
                            var207001 = _19772 + floor32(mem[_19772]) + 32
                            mem[mem[64] + floor32(mem[_19772]) + -(mem[_19772] % 32) + 32 len mem[_19772] % 32] = mem[_19772 + floor32(mem[_19772]) + -(mem[_19772] % 32) + 64 len mem[_19772] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19775 + _19771 + -mem[64] + 96]
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
                                _22219 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22219] = return_data.size
                                mem[_22219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22219 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
            else:
                mem[64] = _6077 + ceil32(return_data.size) + 101
                mem[_6077 + 100] = return_data.size
                mem[_6077 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[_6077 + ceil32(return_data.size) + 209 len 24]
                if not return_data.size:
                    _10330 = mem[ceil32(arg4.length) + 192]
                    _14442 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14442:
                        require idx < mem[_1835]
                        _14487 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10330]
                        _14534 = mem[(32 * idx + 1) + _10330 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14570 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14570] == mem[_14570 + 12 len 20]
                        if address(s) == mem[_14570 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14752 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14752 + 36] = 0
                                mem[_14752 + 68] = _14534
                                mem[_14752 + 100] = this.address
                                mem[_14752 + 132] = 128
                                mem[_14752 + 164] = mem[_14752]
                                t = 0
                                while t < mem[_14752]:
                                    mem[_14752 + t + 196] = mem[_14752 + t + 32]
                                    _14442 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14752]) > mem[_14752]:
                                    mem[_14752 + mem[_14752] + 196] = 0
                                require ext_code.size(address(_14487))
                                call address(_14487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14534, address(this.address), 128, mem[_14752], mem[_14752 + 196 len ceil32(mem[_14752])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token0() with:
                                        gas gas_remaining wei
                                mem[_14752 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token1() with:
                                        gas gas_remaining wei
                                mem[_14752 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14752 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14720 = mem[(32 * idx + 1) + _1835 + 32]
                                _14796 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14796 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14796 + 36] = 0
                                mem[_14796 + 68] = _14534
                                mem[_14796 + 100] = address(_14720)
                                mem[_14796 + 132] = 128
                                mem[_14796 + 164] = mem[_14796]
                                t = 0
                                while t < mem[_14796]:
                                    mem[_14796 + t + 196] = mem[_14796 + t + 32]
                                    _14442 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14796]) > mem[_14796]:
                                    mem[_14796 + mem[_14796] + 196] = 0
                                require ext_code.size(address(_14487))
                                call address(_14487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14534, address(_14720), 128, mem[_14796], mem[_14796 + 196 len ceil32(mem[_14796])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token0() with:
                                        gas gas_remaining wei
                                mem[_14796 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token1() with:
                                        gas gas_remaining wei
                                mem[_14796 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14796 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14753 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14753 + 36] = _14534
                                mem[_14753 + 68] = 0
                                mem[_14753 + 100] = this.address
                                mem[_14753 + 132] = 128
                                mem[_14753 + 164] = mem[_14753]
                                t = 0
                                while t < mem[_14753]:
                                    mem[_14753 + t + 196] = mem[_14753 + t + 32]
                                    _14442 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14753]) > mem[_14753]:
                                    mem[_14753 + mem[_14753] + 196] = 0
                                require ext_code.size(address(_14487))
                                call address(_14487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14534, 0, address(this.address), 128, mem[_14753], mem[_14753 + 196 len ceil32(mem[_14753])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token0() with:
                                        gas gas_remaining wei
                                mem[_14753 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token1() with:
                                        gas gas_remaining wei
                                mem[_14753 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14753 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14721 = mem[(32 * idx + 1) + _1835 + 32]
                                _14798 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14798 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14798 + 36] = _14534
                                mem[_14798 + 68] = 0
                                mem[_14798 + 100] = address(_14721)
                                mem[_14798 + 132] = 128
                                mem[_14798 + 164] = mem[_14798]
                                t = 0
                                while t < mem[_14798]:
                                    mem[_14798 + t + 196] = mem[_14798 + t + 32]
                                    _14442 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14798]) > mem[_14798]:
                                    mem[_14798 + mem[_14798] + 196] = 0
                                require ext_code.size(address(_14487))
                                call address(_14487).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14534, 0, address(_14721), 128, mem[_14798], mem[_14798 + 196 len ceil32(mem[_14798])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token0() with:
                                        gas gas_remaining wei
                                mem[_14798 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14487))
                                staticcall address(_14487).token1() with:
                                        gas gas_remaining wei
                                mem[_14798 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14798 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14442 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14646 = mem[_14618]
                    require mem[_14618] == mem[_14618]
                    _14874 = mem[ceil32(arg4.length) + 128]
                    if mem[_14618] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14930 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14874
                    _14931 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14931 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14934 = mem[_14931]
                    mem[_14930 + 100 len floor32(mem[_14931])] = mem[_14931 + 32 len floor32(mem[_14931])]
                    mem[_14930 + floor32(mem[_14931]) + -(mem[_14931] % 32) + 132 len mem[_14931] % 32] = mem[_14931 + -(mem[_14931] % 32) + floor32(mem[_14931]) + 64 len mem[_14931] % 32]
                    call address(_6051).mem[_14930 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_14930 + 104 len _14934 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14930 + 208 len 24]
                        if not mem[96]:
                            if _14646 - _14874 > _14646:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14930 + 136] = tx.origin
                            mem[_14930 + 168] = _14646 - _14874
                            mem[_14930 + 100] = 68
                            mem[_14930 + 136 len 28] = address(tx.origin) << 64
                            mem[_14930 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14930 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14646 - _14874) >> 32
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14930 + 208 len 24]
                            if _14646 - _14874 > _14646:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14930 + 136] = tx.origin
                            mem[_14930 + 168] = _14646 - _14874
                            mem[_14930 + 100] = 68
                            mem[_14930 + 136 len 28] = address(tx.origin) << 64
                            mem[_14930 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14930 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14646 - _14874) >> 32
                            var205001 = _14930 + 196
                        mem[_14930 + 292 len 4] = Mask(32, 64, _14646 - _14874) >> 64
                        call address(_6051) with:
                             gas gas_remaining wei
                            args Mask(224, 32, _14646 - _14874) << 224, mem[_14930 + 264 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14930 + 308 len 24]
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14930 + 308 len 24]
                        else:
                            mem[_14930 + 200] = return_data.size
                            mem[_14930 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14930 + ceil32(return_data.size) + 309 len 24]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14930 + 232]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14930 + ceil32(return_data.size) + 309 len 24]
                    else:
                        mem[_14930 + 100] = return_data.size
                        mem[_14930 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[_14930 + ceil32(return_data.size) + 209 len 24]
                        if not return_data.size:
                            if _14646 - _14874 > _14646:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14930 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14930 + ceil32(return_data.size) + 169] = _14646 - _14874
                            mem[_14930 + ceil32(return_data.size) + 101] = 68
                            mem[_14930 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14930 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14930 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14646 - _14874) >> 32
                            mem[_14930 + ceil32(return_data.size) + 293 len 4] = Mask(32, 64, _14646 - _14874) >> 64
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, _14646 - _14874) << 224, mem[_14930 + ceil32(return_data.size) + 265 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14930 + ceil32(return_data.size) + 309 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14930 + ceil32(return_data.size) + 309 len 24]
                            else:
                                mem[_14930 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_14930 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14930 + (2 * ceil32(return_data.size)) + 310 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_14930 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14930 + (2 * ceil32(return_data.size)) + 310 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_14930 + 132]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14930 + ceil32(return_data.size) + 209 len 24]
                            if _14646 - _14874 > _14646:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14930 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14930 + ceil32(return_data.size) + 169] = _14646 - _14874
                            mem[_14930 + ceil32(return_data.size) + 101] = 68
                            mem[_14930 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14930 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14930 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14646 - _14874) >> 32
                            var205001 = _14930 + ceil32(return_data.size) + 197
                            mem[_14930 + ceil32(return_data.size) + 293 len 4] = Mask(32, 64, _14646 - _14874) >> 64
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args Mask(224, 32, _14646 - _14874) << 224, mem[_14930 + ceil32(return_data.size) + 265 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14930 + ceil32(return_data.size) + 309 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14930 + ceil32(return_data.size) + 309 len 24]
                            else:
                                mem[_14930 + ceil32(return_data.size) + 201] = return_data.size
                                mem[_14930 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14930 + (2 * ceil32(return_data.size)) + 310 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_14930 + ceil32(return_data.size) + 233]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_14930 + (2 * ceil32(return_data.size)) + 310 len 24]
                else:
                    require return_data.size >= 32
                    if not mem[_6077 + 132]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[_6077 + ceil32(return_data.size) + 209 len 24]
                    _10366 = mem[ceil32(arg4.length) + 192]
                    _14443 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14443:
                        require idx < mem[_1835]
                        _14490 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10366]
                        _14537 = mem[(32 * idx + 1) + _10366 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14571] == mem[_14571 + 12 len 20]
                        if address(s) == mem[_14571 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14754 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14754 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14754 + 36] = 0
                                mem[_14754 + 68] = _14537
                                mem[_14754 + 100] = this.address
                                mem[_14754 + 132] = 128
                                mem[_14754 + 164] = mem[_14754]
                                t = 0
                                while t < mem[_14754]:
                                    mem[_14754 + t + 196] = mem[_14754 + t + 32]
                                    _14443 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14754]) > mem[_14754]:
                                    mem[_14754 + mem[_14754] + 196] = 0
                                require ext_code.size(address(_14490))
                                call address(_14490).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14537, address(this.address), 128, mem[_14754], mem[_14754 + 196 len ceil32(mem[_14754])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token0() with:
                                        gas gas_remaining wei
                                mem[_14754 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token1() with:
                                        gas gas_remaining wei
                                mem[_14754 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14754 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14722 = mem[(32 * idx + 1) + _1835 + 32]
                                _14800 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14800 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14800 + 36] = 0
                                mem[_14800 + 68] = _14537
                                mem[_14800 + 100] = address(_14722)
                                mem[_14800 + 132] = 128
                                mem[_14800 + 164] = mem[_14800]
                                t = 0
                                while t < mem[_14800]:
                                    mem[_14800 + t + 196] = mem[_14800 + t + 32]
                                    _14443 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14800]) > mem[_14800]:
                                    mem[_14800 + mem[_14800] + 196] = 0
                                require ext_code.size(address(_14490))
                                call address(_14490).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14537, address(_14722), 128, mem[_14800], mem[_14800 + 196 len ceil32(mem[_14800])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token0() with:
                                        gas gas_remaining wei
                                mem[_14800 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token1() with:
                                        gas gas_remaining wei
                                mem[_14800 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14800 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14755 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14755 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14755 + 36] = _14537
                                mem[_14755 + 68] = 0
                                mem[_14755 + 100] = this.address
                                mem[_14755 + 132] = 128
                                mem[_14755 + 164] = mem[_14755]
                                t = 0
                                while t < mem[_14755]:
                                    mem[_14755 + t + 196] = mem[_14755 + t + 32]
                                    _14443 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14755]) > mem[_14755]:
                                    mem[_14755 + mem[_14755] + 196] = 0
                                require ext_code.size(address(_14490))
                                call address(_14490).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14537, 0, address(this.address), 128, mem[_14755], mem[_14755 + 196 len ceil32(mem[_14755])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token0() with:
                                        gas gas_remaining wei
                                mem[_14755 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token1() with:
                                        gas gas_remaining wei
                                mem[_14755 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14755 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14723 = mem[(32 * idx + 1) + _1835 + 32]
                                _14802 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14802 + 36] = _14537
                                mem[_14802 + 68] = 0
                                mem[_14802 + 100] = address(_14723)
                                mem[_14802 + 132] = 128
                                mem[_14802 + 164] = mem[_14802]
                                t = 0
                                while t < mem[_14802]:
                                    mem[_14802 + t + 196] = mem[_14802 + t + 32]
                                    _14443 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14802]) > mem[_14802]:
                                    mem[_14802 + mem[_14802] + 196] = 0
                                require ext_code.size(address(_14490))
                                call address(_14490).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14537, 0, address(_14723), 128, mem[_14802], mem[_14802 + 196 len ceil32(mem[_14802])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token0() with:
                                        gas gas_remaining wei
                                mem[_14802 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14490))
                                staticcall address(_14490).token1() with:
                                        gas gas_remaining wei
                                mem[_14802 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14802 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14443 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14649 = mem[_14619]
                    require mem[_14619] == mem[_14619]
                    _14875 = mem[ceil32(arg4.length) + 128]
                    if mem[_14619] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14935 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14875
                    _14936 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14936 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14939 = mem[_14936]
                    mem[mem[64] len floor32(mem[_14936])] = mem[_14936 + 32 len floor32(mem[_14936])]
                    mem[mem[64] + floor32(mem[_14936]) + -(mem[_14936] % 32) + 32 len mem[_14936] % 32] = mem[_14936 + floor32(mem[_14936]) + -(mem[_14936] % 32) + 64 len mem[_14936] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14939 + _14935 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14649 - _14875 > _14649:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19442 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14649 - _14875
                            _19443 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19443 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19446 = mem[_19443]
                            mem[_19442 + 100 len floor32(mem[_19443])] = mem[_19443 + 32 len floor32(mem[_19443])]
                            var205001 = _19443 + floor32(mem[_19443]) + 32
                            mem[_19442 + floor32(mem[_19443]) + -(mem[_19443] % 32) + 132 len mem[_19443] % 32] = mem[_19443 + -(mem[_19443] % 32) + floor32(mem[_19443]) + 64 len mem[_19443] % 32]
                            call address(_6051).mem[_19442 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19442 + 104 len _19446 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19442 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19442 + 208 len 24]
                            else:
                                mem[_19442 + 100] = return_data.size
                                mem[_19442 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19442 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19442 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19442 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14649 - _14875 > _14649:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19798 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14649 - _14875
                            _19799 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19799 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19802 = mem[_19799]
                            mem[_19798 + 100 len floor32(mem[_19799])] = mem[_19799 + 32 len floor32(mem[_19799])]
                            var207001 = _19799 + floor32(mem[_19799]) + 32
                            mem[_19798 + floor32(mem[_19799]) + -(mem[_19799] % 32) + 132 len mem[_19799] % 32] = mem[_19799 + -(mem[_19799] % 32) + floor32(mem[_19799]) + 64 len mem[_19799] % 32]
                            call address(_6051).mem[_19798 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19798 + 104 len _19802 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19798 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19798 + 208 len 24]
                            else:
                                mem[_19798 + 100] = return_data.size
                                mem[_19798 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19798 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19798 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19798 + ceil32(return_data.size) + 209 len 24]
                    else:
                        _18635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18635] = return_data.size
                        mem[_18635 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14649 - _14875 > _14649:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19449 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14649 - _14875
                            _19450 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19450 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19453 = mem[_19450]
                            mem[mem[64] len floor32(mem[_19450])] = mem[_19450 + 32 len floor32(mem[_19450])]
                            var205001 = _19450 + floor32(mem[_19450]) + 32
                            mem[mem[64] + floor32(mem[_19450]) + -(mem[_19450] % 32) + 32 len mem[_19450] % 32] = mem[_19450 + floor32(mem[_19450]) + -(mem[_19450] % 32) + 64 len mem[_19450] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19453 + _19449 + -mem[64] + 96]
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
                                _22226 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22226] = return_data.size
                                mem[_22226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22226 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18635 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14649 - _14875 > _14649:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19807 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14649 - _14875
                            _19808 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19808 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19811 = mem[_19808]
                            mem[mem[64] len floor32(mem[_19808])] = mem[_19808 + 32 len floor32(mem[_19808])]
                            var207001 = _19808 + floor32(mem[_19808]) + 32
                            mem[mem[64] + floor32(mem[_19808]) + -(mem[_19808] % 32) + 32 len mem[_19808] % 32] = mem[_19808 + floor32(mem[_19808]) + -(mem[_19808] % 32) + 64 len mem[_19808] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19811 + _19807 + -mem[64] + 96]
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
                                _22227 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22227] = return_data.size
                                mem[_22227 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22227 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
        else:
            _6072 = mem[64]
            mem[mem[64] + 36] = mem[_1835 + 44 len 20]
            mem[mem[64] + 68] = arg2
            _6073 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_6073 + 32 len 4] = transfer(address arg1, uint256 arg2)
            _6076 = mem[_6073]
            mem[mem[64] len floor32(mem[_6073])] = mem[_6073 + 32 len floor32(mem[_6073])]
            mem[mem[64] + floor32(mem[_6073]) + -(mem[_6073] % 32) + 32 len mem[_6073] % 32] = mem[_6073 + floor32(mem[_6073]) + -(mem[_6073] % 32) + 64 len mem[_6073] % 32]
            call address(_6059) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _6076 + _6072 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if not mem[96]:
                    _10324 = mem[ceil32(arg4.length) + 192]
                    _14436 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14436:
                        require idx < mem[_1835]
                        _14469 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10324]
                        _14516 = mem[(32 * idx + 1) + _10324 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14564] == mem[_14564 + 12 len 20]
                        if address(s) == mem[_14564 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14740 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14740 + 36] = 0
                                mem[_14740 + 68] = _14516
                                mem[_14740 + 100] = this.address
                                mem[_14740 + 132] = 128
                                mem[_14740 + 164] = mem[_14740]
                                t = 0
                                while t < mem[_14740]:
                                    mem[_14740 + t + 196] = mem[_14740 + t + 32]
                                    _14436 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14740]) > mem[_14740]:
                                    mem[_14740 + mem[_14740] + 196] = 0
                                require ext_code.size(address(_14469))
                                call address(_14469).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14516, address(this.address), 128, mem[_14740], mem[_14740 + 196 len ceil32(mem[_14740])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token0() with:
                                        gas gas_remaining wei
                                mem[_14740 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token1() with:
                                        gas gas_remaining wei
                                mem[_14740 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14740 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14708 = mem[(32 * idx + 1) + _1835 + 32]
                                _14772 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14772 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14772 + 36] = 0
                                mem[_14772 + 68] = _14516
                                mem[_14772 + 100] = address(_14708)
                                mem[_14772 + 132] = 128
                                mem[_14772 + 164] = mem[_14772]
                                t = 0
                                while t < mem[_14772]:
                                    mem[_14772 + t + 196] = mem[_14772 + t + 32]
                                    _14436 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14772]) > mem[_14772]:
                                    mem[_14772 + mem[_14772] + 196] = 0
                                require ext_code.size(address(_14469))
                                call address(_14469).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14516, address(_14708), 128, mem[_14772], mem[_14772 + 196 len ceil32(mem[_14772])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token0() with:
                                        gas gas_remaining wei
                                mem[_14772 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token1() with:
                                        gas gas_remaining wei
                                mem[_14772 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14772 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14741 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14741 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14741 + 36] = _14516
                                mem[_14741 + 68] = 0
                                mem[_14741 + 100] = this.address
                                mem[_14741 + 132] = 128
                                mem[_14741 + 164] = mem[_14741]
                                t = 0
                                while t < mem[_14741]:
                                    mem[_14741 + t + 196] = mem[_14741 + t + 32]
                                    _14436 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14741]) > mem[_14741]:
                                    mem[_14741 + mem[_14741] + 196] = 0
                                require ext_code.size(address(_14469))
                                call address(_14469).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14516, 0, address(this.address), 128, mem[_14741], mem[_14741 + 196 len ceil32(mem[_14741])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token0() with:
                                        gas gas_remaining wei
                                mem[_14741 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token1() with:
                                        gas gas_remaining wei
                                mem[_14741 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14741 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14709 = mem[(32 * idx + 1) + _1835 + 32]
                                _14774 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14774 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14774 + 36] = _14516
                                mem[_14774 + 68] = 0
                                mem[_14774 + 100] = address(_14709)
                                mem[_14774 + 132] = 128
                                mem[_14774 + 164] = mem[_14774]
                                t = 0
                                while t < mem[_14774]:
                                    mem[_14774 + t + 196] = mem[_14774 + t + 32]
                                    _14436 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14774]) > mem[_14774]:
                                    mem[_14774 + mem[_14774] + 196] = 0
                                require ext_code.size(address(_14469))
                                call address(_14469).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14516, 0, address(_14709), 128, mem[_14774], mem[_14774 + 196 len ceil32(mem[_14774])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token0() with:
                                        gas gas_remaining wei
                                mem[_14774 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14469))
                                staticcall address(_14469).token1() with:
                                        gas gas_remaining wei
                                mem[_14774 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14774 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14436 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14628 = mem[_14612]
                    require mem[_14612] == mem[_14612]
                    _14868 = mem[ceil32(arg4.length) + 128]
                    if mem[_14612] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14900 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14868
                    _14901 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14901 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14904 = mem[_14901]
                    mem[mem[64] len floor32(mem[_14901])] = mem[_14901 + 32 len floor32(mem[_14901])]
                    mem[mem[64] + floor32(mem[_14901]) + -(mem[_14901] % 32) + 32 len mem[_14901] % 32] = mem[_14901 + floor32(mem[_14901]) + -(mem[_14901] % 32) + 64 len mem[_14901] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14904 + _14900 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14628 - _14868 > _14628:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19316 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14628 - _14868
                            _19317 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19317 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19320 = mem[_19317]
                            mem[mem[64] len floor32(mem[_19317])] = mem[_19317 + 32 len floor32(mem[_19317])]
                            mem[mem[64] + floor32(mem[_19317]) + -(mem[_19317] % 32) + 32 len mem[_19317] % 32] = mem[_19317 + floor32(mem[_19317]) + -(mem[_19317] % 32) + 64 len mem[_19317] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19320 + _19316 + -mem[64] + 96]
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
                                _22196 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22196] = return_data.size
                                mem[_22196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22196 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14628 - _14868 > _14628:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19672 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14628 - _14868
                            _19673 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19673 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19676 = mem[_19673]
                            mem[mem[64] len floor32(mem[_19673])] = mem[_19673 + 32 len floor32(mem[_19673])]
                            var205001 = _19673 + floor32(mem[_19673]) + 32
                            mem[mem[64] + floor32(mem[_19673]) + -(mem[_19673] % 32) + 32 len mem[_19673] % 32] = mem[_19673 + floor32(mem[_19673]) + -(mem[_19673] % 32) + 64 len mem[_19673] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19676 + _19672 + -mem[64] + 96]
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
                                _22197 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22197] = return_data.size
                                mem[_22197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22197 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                    else:
                        _18628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18628] = return_data.size
                        mem[_18628 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14628 - _14868 > _14628:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19323 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14628 - _14868
                            _19324 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19324 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19327 = mem[_19324]
                            mem[_19323 + 100 len floor32(mem[_19324])] = mem[_19324 + 32 len floor32(mem[_19324])]
                            mem[_19323 + floor32(mem[_19324]) + -(mem[_19324] % 32) + 132 len mem[_19324] % 32] = mem[_19324 + -(mem[_19324] % 32) + floor32(mem[_19324]) + 64 len mem[_19324] % 32]
                            call address(_6051).mem[_19323 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19323 + 104 len _19327 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19323 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19323 + 208 len 24]
                            else:
                                mem[_19323 + 100] = return_data.size
                                mem[_19323 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19323 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19323 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19323 + ceil32(return_data.size) + 209 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18628 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14628 - _14868 > _14628:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19681 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14628 - _14868
                            _19682 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19682 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19685 = mem[_19682]
                            mem[mem[64] len floor32(mem[_19682])] = mem[_19682 + 32 len floor32(mem[_19682])]
                            var205001 = _19682 + floor32(mem[_19682]) + 32
                            mem[mem[64] + floor32(mem[_19682]) + -(mem[_19682] % 32) + 32 len mem[_19682] % 32] = mem[_19682 + floor32(mem[_19682]) + -(mem[_19682] % 32) + 64 len mem[_19682] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19685 + _19681 + -mem[64] + 96]
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
                                _22199 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22199] = return_data.size
                                mem[_22199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22199 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
                    _10357 = mem[ceil32(arg4.length) + 192]
                    _14437 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14437:
                        require idx < mem[_1835]
                        _14472 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10357]
                        _14519 = mem[(32 * idx + 1) + _10357 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14565] == mem[_14565 + 12 len 20]
                        if address(s) == mem[_14565 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14742 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14742 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14742 + 36] = 0
                                mem[_14742 + 68] = _14519
                                mem[_14742 + 100] = this.address
                                mem[_14742 + 132] = 128
                                mem[_14742 + 164] = mem[_14742]
                                t = 0
                                while t < mem[_14742]:
                                    mem[_14742 + t + 196] = mem[_14742 + t + 32]
                                    _14437 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14742]) > mem[_14742]:
                                    mem[_14742 + mem[_14742] + 196] = 0
                                require ext_code.size(address(_14472))
                                call address(_14472).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14519, address(this.address), 128, mem[_14742], mem[_14742 + 196 len ceil32(mem[_14742])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token0() with:
                                        gas gas_remaining wei
                                mem[_14742 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token1() with:
                                        gas gas_remaining wei
                                mem[_14742 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14742 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14710 = mem[(32 * idx + 1) + _1835 + 32]
                                _14776 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14776 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14776 + 36] = 0
                                mem[_14776 + 68] = _14519
                                mem[_14776 + 100] = address(_14710)
                                mem[_14776 + 132] = 128
                                mem[_14776 + 164] = mem[_14776]
                                t = 0
                                while t < mem[_14776]:
                                    mem[_14776 + t + 196] = mem[_14776 + t + 32]
                                    _14437 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14776]) > mem[_14776]:
                                    mem[_14776 + mem[_14776] + 196] = 0
                                require ext_code.size(address(_14472))
                                call address(_14472).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14519, address(_14710), 128, mem[_14776], mem[_14776 + 196 len ceil32(mem[_14776])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token0() with:
                                        gas gas_remaining wei
                                mem[_14776 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token1() with:
                                        gas gas_remaining wei
                                mem[_14776 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14776 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14743 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14743 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14743 + 36] = _14519
                                mem[_14743 + 68] = 0
                                mem[_14743 + 100] = this.address
                                mem[_14743 + 132] = 128
                                mem[_14743 + 164] = mem[_14743]
                                t = 0
                                while t < mem[_14743]:
                                    mem[_14743 + t + 196] = mem[_14743 + t + 32]
                                    _14437 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14743]) > mem[_14743]:
                                    mem[_14743 + mem[_14743] + 196] = 0
                                require ext_code.size(address(_14472))
                                call address(_14472).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14519, 0, address(this.address), 128, mem[_14743], mem[_14743 + 196 len ceil32(mem[_14743])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token0() with:
                                        gas gas_remaining wei
                                mem[_14743 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token1() with:
                                        gas gas_remaining wei
                                mem[_14743 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14743 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14711 = mem[(32 * idx + 1) + _1835 + 32]
                                _14778 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14778 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14778 + 36] = _14519
                                mem[_14778 + 68] = 0
                                mem[_14778 + 100] = address(_14711)
                                mem[_14778 + 132] = 128
                                mem[_14778 + 164] = mem[_14778]
                                t = 0
                                while t < mem[_14778]:
                                    mem[_14778 + t + 196] = mem[_14778 + t + 32]
                                    _14437 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14778]) > mem[_14778]:
                                    mem[_14778 + mem[_14778] + 196] = 0
                                require ext_code.size(address(_14472))
                                call address(_14472).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14519, 0, address(_14711), 128, mem[_14778], mem[_14778 + 196 len ceil32(mem[_14778])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token0() with:
                                        gas gas_remaining wei
                                mem[_14778 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14472))
                                staticcall address(_14472).token1() with:
                                        gas gas_remaining wei
                                mem[_14778 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14778 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14437 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14631 = mem[_14613]
                    require mem[_14613] == mem[_14613]
                    _14869 = mem[ceil32(arg4.length) + 128]
                    if mem[_14613] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14905 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14869
                    _14906 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14906 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14909 = mem[_14906]
                    mem[mem[64] len floor32(mem[_14906])] = mem[_14906 + 32 len floor32(mem[_14906])]
                    mem[mem[64] + floor32(mem[_14906]) + -(mem[_14906] % 32) + 32 len mem[_14906] % 32] = mem[_14906 + floor32(mem[_14906]) + -(mem[_14906] % 32) + 64 len mem[_14906] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14909 + _14905 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14631 - _14869 > _14631:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19334 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14631 - _14869
                            _19335 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19335 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19338 = mem[_19335]
                            mem[mem[64] len floor32(mem[_19335])] = mem[_19335 + 32 len floor32(mem[_19335])]
                            var205001 = _19335 + floor32(mem[_19335]) + 32
                            mem[mem[64] + floor32(mem[_19335]) + -(mem[_19335] % 32) + 32 len mem[_19335] % 32] = mem[_19335 + floor32(mem[_19335]) + -(mem[_19335] % 32) + 64 len mem[_19335] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19338 + _19334 + -mem[64] + 96]
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
                                _22200 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22200] = return_data.size
                                mem[_22200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22200 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14631 - _14869 > _14631:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19690 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14631 - _14869
                            _19691 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19691 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19694 = mem[_19691]
                            mem[_19690 + 100 len floor32(mem[_19691])] = mem[_19691 + 32 len floor32(mem[_19691])]
                            var207001 = _19691 + floor32(mem[_19691]) + 32
                            mem[_19690 + floor32(mem[_19691]) + -(mem[_19691] % 32) + 132 len mem[_19691] % 32] = mem[_19691 + -(mem[_19691] % 32) + floor32(mem[_19691]) + 64 len mem[_19691] % 32]
                            call address(_6051).mem[_19690 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19690 + 104 len _19694 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19690 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19690 + 208 len 24]
                            else:
                                mem[_19690 + 100] = return_data.size
                                mem[_19690 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19690 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19690 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19690 + ceil32(return_data.size) + 209 len 24]
                    else:
                        _18629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18629] = return_data.size
                        mem[_18629 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14631 - _14869 > _14631:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19341 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14631 - _14869
                            _19342 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19342 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19345 = mem[_19342]
                            mem[mem[64] len floor32(mem[_19342])] = mem[_19342 + 32 len floor32(mem[_19342])]
                            var205001 = _19342 + floor32(mem[_19342]) + 32
                            mem[mem[64] + floor32(mem[_19342]) + -(mem[_19342] % 32) + 32 len mem[_19342] % 32] = mem[_19342 + floor32(mem[_19342]) + -(mem[_19342] % 32) + 64 len mem[_19342] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19345 + _19341 + -mem[64] + 96]
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
                                _22202 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22202] = return_data.size
                                mem[_22202 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22202 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18629 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14631 - _14869 > _14631:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19699 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14631 - _14869
                            _19700 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19700 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19703 = mem[_19700]
                            mem[mem[64] len floor32(mem[_19700])] = mem[_19700 + 32 len floor32(mem[_19700])]
                            var207001 = _19700 + floor32(mem[_19700]) + 32
                            mem[mem[64] + floor32(mem[_19700]) + -(mem[_19700] % 32) + 32 len mem[_19700] % 32] = mem[_19700 + floor32(mem[_19700]) + -(mem[_19700] % 32) + 64 len mem[_19700] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19703 + _19699 + -mem[64] + 96]
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
                                _22203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22203] = return_data.size
                                mem[_22203 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22203 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
            else:
                _10280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_10280] = return_data.size
                mem[_10280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[mem[64] + 108 len 24]
                if not return_data.size:
                    _10326 = mem[ceil32(arg4.length) + 192]
                    _14438 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14438:
                        require idx < mem[_1835]
                        _14475 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10326]
                        _14522 = mem[(32 * idx + 1) + _10326 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14566] == mem[_14566 + 12 len 20]
                        if address(s) == mem[_14566 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14744 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14744 + 36] = 0
                                mem[_14744 + 68] = _14522
                                mem[_14744 + 100] = this.address
                                mem[_14744 + 132] = 128
                                mem[_14744 + 164] = mem[_14744]
                                t = 0
                                while t < mem[_14744]:
                                    mem[_14744 + t + 196] = mem[_14744 + t + 32]
                                    _14438 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14744]) > mem[_14744]:
                                    mem[_14744 + mem[_14744] + 196] = 0
                                require ext_code.size(address(_14475))
                                call address(_14475).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14522, address(this.address), 128, mem[_14744], mem[_14744 + 196 len ceil32(mem[_14744])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token0() with:
                                        gas gas_remaining wei
                                mem[_14744 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token1() with:
                                        gas gas_remaining wei
                                mem[_14744 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14744 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14712 = mem[(32 * idx + 1) + _1835 + 32]
                                _14780 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14780 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14780 + 36] = 0
                                mem[_14780 + 68] = _14522
                                mem[_14780 + 100] = address(_14712)
                                mem[_14780 + 132] = 128
                                mem[_14780 + 164] = mem[_14780]
                                t = 0
                                while t < mem[_14780]:
                                    mem[_14780 + t + 196] = mem[_14780 + t + 32]
                                    _14438 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14780]) > mem[_14780]:
                                    mem[_14780 + mem[_14780] + 196] = 0
                                require ext_code.size(address(_14475))
                                call address(_14475).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14522, address(_14712), 128, mem[_14780], mem[_14780 + 196 len ceil32(mem[_14780])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token0() with:
                                        gas gas_remaining wei
                                mem[_14780 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token1() with:
                                        gas gas_remaining wei
                                mem[_14780 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14780 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14745 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14745 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14745 + 36] = _14522
                                mem[_14745 + 68] = 0
                                mem[_14745 + 100] = this.address
                                mem[_14745 + 132] = 128
                                mem[_14745 + 164] = mem[_14745]
                                t = 0
                                while t < mem[_14745]:
                                    mem[_14745 + t + 196] = mem[_14745 + t + 32]
                                    _14438 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14745]) > mem[_14745]:
                                    mem[_14745 + mem[_14745] + 196] = 0
                                require ext_code.size(address(_14475))
                                call address(_14475).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14522, 0, address(this.address), 128, mem[_14745], mem[_14745 + 196 len ceil32(mem[_14745])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token0() with:
                                        gas gas_remaining wei
                                mem[_14745 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token1() with:
                                        gas gas_remaining wei
                                mem[_14745 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14745 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14713 = mem[(32 * idx + 1) + _1835 + 32]
                                _14782 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14782 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14782 + 36] = _14522
                                mem[_14782 + 68] = 0
                                mem[_14782 + 100] = address(_14713)
                                mem[_14782 + 132] = 128
                                mem[_14782 + 164] = mem[_14782]
                                t = 0
                                while t < mem[_14782]:
                                    mem[_14782 + t + 196] = mem[_14782 + t + 32]
                                    _14438 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14782]) > mem[_14782]:
                                    mem[_14782 + mem[_14782] + 196] = 0
                                require ext_code.size(address(_14475))
                                call address(_14475).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14522, 0, address(_14713), 128, mem[_14782], mem[_14782 + 196 len ceil32(mem[_14782])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token0() with:
                                        gas gas_remaining wei
                                mem[_14782 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14475))
                                staticcall address(_14475).token1() with:
                                        gas gas_remaining wei
                                mem[_14782 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14782 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14438 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14634 = mem[_14614]
                    require mem[_14614] == mem[_14614]
                    _14870 = mem[ceil32(arg4.length) + 128]
                    if mem[_14614] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14910 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14870
                    _14911 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14911 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14914 = mem[_14911]
                    mem[_14910 + 100 len floor32(mem[_14911])] = mem[_14911 + 32 len floor32(mem[_14911])]
                    mem[_14910 + floor32(mem[_14911]) + -(mem[_14911] % 32) + 132 len mem[_14911] % 32] = mem[_14911 + -(mem[_14911] % 32) + floor32(mem[_14911]) + 64 len mem[_14911] % 32]
                    call address(_6051).mem[_14910 + 100 len 4] with:
                         gas gas_remaining wei
                        args mem[_14910 + 104 len _14914 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14910 + 208 len 24]
                        if not mem[96]:
                            if _14634 - _14870 > _14634:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14910 + 136] = tx.origin
                            mem[_14910 + 168] = _14634 - _14870
                            mem[_14910 + 100] = 68
                            mem[_14910 + 136 len 28] = address(tx.origin) << 64
                            mem[_14910 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14910 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14634 - _14870) >> 32
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14910 + 208 len 24]
                            if _14634 - _14870 > _14634:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14910 + 136] = tx.origin
                            mem[_14910 + 168] = _14634 - _14870
                            mem[_14910 + 100] = 68
                            mem[_14910 + 136 len 28] = address(tx.origin) << 64
                            mem[_14910 + 132 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14910 + 200 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14634 - _14870) >> 32
                            var205001 = _14910 + 196
                        mem[_14910 + 292 len 4] = Mask(32, 64, _14634 - _14870) >> 64
                        call address(_6051) with:
                             gas gas_remaining wei
                            args Mask(224, 32, _14634 - _14870) << 224, mem[_14910 + 264 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14910 + 308 len 24]
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_14910 + 308 len 24]
                        else:
                            mem[_14910 + 200] = return_data.size
                            mem[_14910 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14910 + ceil32(return_data.size) + 309 len 24]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14910 + 232]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14910 + ceil32(return_data.size) + 309 len 24]
                    else:
                        mem[_14910 + 100] = return_data.size
                        mem[_14910 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[_14910 + ceil32(return_data.size) + 209 len 24]
                        if not return_data.size:
                            if _14634 - _14870 > _14634:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14910 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14910 + ceil32(return_data.size) + 169] = _14634 - _14870
                            mem[_14910 + ceil32(return_data.size) + 101] = 68
                            mem[_14910 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14910 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14910 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14634 - _14870) >> 32
                        else:
                            require return_data.size >= 32
                            if not mem[_14910 + 132]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14910 + ceil32(return_data.size) + 209 len 24]
                            if _14634 - _14870 > _14634:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            mem[_14910 + ceil32(return_data.size) + 137] = tx.origin
                            mem[_14910 + ceil32(return_data.size) + 169] = _14634 - _14870
                            mem[_14910 + ceil32(return_data.size) + 101] = 68
                            mem[_14910 + ceil32(return_data.size) + 137 len 28] = address(tx.origin) << 64
                            mem[_14910 + ceil32(return_data.size) + 133 len 4] = transfer(address arg1, uint256 arg2)
                            mem[_14910 + ceil32(return_data.size) + 201 len 64] = transfer(address arg1, uint256 arg2), address(tx.origin) << 64, 0, Mask(224, 32, _14634 - _14870) >> 32
                            var205001 = _14910 + ceil32(return_data.size) + 197
                        mem[_14910 + ceil32(return_data.size) + 293 len 4] = Mask(32, 64, _14634 - _14870) >> 64
                        call address(_6051) with:
                             gas gas_remaining wei
                            args Mask(224, 32, _14634 - _14870) << 224, mem[_14910 + ceil32(return_data.size) + 265 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14910 + ceil32(return_data.size) + 309 len 24]
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14910 + ceil32(return_data.size) + 309 len 24]
                        else:
                            mem[_14910 + ceil32(return_data.size) + 201] = return_data.size
                            mem[_14910 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[_14910 + (2 * ceil32(return_data.size)) + 310 len 24]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_14910 + ceil32(return_data.size) + 233]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_14910 + (2 * ceil32(return_data.size)) + 310 len 24]
                else:
                    require return_data.size >= 32
                    if not mem[_10280 + 32]:
                        revert with 0, 
                                    32,
                                    40,
                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[mem[64] + 108 len 24]
                    _10360 = mem[ceil32(arg4.length) + 192]
                    _14439 = mem[_1835]
                    idx = 0
                    s = _6059
                    while idx < _14439:
                        require idx < mem[_1835]
                        _14478 = mem[(32 * idx) + _1835 + 32]
                        require idx + 1 < mem[_10360]
                        _14525 = mem[(32 * idx + 1) + _10360 + 32]
                        require ext_code.size(mem[(32 * idx) + _1835 + 44 len 20])
                        staticcall mem[(32 * idx) + _1835 + 44 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14567 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_14567] == mem[_14567 + 12 len 20]
                        if address(s) == mem[_14567 + 12 len 20]:
                            if idx >= mem[_1835] - 1:
                                _14746 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14746 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14746 + 36] = 0
                                mem[_14746 + 68] = _14525
                                mem[_14746 + 100] = this.address
                                mem[_14746 + 132] = 128
                                mem[_14746 + 164] = mem[_14746]
                                t = 0
                                while t < mem[_14746]:
                                    mem[_14746 + t + 196] = mem[_14746 + t + 32]
                                    _14439 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14746]) > mem[_14746]:
                                    mem[_14746 + mem[_14746] + 196] = 0
                                require ext_code.size(address(_14478))
                                call address(_14478).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14525, address(this.address), 128, mem[_14746], mem[_14746 + 196 len ceil32(mem[_14746])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token0() with:
                                        gas gas_remaining wei
                                mem[_14746 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token1() with:
                                        gas gas_remaining wei
                                mem[_14746 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14746 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14714 = mem[(32 * idx + 1) + _1835 + 32]
                                _14784 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14784 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14784 + 36] = 0
                                mem[_14784 + 68] = _14525
                                mem[_14784 + 100] = address(_14714)
                                mem[_14784 + 132] = 128
                                mem[_14784 + 164] = mem[_14784]
                                t = 0
                                while t < mem[_14784]:
                                    mem[_14784 + t + 196] = mem[_14784 + t + 32]
                                    _14439 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14784]) > mem[_14784]:
                                    mem[_14784 + mem[_14784] + 196] = 0
                                require ext_code.size(address(_14478))
                                call address(_14478).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _14525, address(_14714), 128, mem[_14784], mem[_14784 + 196 len ceil32(mem[_14784])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token0() with:
                                        gas gas_remaining wei
                                mem[_14784 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token1() with:
                                        gas gas_remaining wei
                                mem[_14784 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14784 + (2 * ceil32(return_data.size)) + 32
                        else:
                            if idx >= mem[_1835] - 1:
                                _14747 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14747 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14747 + 36] = _14525
                                mem[_14747 + 68] = 0
                                mem[_14747 + 100] = this.address
                                mem[_14747 + 132] = 128
                                mem[_14747 + 164] = mem[_14747]
                                t = 0
                                while t < mem[_14747]:
                                    mem[_14747 + t + 196] = mem[_14747 + t + 32]
                                    _14439 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14747]) > mem[_14747]:
                                    mem[_14747 + mem[_14747] + 196] = 0
                                require ext_code.size(address(_14478))
                                call address(_14478).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14525, 0, address(this.address), 128, mem[_14747], mem[_14747 + 196 len ceil32(mem[_14747])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token0() with:
                                        gas gas_remaining wei
                                mem[_14747 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token1() with:
                                        gas gas_remaining wei
                                mem[_14747 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14747 + (2 * ceil32(return_data.size)) + 32
                            else:
                                require idx + 1 < mem[_1835]
                                _14715 = mem[(32 * idx + 1) + _1835 + 32]
                                _14786 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_14786 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_14786 + 36] = _14525
                                mem[_14786 + 68] = 0
                                mem[_14786 + 100] = address(_14715)
                                mem[_14786 + 132] = 128
                                mem[_14786 + 164] = mem[_14786]
                                t = 0
                                while t < mem[_14786]:
                                    mem[_14786 + t + 196] = mem[_14786 + t + 32]
                                    _14439 = mem[_1835]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_14786]) > mem[_14786]:
                                    mem[_14786 + mem[_14786] + 196] = 0
                                require ext_code.size(address(_14478))
                                call address(_14478).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _14525, 0, address(_14715), 128, mem[_14786], mem[_14786 + 196 len ceil32(mem[_14786])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token0() with:
                                        gas gas_remaining wei
                                mem[_14786 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(_14478))
                                staticcall address(_14478).token1() with:
                                        gas gas_remaining wei
                                mem[_14786 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _14786 + (2 * ceil32(return_data.size)) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        _14439 = mem[_1835]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6051))
                    staticcall address(_6051).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14637 = mem[_14615]
                    require mem[_14615] == mem[_14615]
                    _14871 = mem[ceil32(arg4.length) + 128]
                    if mem[_14615] < mem[ceil32(arg4.length) + 128]:
                        revert with 0, 'FLASHARBS: INVALID_AMOUNT_OUT'
                    _14915 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _14871
                    _14916 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_14916 + 32 len 4] = transfer(address arg1, uint256 arg2)
                    _14919 = mem[_14916]
                    mem[mem[64] len floor32(mem[_14916])] = mem[_14916 + 32 len floor32(mem[_14916])]
                    mem[mem[64] + floor32(mem[_14916]) + -(mem[_14916] % 32) + 32 len mem[_14916] % 32] = mem[_14916 + floor32(mem[_14916]) + -(mem[_14916] % 32) + 64 len mem[_14916] % 32]
                    call address(_6051) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14919 + _14915 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not mem[96]:
                            if _14637 - _14871 > _14637:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19370 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14637 - _14871
                            _19371 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19371 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19374 = mem[_19371]
                            mem[mem[64] len floor32(mem[_19371])] = mem[_19371 + 32 len floor32(mem[_19371])]
                            var205001 = _19371 + floor32(mem[_19371]) + 32
                            mem[mem[64] + floor32(mem[_19371]) + -(mem[_19371] % 32) + 32 len mem[_19371] % 32] = mem[_19371 + floor32(mem[_19371]) + -(mem[_19371] % 32) + 64 len mem[_19371] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19374 + _19370 + -mem[64] + 96]
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
                                _22208 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22208] = return_data.size
                                mem[_22208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22208 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14637 - _14871 > _14637:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19726 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14637 - _14871
                            _19727 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19727 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19730 = mem[_19727]
                            mem[_19726 + 100 len floor32(mem[_19727])] = mem[_19727 + 32 len floor32(mem[_19727])]
                            var207001 = _19727 + floor32(mem[_19727]) + 32
                            mem[_19726 + floor32(mem[_19727]) + -(mem[_19727] % 32) + 132 len mem[_19727] % 32] = mem[_19727 + -(mem[_19727] % 32) + floor32(mem[_19727]) + 64 len mem[_19727] % 32]
                            call address(_6051).mem[_19726 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_19726 + 104 len _19730 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19726 + 208 len 24]
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 40, 0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65, mem[_19726 + 208 len 24]
                            else:
                                mem[_19726 + 100] = return_data.size
                                mem[_19726 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[_19726 + ceil32(return_data.size) + 209 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_19726 + 132]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[_19726 + ceil32(return_data.size) + 209 len 24]
                    else:
                        _18631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18631] = return_data.size
                        mem[_18631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        40,
                                        0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[mem[64] + 108 len 24]
                        if not return_data.size:
                            if _14637 - _14871 > _14637:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19377 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14637 - _14871
                            _19378 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19378 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19381 = mem[_19378]
                            mem[mem[64] len floor32(mem[_19378])] = mem[_19378 + 32 len floor32(mem[_19378])]
                            var205001 = _19378 + floor32(mem[_19378]) + 32
                            mem[mem[64] + floor32(mem[_19378]) + -(mem[_19378] % 32) + 32 len mem[_19378] % 32] = mem[_19378 + floor32(mem[_19378]) + -(mem[_19378] % 32) + 64 len mem[_19378] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19381 + _19377 + -mem[64] + 96]
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
                                _22210 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22210] = return_data.size
                                mem[_22210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22210 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
                        else:
                            require return_data.size >= 32
                            if not mem[_18631 + 32]:
                                revert with 0, 
                                            32,
                                            40,
                                            0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[mem[64] + 108 len 24]
                            if _14637 - _14871 > _14637:
                                revert with 0, 'FlashArbs: ds-math-sub-underflow'
                            _19735 = mem[64]
                            mem[mem[64] + 36] = tx.origin
                            mem[mem[64] + 68] = _14637 - _14871
                            _19736 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_19736 + 32 len 4] = transfer(address arg1, uint256 arg2)
                            _19739 = mem[_19736]
                            mem[mem[64] len floor32(mem[_19736])] = mem[_19736 + 32 len floor32(mem[_19736])]
                            var207001 = _19736 + floor32(mem[_19736]) + 32
                            mem[mem[64] + floor32(mem[_19736]) + -(mem[_19736] % 32) + 32 len mem[_19736] % 32] = mem[_19736 + floor32(mem[_19736]) + -(mem[_19736] % 32) + 64 len mem[_19736] % 32]
                            call address(_6051) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _19739 + _19735 + -mem[64] + 96]
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
                                _22211 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_22211] = return_data.size
                                mem[_22211 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                40,
                                                0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                mem[mem[64] + 108 len 24]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_22211 + 32]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0xfe466c617368417262733a3a736166655472616e736665723a207472616e73666572206661696c65,
                                                    mem[mem[64] + 108 len 24]
    return memory
      from 128
       len mem[96]
}



}
