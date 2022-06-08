contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct sub_3d287686;

function sub_3d287686(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_3d287686[arg1].field_0
    return sub_3d287686[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
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

function batchTransfer(uint256[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    idx = 0
    while idx < arg1.length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor0)
        call stor0.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(arg2), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c657c0f7(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    s = mem[96]
    while idx < 11:
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 1
        sub_3d287686[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 1)
        sub_3d287686[msg.sender][sub_3d287686[msg.sender].field_0].field_0 = s
        mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = s
        require ext_code.size(stor0)
        call stor0.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_ef4ea50e(?) payable {
    if not sub_3d287686[msg.sender].field_0:
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _11 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _11
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_3d287686[msg.sender].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[msg.sender].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[msg.sender].field_0:
            if idx >= sub_3d287686[msg.sender].field_0:
                revert with 0, 50
            _21 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[msg.sender].field_0) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[msg.sender].field_0) + 132] = _21
            require ext_code.size(stor0)
            call stor0.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_f0ee2af9(?) payable {
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
            require ext_code.size(stor0)
            staticcall stor0.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 24 * 3600 > !mem[_31]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_31] + (24 * 3600) > block.timestamp:
                mem[(32 * idx) + 128] = 1
            else:
                mem[(32 * idx) + 128] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < mem[96]:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _22 + (32 * mem[96]) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 24 * 3600 > !mem[_33]:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_33] + (24 * 3600) > block.timestamp:
            mem[(32 * idx) + 128] = 1
        else:
            mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _28:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _24 + (32 * _28) + -mem[64] + 64
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
