contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_bffd87e2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    require ext_code.size(stor0)
    staticcall stor0.totalAllocPoint() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.poolLength() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = ext_call.return_data[0]
    require ('cd', 36).length <= test266151307()
    mem[(2 * ceil32(return_data.size)) + 224] = ('cd', 36).length
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 256
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256]] = cd[((32 * idx) + cd[36] + 36)]
            require idx < ('cd', 36).length
            require ext_code.size(stor0)
            staticcall stor0.poolInfo(uint256 rg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_88] == mem[_88 + 12 len 20]
            _102 = mem[_88 + 32]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 32] = mem[_88 + 12 len 20]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 64] = _102
            require idx < ('cd', 36).length
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(stor0)
            staticcall stor0.0xf0f19c2b with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)], address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 96] = mem[_119]
            idx = idx + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = mem[160]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64] = 96
        _76 = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 224]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 256
        t = mem[64] + 128
        while idx < _76:
            _131 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_131 + 44 len 20]
            mem[t + 64] = mem[_131 + 64]
            mem[t + 96] = mem[_131 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _72 + (128 * _76) + -mem[64] + 128
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 384
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 288] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 352] = 0
    mem[var32001] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 256
    s = var32001
    idx = var32002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 288] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 320] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 352] = 0
        mem[s + 32] = (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256]] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        require ext_code.size(stor0)
        staticcall stor0.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_180] == mem[_180 + 12 len 20]
        _182 = mem[_180 + 32]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 32] = mem[_180 + 12 len 20]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 64] = _182
        require idx < ('cd', 36).length
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = address(cd[4])
        require ext_code.size(stor0)
        staticcall stor0.0xf0f19c2b with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)], address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 96] = mem[_191]
        idx = idx + 1
        continue 
    _166 = mem[64]
    mem[mem[64]] = mem[160]
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64] = 96
    _170 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 224]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 256
    t = mem[64] + 128
    while idx < _170:
        _195 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_195 + 44 len 20]
        mem[t + 64] = mem[_195 + 64]
        mem[t + 96] = mem[_195 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _166 + (128 * _170) + -mem[64] + 128
}



}
