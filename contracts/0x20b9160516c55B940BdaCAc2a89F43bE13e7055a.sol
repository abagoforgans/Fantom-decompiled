contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_cd886009(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender == 0x6b2615470a606dbc879e63d1cd212282504b6c8c:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        revert with 0, 'E1'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_066df279(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.sender == 0x6b2615470a606dbc879e63d1cd212282504b6c8c:
        call address(arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg2[all]
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        revert with 0, 'E1'
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_f4a9d221(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 1
    mem[64] = 160
    mem[128] = call.data[calldata.size]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_13]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if 0 >= mem[96]:
                revert with 0, 50
            mem[128] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = 0xbe774a7100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            s = 0
            t = mem[64] + 68
            u = 128
            while s < mem[96]:
                mem[t] = mem[u]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
            call 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0xbe774a71 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4c3a512d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103 + 12 len 20]
            if 0xd4c98901563ca730332e841edbcb801fe9f2551 == mem[_103 + 12 len 20]:
                _116 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_116] = mem[_122]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_116 + 32] = mem[_137]
                mem[_116 + 64] = 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _116
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_121] == mem[_121 + 12 len 20]
                mem[mem[64] + 4] = mem[_121 + 12 len 20]
                mem[mem[64] + 36] = 0xd4c98901563ca730332e841edbcb801fe9f2551
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], 0xd4c98901563ca730332e841edbcb801fe9f2551
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == bool(mem[_138])
                if not mem[_138]:
                    _147 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_147] = mem[_158]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                    staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _174 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_147 + 32] = mem[_174]
                    mem[_147 + 64] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _147
                else:
                    _148 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_148] = mem[_159]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                    staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_148 + 32] = mem[_175]
                    mem[_148 + 64] = 1
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _148
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _100 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _100:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 224
        mem[(32 * ('cd', 4).length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var16001] = (32 * ('cd', 4).length) + 128
        s = var16001
        idx = var16002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * ('cd', 4).length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_249] == mem[_249 + 12 len 20]
            if 0xd4c98901563ca730332e841edbcb801fe9f2551 == mem[_249 + 12 len 20]:
                _253 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_253] = mem[_259]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_253 + 32] = mem[_266]
                mem[_253 + 64] = 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _253
            else:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_258] == mem[_258 + 12 len 20]
                mem[mem[64] + 4] = mem[_258 + 12 len 20]
                mem[mem[64] + 36] = 0xd4c98901563ca730332e841edbcb801fe9f2551
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], 0xd4c98901563ca730332e841edbcb801fe9f2551
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == bool(mem[_267])
                if not mem[_267]:
                    _271 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_271] = mem[_277]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                    staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_271 + 32] = mem[_285]
                    mem[_271 + 64] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _271
                else:
                    _272 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventurers_log(uint256 arg1) with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _278 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_272] = mem[_278]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3)
                    staticcall 0xf1bf34e46ecf465591b7a7fa9635e4c583174fa3.0x1bd29448 with:
                            gas gas_remaining wei
                           args cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_272 + 32] = mem[_286]
                    mem[_272 + 64] = 1
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _272
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _246 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _246:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
