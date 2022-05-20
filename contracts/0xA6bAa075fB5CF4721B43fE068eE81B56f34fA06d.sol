contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveV2Adaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    idx = 0
    while idx < 2:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[160] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        s = 0
        while s < 2:
            if address(('cd', 100)[1]) != mem[(32 * s) + 172 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        revert with 0, 'CurveStableAdaptor: TokenError'
    revert with 0, 'CurveStableAdaptor: TokenError'
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[192] = 0
    require ext_code.size(arg1)
    staticcall arg1.A() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.fee() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 224] = 2
    mem[64] = (2 * ceil32(return_data.size)) + 320
    mem[(2 * ceil32(return_data.size)) + 256 len 64] = call.data[calldata.size len 64]
    mem[128] = (2 * ceil32(return_data.size)) + 224
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
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[128]]:
            revert with 'NH{q', 50
        mem[(32 * idx) + mem[128] + 32] = mem[_23]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[192] = block.number
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = 128
    _22 = mem[mem[128]]
    mem[mem[64] + 160] = mem[mem[128]]
    mem[mem[64] + 192 len 32 * _22] = mem[mem[128] + 32 len 32 * _22]
    mem[mem[64] + 96] = mem[160]
    return 32, mem[96], 128, mem[160], block.number, mem[mem[64] + 160 len (32 * _22) + 32]
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
        revert with 0, 'CurveStableAdaptor: PathError'
    if this.address == address(cd[164]):
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[96] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        idx = 0
        while idx < 2:
            if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[160] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            mem[192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            s = 0
            while s < 2:
                if address(('cd', 132)[1]) != mem[(32 * s) + 172 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                require ext_code.size(address(cd[68]))
                call address(cd[68]).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4], cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            revert with 0, 'CurveStableAdaptor: TokenError'
    else:
        if ('cd', 132).length < 1:
            revert with 'NH{q', 17
        if ('cd', 132).length - 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[100] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[ceil32(return_data.size) + 96] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[ceil32(return_data.size) + 128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        idx = 0
        while idx < 2:
            if address(('cd', 132)[0]) != mem[(32 * idx) + ceil32(return_data.size) + 108 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[ceil32(return_data.size) + 160] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
            mem[ceil32(return_data.size) + 192] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
            s = 0
            while s < 2:
                if address(('cd', 132)[1]) != mem[(32 * s) + ceil32(return_data.size) + 172 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                require ext_code.size(address(cd[68]))
                call address(cd[68]).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4], cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                revert with 0, 'CurveStableAdaptor: INSUFFICIENT_OUTPUT'
            revert with 0, 'CurveStableAdaptor: TokenError'
    revert with 0, 'CurveStableAdaptor: TokenError'
}



}
