contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function finalize() {
    if stor2 != msg.sender:
        revert with 0, 'Miner: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x2e1a7d4d(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if stor2 != msg.sender:
                revert with 0, 'Miner: caller is not the owner'
            call msg.sender with:
               value cd[4] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Miner: transfer failed'
            return bool(ext_call.success)
        if unknown_0x4bb278f3(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if stor2 != msg.sender:
                revert with 0, 'Miner: caller is not the owner'
            selfdestruct(msg.sender)
        if uint32(call.func_hash) >> 224 != unknown_0x9e281a98(?????):
            require unknown_0xa6bc18f9(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if stor2 != msg.sender:
                revert with 0, 'Miner: caller is not the owner'
            stor3 = address(cd[4])
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if stor2 != msg.sender:
            revert with 0, 'Miner: caller is not the owner'
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return bool(ext_call.return_data[0])
    if unknown_0x06db4b4a(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 128
        require cd[4] <= test266151307()
        require cd[4] + 35 < calldata.size
        require ('cd', 4).length <= test266151307()
        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
        if cd[100] != 137645:
            revert with 0, 'Miner: something goes wrong'
        if 1 > !('cd', 68).length:
            revert with 0, 17
        if ('cd', 68).length + 1 > test266151307():
            revert with 0, 65
        mem[128] = ('cd', 68).length + 1
        mem[64] = (32 * ('cd', 68).length + 1) + 160
        if not ('cd', 68).length + 1:
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if s > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                require s <= s + cd[((32 * idx) + cd[68] + 36)]
                require s + cd[((32 * idx) + cd[68] + 36)] <= ('cd', 36).length
                _388 = mem[64]
                mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
                mem[_388] = cd[((32 * idx) + cd[68] + 36)]
                mem[_388 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[(32 * s) + cd[36] + 36 len 32 * cd[((32 * idx) + cd[68] + 36)]]
                mem[_388 + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32] = 0
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if s > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if cd[((32 * idx) + cd[68] + 36)] > test266151307():
                    revert with 0, 65
                _417 = mem[64]
                mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
                mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
                if not cd[((32 * idx) + cd[68] + 36)]:
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _417
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_388]:
                                revert with 0, 50
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = eth.balance(mem[(32 * t) + _388 + 32])
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                    else:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_388]:
                                revert with 0, 50
                            _664 = mem[(32 * t) + _388 + 32]
                            mem[mem[64] + 4] = mem[(32 * t) + _388 + 44 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_664)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _698 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = mem[_698]
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                else:
                    mem[_417 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[68] + 36)]]
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _417
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_388]:
                                revert with 0, 50
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = eth.balance(mem[(32 * t) + _388 + 32])
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                    else:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_388]:
                                revert with 0, 50
                            _668 = mem[(32 * t) + _388 + 32]
                            mem[mem[64] + 4] = mem[(32 * t) + _388 + 44 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_668)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = mem[_699]
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[68] + 36)]
                continue 
            _341 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_341 + 32 len 64] = call.data[calldata.size len 64]
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            mem[(32 * ('cd', 68).length) + 160] = _341
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            if 0 >= mem[_341]:
                revert with 0, 50
            mem[_341 + 32] = block.number
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            if 1 >= mem[_341]:
                revert with 0, 50
            mem[_341 + 64] = block.timestamp
            mem[_341 + 96] = 32
            _378 = mem[128]
            mem[_341 + 128] = mem[128]
            idx = 0
            s = 160
            t = _341 + 160
            u = _341 + (32 * _378) + 160
            while idx < _378:
                mem[t] = u + -_341 - 160
                _644 = mem[s]
                _645 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                w = u + 32
                x = _644 + 32
                while v < _645:
                    mem[w] = mem[x]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _645) + 32
                continue 
        else:
            mem[160] = 96
            s = 160
            idx = ('cd', 68).length + 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if s > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                require s <= s + cd[((32 * idx) + cd[68] + 36)]
                require s + cd[((32 * idx) + cd[68] + 36)] <= ('cd', 36).length
                _733 = mem[64]
                mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
                mem[_733] = cd[((32 * idx) + cd[68] + 36)]
                mem[_733 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[(32 * s) + cd[36] + 36 len 32 * cd[((32 * idx) + cd[68] + 36)]]
                mem[_733 + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32] = 0
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if s > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if cd[((32 * idx) + cd[68] + 36)] > test266151307():
                    revert with 0, 65
                _758 = mem[64]
                mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
                mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
                if not cd[((32 * idx) + cd[68] + 36)]:
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _758
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_733]:
                                revert with 0, 50
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = eth.balance(mem[(32 * t) + _733 + 32])
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                    else:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_733]:
                                revert with 0, 50
                            _882 = mem[(32 * t) + _733 + 32]
                            mem[mem[64] + 4] = mem[(32 * t) + _733 + 44 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_882)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = mem[_916]
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                else:
                    mem[_758 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[68] + 36)]]
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _758
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    if not address(cd[((32 * idx) + cd[4] + 36)]):
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_733]:
                                revert with 0, 50
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = eth.balance(mem[(32 * t) + _733 + 32])
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                    else:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        t = 0
                        while t < cd[((32 * idx) + cd[68] + 36)]:
                            if t >= mem[_733]:
                                revert with 0, 50
                            _886 = mem[(32 * t) + _733 + 32]
                            mem[mem[64] + 4] = mem[(32 * t) + _733 + 44 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_886)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[128]:
                                revert with 0, 50
                            if t >= mem[mem[(32 * idx) + 160]]:
                                revert with 0, 50
                            mem[(32 * t) + mem[(32 * idx) + 160] + 32] = mem[_917]
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[68] + 36)]
                continue 
            _650 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_650 + 32 len 64] = call.data[calldata.size len 64]
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            mem[(32 * ('cd', 68).length) + 160] = _650
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            if 0 >= mem[_650]:
                revert with 0, 50
            mem[_650 + 32] = block.number
            if ('cd', 68).length >= mem[128]:
                revert with 0, 50
            if 1 >= mem[_650]:
                revert with 0, 50
            mem[_650 + 64] = block.timestamp
            mem[_650 + 96] = 32
            _726 = mem[128]
            mem[_650 + 128] = mem[128]
            idx = 0
            s = 160
            t = _650 + 160
            u = _650 + (32 * _726) + 160
            while idx < _726:
                mem[t] = u + -_650 - 160
                _863 = mem[s]
                _864 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                w = u + 32
                x = _863 + 32
                while v < _864:
                    mem[w] = mem[x]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _864) + 32
                continue 
        return memory
          from mem[64]
           len u - mem[64]
    if uint32(call.func_hash) >> 224 != unknown_0x0b81a665(?????):
        require unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] == address(cd[4])
        if stor2 != msg.sender:
            revert with 0, 'Miner: caller is not the owner'
        stor2 = address(cd[4])
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    require cd[132] == bool(cd[132])
    if stor3 != msg.sender:
        revert with 0, 'Miner: caller is not the trader'
    if not ('cd', 4).length:
        revert with 0, 'Miner: empty path'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 36).length != ('cd', 4).length - 1:
        revert with 0, 'Miner: wrong path'
    if not cd[100]:
        mem[128] = 3
        mem[64] = 256
        mem[160 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = cd[68]
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            _433 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_433]:
                revert with 0, 50
            mem[_433 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if 1 >= mem[_433]:
                revert with 0, 50
            mem[_433 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            if stor0 == address(cd[((32 * idx) + cd[4] + 36)]):
                if 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                mem[_433 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_433 + 100] = 1
                mem[_433 + 132] = 128
                mem[_433 + 228] = mem[_433]
                t = 0
                u = _433 + 32
                v = _433 + 260
                while t < mem[_433]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_433 + 164] = stor1
                mem[_433 + 196] = block.timestamp + (24 * 3600)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                   value s wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _433 + (32 * mem[_433]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _704 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _718 = mem[_704]
                require mem[_704] <= test266151307()
                require _704 + mem[_704] + 31 < _704 + return_data.size
                _736 = mem[_704 + mem[_704]]
                if mem[_704 + mem[_704]] > test266151307():
                    revert with 0, 65
                if _704 + ceil32(return_data.size) + ceil32(32 * mem[_704 + mem[_704]]) + 1 > test266151307() or ceil32(32 * mem[_704 + mem[_704]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _704 + ceil32(return_data.size) + ceil32(32 * mem[_704 + mem[_704]]) + 1
                mem[_704 + ceil32(return_data.size)] = _736
                require (32 * _736) + _718 + 32 <= return_data.size
                t = _704 + ceil32(return_data.size) + 32
                s = _704 + _718 + 32
                while s < (32 * _736) + _704 + _718 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _736:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_704 + ceil32(return_data.size) + 64]
                continue 
            mem[_433 + 100] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_433 + 132] = s
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), s
            mem[_433 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _433 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor0 != address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if 84600 > !block.timestamp:
                    revert with 0, 17
                mem[_433 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_433 + ceil32(return_data.size) + 100] = s
                mem[_433 + ceil32(return_data.size) + 132] = 1
                mem[_433 + ceil32(return_data.size) + 164] = 160
                mem[_433 + ceil32(return_data.size) + 260] = mem[_433]
                s = 0
                t = _433 + 32
                u = _433 + ceil32(return_data.size) + 292
                while s < mem[_433]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_433 + ceil32(return_data.size) + 196] = stor1
                mem[_433 + ceil32(return_data.size) + 228] = block.timestamp + 84600
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _433 + ceil32(return_data.size) + (32 * mem[_433]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _702 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _716 = mem[_702]
                require mem[_702] <= test266151307()
                require _702 + mem[_702] + 31 < _702 + return_data.size
                _734 = mem[_702 + mem[_702]]
                if mem[_702 + mem[_702]] > test266151307():
                    revert with 0, 65
                if _702 + ceil32(return_data.size) + ceil32(32 * mem[_702 + mem[_702]]) + 1 > test266151307() or ceil32(32 * mem[_702 + mem[_702]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _702 + ceil32(return_data.size) + ceil32(32 * mem[_702 + mem[_702]]) + 1
                mem[_702 + ceil32(return_data.size)] = _734
                require (32 * _734) + _716 + 32 <= return_data.size
                t = _702 + ceil32(return_data.size) + 32
                s = _702 + _716 + 32
                while s < (32 * _734) + _702 + _716 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _734:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_702 + ceil32(return_data.size) + 64]
                continue 
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_433 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_433 + ceil32(return_data.size) + 100] = s
            mem[_433 + ceil32(return_data.size) + 132] = 1
            mem[_433 + ceil32(return_data.size) + 164] = 160
            mem[_433 + ceil32(return_data.size) + 260] = mem[_433]
            s = 0
            t = _433 + 32
            u = _433 + ceil32(return_data.size) + 292
            while s < mem[_433]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_433 + ceil32(return_data.size) + 196] = stor1
            mem[_433 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _433 + ceil32(return_data.size) + (32 * mem[_433]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _703 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _717 = mem[_703]
            require mem[_703] <= test266151307()
            require _703 + mem[_703] + 31 < _703 + return_data.size
            _735 = mem[_703 + mem[_703]]
            if mem[_703 + mem[_703]] > test266151307():
                revert with 0, 65
            if _703 + ceil32(return_data.size) + ceil32(32 * mem[_703 + mem[_703]]) + 1 > test266151307() or ceil32(32 * mem[_703 + mem[_703]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _703 + ceil32(return_data.size) + ceil32(32 * mem[_703 + mem[_703]]) + 1
            mem[_703 + ceil32(return_data.size)] = _735
            require (32 * _735) + _717 + 32 <= return_data.size
            t = _703 + ceil32(return_data.size) + 32
            s = _703 + _717 + 32
            while s < (32 * _735) + _703 + _717 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _735:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_703 + ceil32(return_data.size) + 64]
            continue 
        if not cd[100]:
            if 0 >= mem[128]:
                revert with 0, 50
            mem[160] = s
            if 1 >= mem[128]:
                revert with 0, 50
            mem[192] = block.number
            if 2 >= mem[128]:
                revert with 0, 50
            mem[224] = block.timestamp
            mem[mem[64]] = 32
            _381 = mem[128]
            mem[mem[64] + 32] = mem[128]
            mem[mem[64] + 64 len 32 * _381] = mem[160 len 32 * _381]
            return 32, mem[mem[64] + 32 len (32 * _381) + 32]
        if s <= cd[68]:
            revert with 0, 'Miner: too late'
        if 0 >= mem[128]:
            revert with 0, 50
        mem[160] = s
        if 1 >= mem[128]:
            revert with 0, 50
        mem[192] = block.number
        if 2 >= mem[128]:
            revert with 0, 50
        mem[224] = block.timestamp
        mem[mem[64]] = 32
        _389 = mem[128]
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len 32 * _389] = mem[160 len 32 * _389]
        return 32, mem[mem[64] + 32 len (32 * _389) + 32]
    if not cd[132]:
        mem[128] = 3
        mem[64] = 256
        mem[160 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = cd[68]
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            _435 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_435]:
                revert with 0, 50
            mem[_435 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if 1 >= mem[_435]:
                revert with 0, 50
            mem[_435 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            if stor0 == address(cd[((32 * idx) + cd[4] + 36)]):
                if 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                mem[_435 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_435 + 100] = 1
                mem[_435 + 132] = 128
                mem[_435 + 228] = mem[_435]
                t = 0
                u = _435 + 32
                v = _435 + 260
                while t < mem[_435]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_435 + 164] = stor1
                mem[_435 + 196] = block.timestamp + (24 * 3600)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                   value s wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _435 + (32 * mem[_435]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _707 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _721 = mem[_707]
                require mem[_707] <= test266151307()
                require _707 + mem[_707] + 31 < _707 + return_data.size
                _739 = mem[_707 + mem[_707]]
                if mem[_707 + mem[_707]] > test266151307():
                    revert with 0, 65
                if _707 + ceil32(return_data.size) + ceil32(32 * mem[_707 + mem[_707]]) + 1 > test266151307() or ceil32(32 * mem[_707 + mem[_707]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _707 + ceil32(return_data.size) + ceil32(32 * mem[_707 + mem[_707]]) + 1
                mem[_707 + ceil32(return_data.size)] = _739
                require (32 * _739) + _721 + 32 <= return_data.size
                t = _707 + ceil32(return_data.size) + 32
                s = _707 + _721 + 32
                while s < (32 * _739) + _707 + _721 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _739:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_707 + ceil32(return_data.size) + 64]
                continue 
            mem[_435 + 100] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_435 + 132] = s
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), s
            mem[_435 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _435 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor0 != address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if 84600 > !block.timestamp:
                    revert with 0, 17
                mem[_435 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_435 + ceil32(return_data.size) + 100] = s
                mem[_435 + ceil32(return_data.size) + 132] = 1
                mem[_435 + ceil32(return_data.size) + 164] = 160
                mem[_435 + ceil32(return_data.size) + 260] = mem[_435]
                s = 0
                t = _435 + 32
                u = _435 + ceil32(return_data.size) + 292
                while s < mem[_435]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_435 + ceil32(return_data.size) + 196] = stor1
                mem[_435 + ceil32(return_data.size) + 228] = block.timestamp + 84600
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _435 + ceil32(return_data.size) + (32 * mem[_435]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _705 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _719 = mem[_705]
                require mem[_705] <= test266151307()
                require _705 + mem[_705] + 31 < _705 + return_data.size
                _737 = mem[_705 + mem[_705]]
                if mem[_705 + mem[_705]] > test266151307():
                    revert with 0, 65
                if _705 + ceil32(return_data.size) + ceil32(32 * mem[_705 + mem[_705]]) + 1 > test266151307() or ceil32(32 * mem[_705 + mem[_705]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _705 + ceil32(return_data.size) + ceil32(32 * mem[_705 + mem[_705]]) + 1
                mem[_705 + ceil32(return_data.size)] = _737
                require (32 * _737) + _719 + 32 <= return_data.size
                t = _705 + ceil32(return_data.size) + 32
                s = _705 + _719 + 32
                while s < (32 * _737) + _705 + _719 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _737:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_705 + ceil32(return_data.size) + 64]
                continue 
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_435 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_435 + ceil32(return_data.size) + 100] = s
            mem[_435 + ceil32(return_data.size) + 132] = 1
            mem[_435 + ceil32(return_data.size) + 164] = 160
            mem[_435 + ceil32(return_data.size) + 260] = mem[_435]
            s = 0
            t = _435 + 32
            u = _435 + ceil32(return_data.size) + 292
            while s < mem[_435]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_435 + ceil32(return_data.size) + 196] = stor1
            mem[_435 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _435 + ceil32(return_data.size) + (32 * mem[_435]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _706 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _720 = mem[_706]
            require mem[_706] <= test266151307()
            require _706 + mem[_706] + 31 < _706 + return_data.size
            _738 = mem[_706 + mem[_706]]
            if mem[_706 + mem[_706]] > test266151307():
                revert with 0, 65
            if _706 + ceil32(return_data.size) + ceil32(32 * mem[_706 + mem[_706]]) + 1 > test266151307() or ceil32(32 * mem[_706 + mem[_706]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _706 + ceil32(return_data.size) + ceil32(32 * mem[_706 + mem[_706]]) + 1
            mem[_706 + ceil32(return_data.size)] = _738
            require (32 * _738) + _720 + 32 <= return_data.size
            t = _706 + ceil32(return_data.size) + 32
            s = _706 + _720 + 32
            while s < (32 * _738) + _706 + _720 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _738:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_706 + ceil32(return_data.size) + 64]
            continue 
        if not cd[100]:
            if 0 >= mem[128]:
                revert with 0, 50
            mem[160] = s
            if 1 >= mem[128]:
                revert with 0, 50
            mem[192] = block.number
            if 2 >= mem[128]:
                revert with 0, 50
            mem[224] = block.timestamp
            mem[mem[64]] = 32
            _383 = mem[128]
            mem[mem[64] + 32] = mem[128]
            mem[mem[64] + 64 len 32 * _383] = mem[160 len 32 * _383]
            return 32, mem[mem[64] + 32 len (32 * _383) + 32]
        if s <= cd[68]:
            revert with 0, 'Miner: too late'
        if 0 >= mem[128]:
            revert with 0, 50
        mem[160] = s
        if 1 >= mem[128]:
            revert with 0, 50
        mem[192] = block.number
        if 2 >= mem[128]:
            revert with 0, 50
        mem[224] = block.timestamp
        mem[mem[64]] = 32
        _390 = mem[128]
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64 len 32 * _390] = mem[160 len 32 * _390]
        return 32, mem[mem[64] + 32 len (32 * _390) + 32]
    if not ('cd', 4).length:
        revert with 0, 'Miner: empty path'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 36).length != ('cd', 4).length - 1:
        revert with 0, 'Miner: wrong path'
    idx = 0
    s = cd[68]
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
        _437 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_437]:
            revert with 0, 50
        mem[_437 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
        if 1 >= mem[_437]:
            revert with 0, 50
        mem[_437 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
        mem[_437 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_437 + 100] = s
        mem[_437 + 132] = 64
        mem[_437 + 164] = mem[_437]
        s = 0
        t = _437 + 32
        u = _437 + 196
        while s < mem[_437]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _437 + (32 * mem[_437]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _711 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _723 = mem[_711]
        require mem[_711] <= test266151307()
        require _711 + mem[_711] + 31 < _711 + return_data.size
        _741 = mem[_711 + mem[_711]]
        if mem[_711 + mem[_711]] > test266151307():
            revert with 0, 65
        if _711 + ceil32(return_data.size) + ceil32(32 * mem[_711 + mem[_711]]) + 1 > test266151307() or ceil32(32 * mem[_711 + mem[_711]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _711 + ceil32(return_data.size) + ceil32(32 * mem[_711 + mem[_711]]) + 1
        mem[_711 + ceil32(return_data.size)] = _741
        require (32 * _741) + _723 + 32 <= return_data.size
        t = _711 + ceil32(return_data.size) + 32
        s = _711 + _723 + 32
        while s < (32 * _741) + _711 + _723 + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if 1 >= _741:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_711 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[68]:
        revert with 0, 'Miner: too late'
    _348 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_348 + 32 len 96] = call.data[calldata.size len 96]
    t = 0
    u = cd[68]
    while t < ('cd', 36).length:
        require cd[((32 * t) + cd[36] + 36)] == address(cd[((32 * t) + cd[36] + 36)])
        if t >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * t) + cd[4] + 36)] == address(cd[((32 * t) + cd[4] + 36)])
        if 1 > !t:
            revert with 0, 17
        if t + 1 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * t + 1) + cd[4] + 36)] == address(cd[((32 * t + 1) + cd[4] + 36)])
        _785 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_785]:
            revert with 0, 50
        mem[_785 + 32] = address(cd[((32 * t) + cd[4] + 36)])
        if 1 >= mem[_785]:
            revert with 0, 50
        mem[_785 + 64] = address(cd[((32 * t + 1) + cd[4] + 36)])
        if stor0 == address(cd[((32 * t) + cd[4] + 36)]):
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_785 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_785 + 100] = 1
            mem[_785 + 132] = 128
            mem[_785 + 228] = mem[_785]
            idx = 0
            s = _785 + 32
            v = _785 + 260
            while idx < mem[_785]:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            mem[_785 + 164] = stor1
            mem[_785 + 196] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
            call address(cd[((32 * t) + cd[36] + 36)]).mem[mem[64] len 4] with:
               value u wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _785 + (32 * mem[_785]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _920 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _925 = mem[_920]
            require mem[_920] <= test266151307()
            require _920 + mem[_920] + 31 < _920 + return_data.size
            _934 = mem[_920 + mem[_920]]
            if mem[_920 + mem[_920]] > test266151307():
                revert with 0, 65
            if _920 + ceil32(return_data.size) + ceil32(32 * mem[_920 + mem[_920]]) + 1 > test266151307() or ceil32(32 * mem[_920 + mem[_920]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _920 + ceil32(return_data.size) + ceil32(32 * mem[_920 + mem[_920]]) + 1
            mem[_920 + ceil32(return_data.size)] = _934
            require (32 * _934) + _925 + 32 <= return_data.size
            s = _920 + ceil32(return_data.size) + 32
            idx = _920 + _925 + 32
            while idx < (32 * _934) + _920 + _925 + 32:
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 1 >= _934:
                revert with 0, 50
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = mem[_920 + ceil32(return_data.size) + 64]
            continue 
        mem[_785 + 100] = address(cd[((32 * t) + cd[36] + 36)])
        mem[_785 + 132] = u
        require ext_code.size(address(cd[((32 * t) + cd[4] + 36)]))
        call address(cd[((32 * t) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * t) + cd[36] + 36)]), u
        mem[_785 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _785 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor0 != address(cd[((32 * t + 1) + cd[4] + 36)]):
            if 84600 > !block.timestamp:
                revert with 0, 17
            mem[_785 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_785 + ceil32(return_data.size) + 100] = u
            mem[_785 + ceil32(return_data.size) + 132] = 1
            mem[_785 + ceil32(return_data.size) + 164] = 160
            mem[_785 + ceil32(return_data.size) + 260] = mem[_785]
            v = 0
            w = _785 + 32
            x = _785 + ceil32(return_data.size) + 292
            while v < mem[_785]:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[_785 + ceil32(return_data.size) + 196] = stor1
            mem[_785 + ceil32(return_data.size) + 228] = block.timestamp + 84600
            require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
            call address(cd[((32 * t) + cd[36] + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args u, 1, 160, stor1, block.timestamp + 84600, mem[_785 + ceil32(return_data.size) + 260 len (32 * mem[_785]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_785 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _785 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _923 = mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32
            require mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 <= test266151307()
            require _785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 127 < _785 + ceil32(return_data.size) + return_data.size + 96
            _932 = mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]
            if mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96] > test266151307():
                revert with 0, 65
            if _785 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = _785 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 97
            mem[_785 + (2 * ceil32(return_data.size)) + 96] = _932
            require (32 * _932) + _923 + 32 <= return_data.size
            s = _785 + (2 * ceil32(return_data.size)) + 128
            idx = _785 + ceil32(return_data.size) + _923 + 128
            while idx < (32 * _932) + _785 + ceil32(return_data.size) + _923 + 128:
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 1 >= _932:
                revert with 0, 50
        else:
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_785 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_785 + ceil32(return_data.size) + 100] = u
            mem[_785 + ceil32(return_data.size) + 132] = 1
            mem[_785 + ceil32(return_data.size) + 164] = 160
            mem[_785 + ceil32(return_data.size) + 260] = mem[_785]
            v = 0
            w = _785 + 32
            x = _785 + ceil32(return_data.size) + 292
            while v < mem[_785]:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[_785 + ceil32(return_data.size) + 196] = stor1
            mem[_785 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
            call address(cd[((32 * t) + cd[36] + 36)]).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args u, 1, 160, stor1, block.timestamp + (24 * 3600), mem[_785 + ceil32(return_data.size) + 260 len (32 * mem[_785]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_785 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _785 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _924 = mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32
            require mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 <= test266151307()
            require _785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 127 < _785 + ceil32(return_data.size) + return_data.size + 96
            _933 = mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]
            if mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96] > test266151307():
                revert with 0, 65
            if _785 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = _785 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_785 + ceil32(return_data.size) + mem[_785 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, u) >> 32 + 96]) + 97
            mem[_785 + (2 * ceil32(return_data.size)) + 96] = _933
            require (32 * _933) + _924 + 32 <= return_data.size
            s = _785 + (2 * ceil32(return_data.size)) + 128
            idx = _785 + ceil32(return_data.size) + _924 + 128
            while idx < (32 * _933) + _785 + ceil32(return_data.size) + _924 + 128:
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 1 >= _933:
                revert with 0, 50
        if t == -1:
            revert with 0, 17
        t = t + 1
        u = mem[_785 + (2 * ceil32(return_data.size)) + 160]
        continue 
    if not cd[100]:
        if 0 >= mem[_348]:
            revert with 0, 50
        mem[_348 + 32] = u
        if 1 >= mem[_348]:
            revert with 0, 50
        mem[_348 + 64] = block.number
        if 2 >= mem[_348]:
            revert with 0, 50
        mem[_348 + 96] = block.timestamp
        mem[mem[64]] = 32
        _727 = mem[_348]
        mem[mem[64] + 32] = mem[_348]
        mem[mem[64] + 64 len 32 * _727] = mem[_348 + 32 len 32 * _727]
        return 32, mem[mem[64] + 32 len (32 * _727) + 32]
    if u <= cd[68]:
        revert with 0, 'Miner: too late'
    if 0 >= mem[_348]:
        revert with 0, 50
    mem[_348 + 32] = u
    if 1 >= mem[_348]:
        revert with 0, 50
    mem[_348 + 64] = block.number
    if 2 >= mem[_348]:
        revert with 0, 50
    mem[_348 + 96] = block.timestamp
    mem[mem[64]] = 32
    _740 = mem[_348]
    mem[mem[64] + 32] = mem[_348]
    mem[mem[64] + 64 len 32 * _740] = mem[_348 + 32 len 32 * _740]
    return 32, mem[mem[64] + 32 len (32 * _740) + 32]
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Miner: caller is not the owner'
    stor2 = arg1
}

function setTrader(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Miner: caller is not the owner'
    stor3 = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Miner: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Miner: transfer failed'
    return bool(ext_call.success)
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Miner: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_06db4b4a(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[100] != 137645:
        revert with 0, 'Miner: something goes wrong'
    if 1 > !('cd', 68).length:
        revert with 0, 17
    if ('cd', 68).length + 1 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length + 1
    mem[64] = (32 * ('cd', 68).length + 1) + 128
    if not ('cd', 68).length + 1:
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if s > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            require s <= s + cd[((32 * idx) + cd[68] + 36)]
            require s + cd[((32 * idx) + cd[68] + 36)] <= ('cd', 36).length
            _124 = mem[64]
            mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
            mem[_124] = cd[((32 * idx) + cd[68] + 36)]
            mem[_124 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[(32 * s) + cd[36] + 36 len 32 * cd[((32 * idx) + cd[68] + 36)]]
            mem[_124 + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32] = 0
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if s > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            if cd[((32 * idx) + cd[68] + 36)] > test266151307():
                revert with 0, 65
            _135 = mem[64]
            mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
            mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
            if not cd[((32 * idx) + cd[68] + 36)]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _135
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_124]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = eth.balance(mem[(32 * t) + _124 + 32])
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                else:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_124]:
                            revert with 0, 50
                        _221 = mem[(32 * t) + _124 + 32]
                        mem[mem[64] + 4] = mem[(32 * t) + _124 + 44 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_221)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = mem[_240]
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
            else:
                mem[_135 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[68] + 36)]]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _135
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_124]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = eth.balance(mem[(32 * t) + _124 + 32])
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                else:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_124]:
                            revert with 0, 50
                        _225 = mem[(32 * t) + _124 + 32]
                        mem[mem[64] + 4] = mem[(32 * t) + _124 + 44 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_225)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = mem[_241]
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + cd[((32 * idx) + cd[68] + 36)]
            continue 
        _106 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_106 + 32 len 64] = call.data[calldata.size len 64]
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        mem[(32 * ('cd', 68).length) + 128] = _106
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        if 0 >= mem[_106]:
            revert with 0, 50
        mem[_106 + 32] = block.number
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        if 1 >= mem[_106]:
            revert with 0, 50
        mem[_106 + 64] = block.timestamp
        mem[_106 + 96] = 32
        _121 = mem[96]
        mem[_106 + 128] = mem[96]
        idx = 0
        s = 128
        t = _106 + 160
        u = _106 + (32 * mem[96]) + 160
        while idx < _121:
            mem[t] = u + -_106 - 160
            _212 = mem[s]
            _213 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _212 + 32
            while v < _213:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _213) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 68).length + 1
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if s > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            require s <= s + cd[((32 * idx) + cd[68] + 36)]
            require s + cd[((32 * idx) + cd[68] + 36)] <= ('cd', 36).length
            _254 = mem[64]
            mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
            mem[_254] = cd[((32 * idx) + cd[68] + 36)]
            mem[_254 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[(32 * s) + cd[36] + 36 len 32 * cd[((32 * idx) + cd[68] + 36)]]
            mem[_254 + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32] = 0
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if s > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            if cd[((32 * idx) + cd[68] + 36)] > test266151307():
                revert with 0, 65
            _260 = mem[64]
            mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
            mem[64] = mem[64] + (32 * cd[((32 * idx) + cd[68] + 36)]) + 32
            if not cd[((32 * idx) + cd[68] + 36)]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _260
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_254]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = eth.balance(mem[(32 * t) + _254 + 32])
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                else:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_254]:
                            revert with 0, 50
                        _307 = mem[(32 * t) + _254 + 32]
                        mem[mem[64] + 4] = mem[(32 * t) + _254 + 44 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_307)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = mem[_322]
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
            else:
                mem[_260 + 32 len 32 * cd[((32 * idx) + cd[68] + 36)]] = call.data[calldata.size len 32 * cd[((32 * idx) + cd[68] + 36)]]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _260
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not address(cd[((32 * idx) + cd[4] + 36)]):
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_254]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = eth.balance(mem[(32 * t) + _254 + 32])
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
                else:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    t = 0
                    while t < cd[((32 * idx) + cd[68] + 36)]:
                        if t >= mem[_254]:
                            revert with 0, 50
                        _311 = mem[(32 * t) + _254 + 32]
                        mem[mem[64] + 4] = mem[(32 * t) + _254 + 44 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_311)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[96]:
                            revert with 0, 50
                        if t >= mem[mem[(32 * idx) + 128]]:
                            revert with 0, 50
                        mem[(32 * t) + mem[(32 * idx) + 128] + 32] = mem[_323]
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + cd[((32 * idx) + cd[68] + 36)]
            continue 
        _218 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_218 + 32 len 64] = call.data[calldata.size len 64]
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        mem[(32 * ('cd', 68).length) + 128] = _218
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        if 0 >= mem[_218]:
            revert with 0, 50
        mem[_218 + 32] = block.number
        if ('cd', 68).length >= mem[96]:
            revert with 0, 50
        if 1 >= mem[_218]:
            revert with 0, 50
        mem[_218 + 64] = block.timestamp
        mem[_218 + 96] = 32
        _249 = mem[96]
        mem[_218 + 128] = mem[96]
        idx = 0
        s = 128
        t = _218 + 160
        u = _218 + (32 * mem[96]) + 160
        while idx < _249:
            mem[t] = u + -_218 - 160
            _300 = mem[s]
            _301 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _300 + 32
            while v < _301:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _301) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_0b81a665(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == bool(cd[100])
    require cd[132] == bool(cd[132])
    if stor3 != msg.sender:
        revert with 0, 'Miner: caller is not the trader'
    if not ('cd', 4).length:
        revert with 0, 'Miner: empty path'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 36).length != ('cd', 4).length - 1:
        revert with 0, 'Miner: wrong path'
    if not cd[100]:
        mem[96] = 3
        mem[64] = 224
        mem[128 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = cd[68]
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            _261 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_261]:
                revert with 0, 50
            mem[_261 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if 1 >= mem[_261]:
                revert with 0, 50
            mem[_261 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            if stor0 == address(cd[((32 * idx) + cd[4] + 36)]):
                if 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                mem[_261 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_261 + 100] = 1
                mem[_261 + 132] = 128
                mem[_261 + 228] = mem[_261]
                t = 0
                u = _261 + 32
                v = _261 + 260
                while t < mem[_261]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_261 + 164] = stor1
                mem[_261 + 196] = block.timestamp + (24 * 3600)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                   value s wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _261 + (32 * mem[_261]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _435 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _446 = mem[_435]
                require mem[_435] <= test266151307()
                require _435 + mem[_435] + 31 < _435 + return_data.size
                _456 = mem[_435 + mem[_435]]
                if mem[_435 + mem[_435]] > test266151307():
                    revert with 0, 65
                if _435 + ceil32(return_data.size) + ceil32(32 * mem[_435 + mem[_435]]) + 1 > test266151307() or ceil32(32 * mem[_435 + mem[_435]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _435 + ceil32(return_data.size) + ceil32(32 * mem[_435 + mem[_435]]) + 1
                mem[_435 + ceil32(return_data.size)] = _456
                require (32 * _456) + _446 + 32 <= return_data.size
                t = _435 + ceil32(return_data.size) + 32
                s = _435 + _446 + 32
                while s < (32 * _456) + _435 + _446 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _456:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_435 + ceil32(return_data.size) + 64]
                continue 
            mem[_261 + 100] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_261 + 132] = s
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), s
            mem[_261 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _261 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor0 != address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if 84600 > !block.timestamp:
                    revert with 0, 17
                mem[_261 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_261 + ceil32(return_data.size) + 100] = s
                mem[_261 + ceil32(return_data.size) + 132] = 1
                mem[_261 + ceil32(return_data.size) + 164] = 160
                mem[_261 + ceil32(return_data.size) + 260] = mem[_261]
                t = 0
                u = _261 + 32
                v = _261 + ceil32(return_data.size) + 292
                while t < mem[_261]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_261 + ceil32(return_data.size) + 196] = stor1
                mem[_261 + ceil32(return_data.size) + 228] = block.timestamp + 84600
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, stor1, block.timestamp + 84600, mem[_261 + ceil32(return_data.size) + 260 len (32 * mem[_261]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_261 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _261 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _444 = mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
                require _261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _261 + ceil32(return_data.size) + return_data.size + 96
                _454 = mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                if mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if _261 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _261 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 97
                mem[_261 + (2 * ceil32(return_data.size)) + 96] = mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                require (32 * _454) + _444 + 32 <= return_data.size
                t = _261 + (2 * ceil32(return_data.size)) + 128
                s = _261 + ceil32(return_data.size) + _444 + 128
                while s < (32 * _454) + _261 + ceil32(return_data.size) + _444 + 128:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _454:
                    revert with 0, 50
            else:
                if 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                mem[_261 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_261 + ceil32(return_data.size) + 100] = s
                mem[_261 + ceil32(return_data.size) + 132] = 1
                mem[_261 + ceil32(return_data.size) + 164] = 160
                mem[_261 + ceil32(return_data.size) + 260] = mem[_261]
                t = 0
                u = _261 + 32
                v = _261 + ceil32(return_data.size) + 292
                while t < mem[_261]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_261 + ceil32(return_data.size) + 196] = stor1
                mem[_261 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args s, 1, 160, stor1, block.timestamp + (24 * 3600), mem[_261 + ceil32(return_data.size) + 260 len (32 * mem[_261]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_261 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _261 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _445 = mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
                require _261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _261 + ceil32(return_data.size) + return_data.size + 96
                _455 = mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                if mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] > test266151307():
                    revert with 0, 65
                if _261 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _261 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 97
                mem[_261 + (2 * ceil32(return_data.size)) + 96] = mem[_261 + ceil32(return_data.size) + mem[_261 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                require (32 * _455) + _445 + 32 <= return_data.size
                t = _261 + (2 * ceil32(return_data.size)) + 128
                s = _261 + ceil32(return_data.size) + _445 + 128
                while s < (32 * _455) + _261 + ceil32(return_data.size) + _445 + 128:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _455:
                    revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_261 + (2 * ceil32(return_data.size)) + 160]
            continue 
        if cd[100]:
            if s <= cd[68]:
                revert with 0, 'Miner: too late'
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = s
        if 1 >= mem[96]:
            revert with 0, 50
        mem[160] = block.number
        if 2 >= mem[96]:
            revert with 0, 50
        mem[192] = block.timestamp
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
    if not cd[132]:
        mem[96] = 3
        mem[64] = 224
        mem[128 len 96] = call.data[calldata.size len 96]
        idx = 0
        s = cd[68]
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            _263 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_263]:
                revert with 0, 50
            mem[_263 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            if 1 >= mem[_263]:
                revert with 0, 50
            mem[_263 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            if stor0 == address(cd[((32 * idx) + cd[4] + 36)]):
                if 24 * 3600 > !block.timestamp:
                    revert with 0, 17
                mem[_263 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[_263 + 100] = 1
                mem[_263 + 132] = 128
                mem[_263 + 228] = mem[_263]
                t = 0
                u = _263 + 32
                v = _263 + 260
                while t < mem[_263]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_263 + 164] = stor1
                mem[_263 + 196] = block.timestamp + (24 * 3600)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                   value s wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _263 + (32 * mem[_263]) + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _449 = mem[_438]
                require mem[_438] <= test266151307()
                require _438 + mem[_438] + 31 < _438 + return_data.size
                _459 = mem[_438 + mem[_438]]
                if mem[_438 + mem[_438]] > test266151307():
                    revert with 0, 65
                if _438 + ceil32(return_data.size) + ceil32(32 * mem[_438 + mem[_438]]) + 1 > test266151307() or ceil32(32 * mem[_438 + mem[_438]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _438 + ceil32(return_data.size) + ceil32(32 * mem[_438 + mem[_438]]) + 1
                mem[_438 + ceil32(return_data.size)] = _459
                require (32 * _459) + _449 + 32 <= return_data.size
                t = _438 + ceil32(return_data.size) + 32
                s = _438 + _449 + 32
                while s < (32 * _459) + _438 + _449 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _459:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_438 + ceil32(return_data.size) + 64]
                continue 
            mem[_263 + 100] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_263 + 132] = s
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), s
            mem[_263 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _263 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor0 != address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if 84600 > !block.timestamp:
                    revert with 0, 17
                mem[_263 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_263 + ceil32(return_data.size) + 100] = s
                mem[_263 + ceil32(return_data.size) + 132] = 1
                mem[_263 + ceil32(return_data.size) + 164] = 160
                mem[_263 + ceil32(return_data.size) + 260] = mem[_263]
                s = 0
                t = _263 + 32
                u = _263 + ceil32(return_data.size) + 292
                while s < mem[_263]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_263 + ceil32(return_data.size) + 196] = stor1
                mem[_263 + ceil32(return_data.size) + 228] = block.timestamp + 84600
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _263 + ceil32(return_data.size) + (32 * mem[_263]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _436 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _447 = mem[_436]
                require mem[_436] <= test266151307()
                require _436 + mem[_436] + 31 < _436 + return_data.size
                _457 = mem[_436 + mem[_436]]
                if mem[_436 + mem[_436]] > test266151307():
                    revert with 0, 65
                if _436 + ceil32(return_data.size) + ceil32(32 * mem[_436 + mem[_436]]) + 1 > test266151307() or ceil32(32 * mem[_436 + mem[_436]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _436 + ceil32(return_data.size) + ceil32(32 * mem[_436 + mem[_436]]) + 1
                mem[_436 + ceil32(return_data.size)] = _457
                require (32 * _457) + _447 + 32 <= return_data.size
                t = _436 + ceil32(return_data.size) + 32
                s = _436 + _447 + 32
                while s < (32 * _457) + _436 + _447 + 32:
                    mem[t] = mem[s]
                    t = t + 32
                    s = s + 32
                    continue 
                if 1 >= _457:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_436 + ceil32(return_data.size) + 64]
                continue 
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_263 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[_263 + ceil32(return_data.size) + 100] = s
            mem[_263 + ceil32(return_data.size) + 132] = 1
            mem[_263 + ceil32(return_data.size) + 164] = 160
            mem[_263 + ceil32(return_data.size) + 260] = mem[_263]
            s = 0
            t = _263 + 32
            u = _263 + ceil32(return_data.size) + 292
            while s < mem[_263]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_263 + ceil32(return_data.size) + 196] = stor1
            mem[_263 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _263 + ceil32(return_data.size) + (32 * mem[_263]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _437 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _448 = mem[_437]
            require mem[_437] <= test266151307()
            require _437 + mem[_437] + 31 < _437 + return_data.size
            _458 = mem[_437 + mem[_437]]
            if mem[_437 + mem[_437]] > test266151307():
                revert with 0, 65
            if _437 + ceil32(return_data.size) + ceil32(32 * mem[_437 + mem[_437]]) + 1 > test266151307() or ceil32(32 * mem[_437 + mem[_437]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _437 + ceil32(return_data.size) + ceil32(32 * mem[_437 + mem[_437]]) + 1
            mem[_437 + ceil32(return_data.size)] = _458
            require (32 * _458) + _448 + 32 <= return_data.size
            t = _437 + ceil32(return_data.size) + 32
            s = _437 + _448 + 32
            while s < (32 * _458) + _437 + _448 + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if 1 >= _458:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_437 + ceil32(return_data.size) + 64]
            continue 
        if cd[100]:
            if s <= cd[68]:
                revert with 0, 'Miner: too late'
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = s
        if 1 >= mem[96]:
            revert with 0, 50
        mem[160] = block.number
        if 2 >= mem[96]:
            revert with 0, 50
        mem[192] = block.timestamp
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
    if not ('cd', 4).length:
        revert with 0, 'Miner: empty path'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 36).length != ('cd', 4).length - 1:
        revert with 0, 'Miner: wrong path'
    idx = 0
    s = cd[68]
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
        _265 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_265]:
            revert with 0, 50
        mem[_265 + 32] = address(cd[((32 * idx) + cd[4] + 36)])
        if 1 >= mem[_265]:
            revert with 0, 50
        mem[_265 + 64] = address(cd[((32 * idx + 1) + cd[4] + 36)])
        mem[_265 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_265 + 100] = s
        mem[_265 + 132] = 64
        mem[_265 + 164] = mem[_265]
        s = 0
        t = _265 + 32
        u = _265 + 196
        while s < mem[_265]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _265 + (32 * mem[_265]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _442 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _451 = mem[_442]
        require mem[_442] <= test266151307()
        require _442 + mem[_442] + 31 < _442 + return_data.size
        _461 = mem[_442 + mem[_442]]
        if mem[_442 + mem[_442]] > test266151307():
            revert with 0, 65
        if _442 + ceil32(return_data.size) + ceil32(32 * mem[_442 + mem[_442]]) + 1 > test266151307() or ceil32(32 * mem[_442 + mem[_442]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _442 + ceil32(return_data.size) + ceil32(32 * mem[_442 + mem[_442]]) + 1
        mem[_442 + ceil32(return_data.size)] = _461
        require (32 * _461) + _451 + 32 <= return_data.size
        t = _442 + ceil32(return_data.size) + 32
        s = _442 + _451 + 32
        while s < (32 * _461) + _442 + _451 + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if 1 >= _461:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_442 + ceil32(return_data.size) + 64]
        continue 
    if s <= cd[68]:
        revert with 0, 'Miner: too late'
    _212 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_212 + 32 len 96] = call.data[calldata.size len 96]
    t = 0
    u = cd[68]
    while t < ('cd', 36).length:
        require cd[((32 * t) + cd[36] + 36)] == address(cd[((32 * t) + cd[36] + 36)])
        if t >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * t) + cd[4] + 36)] == address(cd[((32 * t) + cd[4] + 36)])
        if 1 > !t:
            revert with 0, 17
        if t + 1 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * t + 1) + cd[4] + 36)] == address(cd[((32 * t + 1) + cd[4] + 36)])
        _494 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_494]:
            revert with 0, 50
        mem[_494 + 32] = address(cd[((32 * t) + cd[4] + 36)])
        if 1 >= mem[_494]:
            revert with 0, 50
        mem[_494 + 64] = address(cd[((32 * t + 1) + cd[4] + 36)])
        if stor0 == address(cd[((32 * t) + cd[4] + 36)]):
            if 24 * 3600 > !block.timestamp:
                revert with 0, 17
            mem[_494 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[_494 + 100] = 1
            mem[_494 + 132] = 128
            mem[_494 + 228] = mem[_494]
            idx = 0
            s = _494 + 32
            v = _494 + 260
            while idx < mem[_494]:
                mem[v] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                v = v + 32
                continue 
            mem[_494 + 164] = stor1
            mem[_494 + 196] = block.timestamp + (24 * 3600)
            require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
            call address(cd[((32 * t) + cd[36] + 36)]).mem[mem[64] len 4] with:
               value u wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _494 + (32 * mem[_494]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _574 = mem[_571]
            require mem[_571] <= test266151307()
            require _571 + mem[_571] + 31 < _571 + return_data.size
            _577 = mem[_571 + mem[_571]]
            if mem[_571 + mem[_571]] > test266151307():
                revert with 0, 65
            if _571 + ceil32(return_data.size) + ceil32(32 * mem[_571 + mem[_571]]) + 1 > test266151307() or ceil32(32 * mem[_571 + mem[_571]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _571 + ceil32(return_data.size) + ceil32(32 * mem[_571 + mem[_571]]) + 1
            mem[_571 + ceil32(return_data.size)] = _577
            require (32 * _577) + _574 + 32 <= return_data.size
            s = _571 + ceil32(return_data.size) + 32
            idx = _571 + _574 + 32
            while idx < (32 * _577) + _571 + _574 + 32:
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 1 >= _577:
                revert with 0, 50
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = mem[_571 + ceil32(return_data.size) + 64]
            continue 
        mem[_494 + 100] = address(cd[((32 * t) + cd[36] + 36)])
        mem[_494 + 132] = u
        require ext_code.size(address(cd[((32 * t) + cd[4] + 36)]))
        call address(cd[((32 * t) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * t) + cd[36] + 36)]), u
        mem[_494 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _494 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor0 != address(cd[((32 * t + 1) + cd[4] + 36)]):
            if 84600 > !block.timestamp:
                revert with 0, 17
            mem[_494 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_494 + ceil32(return_data.size) + 100] = u
            mem[_494 + ceil32(return_data.size) + 132] = 1
            mem[_494 + ceil32(return_data.size) + 164] = 160
            mem[_494 + ceil32(return_data.size) + 260] = mem[_494]
            u = 0
            v = _494 + 32
            w = _494 + ceil32(return_data.size) + 292
            while u < mem[_494]:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_494 + ceil32(return_data.size) + 196] = stor1
            mem[_494 + ceil32(return_data.size) + 228] = block.timestamp + 84600
            require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
            call address(cd[((32 * t) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _494 + ceil32(return_data.size) + (32 * mem[_494]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _569 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _572 = mem[_569]
            require mem[_569] <= test266151307()
            require _569 + mem[_569] + 31 < _569 + return_data.size
            _575 = mem[_569 + mem[_569]]
            if mem[_569 + mem[_569]] > test266151307():
                revert with 0, 65
            if _569 + ceil32(return_data.size) + ceil32(32 * mem[_569 + mem[_569]]) + 1 > test266151307() or ceil32(32 * mem[_569 + mem[_569]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _569 + ceil32(return_data.size) + ceil32(32 * mem[_569 + mem[_569]]) + 1
            mem[_569 + ceil32(return_data.size)] = _575
            require (32 * _575) + _572 + 32 <= return_data.size
            s = _569 + ceil32(return_data.size) + 32
            idx = _569 + _572 + 32
            while idx < (32 * _575) + _569 + _572 + 32:
                mem[s] = mem[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 1 >= _575:
                revert with 0, 50
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = mem[_569 + ceil32(return_data.size) + 64]
            continue 
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[_494 + ceil32(return_data.size) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_494 + ceil32(return_data.size) + 100] = u
        mem[_494 + ceil32(return_data.size) + 132] = 1
        mem[_494 + ceil32(return_data.size) + 164] = 160
        mem[_494 + ceil32(return_data.size) + 260] = mem[_494]
        u = 0
        v = _494 + 32
        w = _494 + ceil32(return_data.size) + 292
        while u < mem[_494]:
            mem[w] = mem[v + 12 len 20]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_494 + ceil32(return_data.size) + 196] = stor1
        mem[_494 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
        require ext_code.size(address(cd[((32 * t) + cd[36] + 36)]))
        call address(cd[((32 * t) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _494 + ceil32(return_data.size) + (32 * mem[_494]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _573 = mem[_570]
        require mem[_570] <= test266151307()
        require _570 + mem[_570] + 31 < _570 + return_data.size
        _576 = mem[_570 + mem[_570]]
        if mem[_570 + mem[_570]] > test266151307():
            revert with 0, 65
        if _570 + ceil32(return_data.size) + ceil32(32 * mem[_570 + mem[_570]]) + 1 > test266151307() or ceil32(32 * mem[_570 + mem[_570]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _570 + ceil32(return_data.size) + ceil32(32 * mem[_570 + mem[_570]]) + 1
        mem[_570 + ceil32(return_data.size)] = _576
        require (32 * _576) + _573 + 32 <= return_data.size
        s = _570 + ceil32(return_data.size) + 32
        idx = _570 + _573 + 32
        while idx < (32 * _576) + _570 + _573 + 32:
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        if 1 >= _576:
            revert with 0, 50
        if t == -1:
            revert with 0, 17
        t = t + 1
        u = mem[_570 + ceil32(return_data.size) + 64]
        continue 
    if not cd[100]:
        if 0 >= mem[_212]:
            revert with 0, 50
        mem[_212 + 32] = u
        if 1 >= mem[_212]:
            revert with 0, 50
        mem[_212 + 64] = block.number
        if 2 >= mem[_212]:
            revert with 0, 50
        mem[_212 + 96] = block.timestamp
        mem[mem[64]] = 32
        _452 = mem[_212]
        mem[mem[64] + 32] = mem[_212]
        mem[mem[64] + 64 len 32 * _452] = mem[_212 + 32 len 32 * _452]
        return 32, mem[mem[64] + 32 len (32 * _452) + 32]
    if u <= cd[68]:
        revert with 0, 'Miner: too late'
    if 0 >= mem[_212]:
        revert with 0, 50
    mem[_212 + 32] = u
    if 1 >= mem[_212]:
        revert with 0, 50
    mem[_212 + 64] = block.number
    if 2 >= mem[_212]:
        revert with 0, 50
    mem[_212 + 96] = block.timestamp
    mem[mem[64]] = 32
    _460 = mem[_212]
    mem[mem[64] + 32] = mem[_212]
    mem[mem[64] + 64 len 32 * _460] = mem[_212 + 32 len 32 * _460]
    return 32, mem[mem[64] + 32 len (32 * _460) + 32]
}



}
