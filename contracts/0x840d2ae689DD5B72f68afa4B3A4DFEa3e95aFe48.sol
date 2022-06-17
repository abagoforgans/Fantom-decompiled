contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_f4d388e7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        call stor3.claim(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_13217f0e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ecdf681f(?) payable {
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fd70661d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        call stor2.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == mem[_7]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function summoner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xc363b9eb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(stor0)
    staticcall stor0.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.claimable(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_67a04be9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    require cd[164] == uint32(cd[164])
    require cd[196] == uint32(cd[196])
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == mem[_9 + 12 len 20]
        if mem[_9 + 12 len 20] == msg.sender:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint32(cd[36])
            mem[mem[64] + 68] = uint32(cd[68])
            mem[mem[64] + 100] = uint32(cd[100])
            mem[mem[64] + 132] = uint32(cd[132])
            mem[mem[64] + 164] = uint32(cd[164])
            mem[mem[64] + 196] = uint32(cd[196])
            require ext_code.size(stor1)
            call stor1.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], cd[36] << 224, cd[68] << 224, cd[100] << 224, cd[132] << 224, cd[164] << 224, uint32(cd[196])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f4d355a3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _61 = mem[64]
            mem[64] = mem[64] + 192
            mem[_61] = 0
            mem[_61 + 32] = 0
            mem[_61 + 64] = 0
            mem[_61 + 96] = 0
            mem[_61 + 128] = 0
            mem[_61 + 160] = 0
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _73 = mem[_70]
            require mem[_70] == mem[_70]
            _82 = mem[_70 + 32]
            require mem[_70 + 32] == mem[_70 + 32]
            _88 = mem[_70 + 64]
            require mem[_70 + 64] == mem[_70 + 64]
            _93 = mem[_70 + 96]
            require mem[_70 + 96] == mem[_70 + 96]
            mem[mem[64] + 4] = mem[_70 + 96]
            require ext_code.size(stor0)
            staticcall stor0.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _93
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _100 = mem[_99]
            require mem[_99] == mem[_99]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_107]
            require mem[_107] == mem[_107]
            _112 = mem[64]
            mem[64] = mem[64] + 192
            mem[_112] = _73
            mem[_112 + 32] = _82
            mem[_112 + 64] = _88
            mem[_112 + 96] = _93
            mem[_112 + 128] = _100
            mem[_112 + 160] = _108
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _112
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _60 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _62:
            _117 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_117 + 32]
            mem[t + 64] = mem[_117 + 64]
            mem[t + 96] = mem[_117 + 96]
            mem[t + 128] = mem[_117 + 128]
            mem[t + 160] = mem[_117 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _60 + (192 * _62) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _154 = mem[64]
        mem[64] = mem[64] + 192
        mem[_154] = 0
        mem[_154 + 32] = 0
        mem[_154 + 64] = 0
        mem[_154 + 96] = 0
        mem[_154 + 128] = 0
        mem[_154 + 160] = 0
        require ext_code.size(stor0)
        staticcall stor0.0xc363b9eb with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _162 = mem[_159]
        require mem[_159] == mem[_159]
        _165 = mem[_159 + 32]
        require mem[_159 + 32] == mem[_159 + 32]
        _168 = mem[_159 + 64]
        require mem[_159 + 64] == mem[_159 + 64]
        _170 = mem[_159 + 96]
        require mem[_159 + 96] == mem[_159 + 96]
        mem[mem[64] + 4] = mem[_159 + 96]
        require ext_code.size(stor0)
        staticcall stor0.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _170
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _174 = mem[_173]
        require mem[_173] == mem[_173]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        staticcall stor3.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _178 = mem[_177]
        require mem[_177] == mem[_177]
        _179 = mem[64]
        mem[64] = mem[64] + 192
        mem[_179] = _162
        mem[_179 + 32] = _165
        mem[_179 + 64] = _168
        mem[_179 + 96] = _170
        mem[_179 + 128] = _174
        mem[_179 + 160] = _178
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _179
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _153 = mem[64]
    mem[mem[64]] = 32
    _155 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _155:
        _181 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_181 + 32]
        mem[t + 64] = mem[_181 + 64]
        mem[t + 96] = mem[_181 + 96]
        mem[t + 128] = mem[_181 + 128]
        mem[t + 160] = mem[_181 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _153 + (192 * _155) + -mem[64] + 64
}



}
