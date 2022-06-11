contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_b22c10a9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x1bd29448 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.0xe985e9c5 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 0xd4c98901563ca730332e841edbcb801fe9f2551
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(ext_call.return_data[0]) == 0xd4c98901563ca730332e841edbcb801fe9f2551:
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               bool(address(ext_call.return_data[0]) == 0xd4c98901563ca730332e841edbcb801fe9f2551)
    return ext_call.return_data[0], ext_call.return_data[0], address(ext_call.return_data[0]), bool(ext_call.return_data[0])
}

function sub_95fd1252(?) payable {
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
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _83 = mem[_77]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor1)
            staticcall stor1.0x1bd29448 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_93]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.0x6352211e with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _105 = mem[_101]
            require mem[_101] == mem[_101 + 12 len 20]
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor0)
            staticcall stor0.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_110]
            require mem[_110] == mem[_110 + 12 len 20]
            mem[mem[64] + 4] = address(_105)
            mem[mem[64] + 36] = 0xd4c98901563ca730332e841edbcb801fe9f2551
            require ext_code.size(stor0)
            staticcall stor0.0xe985e9c5 with:
                    gas gas_remaining wei
                   args address(_105), 0xd4c98901563ca730332e841edbcb801fe9f2551
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_118]
            require mem[_118] == bool(mem[_118])
            if address(_113) == 0xd4c98901563ca730332e841edbcb801fe9f2551:
                _124 = mem[64]
                mem[64] = mem[64] + 128
                mem[_124] = _83
                mem[_124 + 32] = _97
                mem[_124 + 64] = address(_105)
                mem[_124 + 96] = address(_113) == 0xd4c98901563ca730332e841edbcb801fe9f2551
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _124
            else:
                _126 = mem[64]
                mem[64] = mem[64] + 128
                mem[_126] = _83
                mem[_126 + 32] = _97
                mem[_126 + 64] = address(_105)
                mem[_126 + 96] = bool(_121)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _126
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 32
        _69 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _69:
            _132 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_132 + 32]
            mem[s + 64] = mem[_132 + 76 len 20]
            mem[s + 96] = bool(mem[_132 + 96])
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _68 + (128 * _69) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
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
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_147]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor1)
        staticcall stor1.0x1bd29448 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _153 = mem[_152]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _157 = mem[_156]
        require mem[_156] == mem[_156 + 12 len 20]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        staticcall stor0.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _161 = mem[_160]
        require mem[_160] == mem[_160 + 12 len 20]
        mem[mem[64] + 4] = address(_157)
        mem[mem[64] + 36] = 0xd4c98901563ca730332e841edbcb801fe9f2551
        require ext_code.size(stor0)
        staticcall stor0.0xe985e9c5 with:
                gas gas_remaining wei
               args address(_157), 0xd4c98901563ca730332e841edbcb801fe9f2551
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _165 = mem[_164]
        require mem[_164] == bool(mem[_164])
        if address(_161) == 0xd4c98901563ca730332e841edbcb801fe9f2551:
            _166 = mem[64]
            mem[64] = mem[64] + 128
            mem[_166] = _149
            mem[_166 + 32] = _153
            mem[_166 + 64] = address(_157)
            mem[_166 + 96] = address(_161) == 0xd4c98901563ca730332e841edbcb801fe9f2551
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _166
        else:
            _168 = mem[64]
            mem[64] = mem[64] + 128
            mem[_168] = _149
            mem[_168 + 32] = _153
            mem[_168 + 64] = address(_157)
            mem[_168 + 96] = bool(_165)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _168
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _138 = mem[64]
    mem[mem[64]] = 32
    _139 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _139:
        _170 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_170 + 32]
        mem[s + 64] = mem[_170 + 76 len 20]
        mem[s + 96] = bool(mem[_170 + 96])
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _138 + (128 * _139) + -mem[64] + 64
}



}
