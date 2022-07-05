contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b9dfb211(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if ('cd', 132).length != 2:
        revert with 0, 'CurveStableAdaptor: PathError'
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[96] = 0x82f0b8b456c1a451378467398982d4834b6829c1
    mem[128] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    idx = 0
    while idx < 3:
        if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[1] == address(('cd', 132)[1])
        mem[192] = 0x82f0b8b456c1a451378467398982d4834b6829c1
        mem[224] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        s = 0
        while s < 3:
            if address(('cd', 132)[1]) != mem[(32 * s) + 204 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[68]))
            call address(cd[68]).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', 0)), ('signextend', 15, ('var', 1)), cd[4], cd[36], address(cd[164])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'CurveStableAdaptor: TokenError'
    revert with 0, 'CurveStableAdaptor: TokenError'
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveV2Adaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0x82f0b8b456c1a451378467398982d4834b6829c1
    mem[128] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    idx = 0
    while idx < 3:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[192] = 0x82f0b8b456c1a451378467398982d4834b6829c1
        mem[224] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        s = 0
        while s < 3:
            if address(('cd', 100)[1]) != mem[(32 * s) + 204 len 20]:
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
            require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[96] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.fee() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 224] = 3
    mem[64] = (2 * ceil32(return_data.size)) + 352
    mem[(2 * ceil32(return_data.size)) + 256 len 96] = call.data[calldata.size len 96]
    mem[128] = (2 * ceil32(return_data.size)) + 224
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == mem[_22]
        if idx >= mem[mem[128]]:
            revert with 'NH{q', 50
        mem[(32 * idx) + mem[128] + 32] = mem[_22]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[192] = block.number
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = 128
    _23 = mem[mem[128]]
    mem[mem[64] + 160] = mem[mem[128]]
    mem[mem[64] + 192 len 32 * _23] = mem[mem[128] + 32 len 32 * _23]
    mem[mem[64] + 96] = mem[160]
    return 32, mem[96], 128, mem[160], block.number, mem[mem[64] + 160 len (32 * _23) + 32]
}



}
