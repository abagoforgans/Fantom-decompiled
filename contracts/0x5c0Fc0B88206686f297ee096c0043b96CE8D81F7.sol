contract main {




// =====================  Runtime code  =====================


#
#  - sub_05dc456b(?)
#
address stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
mapping of uint256 sub_2b779991;
mapping of uint8 stor5;
uint256 sub_ac2fc098;
uint256 BASE_MULTIPLIER;
uint256 sub_b3d3d753;
uint256 claimed;

function sub_2b779991(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2b779991[arg1]
}

function BASE_MULTIPLIER() {
    return BASE_MULTIPLIER
}

function sub_ab0ba824(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_ac2fc098(?) {
    return sub_ac2fc098
}

function sub_b3d3d753(?) {
    return sub_b3d3d753
}

function claimed() {
    return claimed
}

function _fallback() payable {
    revert
}

function sub_55e98185(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (ext_code.size(arg1) > 0)
}

function claim() {
    if sub_2b779991[address(msg.sender)] > 0:
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > sub_2b779991[address(msg.sender)]:
            sub_2b779991[address(msg.sender)] = 0
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_2b779991[address(msg.sender)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Claim(sub_2b779991[address(msg.sender)], msg.sender);
}

function sub_2e15cfef(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[96] = 0xd199515900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0xd1995159 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = sub_ac2fc098
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if idx >= _5:
            revert with 'NH{q', 50
        if stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
            if ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 128]) <= 0:
                if not s:
                    revert with 'NH{q', 17
                if idx >= _5:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[32] = 5
                stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - 1
                continue 
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[32] = 5
        if stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 128]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx >= _5:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_ac2fc098 == s:
        mem[0] = address(arg1)
        mem[32] = 5
        if not stor5[address(arg1)]:
            _205 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_205 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _205 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_205 + idx + 68] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _205 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_223] == mem[_223]
        if mem[_223] <= 5:
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_254 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _254 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_254 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _254 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).canUpgrade() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_258] == bool(mem[_258])
        if mem[_258]:
            if not arg2 % 4:
                require ext_code.size(address(arg1))
                call address(arg1).0x33e1c1b3 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg2 % 4 == 1:
                    require ext_code.size(address(arg1))
                    call address(arg1).0xccd30b5e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg2 % 4 == 2:
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa1e57253 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg2 % 4 == 3:
                            require ext_code.size(address(arg1))
                            call address(arg1).0x88e1cad5 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        sub_ac2fc098 = s
        mem[0] = address(arg1)
        mem[32] = 5
        if not stor5[address(arg1)]:
            _209 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_209 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _209 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            t = 0
            u = 0
            while t < stor2.length.field_1:
                mem[_209 + t + 68] = stor2[u].field_0
                t = t + 32
                u = u + 1
                continue 
            revert with memory
              from mem[64]
               len _209 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_226] == mem[_226]
        if mem[_226] <= 5:
            _257 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_257 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _257 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_257 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _257 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).canUpgrade() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_259] == bool(mem[_259])
        if mem[_259]:
            if not arg2 % 4:
                require ext_code.size(address(arg1))
                call address(arg1).0x33e1c1b3 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg2 % 4 == 1:
                    require ext_code.size(address(arg1))
                    call address(arg1).0xccd30b5e with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg2 % 4 == 2:
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa1e57253 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg2 % 4 == 3:
                            require ext_code.size(address(arg1))
                            call address(arg1).0x88e1cad5 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4fa8c33(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xd199515900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0xd1995159 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = sub_ac2fc098
    while idx < _5:
        if idx >= _5:
            revert with 'NH{q', 50
        if idx >= _5:
            revert with 'NH{q', 50
        if stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
            if ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 128]) <= 0:
                if not s:
                    revert with 'NH{q', 17
                if idx >= _5:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                mem[32] = 5
                stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - 1
                continue 
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[32] = 5
        if stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _5:
            revert with 'NH{q', 50
        if ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 128]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx >= _5:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_ac2fc098 == s:
        mem[0] = address(arg1)
        mem[32] = 5
        if not stor5[address(arg1)]:
            _241 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_241 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _241 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_241 + idx + 68] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _241 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_259] == mem[_259]
        if mem[_259] <= 1:
            _290 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_290 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _290 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_290 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _290 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).health() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _294 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _296 = mem[_294]
        require mem[_294] == mem[_294]
        require ext_code.size(address(arg1))
        call address(arg1).heal() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg1))
        staticcall address(arg1).health() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _318 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_318]
        require mem[_318] == mem[_318]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x91cbd001 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _332 = mem[_330]
        require mem[_330] == mem[_330]
        if _323 > _296:
            if sub_ac2fc098 and mem[_330] > -1 / sub_ac2fc098:
                revert with 'NH{q', 17
            if sub_ac2fc098 * mem[_330] and 100000 > -1 / sub_ac2fc098 * mem[_330]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_338] == mem[_338]
            if _323 < _296:
                revert with 'NH{q', 17
            if _323 - _296 and mem[_338] > -1 / _323 - _296:
                revert with 'NH{q', 17
            if not 100000 * sub_ac2fc098 * _332:
                revert with 'NH{q', 18
            if sub_2b779991[address(msg.sender)] > -((_323 * mem[_338]) - (_296 * mem[_338]) / 100000 * sub_ac2fc098 * _332) - 1:
                revert with 'NH{q', 17
            sub_2b779991[address(msg.sender)] += (_323 * mem[_338]) - (_296 * mem[_338]) / 100000 * sub_ac2fc098 * _332
            mem[mem[64]] = (_323 * mem[_338]) - (_296 * mem[_338]) / 100000 * sub_ac2fc098 * _332
            emit Earned(mem[mem[64]], msg.sender);
    else:
        sub_ac2fc098 = s
        mem[0] = address(arg1)
        mem[32] = 5
        if not stor5[address(arg1)]:
            _245 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_245 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _245 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            t = 0
            u = 0
            while t < stor2.length.field_1:
                mem[_245 + t + 68] = stor2[u].field_0
                t = t + 32
                u = u + 1
                continue 
            revert with memory
              from mem[64]
               len _245 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_262] == mem[_262]
        if mem[_262] <= 1:
            _293 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_293 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _293 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_293 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _293 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).health() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _297 = mem[_295]
        require mem[_295] == mem[_295]
        require ext_code.size(address(arg1))
        call address(arg1).heal() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg1))
        staticcall address(arg1).health() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_320]
        require mem[_320] == mem[_320]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x91cbd001 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _331 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _333 = mem[_331]
        require mem[_331] == mem[_331]
        if _325 > _297:
            if sub_ac2fc098 and mem[_331] > -1 / sub_ac2fc098:
                revert with 'NH{q', 17
            if sub_ac2fc098 * mem[_331] and 100000 > -1 / sub_ac2fc098 * mem[_331]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_339] == mem[_339]
            if _325 < _297:
                revert with 'NH{q', 17
            if _325 - _297 and mem[_339] > -1 / _325 - _297:
                revert with 'NH{q', 17
            if not 100000 * sub_ac2fc098 * _333:
                revert with 'NH{q', 18
            if sub_2b779991[address(msg.sender)] > -((_325 * mem[_339]) - (_297 * mem[_339]) / 100000 * sub_ac2fc098 * _333) - 1:
                revert with 'NH{q', 17
            sub_2b779991[address(msg.sender)] += (_325 * mem[_339]) - (_297 * mem[_339]) / 100000 * sub_ac2fc098 * _333
            mem[mem[64]] = (_325 * mem[_339]) - (_297 * mem[_339]) / 100000 * sub_ac2fc098 * _333
            emit Earned(mem[mem[64]], msg.sender);
}

function sub_e9747b0f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97] = 0xd199515900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0xd1995159 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _5 = mem[ceil32(ceil32(arg1.length)) + 97]
    require mem[ceil32(ceil32(arg1.length)) + 97] <= test266151307()
    require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 128 < ceil32(ceil32(arg1.length)) + return_data.size + 97
    _6 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 97]
    if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 97] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 97]) + 98 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 97] + 97]) + 98
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = _6
    require _5 + (32 * _6) + 32 <= return_data.size
    idx = 0
    s = ceil32(ceil32(arg1.length)) + _5 + 129
    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = sub_ac2fc098
    while idx < _6:
        if idx >= _6:
            revert with 'NH{q', 50
        if idx >= _6:
            revert with 'NH{q', 50
        if stor5[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]]:
            if ext_code.size(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]) <= 0:
                if not s:
                    revert with 'NH{q', 17
                if idx >= _6:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]
                mem[32] = 5
                stor5[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - 1
                continue 
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]
        mem[32] = 5
        if stor5[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _6:
            revert with 'NH{q', 50
        if ext_code.size(mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx >= _6:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 141 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_ac2fc098 == s:
        mem[mem[64]] = 0xd199515900000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.0xd1995159 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _153 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _159 = mem[_153]
        require mem[_153] <= test266151307()
        require _153 + mem[_153] + 31 < _153 + return_data.size
        _164 = mem[_153 + mem[_153]]
        if mem[_153 + mem[_153]] > test266151307():
            revert with 'NH{q', 65
        if _153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 1 > test266151307() or floor32(mem[_153 + mem[_153]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 1
        mem[_153 + ceil32(return_data.size)] = _164
        require _159 + (32 * _164) + 32 <= return_data.size
        idx = 0
        s = _153 + _159 + 32
        t = _153 + ceil32(return_data.size) + 32
        while idx < _164:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < _164:
            if idx >= mem[_153 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + _153 + ceil32(return_data.size) + 44 len 20]
            mem[32] = 5
            if not stor5[mem[0]]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_153 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + _153 + ceil32(return_data.size) + 44 len 20])
            staticcall mem[(32 * idx) + _153 + ceil32(return_data.size) + 44 len 20].0xd9341f2 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == bool(mem[_257])
            if not mem[_257]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_153 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if not t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
                t = 1
                continue 
            _264 = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_264))
            staticcall address(_264).trust(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == mem[_275]
            if idx >= mem[_153 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[_275] <= 10:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
                t = 1
                continue 
            _286 = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x2e4dab2900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                require ext_code.size(address(_286))
                call address(_286).0x2e4dab29 with:
                     gas gas_remaining wei
                    args address(s), Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _341 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_341] == mem[_341 + 12 len 20]
                if idx >= mem[_153 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                _351 = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
                _352 = mem[64]
                mem[mem[64]] = 32
                _361 = mem[96]
                mem[mem[64] + 32] = mem[96]
                t = 0
                while t < _361:
                    mem[_352 + t + 64] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(_361) > _361:
                    mem[_352 + _361 + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _352 + ceil32(_361) + -mem[64] + 64], address(s), address(_351)
            else:
                mem[mem[64] + mem[96] + 100] = 0
                require ext_code.size(address(_286))
                call address(_286).0x2e4dab29 with:
                     gas gas_remaining wei
                    args address(s), Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_343] == mem[_343 + 12 len 20]
                if idx >= mem[_153 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                _357 = mem[(32 * idx) + _153 + ceil32(return_data.size) + 32]
                _358 = mem[64]
                mem[mem[64]] = 32
                _363 = mem[96]
                mem[mem[64] + 32] = mem[96]
                t = 0
                while t < _363:
                    mem[_358 + t + 64] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(_363) > _363:
                    mem[_358 + _363 + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _358 + ceil32(_363) + -mem[64] + 64], address(s), address(_357)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = 0
            continue 
    else:
        sub_ac2fc098 = s
        mem[mem[64]] = 0xd199515900000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor1)
        staticcall stor1.0xd1995159 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _161 = mem[_156]
        require mem[_156] <= test266151307()
        require _156 + mem[_156] + 31 < _156 + return_data.size
        _167 = mem[_156 + mem[_156]]
        if mem[_156 + mem[_156]] > test266151307():
            revert with 'NH{q', 65
        if _156 + ceil32(return_data.size) + floor32(mem[_156 + mem[_156]]) + 1 > test266151307() or floor32(mem[_156 + mem[_156]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _156 + ceil32(return_data.size) + floor32(mem[_156 + mem[_156]]) + 1
        mem[_156 + ceil32(return_data.size)] = _167
        require _161 + (32 * _167) + 32 <= return_data.size
        idx = 0
        s = _156 + _161 + 32
        t = _156 + ceil32(return_data.size) + 32
        while idx < _167:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < _167:
            if idx >= mem[_156 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + _156 + ceil32(return_data.size) + 44 len 20]
            mem[32] = 5
            if not stor5[mem[0]]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_156 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + _156 + ceil32(return_data.size) + 44 len 20])
            staticcall mem[(32 * idx) + _156 + ceil32(return_data.size) + 44 len 20].0xd9341f2 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            if not mem[_258]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[_156 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if not t:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
                t = 1
                continue 
            _267 = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_267))
            staticcall address(_267).trust(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == mem[_276]
            if idx >= mem[_156 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if mem[_276] <= 10:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
                t = 1
                continue 
            _289 = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x2e4dab2900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            while t < mem[96]:
                mem[mem[64] + t + 100] = mem[t + 128]
                t = t + 32
                continue 
            if ceil32(mem[96]) <= mem[96]:
                require ext_code.size(address(_289))
                call address(_289).0x2e4dab29 with:
                     gas gas_remaining wei
                    args address(s), Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_342] == mem[_342 + 12 len 20]
                if idx >= mem[_156 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                _354 = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
                _355 = mem[64]
                mem[mem[64]] = 32
                _362 = mem[96]
                mem[mem[64] + 32] = mem[96]
                t = 0
                while t < _362:
                    mem[_355 + t + 64] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(_362) > _362:
                    mem[_355 + _362 + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _355 + ceil32(_362) + -mem[64] + 64], address(s), address(_354)
            else:
                mem[mem[64] + mem[96] + 100] = 0
                require ext_code.size(address(_289))
                call address(_289).0x2e4dab29 with:
                     gas gas_remaining wei
                    args address(s), Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_344] == mem[_344 + 12 len 20]
                if idx >= mem[_156 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                _359 = mem[(32 * idx) + _156 + ceil32(return_data.size) + 32]
                _360 = mem[64]
                mem[mem[64]] = 32
                _364 = mem[96]
                mem[mem[64] + 32] = mem[96]
                t = 0
                while t < _364:
                    mem[_360 + t + 64] = mem[t + 128]
                    t = t + 32
                    continue 
                if ceil32(_364) > _364:
                    mem[_360 + _364 + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _360 + ceil32(_364) + -mem[64] + 64], address(s), address(_359)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = 0
            continue 
    return 0
}

function sub_16551b2f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(ceil32(arg3.length)) + 97] = 0xd199515900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.0xd1995159 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg3.length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _5 = mem[ceil32(ceil32(arg3.length)) + 97]
    require mem[ceil32(ceil32(arg3.length)) + 97] <= test266151307()
    require ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 128 < ceil32(ceil32(arg3.length)) + return_data.size + 97
    _6 = mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 97]
    if mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 97] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 97]) + 98 > test266151307() or floor32(mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + floor32(mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 97] + 97]) + 98
    mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = _6
    require _5 + (32 * _6) + 32 <= return_data.size
    idx = 0
    s = ceil32(ceil32(arg3.length)) + _5 + 129
    t = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129
    while idx < _6:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = sub_ac2fc098
    while idx < _6:
        if idx >= _6:
            revert with 'NH{q', 50
        if idx >= _6:
            revert with 'NH{q', 50
        if stor5[mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]]:
            if ext_code.size(mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129]) <= 0:
                if not s:
                    revert with 'NH{q', 17
                if idx >= _6:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]
                mem[32] = 5
                stor5[mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - 1
                continue 
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]
        mem[32] = 5
        if stor5[mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= _6:
            revert with 'NH{q', 50
        if ext_code.size(mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx >= _6:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 141 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_ac2fc098 == s:
        if not stor5[address(arg1)]:
            _356 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_356 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _356 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            t = 0
            u = 0
            while t < stor2.length.field_1:
                mem[_356 + t + 68] = stor2[u].field_0
                t = t + 32
                u = u + 1
                continue 
            revert with memory
              from mem[64]
               len _356 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[0] = address(arg2)
        mem[32] = 5
        if not stor5[address(arg2)]:
            _361 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                t = 0
                u = 0
                while t < stor2.length.field_1:
                    mem[_361 + t + 68] = stor2[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _361 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_361 + idx + 68] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _361 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_380] == mem[_380]
        if mem[_380] <= 10:
            _423 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_423 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _423 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_423 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _423 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xd9341f2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_427] == bool(mem[_427])
        if not mem[_427]:
            return 0
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xd9341f2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_446] == bool(mem[_446])
        if not mem[_446]:
            return 0
        mem[mem[64]] = 0x2e4dab2900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = arg3.length
        mem[mem[64] + 100 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) <= arg3.length:
            require ext_code.size(address(arg1))
            call address(arg1).0x2e4dab29 with:
                 gas gas_remaining wei
                args address(arg2), Array(len=arg3.length, data=mem[mem[64] + 100 len ceil32(arg3.length)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _535 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_535] == mem[_535 + 12 len 20]
            _543 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            mem[mem[64] + 64 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                emit 0xaa4de1b2: Array(len=arg3.length, data=mem[mem[64] + 64 len ceil32(arg3.length)]), address(arg1), address(arg2)
            else:
                mem[mem[64] + arg3.length + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _543 + ceil32(arg3.length) + -mem[64] + 64], address(arg1), address(arg2)
        else:
            mem[mem[64] + arg3.length + 100] = 0
            require ext_code.size(address(arg1))
            call address(arg1).0x2e4dab29 with:
                 gas gas_remaining wei
                args address(arg2), Array(len=arg3.length, data=mem[mem[64] + 100 len ceil32(arg3.length)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _537 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_537] == mem[_537 + 12 len 20]
            _545 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            mem[mem[64] + 64 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                emit 0xaa4de1b2: Array(len=arg3.length, data=mem[mem[64] + 64 len ceil32(arg3.length)]), address(arg1), address(arg2)
            else:
                mem[mem[64] + arg3.length + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _545 + ceil32(arg3.length) + -mem[64] + 64], address(arg1), address(arg2)
    else:
        sub_ac2fc098 = s
        if not stor5[address(arg1)]:
            _362 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                t = 0
                u = 0
                while t < stor2.length.field_1:
                    mem[_362 + t + 68] = stor2[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _362 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_362 + idx + 68] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _362 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[0] = address(arg2)
        mem[32] = 5
        if not stor5[address(arg2)]:
            _366 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor2.length):
                if bool(stor2.length) == stor2.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor2.length.field_1
                if not bool(stor2.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor2.length.field_1), Mask(248, 8, stor2.length)
                if bool(stor2.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor2.length.field_1:
                    mem[_366 + idx + 68] = stor2[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _366 + ceil32(stor2.length.field_1) + -mem[64] + 68
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor2.length.field_1
            if not bool(stor2.length):
                revert with 0, 32, stor2.length % 128, Mask(248, 8, stor2.length)
            if bool(stor2.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor2.length.field_1:
                mem[_366 + idx + 68] = stor2[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _366 + ceil32(stor2.length.field_1) + -mem[64] + 68
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).trust(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_385] == mem[_385]
        if mem[_385] <= 10:
            _426 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                mem[mem[64] + 36] = stor3.length.field_1
                if not bool(stor3.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor3.length.field_1), Mask(248, 8, stor3.length)
                if bool(stor3.length) != 1:
                    revert with memory
                      from mem[64]
                       len -mem[64]
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[_426 + idx + 68] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with memory
                  from mem[64]
                   len _426 + ceil32(stor3.length.field_1) + -mem[64] + 68
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[mem[64] + 36] = stor3.length.field_1
            if not bool(stor3.length):
                revert with 0, 32, stor3.length % 128, Mask(248, 8, stor3.length)
            if bool(stor3.length) != 1:
                revert with memory
                  from mem[64]
                   len -mem[64]
            idx = 0
            s = 0
            while idx < stor3.length.field_1:
                mem[_426 + idx + 68] = stor3[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with memory
              from mem[64]
               len _426 + ceil32(stor3.length.field_1) + -mem[64] + 68
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xd9341f2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _428 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_428] == bool(mem[_428])
        if not mem[_428]:
            return 0
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xd9341f2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _449 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_449] == bool(mem[_449])
        if not mem[_449]:
            return 0
        mem[mem[64]] = 0x2e4dab2900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = arg3.length
        mem[mem[64] + 100 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if ceil32(arg3.length) <= arg3.length:
            require ext_code.size(address(arg1))
            call address(arg1).0x2e4dab29 with:
                 gas gas_remaining wei
                args address(arg2), Array(len=arg3.length, data=mem[mem[64] + 100 len ceil32(arg3.length)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_536] == mem[_536 + 12 len 20]
            _544 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            mem[mem[64] + 64 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                emit 0xaa4de1b2: Array(len=arg3.length, data=mem[mem[64] + 64 len ceil32(arg3.length)]), address(arg1), address(arg2)
            else:
                mem[mem[64] + arg3.length + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _544 + ceil32(arg3.length) + -mem[64] + 64], address(arg1), address(arg2)
        else:
            mem[mem[64] + arg3.length + 100] = 0
            require ext_code.size(address(arg1))
            call address(arg1).0x2e4dab29 with:
                 gas gas_remaining wei
                args address(arg2), Array(len=arg3.length, data=mem[mem[64] + 100 len ceil32(arg3.length)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_538] == mem[_538 + 12 len 20]
            _546 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg3.length
            mem[mem[64] + 64 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if ceil32(arg3.length) <= arg3.length:
                emit 0xaa4de1b2: Array(len=arg3.length, data=mem[mem[64] + 64 len ceil32(arg3.length)]), address(arg1), address(arg2)
            else:
                mem[mem[64] + arg3.length + 64] = 0
                emit 0xaa4de1b2: mem[mem[64] len _546 + ceil32(arg3.length) + -mem[64] + 64], address(arg1), address(arg2)
    return 1
}



}
