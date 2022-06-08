contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_9181a090(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_82453753(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(cd[36])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(cd[36]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f90dafc9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = arg2
        s = 0
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor0)
            staticcall stor0.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_63] == mem[_63 + 12 len 20]
            if mem[_63 + 12 len 20] != address(arg1):
                require ext_code.size(stor0)
                staticcall stor0.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx != mem[_78]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _88 = mem[64]
                mem[mem[64]] = 32
                _90 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = mem[64] + 64
                t = ceil32(return_data.size) + 128
                while idx < _90:
                    mem[s] = mem[t]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _88 + (32 * _90) + -mem[64] + 64
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = idx
            if s == -1:
                revert with 0, 17
            require ext_code.size(stor0)
            staticcall stor0.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_86]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _98 = mem[64]
            mem[mem[64]] = 32
            _100 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _100:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _98 + (32 * _100) + -mem[64] + 64
        mem[mem[64]] = 32
        _62 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _62] = mem[ceil32(return_data.size) + 128 len 32 * _62]
        return 32, mem[mem[64] + 32 len (32 * _62) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = arg2
    s = 0
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65 + 12 len 20]
        if mem[_65 + 12 len 20] != address(arg1):
            require ext_code.size(stor0)
            staticcall stor0.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx != mem[_79]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _89 = mem[64]
            mem[mem[64]] = 32
            _92 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _92:
                mem[s] = mem[t]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _89 + (32 * _92) + -mem[64] + 64
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = idx
        if s == -1:
            revert with 0, 17
        require ext_code.size(stor0)
        staticcall stor0.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx != mem[_87]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _101:
            mem[s] = mem[t]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _99 + (32 * _101) + -mem[64] + 64
    mem[mem[64]] = 32
    _64 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _64] = mem[ceil32(return_data.size) + 128 len 32 * _64]
    return 32, mem[mem[64] + 32 len (32 * _64) + 32]
}



}
