contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor2;
address stor3;
address stor4;
address stor5;

function sub_375ef948(?) {
    if stor5 != msg.sender:
        revert with 0, 'not owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1dd3a991(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor5 != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4907431f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if stor2[msg.sender] != 1:
        revert with 0, 'not my sender'
    if ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[96] = ('cd', 4).length
        mem[64] = (32 * ('cd', 4).length) + 128
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor4)
                staticcall stor4.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _43 = mem[_41]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 64] = block.timestamp
                emit 0x48ac483d: cd[((32 * idx) + cd[4] + 36)], _43, block.timestamp
                if block.timestamp <= _43:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                if not mem[96]:
                _53 = mem[64]
                mem[mem[64]] = 32
                _55 = mem[96]
                mem[mem[64] + 32] = mem[96]
                s = 0
                t = mem[64] + 64
                u = 128
                while s < _55:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                emit 0x8e746dfa: mem[mem[64] len _53 + (32 * _55) + -mem[64] + 64]
                _72 = mem[64]
                mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _75 = mem[96]
                mem[mem[64] + 36] = mem[96]
                s = 0
                t = mem[64] + 68
                u = 128
                while s < _75:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor3)
                call stor3.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _72 + (32 * _75) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor4)
                staticcall stor4.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _42 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _44 = mem[_42]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] + 64] = block.timestamp
                emit 0x48ac483d: cd[((32 * idx) + cd[4] + 36)], _44, block.timestamp
                if block.timestamp <= _44:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = cd[((32 * idx) + cd[4] + 36)]
                if not mem[96]:
                _54 = mem[64]
                mem[mem[64]] = 32
                _56 = mem[96]
                mem[mem[64] + 32] = mem[96]
                s = 0
                t = mem[64] + 64
                u = 128
                while s < _56:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                emit 0x8e746dfa: mem[mem[64] len _54 + (32 * _56) + -mem[64] + 64]
                _74 = mem[64]
                mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _76 = mem[96]
                mem[mem[64] + 36] = mem[96]
                s = 0
                t = mem[64] + 68
                u = 128
                while s < _76:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor3)
                call stor3.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _74 + (32 * _76) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x1dd3a991(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if stor5 != msg.sender:
                revert with 0, 'not owner'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if unknown_0x375ef948(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor5 != msg.sender:
                    revert with 0, 'not owner'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x4907431f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    mem[0] = msg.sender
                    mem[32] = 2
                    if stor2[msg.sender] != 1:
                        revert with 0, 'not my sender'
                    if ('cd', 4).length:
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        mem[64] = (32 * ('cd', 4).length) + 160
                        if not ('cd', 4).length:
                            idx = 0
                            while idx < ('cd', 4).length:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(stor4)
                                staticcall stor4.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _47 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _50 = mem[_47]
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = _50
                                mem[mem[64] + 64] = block.timestamp
                                emit 0x48ac483d: cd[((32 * idx) + cd[4] + 36)], _50, block.timestamp
                                if block.timestamp <= _50:
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if idx >= mem[128]:
                                    revert with 0, 50
                                mem[(32 * idx) + 160] = cd[((32 * idx) + cd[4] + 36)]
                                if not mem[128]:
                                _60 = mem[64]
                                mem[mem[64]] = 32
                                _62 = mem[128]
                                mem[mem[64] + 32] = mem[128]
                                s = 0
                                t = mem[64] + 64
                                u = 160
                                while s < _62:
                                    mem[t] = mem[u]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                emit 0x8e746dfa: mem[mem[64] len _60 + (32 * _62) + -mem[64] + 64]
                                _79 = mem[64]
                                mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _82 = mem[128]
                                mem[mem[64] + 36] = mem[128]
                                s = 0
                                t = mem[64] + 68
                                u = 160
                                while s < _82:
                                    mem[t] = mem[u]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor3)
                                call stor3.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _79 + (32 * _82) + -mem[64] + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                            idx = 0
                            while idx < ('cd', 4).length:
                                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                                require ext_code.size(stor4)
                                staticcall stor4.adventurers_log(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _48 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _51 = mem[_48]
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = _51
                                mem[mem[64] + 64] = block.timestamp
                                emit 0x48ac483d: cd[((32 * idx) + cd[4] + 36)], _51, block.timestamp
                                if block.timestamp <= _51:
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                if idx >= mem[128]:
                                    revert with 0, 50
                                mem[(32 * idx) + 160] = cd[((32 * idx) + cd[4] + 36)]
                                if not mem[128]:
                                _61 = mem[64]
                                mem[mem[64]] = 32
                                _63 = mem[128]
                                mem[mem[64] + 32] = mem[128]
                                s = 0
                                t = mem[64] + 64
                                u = 160
                                while s < _63:
                                    mem[t] = mem[u]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                emit 0x8e746dfa: mem[mem[64] len _61 + (32 * _63) + -mem[64] + 64]
                                _81 = mem[64]
                                mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                _83 = mem[128]
                                mem[mem[64] + 36] = mem[128]
                                s = 0
                                t = mem[64] + 68
                                u = 160
                                while s < _83:
                                    mem[t] = mem[u]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(stor3)
                                call stor3.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _81 + (32 * _83) + -mem[64] + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
}



}
