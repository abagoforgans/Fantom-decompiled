contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_abbb2d6c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 96
        _38 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[s] == cd[s]
        mem[_38] = cd[s]
        require cd[(s + 32)] == uint8(cd[(s + 32)])
        mem[_38 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint8(cd[(s + 64)])
        mem[_38 + 64] = cd[(s + 64)]
        mem[t] = _38
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _37 = mem[96]
    idx = 0
    while idx < _37:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + 128] + 63 len 1]:
            _80 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _85 = mem[mem[(32 * idx) + 128] + 64]
            mem[mem[64]] = 0xbad6a14e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _80
            mem[mem[64] + 36] = uint8(_85)
            require ext_code.size(stor0)
            call stor0.0xbad6a14e with:
                 gas gas_remaining wei
                args _80, uint8(_85)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 63 len 1] == 1:
                _90 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _94 = mem[mem[(32 * idx) + 128] + 64]
                mem[mem[64]] = 0xbad6a14e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _90
                mem[mem[64] + 36] = uint8(_94)
                require ext_code.size(stor1)
                call stor1.0xbad6a14e with:
                     gas gas_remaining wei
                    args _90, uint8(_94)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[mem[(32 * idx) + 128] + 63 len 1] == 2:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _97 = mem[mem[(32 * idx) + 128]]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _100 = mem[mem[(32 * idx) + 128] + 64]
                    mem[mem[64]] = 0xbad6a14e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _97
                    mem[mem[64] + 36] = uint8(_100)
                    require ext_code.size(stor2)
                    call stor2.0xbad6a14e with:
                         gas gas_remaining wei
                        args _97, uint8(_100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
