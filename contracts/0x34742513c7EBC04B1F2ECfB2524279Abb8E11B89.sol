contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
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
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
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
            _41 = mem[64]
            mem[64] = mem[64] + 128
            mem[_41] = 0
            mem[_41 + 32] = 0
            mem[_41 + 64] = 0
            mem[_41 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _53 = mem[_50]
            require mem[_50] == mem[_50]
            _62 = mem[_50 + 32]
            require mem[_50 + 32] == mem[_50 + 32]
            _67 = mem[_50 + 64]
            require mem[_50 + 64] == mem[_50 + 64]
            _70 = mem[_50 + 96]
            require mem[_50 + 96] == mem[_50 + 96]
            _72 = mem[64]
            mem[64] = mem[64] + 128
            mem[_72] = _53
            mem[_72 + 32] = _62
            mem[_72 + 64] = _67
            mem[_72 + 96] = _70
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _72
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _42 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _42:
            _77 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_77 + 32]
            mem[t + 64] = mem[_77 + 64]
            mem[t + 96] = mem[_77 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _40 + (128 * _42) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
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
        _102 = mem[64]
        mem[64] = mem[64] + 128
        mem[_102] = 0
        mem[_102 + 32] = 0
        mem[_102 + 64] = 0
        mem[_102 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.0xc363b9eb with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _110 = mem[_107]
        require mem[_107] == mem[_107]
        _113 = mem[_107 + 32]
        require mem[_107 + 32] == mem[_107 + 32]
        _115 = mem[_107 + 64]
        require mem[_107 + 64] == mem[_107 + 64]
        _116 = mem[_107 + 96]
        require mem[_107 + 96] == mem[_107 + 96]
        _117 = mem[64]
        mem[64] = mem[64] + 128
        mem[_117] = _110
        mem[_117 + 32] = _113
        mem[_117 + 64] = _115
        mem[_117 + 96] = _116
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _117
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _101 = mem[64]
    mem[mem[64]] = 32
    _103 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _103:
        _119 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_119 + 32]
        mem[t + 64] = mem[_119 + 64]
        mem[t + 96] = mem[_119 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _101 + (128 * _103) + -mem[64] + 64
}



}
