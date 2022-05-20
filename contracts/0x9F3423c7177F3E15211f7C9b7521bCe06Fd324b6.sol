contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b9dfb211(?) payable {
    require calldata.size - 4 >= 192
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if ('cd', 132).length != 2:
        revert with 0, 'CurveMetaPoolAdaptor: PathError'
    if 0 >= ('cd', 132).length:
        revert with 0, 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[96] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[128] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    idx = 0
    while idx < 3:
        if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 0, 50
        require ('cd', 132)[1] == address(('cd', 132)[1])
        mem[192] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[224] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        s = 0
        while s < 3:
            if address(('cd', 132)[1]) != mem[(32 * s) + 204 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[68]))
            call address(cd[68]).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4], cd[36], address(cd[164])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'CurveMetaPoolAdaptor: TokenError'
    revert with 0, 'CurveMetaPoolAdaptor: TokenError'
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveMetaPoolAdaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[128] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    idx = 0
    while idx < 3:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[192] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[224] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        s = 0
        while s < 3:
            if address(('cd', 100)[1]) != mem[(32 * s) + 204 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        revert with 0, 'CurveMetaPoolAdaptor: TokenError'
    revert with 0, 'CurveMetaPoolAdaptor: TokenError'
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.A() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = ext_call.return_data[0]
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.fee() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[352] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 384] = 2
    mem[64] = (2 * ceil32(return_data.size)) + 480
    mem[(2 * ceil32(return_data.size)) + 416 len 64] = call.data[calldata.size len 64]
    mem[320] = (2 * ceil32(return_data.size)) + 384
    idx = 0
    while idx < 2:
        mem[mem[64] + 4] = idx
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[320]]:
            revert with 0, 50
        mem[(32 * idx) + mem[320] + 32] = mem[_23]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_22]
    mem[224] = block.number
    require ext_code.size(arg1)
    staticcall arg1.A() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _30 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[192] = mem[_30]
    require ext_code.size(arg1)
    staticcall arg1.fee() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[160] = mem[_34]
    _36 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_36 + 32 len 64] = call.data[calldata.size len 64]
    mem[96] = _36
    if not mem[_36]:
        revert with 0, 50
    mem[_36 + 32] = 1000000000000 * 10^18
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    staticcall 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.get_virtual_price() with:
            gas gas_remaining wei
    mem[_36 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _36 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 1 >= mem[_36]:
        revert with 0, 50
    mem[_36 + 64] = ext_call.return_data[0]
    mem[_36 + ceil32(return_data.size) + 96] = 2
    mem[64] = _36 + ceil32(return_data.size) + 192
    mem[_36 + ceil32(return_data.size) + 128 len 64] = call.data[calldata.size len 64]
    mem[128] = _36 + ceil32(return_data.size) + 96
    idx = 0
    while idx < 2:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[128]]:
            revert with 0, 50
        mem[(32 * idx) + mem[128] + 32] = mem[_55]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _53 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = 160
    _56 = mem[mem[96]]
    mem[mem[64] + 224] = mem[mem[96]]
    mem[mem[64] + 256 len 32 * _56] = mem[mem[96] + 32 len 32 * _56]
    _75 = mem[128]
    mem[mem[64] + 96] = (32 * _56) + 192
    _76 = mem[mem[128]]
    mem[mem[64] + (32 * _56) + 256] = mem[mem[128]]
    mem[mem[64] + (32 * _56) + 288 len 32 * _76] = mem[_75 + 32 len 32 * _76]
    mem[mem[64] + 128] = mem[160]
    mem[mem[64] + 160] = mem[192]
    mem[mem[64] + 192] = mem[224]
    mem[mem[64] + 32] = (32 * _56) + (32 * _76) + 288
    mem[_53 + (32 * _56) + (32 * _76) + 288] = mem[256]
    mem[_53 + (32 * _56) + (32 * _76) + 320] = mem[288]
    mem[_53 + (32 * _56) + (32 * _76) + 352] = 128
    _95 = mem[mem[320]]
    mem[_53 + (32 * _56) + (32 * _76) + 416] = mem[mem[320]]
    mem[_53 + (32 * _56) + (32 * _76) + 448 len 32 * _95] = mem[mem[320] + 32 len 32 * _95]
    mem[_53 + (32 * _56) + (32 * _76) + 384] = mem[352]
    return memory
      from mem[64]
       len _53 + (32 * _56) + (32 * _76) + (32 * _95) + -mem[64] + 448
}



}
