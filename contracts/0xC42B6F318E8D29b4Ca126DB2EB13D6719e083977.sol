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
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
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
            _71 = mem[64]
            mem[64] = mem[64] + 224
            mem[_71] = 0
            mem[_71 + 32] = 0
            mem[_71 + 64] = 0
            mem[_71 + 96] = 0
            mem[_71 + 128] = 0
            mem[_71 + 160] = 0
            mem[_71 + 192] = 0
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _83 = mem[_80]
            require mem[_80] == mem[_80]
            _92 = mem[_80 + 32]
            require mem[_80 + 32] == mem[_80 + 32]
            _98 = mem[_80 + 64]
            require mem[_80 + 64] == mem[_80 + 64]
            _103 = mem[_80 + 96]
            require mem[_80 + 96] == mem[_80 + 96]
            mem[mem[64] + 4] = mem[_80 + 96]
            require ext_code.size(stor0)
            staticcall stor0.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _103
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _112 = mem[_111]
            require mem[_111] == mem[_111]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _120 = mem[_119]
            require mem[_119] == mem[_119]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor3)
            staticcall stor3.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _128 = mem[_127]
            require mem[_127] == mem[_127]
            _132 = mem[64]
            mem[64] = mem[64] + 224
            mem[_132] = _83
            mem[_132 + 32] = _92
            mem[_132 + 64] = _98
            mem[_132 + 96] = _103
            mem[_132 + 128] = _112
            mem[_132 + 160] = _120
            mem[_132 + 192] = _128
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _132
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _72:
            _137 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_137 + 32]
            mem[t + 64] = mem[_137 + 64]
            mem[t + 96] = mem[_137 + 96]
            mem[t + 128] = mem[_137 + 128]
            mem[t + 160] = mem[_137 + 160]
            mem[t + 192] = mem[_137 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _70 + (224 * _72) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 352
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _180 = mem[64]
        mem[64] = mem[64] + 224
        mem[_180] = 0
        mem[_180 + 32] = 0
        mem[_180 + 64] = 0
        mem[_180 + 96] = 0
        mem[_180 + 128] = 0
        mem[_180 + 160] = 0
        mem[_180 + 192] = 0
        require ext_code.size(stor0)
        staticcall stor0.0xc363b9eb with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _188 = mem[_185]
        require mem[_185] == mem[_185]
        _191 = mem[_185 + 32]
        require mem[_185 + 32] == mem[_185 + 32]
        _194 = mem[_185 + 64]
        require mem[_185 + 64] == mem[_185 + 64]
        _196 = mem[_185 + 96]
        require mem[_185 + 96] == mem[_185 + 96]
        mem[mem[64] + 4] = mem[_185 + 96]
        require ext_code.size(stor0)
        staticcall stor0.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_200]
        require mem[_200] == mem[_200]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _205 = mem[_204]
        require mem[_204] == mem[_204]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        staticcall stor3.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _209 = mem[_208]
        require mem[_208] == mem[_208]
        _210 = mem[64]
        mem[64] = mem[64] + 224
        mem[_210] = _188
        mem[_210 + 32] = _191
        mem[_210 + 64] = _194
        mem[_210 + 96] = _196
        mem[_210 + 128] = _201
        mem[_210 + 160] = _205
        mem[_210 + 192] = _209
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _210
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _179 = mem[64]
    mem[mem[64]] = 32
    _181 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _181:
        _212 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_212 + 32]
        mem[t + 64] = mem[_212 + 64]
        mem[t + 96] = mem[_212 + 96]
        mem[t + 128] = mem[_212 + 128]
        mem[t + 160] = mem[_212 + 160]
        mem[t + 192] = mem[_212 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _179 + (224 * _181) + -mem[64] + 64
}



}
