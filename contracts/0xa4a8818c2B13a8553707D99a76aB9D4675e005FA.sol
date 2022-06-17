contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d4e3441(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_cc1b2bd0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require 67 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[160] = 2
    mem[192] = mem[108 len 20]
    mem[224] = mem[140 len 20]
    mem[288] = cd[4]
    mem[320] = 64
    mem[352] = 2
    idx = 0
    s = 192
    t = 384
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = 160
    mem[480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[484 len 160] = cd[4], Array(len=2, data=mem[384 len 64])
    mem[448] = 164
    mem[644 len 192] = 0, cd[4], 64, 2, mem[384 len 64], mem[644 len 28]
    mem[808] = 0
    call address(cd[100]).mem[644 len 4] with:
         gas gas_remaining wei
        args mem[648 len 160]
    if not return_data.size:
        if not ext_call.success:
            return 32, 2, cd[4], 0
        mem[644] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[648] = cd[4]
        mem[680] = 64
        mem[712] = 2
        idx = 0
        s = 192
        t = 744
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=2, data=mem[744 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 644
        require return_data.size >= 32
        _760 = mem[644 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[644 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 675 < return_data.size + 644
        _768 = mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644]
        if mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + (32 * mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644]) + 676 > test266151307() or (32 * mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644]) + 676
        mem[ceil32(return_data.size) + 644] = mem[mem[644 len 4], Mask(224, 32, cd[4]) >> 32 + 644]
        require _760 + (32 * _768) + 32 <= return_data.size
        idx = 0
        s = _760 + 676
        t = ceil32(return_data.size) + 676
        while idx < _768:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _768
        mem[mem[64] + 64 len 32 * _768] = mem[ceil32(return_data.size) + 676 len 32 * _768]
        return Array(len=_768, data=mem[mem[64] + 64 len 32 * _768])
    mem[644] = return_data.size
    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return 32, 2, cd[4], 0
    mem[ceil32(return_data.size) + 645] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 649] = cd[4]
    mem[ceil32(return_data.size) + 681] = 64
    mem[ceil32(return_data.size) + 713] = 2
    idx = 0
    s = 192
    t = ceil32(return_data.size) + 745
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=2, data=mem[ceil32(return_data.size) + 745 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 645 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 645
    require return_data.size >= 32
    _761 = mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 676 < ceil32(return_data.size) + return_data.size + 645
    _769 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645]) + 677 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645]) + 677
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 645] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 645 len 4], Mask(224, 32, cd[4]) >> 32 + 645]
    require _761 + (32 * _769) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _761 + 677
    t = ceil32(return_data.size) + ceil32(return_data.size) + 677
    while idx < _769:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _769
    mem[mem[64] + 64 len 32 * _769] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 677 len 32 * _769]
    return Array(len=_769, data=mem[mem[64] + 64 len 32 * _769])
}

function sub_f32692ad(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size + -cd[68] + -cd[s] - 36 >= 64
        _34 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        require calldata.size + -cd[68] + -cd[s] + -cd[(cd[68] + cd[s] + 36)] - 36 >= 32
        _35 = mem[64]
        if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 32
        require cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] <= test266151307()
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _37 = mem[64]
        if mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]) + 32
        mem[_37] = cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + (192 * cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 68
        w = _37 + 32
        while u < cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + cd[(cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 36)] + 36)]:
            require calldata.size - v >= 192
            _94 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require cd[v] == address(cd[v])
            mem[_94] = cd[v]
            require cd[(v + 32)] == cd[(v + 32)]
            mem[_94 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == cd[(v + 64)]
            mem[_94 + 64] = cd[(v + 64)]
            require calldata.size + -v - 96 >= 96
            _108 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_108] = cd[(v + 96)]
            require v + 159 < calldata.size
            _114 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require v + 192 <= calldata.size
            idx = 0
            s = v + 128
            t = _114
            while idx < 2:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_108 + 32] = _114
            mem[_94 + 96] = _108
            mem[w] = _94
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_35] = _37
        mem[_34] = _35
        require cd[(cd[68] + cd[s] + 68)] == cd[(cd[68] + cd[s] + 68)]
        mem[_34 + 32] = cd[(cd[68] + cd[s] + 68)]
        mem[t] = _34
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    _36 = mem[64]
    if mem[64] + (32 * ('cd', 132).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 132).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 132).length) + 32
    mem[_36] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _36 + 32
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'not owner'
    _66 = mem[64]
    mem[mem[64] + 32] = 96
    _68 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * _68) + 160
    u = mem[64] + 160
    while idx < _68:
        mem[u] = t + -_66 - 160
        _91 = mem[s]
        _92 = mem[mem[s]]
        mem[t] = 64
        _93 = mem[_92]
        mem[t + 64] = 32
        _95 = mem[_93]
        mem[t + 96] = mem[_93]
        v = 0
        w = _93 + 32
        x = t + 128
        while v < _95:
            _124 = mem[w]
            mem[x] = mem[mem[w] + 12 len 20]
            mem[x + 32] = mem[_124 + 32]
            mem[x + 64] = mem[_124 + 64]
            _131 = mem[_124 + 96]
            mem[x + 96] = mem[mem[_124 + 96]]
            idx = 0
            s = mem[_131 + 32]
            t = x + 128
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            v = v + 1
            w = w + 32
            x = x + 192
            continue 
        mem[t + 32] = mem[_91 + 32]
        idx = idx + 1
        s = s + 32
        t = x
        u = u + 32
        continue 
    mem[_66 + 64] = cd[100]
    mem[_66 + 96] = t + -_66 - 32
    _96 = mem[_36]
    mem[t] = mem[_36]
    idx = 0
    s = _36 + 32
    u = t + 32
    while idx < _96:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    _117 = mem[64]
    mem[64] = t + (32 * _96) + 32
    mem[t + (32 * _96) + 32] = 0xe0232b4200000000000000000000000000000000000000000000000000000000
    mem[t + (32 * _96) + 36] = this.address
    mem[t + (32 * _96) + 68] = cd[36]
    mem[t + (32 * _96) + 100] = 96
    _119 = mem[_117]
    mem[t + (32 * _96) + 132] = mem[_117]
    mem[t + (32 * _96) + 164 len ceil32(_119)] = mem[_117 + 32 len ceil32(_119)]
    if ceil32(_119) > _119:
        mem[t + (32 * _96) + _119 + 164] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), cd[36], 96, mem[t + (32 * _96) + 132 len ceil32(_119) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Invalid balance, was the flashLoan successful?'
    require arg5.length >= 96
    require cd[(arg5 + 36)] <= test266151307()
    require arg5 + cd[(arg5 + 36)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 > test266151307() or (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    idx = 0
    s = arg5 + cd[(arg5 + 36)] + 68
    t = ceil32(return_data.size) + 128
    while idx < cd[(arg5 + cd[(arg5 + 36)] + 36)]:
        require arg5.length + -cd[(arg5 + 36)] + -cd[s] - 32 >= 64
        _1694 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] <= test266151307()
        require arg5.length + -cd[(arg5 + 36)] + -cd[s] + -cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] - 32 >= 32
        _1695 = mem[64]
        if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 32
        require cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] <= test266151307()
        require arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)] > test266151307():
            revert with 'NH{q', 65
        _1697 = mem[64]
        if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]) + 32
        mem[_1697] = cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]
        require cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + (192 * cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]) + 100 <= arg5.length + 36
        u = 0
        v = arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 100
        w = _1697 + 32
        while u < cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 68)] + 68)] + 68)]:
            require arg5 + arg5.length + -v + 36 >= 192
            _5950 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require cd[v] == address(cd[v])
            mem[_5950] = cd[v]
            require cd[(v + 32)] == cd[(v + 32)]
            mem[_5950 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == cd[(v + 64)]
            mem[_5950 + 64] = cd[(v + 64)]
            require arg5 + arg5.length + -v - 60 >= 96
            _6412 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_6412] = cd[(v + 96)]
            require v + 159 < arg5 + arg5.length + 36
            _6790 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require v + 192 <= arg5 + arg5.length + 36
            idx = 0
            s = v + 128
            t = _6790
            while idx < 2:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_6412 + 32] = _6790
            mem[_5950 + 96] = _6412
            mem[w] = _5950
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_1695] = _1697
        mem[_1694] = _1695
        require cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 100)] == cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 100)]
        mem[_1694 + 32] = cd[(arg5 + cd[(arg5 + 36)] + cd[s] + 100)]
        mem[t] = _1694
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    require cd[(arg5 + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _1696 = mem[64]
    if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 32
    mem[_1696] = cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require cd[(arg5 + 100)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 68 <= arg5.length + 36
    t = 0
    u = arg5 + cd[(arg5 + 100)] + 68
    v = _1696 + 32
    while t < cd[(arg5 + cd[(arg5 + 100)] + 36)]:
        require cd[u] == address(cd[u])
        mem[v] = cd[u]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _3816 = mem[ceil32(return_data.size) + 128]
    if 1 >= cd[(arg5 + cd[(arg5 + 100)] + 36)]:
        revert with 'NH{q', 50
    _3818 = mem[_1696 + 64]
    if cd[(arg5 + 68)] > test266151307():
        revert with 'NH{q', 65
    _3819 = mem[64]
    mem[mem[64]] = cd[(arg5 + 68)]
    mem[64] = mem[64] + (32 * cd[(arg5 + 68)]) + 32
    if not cd[(arg5 + 68)]:
        _5933 = mem[mem[mem[_3816]]]
        idx = 0
        s = 0
        t = 0
        while idx < _5933:
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _5951 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 32]
            _5959 = mem[64]
            mem[64] = mem[64] + 96
            mem[_5959] = 0
            mem[_5959 + 32] = 0
            mem[_5959 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_3819]:
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_5951):
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _8054 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8054] = bool(v)
            mem[_8054 + 32] = 0
            mem[_8054 + 64] = u
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_3819]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _3819 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96]] == 1:
                    _8142 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _8423 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_8423 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_8423]:
                        revert with 'NH{q', 50
                    mem[_8423 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_8423]:
                        revert with 'NH{q', 50
                    mem[_8423 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_8423]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _8661 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                    mem[_8423 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_8423 + 100] = address(_8661)
                    mem[_8423 + 132] = arg3 / 100 * _8142
                    require ext_code.size(mem[_8423 + 44 len 20])
                    call mem[_8423 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_8661), arg3 / 100 * _8142
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _9047 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _9079 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_8423 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_8423 + 100] = arg3 / 100 * _8142
                    mem[_8423 + 132] = 98 * _9079 / 100
                    mem[_8423 + 164] = 160
                    mem[_8423 + 260] = mem[_8423]
                    s = 0
                    u = _8423 + 32
                    v = _8423 + 292
                    while s < mem[_8423]:
                        mem[v] = mem[u + 12 len 20]
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_8423 + 196] = this.address
                    mem[_8423 + 228] = block.timestamp + 900
                    require ext_code.size(address(_9047))
                    call address(_9047).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _8423 + (32 * mem[_8423]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10339 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10387 = mem[_10339]
                    require mem[_10339] <= test266151307()
                    require _10339 + mem[_10339] + 31 < _10339 + return_data.size
                    _10433 = mem[_10339 + mem[_10339]]
                    if mem[_10339 + mem[_10339]] > test266151307():
                        revert with 'NH{q', 65
                    if _10339 + ceil32(return_data.size) + (32 * mem[_10339 + mem[_10339]]) + 32 > test266151307() or (32 * mem[_10339 + mem[_10339]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _10339 + ceil32(return_data.size) + (32 * mem[_10339 + mem[_10339]]) + 32
                    mem[_10339 + ceil32(return_data.size)] = _10433
                    require _10387 + (32 * _10433) + 32 <= return_data.size
                    s = 0
                    u = _10339 + _10387 + 32
                    v = _10339 + ceil32(return_data.size) + 32
                    while s < _10433:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _5933 = mem[mem[mem[_3816]]]
                        idx = idx + 1
                        s = arg3 / 100 * _8142
                        t = t
                        continue 
                    if 1 >= _10433:
                        revert with 'NH{q', 50
                    if t > -mem[_10339 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = arg3 / 100 * _8142
                    t = t + mem[_10339 + ceil32(return_data.size) + 64]
                    continue 
                _8147 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32]]
                _8161 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8161] = 0
                mem[_8161 + 32] = 0
                mem[_8161 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_3819]:
                    if s >= mem[_3819]:
                        revert with 'NH{q', 50
                    if s >= mem[_3819]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_8147):
                        if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _5933 = mem[mem[mem[_3816]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _10147 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10147] = bool(v)
                mem[_10147 + 32] = 0
                mem[_10147 + 64] = u
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _10182 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                if 0 >= mem[_3819]:
                    revert with 'NH{q', 50
                _10211 = mem[mem[_3819 + 32] + 32]
                if mem[mem[_3819 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / mem[mem[_3819 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _10432 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_10432 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_10432]:
                    revert with 'NH{q', 50
                mem[_10432 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_10432]:
                    revert with 'NH{q', 50
                mem[_10432 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_10432]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _10681 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                mem[_10432 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_10432 + 100] = address(_10681)
                mem[_10432 + 132] = _10211 / 100 * _10182
                require ext_code.size(mem[_10432 + 44 len 20])
                call mem[_10432 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_10681), _10211 / 100 * _10182
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _11020 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _11044 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_10432 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_10432 + 100] = _10211 / 100 * _10182
                mem[_10432 + 132] = 98 * _11044 / 100
                mem[_10432 + 164] = 160
                mem[_10432 + 260] = mem[_10432]
                s = 0
                u = _10432 + 32
                v = _10432 + 292
                while s < mem[_10432]:
                    mem[v] = mem[u + 12 len 20]
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_10432 + 196] = this.address
                mem[_10432 + 228] = block.timestamp + 900
                require ext_code.size(address(_11020))
                call address(_11020).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _10432 + (32 * mem[_10432]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12289 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12331 = mem[_12289]
                require mem[_12289] <= test266151307()
                require _12289 + mem[_12289] + 31 < _12289 + return_data.size
                _12392 = mem[_12289 + mem[_12289]]
                if mem[_12289 + mem[_12289]] > test266151307():
                    revert with 'NH{q', 65
                if _12289 + ceil32(return_data.size) + (32 * mem[_12289 + mem[_12289]]) + 32 > test266151307() or (32 * mem[_12289 + mem[_12289]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12289 + ceil32(return_data.size) + (32 * mem[_12289 + mem[_12289]]) + 32
                mem[_12289 + ceil32(return_data.size)] = _12392
                require _12331 + (32 * _12392) + 32 <= return_data.size
                s = 0
                u = _12289 + _12331 + 32
                v = _12289 + ceil32(return_data.size) + 32
                while s < _12392:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = _10211 / 100 * _10182
                    t = t
                    continue 
                if 1 >= _12392:
                    revert with 'NH{q', 50
                if t > -mem[_12289 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = _10211 / 100 * _10182
                t = t + mem[_12289 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_3819]:
                revert with 'NH{q', 50
            if mem[mem[_3819 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_3819 + 32] + 32] = mem[mem[_3819 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96]] == 1:
                _8228 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _8604 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_8604 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_8604]:
                    revert with 'NH{q', 50
                mem[_8604 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_8604]:
                    revert with 'NH{q', 50
                mem[_8604 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_8604]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _8834 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                mem[_8604 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_8604 + 100] = address(_8834)
                mem[_8604 + 132] = arg3 / 100 * _8228
                require ext_code.size(mem[_8604 + 44 len 20])
                call mem[_8604 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_8834), arg3 / 100 * _8228
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _9225 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _9255 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_8604 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_8604 + 100] = arg3 / 100 * _8228
                mem[_8604 + 132] = 98 * _9255 / 100
                mem[_8604 + 164] = 160
                mem[_8604 + 260] = mem[_8604]
                s = 0
                u = _8604 + 32
                v = _8604 + 292
                while s < mem[_8604]:
                    mem[v] = mem[u + 12 len 20]
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_8604 + 196] = this.address
                mem[_8604 + 228] = block.timestamp + 900
                require ext_code.size(address(_9225))
                call address(_9225).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _8604 + (32 * mem[_8604]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10338 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10386 = mem[_10338]
                require mem[_10338] <= test266151307()
                require _10338 + mem[_10338] + 31 < _10338 + return_data.size
                _10431 = mem[_10338 + mem[_10338]]
                if mem[_10338 + mem[_10338]] > test266151307():
                    revert with 'NH{q', 65
                if _10338 + ceil32(return_data.size) + (32 * mem[_10338 + mem[_10338]]) + 32 > test266151307() or (32 * mem[_10338 + mem[_10338]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _10338 + ceil32(return_data.size) + (32 * mem[_10338 + mem[_10338]]) + 32
                mem[_10338 + ceil32(return_data.size)] = _10431
                require _10386 + (32 * _10431) + 32 <= return_data.size
                s = 0
                u = _10338 + _10386 + 32
                v = _10338 + ceil32(return_data.size) + 32
                while s < _10431:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = arg3 / 100 * _8228
                    t = t
                    continue 
                if 1 >= _10431:
                    revert with 'NH{q', 50
                if t > -mem[_10338 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = arg3 / 100 * _8228
                t = t + mem[_10338 + ceil32(return_data.size) + 64]
                continue 
            _8257 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32]]
            _8313 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8313] = 0
            mem[_8313 + 32] = 0
            mem[_8313 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_3819]:
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_8257):
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _5933 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _5933 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _10144 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10144] = bool(v)
            mem[_10144 + 32] = 0
            mem[_10144 + 64] = u
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _10177 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
            if 0 >= mem[_3819]:
                revert with 'NH{q', 50
            _10206 = mem[mem[_3819 + 32] + 32]
            if mem[mem[_3819 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / mem[mem[_3819 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _10430 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_10430 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_10430]:
                revert with 'NH{q', 50
            mem[_10430 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_10430]:
                revert with 'NH{q', 50
            mem[_10430 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
            if 0 >= mem[_10430]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _10678 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
            mem[_10430 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[_10430 + 100] = address(_10678)
            mem[_10430 + 132] = _10206 / 100 * _10177
            require ext_code.size(mem[_10430 + 44 len 20])
            call mem[_10430 + 44 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_10678), _10206 / 100 * _10177
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _11015 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _11042 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_10430 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_10430 + 100] = _10206 / 100 * _10177
            mem[_10430 + 132] = 98 * _11042 / 100
            mem[_10430 + 164] = 160
            mem[_10430 + 260] = mem[_10430]
            s = 0
            u = _10430 + 32
            v = _10430 + 292
            while s < mem[_10430]:
                mem[v] = mem[u + 12 len 20]
                _5933 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_10430 + 196] = this.address
            mem[_10430 + 228] = block.timestamp + 900
            require ext_code.size(address(_11015))
            call address(_11015).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _10430 + (32 * mem[_10430]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12288 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12330 = mem[_12288]
            require mem[_12288] <= test266151307()
            require _12288 + mem[_12288] + 31 < _12288 + return_data.size
            _12391 = mem[_12288 + mem[_12288]]
            if mem[_12288 + mem[_12288]] > test266151307():
                revert with 'NH{q', 65
            if _12288 + ceil32(return_data.size) + (32 * mem[_12288 + mem[_12288]]) + 32 > test266151307() or (32 * mem[_12288 + mem[_12288]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _12288 + ceil32(return_data.size) + (32 * mem[_12288 + mem[_12288]]) + 32
            mem[_12288 + ceil32(return_data.size)] = _12391
            require _12330 + (32 * _12391) + 32 <= return_data.size
            s = 0
            u = _12288 + _12330 + 32
            v = _12288 + ceil32(return_data.size) + 32
            while s < _12391:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _5933 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                if idx == -1:
                    revert with 'NH{q', 17
                _5933 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = _10206 / 100 * _10177
                t = t
                continue 
            if 1 >= _12391:
                revert with 'NH{q', 50
            if t > -mem[_12288 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _5933 = mem[mem[mem[_3816]]]
            idx = idx + 1
            s = _10206 / 100 * _10177
            t = t + mem[_12288 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _5941 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_1696]:
            revert with 'NH{q', 50
        _5946 = mem[_1696 + 32]
        if cd[(arg5 + 68)] > test266151307():
            revert with 'NH{q', 65
        _5955 = mem[64]
        mem[mem[64]] = cd[(arg5 + 68)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 68)]) + 32
        if not cd[(arg5 + 68)]:
            _8047 = mem[mem[mem[_5941]]]
            idx = 0
            s = 0
            u = 0
            while idx < _8047:
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _8088 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 32]
                _8109 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8109] = 0
                mem[_8109 + 32] = 0
                mem[_8109 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_5955]:
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_8088):
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _10142 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10142] = bool(w)
                mem[_10142 + 32] = 0
                mem[_10142 + 64] = v
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_5955]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _5955 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96]] == 1:
                        _10261 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _10533 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_10533 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_10533]:
                            revert with 'NH{q', 50
                        mem[_10533 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_10533]:
                            revert with 'NH{q', 50
                        mem[_10533 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_10533]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _10791 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                        mem[_10533 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_10533 + 100] = address(_10791)
                        mem[_10533 + 132] = t / 100 * _10261
                        require ext_code.size(mem[_10533 + 44 len 20])
                        call mem[_10533 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_10791), t / 100 * _10261
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _11132 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _11158 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_10533 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_10533 + 100] = t / 100 * _10261
                        mem[_10533 + 132] = 98 * _11158 / 100
                        mem[_10533 + 164] = 160
                        mem[_10533 + 260] = mem[_10533]
                        s = 0
                        v = _10533 + 32
                        w = _10533 + 292
                        while s < mem[_10533]:
                            mem[w] = mem[v + 12 len 20]
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_10533 + 196] = this.address
                        mem[_10533 + 228] = block.timestamp + 900
                        require ext_code.size(address(_11132))
                        call address(_11132).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _10533 + (32 * mem[_10533]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12284 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12323 = mem[_12284]
                        require mem[_12284] <= test266151307()
                        require _12284 + mem[_12284] + 31 < _12284 + return_data.size
                        _12390 = mem[_12284 + mem[_12284]]
                        if mem[_12284 + mem[_12284]] > test266151307():
                            revert with 'NH{q', 65
                        if _12284 + ceil32(return_data.size) + (32 * mem[_12284 + mem[_12284]]) + 32 > test266151307() or (32 * mem[_12284 + mem[_12284]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12284 + ceil32(return_data.size) + (32 * mem[_12284 + mem[_12284]]) + 32
                        mem[_12284 + ceil32(return_data.size)] = _12390
                        require _12323 + (32 * _12390) + 32 <= return_data.size
                        s = 0
                        v = _12284 + _12323 + 32
                        w = _12284 + ceil32(return_data.size) + 32
                        while s < _12390:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _8047 = mem[mem[mem[_5941]]]
                            idx = idx + 1
                            s = t / 100 * _10261
                            u = u
                            continue 
                        if 1 >= _12390:
                            revert with 'NH{q', 50
                        if u > -mem[_12284 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = t / 100 * _10261
                        u = u + mem[_12284 + ceil32(return_data.size) + 64]
                        continue 
                    _10268 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32]]
                    _10280 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_10280] = 0
                    mem[_10280 + 32] = 0
                    mem[_10280 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_5955]:
                        if s >= mem[_5955]:
                            revert with 'NH{q', 50
                        if s >= mem[_5955]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_10268):
                            if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _8047 = mem[mem[mem[_5941]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _12061 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12061] = bool(v)
                    mem[_12061 + 32] = 0
                    mem[_12061 + 64] = t
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _12100 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                    if 0 >= mem[_5955]:
                        revert with 'NH{q', 50
                    _12123 = mem[mem[_5955 + 32] + 32]
                    if mem[mem[_5955 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / mem[mem[_5955 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _12389 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12389 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12389]:
                        revert with 'NH{q', 50
                    mem[_12389 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12389]:
                        revert with 'NH{q', 50
                    mem[_12389 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_12389]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _12594 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    mem[_12389 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_12389 + 100] = address(_12594)
                    mem[_12389 + 132] = _12123 / 100 * _12100
                    require ext_code.size(mem[_12389 + 44 len 20])
                    call mem[_12389 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_12594), _12123 / 100 * _12100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _12902 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _12925 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12389 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12389 + 100] = _12123 / 100 * _12100
                    mem[_12389 + 132] = 98 * _12925 / 100
                    mem[_12389 + 164] = 160
                    mem[_12389 + 260] = mem[_12389]
                    s = 0
                    t = _12389 + 32
                    v = _12389 + 292
                    while s < mem[_12389]:
                        mem[v] = mem[t + 12 len 20]
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_12389 + 196] = this.address
                    mem[_12389 + 228] = block.timestamp + 900
                    require ext_code.size(address(_12902))
                    call address(_12902).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12389 + (32 * mem[_12389]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13890 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13940 = mem[_13890]
                    require mem[_13890] <= test266151307()
                    require _13890 + mem[_13890] + 31 < _13890 + return_data.size
                    _13991 = mem[_13890 + mem[_13890]]
                    if mem[_13890 + mem[_13890]] > test266151307():
                        revert with 'NH{q', 65
                    if _13890 + ceil32(return_data.size) + (32 * mem[_13890 + mem[_13890]]) + 32 > test266151307() or (32 * mem[_13890 + mem[_13890]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13890 + ceil32(return_data.size) + (32 * mem[_13890 + mem[_13890]]) + 32
                    mem[_13890 + ceil32(return_data.size)] = _13991
                    require _13940 + (32 * _13991) + 32 <= return_data.size
                    s = 0
                    t = _13890 + _13940 + 32
                    v = _13890 + ceil32(return_data.size) + 32
                    while s < _13991:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = _12123 / 100 * _12100
                        u = u
                        continue 
                    if 1 >= _13991:
                        revert with 'NH{q', 50
                    if u > -mem[_13890 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = _12123 / 100 * _12100
                    u = u + mem[_13890 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_5955]:
                    revert with 'NH{q', 50
                if mem[mem[_5955 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_5955 + 32] + 32] = mem[mem[_5955 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96]] == 1:
                    _10350 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _10715 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_10715 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_10715]:
                        revert with 'NH{q', 50
                    mem[_10715 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_10715]:
                        revert with 'NH{q', 50
                    mem[_10715 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_10715]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _10943 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    mem[_10715 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_10715 + 100] = address(_10943)
                    mem[_10715 + 132] = t / 100 * _10350
                    require ext_code.size(mem[_10715 + 44 len 20])
                    call mem[_10715 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_10943), t / 100 * _10350
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _11282 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _11307 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_10715 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_10715 + 100] = t / 100 * _10350
                    mem[_10715 + 132] = 98 * _11307 / 100
                    mem[_10715 + 164] = 160
                    mem[_10715 + 260] = mem[_10715]
                    s = 0
                    v = _10715 + 32
                    w = _10715 + 292
                    while s < mem[_10715]:
                        mem[w] = mem[v + 12 len 20]
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_10715 + 196] = this.address
                    mem[_10715 + 228] = block.timestamp + 900
                    require ext_code.size(address(_11282))
                    call address(_11282).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _10715 + (32 * mem[_10715]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12283 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12322 = mem[_12283]
                    require mem[_12283] <= test266151307()
                    require _12283 + mem[_12283] + 31 < _12283 + return_data.size
                    _12388 = mem[_12283 + mem[_12283]]
                    if mem[_12283 + mem[_12283]] > test266151307():
                        revert with 'NH{q', 65
                    if _12283 + ceil32(return_data.size) + (32 * mem[_12283 + mem[_12283]]) + 32 > test266151307() or (32 * mem[_12283 + mem[_12283]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12283 + ceil32(return_data.size) + (32 * mem[_12283 + mem[_12283]]) + 32
                    mem[_12283 + ceil32(return_data.size)] = _12388
                    require _12322 + (32 * _12388) + 32 <= return_data.size
                    s = 0
                    v = _12283 + _12322 + 32
                    w = _12283 + ceil32(return_data.size) + 32
                    while s < _12388:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = t / 100 * _10350
                        u = u
                        continue 
                    if 1 >= _12388:
                        revert with 'NH{q', 50
                    if u > -mem[_12283 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = t / 100 * _10350
                    u = u + mem[_12283 + ceil32(return_data.size) + 64]
                    continue 
                _10369 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32]]
                _10417 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10417] = 0
                mem[_10417 + 32] = 0
                mem[_10417 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_5955]:
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_10369):
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _8047 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8047 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _12058 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12058] = bool(v)
                mem[_12058 + 32] = 0
                mem[_12058 + 64] = t
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _12095 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                if 0 >= mem[_5955]:
                    revert with 'NH{q', 50
                _12118 = mem[mem[_5955 + 32] + 32]
                if mem[mem[_5955 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / mem[mem[_5955 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _12387 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_12387 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_12387]:
                    revert with 'NH{q', 50
                mem[_12387 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_12387]:
                    revert with 'NH{q', 50
                mem[_12387 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_12387]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _12591 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                mem[_12387 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_12387 + 100] = address(_12591)
                mem[_12387 + 132] = _12118 / 100 * _12095
                require ext_code.size(mem[_12387 + 44 len 20])
                call mem[_12387 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_12591), _12118 / 100 * _12095
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _12897 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _12923 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_12387 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_12387 + 100] = _12118 / 100 * _12095
                mem[_12387 + 132] = 98 * _12923 / 100
                mem[_12387 + 164] = 160
                mem[_12387 + 260] = mem[_12387]
                s = 0
                t = _12387 + 32
                v = _12387 + 292
                while s < mem[_12387]:
                    mem[v] = mem[t + 12 len 20]
                    _8047 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_12387 + 196] = this.address
                mem[_12387 + 228] = block.timestamp + 900
                require ext_code.size(address(_12897))
                call address(_12897).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _12387 + (32 * mem[_12387]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13889 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13939 = mem[_13889]
                require mem[_13889] <= test266151307()
                require _13889 + mem[_13889] + 31 < _13889 + return_data.size
                _13990 = mem[_13889 + mem[_13889]]
                if mem[_13889 + mem[_13889]] > test266151307():
                    revert with 'NH{q', 65
                if _13889 + ceil32(return_data.size) + (32 * mem[_13889 + mem[_13889]]) + 32 > test266151307() or (32 * mem[_13889 + mem[_13889]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13889 + ceil32(return_data.size) + (32 * mem[_13889 + mem[_13889]]) + 32
                mem[_13889 + ceil32(return_data.size)] = _13990
                require _13939 + (32 * _13990) + 32 <= return_data.size
                s = 0
                t = _13889 + _13939 + 32
                v = _13889 + ceil32(return_data.size) + 32
                while s < _13990:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _8047 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8047 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = _12118 / 100 * _12095
                    u = u
                    continue 
                if 1 >= _13990:
                    revert with 'NH{q', 50
                if u > -mem[_13889 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _8047 = mem[mem[mem[_5941]]]
                idx = idx + 1
                s = _12118 / 100 * _12095
                u = u + mem[_13889 + ceil32(return_data.size) + 64]
                continue 
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_8367] == bool(mem[_8367])
            if not mem[_8367]:
                revert with 0, 'Transfer fund back failed'
            if 0 >= mem[_1696]:
                revert with 'NH{q', 50
            _8653 = mem[_1696 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_8653))
            staticcall address(_8653).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9001 = mem[_8930]
            require mem[_8930] == mem[_8930]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _9001
            require ext_code.size(address(_8653))
            call address(_8653).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _9001
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_9501] == bool(mem[_9501])
        else:
            mem[64] = _5955 + (32 * cd[(arg5 + 68)]) + 96
            mem[_5955 + (32 * cd[(arg5 + 68)]) + 32] = 0
            mem[_5955 + (32 * cd[(arg5 + 68)]) + 64] = 0
            mem[var123001] = _5955 + (32 * cd[(arg5 + 68)]) + 32
            s = var123001
            idx = var123002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_5955 + (32 * cd[(arg5 + 68)]) + 32] = 0
                mem[_5955 + (32 * cd[(arg5 + 68)]) + 64] = 0
                mem[s + 32] = _5955 + (32 * cd[(arg5 + 68)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _12053 = mem[mem[mem[_5941]]]
            idx = 0
            s = 0
            u = 0
            while idx < _12053:
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _12154 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 32]
                _12178 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12178] = 0
                mem[_12178 + 32] = 0
                mem[_12178 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_5955]:
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_12154):
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _13677 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13677] = bool(w)
                mem[_13677 + 32] = 0
                mem[_13677 + 64] = v
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_5955]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _5955 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96]] == 1:
                        _13855 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _14060 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_14060 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_14060]:
                            revert with 'NH{q', 50
                        mem[_14060 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_14060]:
                            revert with 'NH{q', 50
                        mem[_14060 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_14060]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _14235 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                        mem[_14060 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_14060 + 100] = address(_14235)
                        mem[_14060 + 132] = t / 100 * _13855
                        require ext_code.size(mem[_14060 + 44 len 20])
                        call mem[_14060 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_14235), t / 100 * _13855
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _14471 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        _14495 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_14060 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_14060 + 100] = t / 100 * _13855
                        mem[_14060 + 132] = 98 * _14495 / 100
                        mem[_14060 + 164] = 160
                        mem[_14060 + 260] = mem[_14060]
                        s = 0
                        v = _14060 + 32
                        w = _14060 + 292
                        while s < mem[_14060]:
                            mem[w] = mem[v + 12 len 20]
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_14060 + 196] = this.address
                        mem[_14060 + 228] = block.timestamp + 900
                        require ext_code.size(address(_14471))
                        call address(_14471).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _14060 + (32 * mem[_14060]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15103 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15115 = mem[_15103]
                        require mem[_15103] <= test266151307()
                        require _15103 + mem[_15103] + 31 < _15103 + return_data.size
                        _15135 = mem[_15103 + mem[_15103]]
                        if mem[_15103 + mem[_15103]] > test266151307():
                            revert with 'NH{q', 65
                        if _15103 + ceil32(return_data.size) + (32 * mem[_15103 + mem[_15103]]) + 32 > test266151307() or (32 * mem[_15103 + mem[_15103]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _15103 + ceil32(return_data.size) + (32 * mem[_15103 + mem[_15103]]) + 32
                        mem[_15103 + ceil32(return_data.size)] = _15135
                        require _15115 + (32 * _15135) + 32 <= return_data.size
                        s = 0
                        v = _15103 + _15115 + 32
                        w = _15103 + ceil32(return_data.size) + 32
                        while s < _15135:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_5941]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _12053 = mem[mem[mem[_5941]]]
                            idx = idx + 1
                            s = t / 100 * _13855
                            u = u
                            continue 
                        if 1 >= _15135:
                            revert with 'NH{q', 50
                        if u > -mem[_15103 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = t / 100 * _13855
                        u = u + mem[_15103 + ceil32(return_data.size) + 64]
                        continue 
                    _13862 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32]]
                    _13865 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13865] = 0
                    mem[_13865 + 32] = 0
                    mem[_13865 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_5955]:
                        if s >= mem[_5955]:
                            revert with 'NH{q', 50
                        if s >= mem[_5955]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_13862):
                            if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _12053 = mem[mem[mem[_5941]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _14934 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_14934] = bool(v)
                    mem[_14934 + 32] = 0
                    mem[_14934 + 64] = t
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _14980 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                    if 0 >= mem[_5955]:
                        revert with 'NH{q', 50
                    _15009 = mem[mem[_5955 + 32] + 32]
                    if mem[mem[_5955 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / mem[mem[_5955 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _15134 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_15134 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_15134]:
                        revert with 'NH{q', 50
                    mem[_15134 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_15134]:
                        revert with 'NH{q', 50
                    mem[_15134 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_15134]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _15279 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    mem[_15134 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_15134 + 100] = address(_15279)
                    mem[_15134 + 132] = _15009 / 100 * _14980
                    require ext_code.size(mem[_15134 + 44 len 20])
                    call mem[_15134 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_15279), _15009 / 100 * _14980
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _15428 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _15450 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_15134 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_15134 + 100] = _15009 / 100 * _14980
                    mem[_15134 + 132] = 98 * _15450 / 100
                    mem[_15134 + 164] = 160
                    mem[_15134 + 260] = mem[_15134]
                    s = 0
                    t = _15134 + 32
                    v = _15134 + 292
                    while s < mem[_15134]:
                        mem[v] = mem[t + 12 len 20]
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_15134 + 196] = this.address
                    mem[_15134 + 228] = block.timestamp + 900
                    require ext_code.size(address(_15428))
                    call address(_15428).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _15134 + (32 * mem[_15134]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15835 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15857 = mem[_15835]
                    require mem[_15835] <= test266151307()
                    require _15835 + mem[_15835] + 31 < _15835 + return_data.size
                    _15875 = mem[_15835 + mem[_15835]]
                    if mem[_15835 + mem[_15835]] > test266151307():
                        revert with 'NH{q', 65
                    if _15835 + ceil32(return_data.size) + (32 * mem[_15835 + mem[_15835]]) + 32 > test266151307() or (32 * mem[_15835 + mem[_15835]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _15835 + ceil32(return_data.size) + (32 * mem[_15835 + mem[_15835]]) + 32
                    mem[_15835 + ceil32(return_data.size)] = _15875
                    require _15857 + (32 * _15875) + 32 <= return_data.size
                    s = 0
                    t = _15835 + _15857 + 32
                    v = _15835 + ceil32(return_data.size) + 32
                    while s < _15875:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = _15009 / 100 * _14980
                        u = u
                        continue 
                    if 1 >= _15875:
                        revert with 'NH{q', 50
                    if u > -mem[_15835 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = _15009 / 100 * _14980
                    u = u + mem[_15835 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_5955]:
                    revert with 'NH{q', 50
                if mem[mem[_5955 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_5955 + 32] + 32] = mem[mem[_5955 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96]] == 1:
                    _13916 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _14177 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_14177 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_14177]:
                        revert with 'NH{q', 50
                    mem[_14177 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_14177]:
                        revert with 'NH{q', 50
                    mem[_14177 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_14177]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _14348 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    mem[_14177 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_14177 + 100] = address(_14348)
                    mem[_14177 + 132] = t / 100 * _13916
                    require ext_code.size(mem[_14177 + 44 len 20])
                    call mem[_14177 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_14348), t / 100 * _13916
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _14545 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    _14561 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_14177 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_14177 + 100] = t / 100 * _13916
                    mem[_14177 + 132] = 98 * _14561 / 100
                    mem[_14177 + 164] = 160
                    mem[_14177 + 260] = mem[_14177]
                    s = 0
                    v = _14177 + 32
                    w = _14177 + 292
                    while s < mem[_14177]:
                        mem[w] = mem[v + 12 len 20]
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_14177 + 196] = this.address
                    mem[_14177 + 228] = block.timestamp + 900
                    require ext_code.size(address(_14545))
                    call address(_14545).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14177 + (32 * mem[_14177]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15102 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15114 = mem[_15102]
                    require mem[_15102] <= test266151307()
                    require _15102 + mem[_15102] + 31 < _15102 + return_data.size
                    _15133 = mem[_15102 + mem[_15102]]
                    if mem[_15102 + mem[_15102]] > test266151307():
                        revert with 'NH{q', 65
                    if _15102 + ceil32(return_data.size) + (32 * mem[_15102 + mem[_15102]]) + 32 > test266151307() or (32 * mem[_15102 + mem[_15102]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _15102 + ceil32(return_data.size) + (32 * mem[_15102 + mem[_15102]]) + 32
                    mem[_15102 + ceil32(return_data.size)] = _15133
                    require _15114 + (32 * _15133) + 32 <= return_data.size
                    s = 0
                    v = _15102 + _15114 + 32
                    w = _15102 + ceil32(return_data.size) + 32
                    while s < _15133:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_5941]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        idx = idx + 1
                        s = t / 100 * _13916
                        u = u
                        continue 
                    if 1 >= _15133:
                        revert with 'NH{q', 50
                    if u > -mem[_15102 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = t / 100 * _13916
                    u = u + mem[_15102 + ceil32(return_data.size) + 64]
                    continue 
                _13941 = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32]]
                _13981 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13981] = 0
                mem[_13981 + 32] = 0
                mem[_13981 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_5955]:
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if s >= mem[_5955]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _5955 + 32] + 12 len 20] != address(_13941):
                        if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12053 = mem[mem[mem[_5941]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _5955 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12053 = mem[mem[mem[_5941]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _14931 = mem[64]
                mem[64] = mem[64] + 96
                mem[_14931] = bool(v)
                mem[_14931 + 32] = 0
                mem[_14931 + 64] = t
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _14975 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32]
                if 0 >= mem[_5955]:
                    revert with 'NH{q', 50
                _15004 = mem[mem[_5955 + 32] + 32]
                if mem[mem[_5955 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 32] > -1 / mem[mem[_5955 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _15132 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_15132 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_15132]:
                    revert with 'NH{q', 50
                mem[_15132 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_15132]:
                    revert with 'NH{q', 50
                mem[_15132 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_15132]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _15276 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                mem[_15132 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_15132 + 100] = address(_15276)
                mem[_15132 + 132] = _15004 / 100 * _14975
                require ext_code.size(mem[_15132 + 44 len 20])
                call mem[_15132 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_15276), _15004 / 100 * _14975
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _15423 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32]]
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                _15448 = mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_15132 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_15132 + 100] = _15004 / 100 * _14975
                mem[_15132 + 132] = 98 * _15448 / 100
                mem[_15132 + 164] = 160
                mem[_15132 + 260] = mem[_15132]
                s = 0
                t = _15132 + 32
                v = _15132 + 292
                while s < mem[_15132]:
                    mem[v] = mem[t + 12 len 20]
                    _12053 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_15132 + 196] = this.address
                mem[_15132 + 228] = block.timestamp + 900
                require ext_code.size(address(_15423))
                call address(_15423).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _15132 + (32 * mem[_15132]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15834 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15856 = mem[_15834]
                require mem[_15834] <= test266151307()
                require _15834 + mem[_15834] + 31 < _15834 + return_data.size
                _15874 = mem[_15834 + mem[_15834]]
                if mem[_15834 + mem[_15834]] > test266151307():
                    revert with 'NH{q', 65
                if _15834 + ceil32(return_data.size) + (32 * mem[_15834 + mem[_15834]]) + 32 > test266151307() or (32 * mem[_15834 + mem[_15834]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _15834 + ceil32(return_data.size) + (32 * mem[_15834 + mem[_15834]]) + 32
                mem[_15834 + ceil32(return_data.size)] = _15874
                require _15856 + (32 * _15874) + 32 <= return_data.size
                s = 0
                t = _15834 + _15856 + 32
                v = _15834 + ceil32(return_data.size) + 32
                while s < _15874:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _12053 = mem[mem[mem[_5941]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_5941]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_5941]] + 32] + 96] + 32] + 44 len 20] != address(_5946):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12053 = mem[mem[mem[_5941]]]
                    idx = idx + 1
                    s = _15004 / 100 * _14975
                    u = u
                    continue 
                if 1 >= _15874:
                    revert with 'NH{q', 50
                if u > -mem[_15834 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _12053 = mem[mem[mem[_5941]]]
                idx = idx + 1
                s = _15004 / 100 * _14975
                u = u + mem[_15834 + ceil32(return_data.size) + 64]
                continue 
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12430] == bool(mem[_12430])
            if not mem[_12430]:
                revert with 0, 'Transfer fund back failed'
            if 0 >= mem[_1696]:
                revert with 'NH{q', 50
            _12711 = mem[_1696 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_12711))
            staticcall address(_12711).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12981 = mem[_12926]
            require mem[_12926] == mem[_12926]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _12981
            require ext_code.size(address(_12711))
            call address(_12711).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _12981
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_13287] == bool(mem[_13287])
    else:
        mem[64] = _3819 + (32 * cd[(arg5 + 68)]) + 96
        mem[_3819 + (32 * cd[(arg5 + 68)]) + 32] = 0
        mem[_3819 + (32 * cd[(arg5 + 68)]) + 64] = 0
        mem[idx] = _3819 + (32 * cd[(arg5 + 68)]) + 32
        u = idx
        t = s
        while t - 1:
            mem[64] = mem[64] + 64
            mem[_3819 + (32 * cd[(arg5 + 68)]) + 32] = 0
            mem[_3819 + (32 * cd[(arg5 + 68)]) + 64] = 0
            mem[u + 32] = _3819 + (32 * cd[(arg5 + 68)]) + 32
            u = u + 32
            t = t - 1
            continue 
        _10141 = mem[mem[mem[_3816]]]
        idx = 0
        s = 0
        t = 0
        while idx < _10141:
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _10231 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 32]
            _10244 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10244] = 0
            mem[_10244 + 32] = 0
            mem[_10244 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_3819]:
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_10231):
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _12073 = mem[64]
            mem[64] = mem[64] + 96
            mem[_12073] = bool(v)
            mem[_12073 + 32] = 0
            mem[_12073 + 64] = u
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_3819]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _3819 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96]] == 1:
                    _12209 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _12511 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12511 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12511]:
                        revert with 'NH{q', 50
                    mem[_12511 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12511]:
                        revert with 'NH{q', 50
                    mem[_12511 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_12511]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _12724 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                    mem[_12511 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_12511 + 100] = address(_12724)
                    mem[_12511 + 132] = arg3 / 100 * _12209
                    require ext_code.size(mem[_12511 + 44 len 20])
                    call mem[_12511 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_12724), arg3 / 100 * _12209
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _13026 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    _13049 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12511 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12511 + 100] = arg3 / 100 * _12209
                    mem[_12511 + 132] = 98 * _13049 / 100
                    mem[_12511 + 164] = 160
                    mem[_12511 + 260] = mem[_12511]
                    s = 0
                    u = _12511 + 32
                    v = _12511 + 292
                    while s < mem[_12511]:
                        mem[v] = mem[u + 12 len 20]
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_12511 + 196] = this.address
                    mem[_12511 + 228] = block.timestamp + 900
                    require ext_code.size(address(_13026))
                    call address(_13026).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12511 + (32 * mem[_12511]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13911 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13965 = mem[_13911]
                    require mem[_13911] <= test266151307()
                    require _13911 + mem[_13911] + 31 < _13911 + return_data.size
                    _13998 = mem[_13911 + mem[_13911]]
                    if mem[_13911 + mem[_13911]] > test266151307():
                        revert with 'NH{q', 65
                    if _13911 + ceil32(return_data.size) + (32 * mem[_13911 + mem[_13911]]) + 32 > test266151307() or (32 * mem[_13911 + mem[_13911]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13911 + ceil32(return_data.size) + (32 * mem[_13911 + mem[_13911]]) + 32
                    mem[_13911 + ceil32(return_data.size)] = _13998
                    require _13965 + (32 * _13998) + 32 <= return_data.size
                    s = 0
                    u = _13911 + _13965 + 32
                    v = _13911 + ceil32(return_data.size) + 32
                    while s < _13998:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_3816]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10141 = mem[mem[mem[_3816]]]
                        idx = idx + 1
                        s = arg3 / 100 * _12209
                        t = t
                        continue 
                    if 1 >= _13998:
                        revert with 'NH{q', 50
                    if t > -mem[_13911 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = arg3 / 100 * _12209
                    t = t + mem[_13911 + ceil32(return_data.size) + 64]
                    continue 
                _12215 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32]]
                _12237 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12237] = 0
                mem[_12237 + 32] = 0
                mem[_12237 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_3819]:
                    if s >= mem[_3819]:
                        revert with 'NH{q', 50
                    if s >= mem[_3819]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_12215):
                        if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10141 = mem[mem[mem[_3816]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _13684 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13684] = bool(v)
                mem[_13684 + 32] = 0
                mem[_13684 + 64] = u
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _13727 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                if 0 >= mem[_3819]:
                    revert with 'NH{q', 50
                _13774 = mem[mem[_3819 + 32] + 32]
                if mem[mem[_3819 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / mem[mem[_3819 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _13997 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_13997 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_13997]:
                    revert with 'NH{q', 50
                mem[_13997 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_13997]:
                    revert with 'NH{q', 50
                mem[_13997 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_13997]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _14160 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                mem[_13997 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_13997 + 100] = address(_14160)
                mem[_13997 + 132] = _13774 / 100 * _13727
                require ext_code.size(mem[_13997 + 44 len 20])
                call mem[_13997 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_14160), _13774 / 100 * _13727
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _14411 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _14425 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_13997 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_13997 + 100] = _13774 / 100 * _13727
                mem[_13997 + 132] = 98 * _14425 / 100
                mem[_13997 + 164] = 160
                mem[_13997 + 260] = mem[_13997]
                s = 0
                u = _13997 + 32
                v = _13997 + 292
                while s < mem[_13997]:
                    mem[v] = mem[u + 12 len 20]
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_13997 + 196] = this.address
                mem[_13997 + 228] = block.timestamp + 900
                require ext_code.size(address(_14411))
                call address(_14411).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _13997 + (32 * mem[_13997]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15110 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15125 = mem[_15110]
                require mem[_15110] <= test266151307()
                require _15110 + mem[_15110] + 31 < _15110 + return_data.size
                _15141 = mem[_15110 + mem[_15110]]
                if mem[_15110 + mem[_15110]] > test266151307():
                    revert with 'NH{q', 65
                if _15110 + ceil32(return_data.size) + (32 * mem[_15110 + mem[_15110]]) + 32 > test266151307() or (32 * mem[_15110 + mem[_15110]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _15110 + ceil32(return_data.size) + (32 * mem[_15110 + mem[_15110]]) + 32
                mem[_15110 + ceil32(return_data.size)] = _15141
                require _15125 + (32 * _15141) + 32 <= return_data.size
                s = 0
                u = _15110 + _15125 + 32
                v = _15110 + ceil32(return_data.size) + 32
                while s < _15141:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = _13774 / 100 * _13727
                    t = t
                    continue 
                if 1 >= _15141:
                    revert with 'NH{q', 50
                if t > -mem[_15110 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = _13774 / 100 * _13727
                t = t + mem[_15110 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_3819]:
                revert with 'NH{q', 50
            if mem[mem[_3819 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_3819 + 32] + 32] = mem[mem[_3819 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96]] == 1:
                _12316 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _12644 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_12644 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_12644]:
                    revert with 'NH{q', 50
                mem[_12644 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_12644]:
                    revert with 'NH{q', 50
                mem[_12644 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_12644]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _12839 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                mem[_12644 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_12644 + 100] = address(_12839)
                mem[_12644 + 132] = arg3 / 100 * _12316
                require ext_code.size(mem[_12644 + 44 len 20])
                call mem[_12644 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_12839), arg3 / 100 * _12316
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _13139 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                _13158 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_12644 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_12644 + 100] = arg3 / 100 * _12316
                mem[_12644 + 132] = 98 * _13158 / 100
                mem[_12644 + 164] = 160
                mem[_12644 + 260] = mem[_12644]
                s = 0
                u = _12644 + 32
                v = _12644 + 292
                while s < mem[_12644]:
                    mem[v] = mem[u + 12 len 20]
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_12644 + 196] = this.address
                mem[_12644 + 228] = block.timestamp + 900
                require ext_code.size(address(_13139))
                call address(_13139).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _12644 + (32 * mem[_12644]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13910 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13964 = mem[_13910]
                require mem[_13910] <= test266151307()
                require _13910 + mem[_13910] + 31 < _13910 + return_data.size
                _13996 = mem[_13910 + mem[_13910]]
                if mem[_13910 + mem[_13910]] > test266151307():
                    revert with 'NH{q', 65
                if _13910 + ceil32(return_data.size) + (32 * mem[_13910 + mem[_13910]]) + 32 > test266151307() or (32 * mem[_13910 + mem[_13910]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13910 + ceil32(return_data.size) + (32 * mem[_13910 + mem[_13910]]) + 32
                mem[_13910 + ceil32(return_data.size)] = _13996
                require _13964 + (32 * _13996) + 32 <= return_data.size
                s = 0
                u = _13910 + _13964 + 32
                v = _13910 + ceil32(return_data.size) + 32
                while s < _13996:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_3816]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    idx = idx + 1
                    s = arg3 / 100 * _12316
                    t = t
                    continue 
                if 1 >= _13996:
                    revert with 'NH{q', 50
                if t > -mem[_13910 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = arg3 / 100 * _12316
                t = t + mem[_13910 + ceil32(return_data.size) + 64]
                continue 
            _12345 = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32]]
            _12384 = mem[64]
            mem[64] = mem[64] + 96
            mem[_12384] = 0
            mem[_12384 + 32] = 0
            mem[_12384 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_3819]:
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if s >= mem[_3819]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _3819 + 32] + 12 len 20] != address(_12345):
                    if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10141 = mem[mem[mem[_3816]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _3819 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _10141 = mem[mem[mem[_3816]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _13681 = mem[64]
            mem[64] = mem[64] + 96
            mem[_13681] = bool(v)
            mem[_13681 + 32] = 0
            mem[_13681 + 64] = u
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _13722 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32]
            if 0 >= mem[_3819]:
                revert with 'NH{q', 50
            _13769 = mem[mem[_3819 + 32] + 32]
            if mem[mem[_3819 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 32] > -1 / mem[mem[_3819 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _13995 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_13995 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_13995]:
                revert with 'NH{q', 50
            mem[_13995 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_13995]:
                revert with 'NH{q', 50
            mem[_13995 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20]
            if 0 >= mem[_13995]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _14157 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
            mem[_13995 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[_13995 + 100] = address(_14157)
            mem[_13995 + 132] = _13769 / 100 * _13722
            require ext_code.size(mem[_13995 + 44 len 20])
            call mem[_13995 + 44 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_14157), _13769 / 100 * _13722
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _14406 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32]]
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            _14423 = mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_13995 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_13995 + 100] = _13769 / 100 * _13722
            mem[_13995 + 132] = 98 * _14423 / 100
            mem[_13995 + 164] = 160
            mem[_13995 + 260] = mem[_13995]
            s = 0
            u = _13995 + 32
            v = _13995 + 292
            while s < mem[_13995]:
                mem[v] = mem[u + 12 len 20]
                _10141 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_13995 + 196] = this.address
            mem[_13995 + 228] = block.timestamp + 900
            require ext_code.size(address(_14406))
            call address(_14406).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _13995 + (32 * mem[_13995]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15109 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _15124 = mem[_15109]
            require mem[_15109] <= test266151307()
            require _15109 + mem[_15109] + 31 < _15109 + return_data.size
            _15140 = mem[_15109 + mem[_15109]]
            if mem[_15109 + mem[_15109]] > test266151307():
                revert with 'NH{q', 65
            if _15109 + ceil32(return_data.size) + (32 * mem[_15109 + mem[_15109]]) + 32 > test266151307() or (32 * mem[_15109 + mem[_15109]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _15109 + ceil32(return_data.size) + (32 * mem[_15109 + mem[_15109]]) + 32
            mem[_15109 + ceil32(return_data.size)] = _15140
            require _15124 + (32 * _15140) + 32 <= return_data.size
            s = 0
            u = _15109 + _15124 + 32
            v = _15109 + ceil32(return_data.size) + 32
            while s < _15140:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _10141 = mem[mem[mem[_3816]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_3816]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_3816]] + 32] + 96] + 32] + 44 len 20] != address(_3818):
                if idx == -1:
                    revert with 'NH{q', 17
                _10141 = mem[mem[mem[_3816]]]
                idx = idx + 1
                s = _13769 / 100 * _13722
                t = t
                continue 
            if 1 >= _15140:
                revert with 'NH{q', 50
            if t > -mem[_15109 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _10141 = mem[mem[mem[_3816]]]
            idx = idx + 1
            s = _13769 / 100 * _13722
            t = t + mem[_15109 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _10186 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_1696]:
            revert with 'NH{q', 50
        _10215 = mem[_1696 + 32]
        if cd[(arg5 + 68)] > test266151307():
            revert with 'NH{q', 65
        _10237 = mem[64]
        mem[mem[64]] = cd[(arg5 + 68)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 68)]) + 32
        if not cd[(arg5 + 68)]:
            _12056 = mem[mem[mem[_10186]]]
            idx = 0
            s = 0
            u = 0
            while idx < _12056:
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _12161 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 32]
                _12181 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12181] = 0
                mem[_12181 + 32] = 0
                mem[_12181 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_10237]:
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_12161):
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _13679 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13679] = bool(w)
                mem[_13679 + 32] = 0
                mem[_13679 + 64] = v
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_10237]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _10237 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96]] == 1:
                        _13860 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _14066 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_14066 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_14066]:
                            revert with 'NH{q', 50
                        mem[_14066 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_14066]:
                            revert with 'NH{q', 50
                        mem[_14066 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_14066]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _14241 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                        mem[_14066 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_14066 + 100] = address(_14241)
                        mem[_14066 + 132] = t / 100 * _13860
                        require ext_code.size(mem[_14066 + 44 len 20])
                        call mem[_14066 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_14241), t / 100 * _13860
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _14480 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _14500 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_14066 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_14066 + 100] = t / 100 * _13860
                        mem[_14066 + 132] = 98 * _14500 / 100
                        mem[_14066 + 164] = 160
                        mem[_14066 + 260] = mem[_14066]
                        s = 0
                        v = _14066 + 32
                        w = _14066 + 292
                        while s < mem[_14066]:
                            mem[w] = mem[v + 12 len 20]
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_14066 + 196] = this.address
                        mem[_14066 + 228] = block.timestamp + 900
                        require ext_code.size(address(_14480))
                        call address(_14480).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _14066 + (32 * mem[_14066]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15105 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _15117 = mem[_15105]
                        require mem[_15105] <= test266151307()
                        require _15105 + mem[_15105] + 31 < _15105 + return_data.size
                        _15139 = mem[_15105 + mem[_15105]]
                        if mem[_15105 + mem[_15105]] > test266151307():
                            revert with 'NH{q', 65
                        if _15105 + ceil32(return_data.size) + (32 * mem[_15105 + mem[_15105]]) + 32 > test266151307() or (32 * mem[_15105 + mem[_15105]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _15105 + ceil32(return_data.size) + (32 * mem[_15105 + mem[_15105]]) + 32
                        mem[_15105 + ceil32(return_data.size)] = _15139
                        require _15117 + (32 * _15139) + 32 <= return_data.size
                        s = 0
                        v = _15105 + _15117 + 32
                        w = _15105 + ceil32(return_data.size) + 32
                        while s < _15139:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _12056 = mem[mem[mem[_10186]]]
                            idx = idx + 1
                            s = t / 100 * _13860
                            u = u
                            continue 
                        if 1 >= _15139:
                            revert with 'NH{q', 50
                        if u > -mem[_15105 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = t / 100 * _13860
                        u = u + mem[_15105 + ceil32(return_data.size) + 64]
                        continue 
                    _13863 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32]]
                    _13866 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13866] = 0
                    mem[_13866 + 32] = 0
                    mem[_13866 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_10237]:
                        if s >= mem[_10237]:
                            revert with 'NH{q', 50
                        if s >= mem[_10237]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_13863):
                            if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _12056 = mem[mem[mem[_10186]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _14940 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_14940] = bool(v)
                    mem[_14940 + 32] = 0
                    mem[_14940 + 64] = t
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _14990 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                    if 0 >= mem[_10237]:
                        revert with 'NH{q', 50
                    _15019 = mem[mem[_10237 + 32] + 32]
                    if mem[mem[_10237 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / mem[mem[_10237 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _15138 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_15138 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_15138]:
                        revert with 'NH{q', 50
                    mem[_15138 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_15138]:
                        revert with 'NH{q', 50
                    mem[_15138 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_15138]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _15285 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    mem[_15138 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_15138 + 100] = address(_15285)
                    mem[_15138 + 132] = _15019 / 100 * _14990
                    require ext_code.size(mem[_15138 + 44 len 20])
                    call mem[_15138 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_15285), _15019 / 100 * _14990
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _15438 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _15454 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_15138 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_15138 + 100] = _15019 / 100 * _14990
                    mem[_15138 + 132] = 98 * _15454 / 100
                    mem[_15138 + 164] = 160
                    mem[_15138 + 260] = mem[_15138]
                    s = 0
                    t = _15138 + 32
                    v = _15138 + 292
                    while s < mem[_15138]:
                        mem[v] = mem[t + 12 len 20]
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_15138 + 196] = this.address
                    mem[_15138 + 228] = block.timestamp + 900
                    require ext_code.size(address(_15438))
                    call address(_15438).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _15138 + (32 * mem[_15138]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15837 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15859 = mem[_15837]
                    require mem[_15837] <= test266151307()
                    require _15837 + mem[_15837] + 31 < _15837 + return_data.size
                    _15877 = mem[_15837 + mem[_15837]]
                    if mem[_15837 + mem[_15837]] > test266151307():
                        revert with 'NH{q', 65
                    if _15837 + ceil32(return_data.size) + (32 * mem[_15837 + mem[_15837]]) + 32 > test266151307() or (32 * mem[_15837 + mem[_15837]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _15837 + ceil32(return_data.size) + (32 * mem[_15837 + mem[_15837]]) + 32
                    mem[_15837 + ceil32(return_data.size)] = _15877
                    require _15859 + (32 * _15877) + 32 <= return_data.size
                    s = 0
                    t = _15837 + _15859 + 32
                    v = _15837 + ceil32(return_data.size) + 32
                    while s < _15877:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = _15019 / 100 * _14990
                        u = u
                        continue 
                    if 1 >= _15877:
                        revert with 'NH{q', 50
                    if u > -mem[_15837 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = _15019 / 100 * _14990
                    u = u + mem[_15837 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_10237]:
                    revert with 'NH{q', 50
                if mem[mem[_10237 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_10237 + 32] + 32] = mem[mem[_10237 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96]] == 1:
                    _13926 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _14180 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_14180 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_14180]:
                        revert with 'NH{q', 50
                    mem[_14180 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_14180]:
                        revert with 'NH{q', 50
                    mem[_14180 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_14180]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _14352 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    mem[_14180 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_14180 + 100] = address(_14352)
                    mem[_14180 + 132] = t / 100 * _13926
                    require ext_code.size(mem[_14180 + 44 len 20])
                    call mem[_14180 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_14352), t / 100 * _13926
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _14550 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _14566 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_14180 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_14180 + 100] = t / 100 * _13926
                    mem[_14180 + 132] = 98 * _14566 / 100
                    mem[_14180 + 164] = 160
                    mem[_14180 + 260] = mem[_14180]
                    s = 0
                    v = _14180 + 32
                    w = _14180 + 292
                    while s < mem[_14180]:
                        mem[w] = mem[v + 12 len 20]
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_14180 + 196] = this.address
                    mem[_14180 + 228] = block.timestamp + 900
                    require ext_code.size(address(_14550))
                    call address(_14550).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14180 + (32 * mem[_14180]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15104 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15116 = mem[_15104]
                    require mem[_15104] <= test266151307()
                    require _15104 + mem[_15104] + 31 < _15104 + return_data.size
                    _15137 = mem[_15104 + mem[_15104]]
                    if mem[_15104 + mem[_15104]] > test266151307():
                        revert with 'NH{q', 65
                    if _15104 + ceil32(return_data.size) + (32 * mem[_15104 + mem[_15104]]) + 32 > test266151307() or (32 * mem[_15104 + mem[_15104]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _15104 + ceil32(return_data.size) + (32 * mem[_15104 + mem[_15104]]) + 32
                    mem[_15104 + ceil32(return_data.size)] = _15137
                    require _15116 + (32 * _15137) + 32 <= return_data.size
                    s = 0
                    v = _15104 + _15116 + 32
                    w = _15104 + ceil32(return_data.size) + 32
                    while s < _15137:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = t / 100 * _13926
                        u = u
                        continue 
                    if 1 >= _15137:
                        revert with 'NH{q', 50
                    if u > -mem[_15104 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = t / 100 * _13926
                    u = u + mem[_15104 + ceil32(return_data.size) + 64]
                    continue 
                _13947 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32]]
                _13984 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13984] = 0
                mem[_13984 + 32] = 0
                mem[_13984 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_10237]:
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_13947):
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12056 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12056 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _14937 = mem[64]
                mem[64] = mem[64] + 96
                mem[_14937] = bool(v)
                mem[_14937 + 32] = 0
                mem[_14937 + 64] = t
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _14985 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                if 0 >= mem[_10237]:
                    revert with 'NH{q', 50
                _15014 = mem[mem[_10237 + 32] + 32]
                if mem[mem[_10237 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / mem[mem[_10237 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _15136 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_15136 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_15136]:
                    revert with 'NH{q', 50
                mem[_15136 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_15136]:
                    revert with 'NH{q', 50
                mem[_15136 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_15136]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _15282 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                mem[_15136 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_15136 + 100] = address(_15282)
                mem[_15136 + 132] = _15014 / 100 * _14985
                require ext_code.size(mem[_15136 + 44 len 20])
                call mem[_15136 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_15282), _15014 / 100 * _14985
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _15433 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _15452 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_15136 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_15136 + 100] = _15014 / 100 * _14985
                mem[_15136 + 132] = 98 * _15452 / 100
                mem[_15136 + 164] = 160
                mem[_15136 + 260] = mem[_15136]
                s = 0
                t = _15136 + 32
                v = _15136 + 292
                while s < mem[_15136]:
                    mem[v] = mem[t + 12 len 20]
                    _12056 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_15136 + 196] = this.address
                mem[_15136 + 228] = block.timestamp + 900
                require ext_code.size(address(_15433))
                call address(_15433).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _15136 + (32 * mem[_15136]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15836 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15858 = mem[_15836]
                require mem[_15836] <= test266151307()
                require _15836 + mem[_15836] + 31 < _15836 + return_data.size
                _15876 = mem[_15836 + mem[_15836]]
                if mem[_15836 + mem[_15836]] > test266151307():
                    revert with 'NH{q', 65
                if _15836 + ceil32(return_data.size) + (32 * mem[_15836 + mem[_15836]]) + 32 > test266151307() or (32 * mem[_15836 + mem[_15836]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _15836 + ceil32(return_data.size) + (32 * mem[_15836 + mem[_15836]]) + 32
                mem[_15836 + ceil32(return_data.size)] = _15876
                require _15858 + (32 * _15876) + 32 <= return_data.size
                s = 0
                t = _15836 + _15858 + 32
                v = _15836 + ceil32(return_data.size) + 32
                while s < _15876:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _12056 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12056 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = _15014 / 100 * _14985
                    u = u
                    continue 
                if 1 >= _15876:
                    revert with 'NH{q', 50
                if u > -mem[_15836 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _12056 = mem[mem[mem[_10186]]]
                idx = idx + 1
                s = _15014 / 100 * _14985
                u = u + mem[_15836 + ceil32(return_data.size) + 64]
                continue 
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12435 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12435] == bool(mem[_12435])
            if not mem[_12435]:
                revert with 0, 'Transfer fund back failed'
            if 0 >= mem[_1696]:
                revert with 'NH{q', 50
            _12716 = mem[_1696 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_12716))
            staticcall address(_12716).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12986 = mem[_12933]
            require mem[_12933] == mem[_12933]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _12986
            require ext_code.size(address(_12716))
            call address(_12716).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _12986
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_13288] == bool(mem[_13288])
        else:
            mem[64] = _10237 + (32 * cd[(arg5 + 68)]) + 96
            mem[_10237 + (32 * cd[(arg5 + 68)]) + 32] = 0
            mem[_10237 + (32 * cd[(arg5 + 68)]) + 64] = 0
            mem[var130001] = _10237 + (32 * cd[(arg5 + 68)]) + 32
            s = var130001
            idx = var130002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_10237 + (32 * cd[(arg5 + 68)]) + 32] = 0
                mem[_10237 + (32 * cd[(arg5 + 68)]) + 64] = 0
                mem[s + 32] = _10237 + (32 * cd[(arg5 + 68)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _14930 = mem[mem[mem[_10186]]]
            idx = 0
            s = 0
            u = 0
            while idx < _14930:
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _15046 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 32]
                _15059 = mem[64]
                mem[64] = mem[64] + 96
                mem[_15059] = 0
                mem[_15059 + 32] = 0
                mem[_15059 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_10237]:
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_15046):
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _15716 = mem[64]
                mem[64] = mem[64] + 96
                mem[_15716] = bool(w)
                mem[_15716 + 32] = 0
                mem[_15716 + 64] = v
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_10237]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _10237 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96]] == 1:
                        _15820 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _15900 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_15900 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_15900]:
                            revert with 'NH{q', 50
                        mem[_15900 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_15900]:
                            revert with 'NH{q', 50
                        mem[_15900 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_15900]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _15965 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                        mem[_15900 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_15900 + 100] = address(_15965)
                        mem[_15900 + 132] = t / 100 * _15820
                        require ext_code.size(mem[_15900 + 44 len 20])
                        call mem[_15900 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_15965), t / 100 * _15820
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _16044 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        _16052 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_15900 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_15900 + 100] = t / 100 * _15820
                        mem[_15900 + 132] = 98 * _16052 / 100
                        mem[_15900 + 164] = 160
                        mem[_15900 + 260] = mem[_15900]
                        s = 0
                        v = _15900 + 32
                        w = _15900 + 292
                        while s < mem[_15900]:
                            mem[w] = mem[v + 12 len 20]
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_15900 + 196] = this.address
                        mem[_15900 + 228] = block.timestamp + 900
                        require ext_code.size(address(_16044))
                        call address(_16044).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _15900 + (32 * mem[_15900]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16243 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _16245 = mem[_16243]
                        require mem[_16243] <= test266151307()
                        require _16243 + mem[_16243] + 31 < _16243 + return_data.size
                        _16249 = mem[_16243 + mem[_16243]]
                        if mem[_16243 + mem[_16243]] > test266151307():
                            revert with 'NH{q', 65
                        if _16243 + ceil32(return_data.size) + (32 * mem[_16243 + mem[_16243]]) + 32 > test266151307() or (32 * mem[_16243 + mem[_16243]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _16243 + ceil32(return_data.size) + (32 * mem[_16243 + mem[_16243]]) + 32
                        mem[_16243 + ceil32(return_data.size)] = _16249
                        require _16245 + (32 * _16249) + 32 <= return_data.size
                        s = 0
                        v = _16243 + _16245 + 32
                        w = _16243 + ceil32(return_data.size) + 32
                        while s < _16249:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_10186]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _14930 = mem[mem[mem[_10186]]]
                            idx = idx + 1
                            s = t / 100 * _15820
                            u = u
                            continue 
                        if 1 >= _16249:
                            revert with 'NH{q', 50
                        if u > -mem[_16243 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = t / 100 * _15820
                        u = u + mem[_16243 + ceil32(return_data.size) + 64]
                        continue 
                    _15821 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32]]
                    _15822 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_15822] = 0
                    mem[_15822 + 32] = 0
                    mem[_15822 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_10237]:
                        if s >= mem[_10237]:
                            revert with 'NH{q', 50
                        if s >= mem[_10237]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_15821):
                            if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _14930 = mem[mem[mem[_10186]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _16163 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_16163] = bool(v)
                    mem[_16163 + 32] = 0
                    mem[_16163 + 64] = t
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16186 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                    if 0 >= mem[_10237]:
                        revert with 'NH{q', 50
                    _16208 = mem[mem[_10237 + 32] + 32]
                    if mem[mem[_10237 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / mem[mem[_10237 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _16248 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_16248 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_16248]:
                        revert with 'NH{q', 50
                    mem[_16248 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_16248]:
                        revert with 'NH{q', 50
                    mem[_16248 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_16248]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16298 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    mem[_16248 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_16248 + 100] = address(_16298)
                    mem[_16248 + 132] = _16208 / 100 * _16186
                    require ext_code.size(mem[_16248 + 44 len 20])
                    call mem[_16248 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_16298), _16208 / 100 * _16186
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16334 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16341 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_16248 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_16248 + 100] = _16208 / 100 * _16186
                    mem[_16248 + 132] = 98 * _16341 / 100
                    mem[_16248 + 164] = 160
                    mem[_16248 + 260] = mem[_16248]
                    s = 0
                    t = _16248 + 32
                    v = _16248 + 292
                    while s < mem[_16248]:
                        mem[v] = mem[t + 12 len 20]
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_16248 + 196] = this.address
                    mem[_16248 + 228] = block.timestamp + 900
                    require ext_code.size(address(_16334))
                    call address(_16334).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _16248 + (32 * mem[_16248]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16403 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16405 = mem[_16403]
                    require mem[_16403] <= test266151307()
                    require _16403 + mem[_16403] + 31 < _16403 + return_data.size
                    _16407 = mem[_16403 + mem[_16403]]
                    if mem[_16403 + mem[_16403]] > test266151307():
                        revert with 'NH{q', 65
                    if _16403 + ceil32(return_data.size) + (32 * mem[_16403 + mem[_16403]]) + 32 > test266151307() or (32 * mem[_16403 + mem[_16403]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _16403 + ceil32(return_data.size) + (32 * mem[_16403 + mem[_16403]]) + 32
                    mem[_16403 + ceil32(return_data.size)] = _16407
                    require _16405 + (32 * _16407) + 32 <= return_data.size
                    s = 0
                    t = _16403 + _16405 + 32
                    v = _16403 + ceil32(return_data.size) + 32
                    while s < _16407:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = _16208 / 100 * _16186
                        u = u
                        continue 
                    if 1 >= _16407:
                        revert with 'NH{q', 50
                    if u > -mem[_16403 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = _16208 / 100 * _16186
                    u = u + mem[_16403 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_10237]:
                    revert with 'NH{q', 50
                if mem[mem[_10237 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_10237 + 32] + 32] = mem[mem[_10237 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96]] == 1:
                    _15850 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _15921 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_15921 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_15921]:
                        revert with 'NH{q', 50
                    mem[_15921 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_15921]:
                        revert with 'NH{q', 50
                    mem[_15921 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_15921]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16008 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    mem[_15921 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_15921 + 100] = address(_16008)
                    mem[_15921 + 132] = t / 100 * _15850
                    require ext_code.size(mem[_15921 + 44 len 20])
                    call mem[_15921 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_16008), t / 100 * _15850
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16059 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    _16064 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_15921 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_15921 + 100] = t / 100 * _15850
                    mem[_15921 + 132] = 98 * _16064 / 100
                    mem[_15921 + 164] = 160
                    mem[_15921 + 260] = mem[_15921]
                    s = 0
                    v = _15921 + 32
                    w = _15921 + 292
                    while s < mem[_15921]:
                        mem[w] = mem[v + 12 len 20]
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_15921 + 196] = this.address
                    mem[_15921 + 228] = block.timestamp + 900
                    require ext_code.size(address(_16059))
                    call address(_16059).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _15921 + (32 * mem[_15921]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _16242 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _16244 = mem[_16242]
                    require mem[_16242] <= test266151307()
                    require _16242 + mem[_16242] + 31 < _16242 + return_data.size
                    _16247 = mem[_16242 + mem[_16242]]
                    if mem[_16242 + mem[_16242]] > test266151307():
                        revert with 'NH{q', 65
                    if _16242 + ceil32(return_data.size) + (32 * mem[_16242 + mem[_16242]]) + 32 > test266151307() or (32 * mem[_16242 + mem[_16242]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _16242 + ceil32(return_data.size) + (32 * mem[_16242 + mem[_16242]]) + 32
                    mem[_16242 + ceil32(return_data.size)] = _16247
                    require _16244 + (32 * _16247) + 32 <= return_data.size
                    s = 0
                    v = _16242 + _16244 + 32
                    w = _16242 + ceil32(return_data.size) + 32
                    while s < _16247:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_10186]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        idx = idx + 1
                        s = t / 100 * _15850
                        u = u
                        continue 
                    if 1 >= _16247:
                        revert with 'NH{q', 50
                    if u > -mem[_16242 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = t / 100 * _15850
                    u = u + mem[_16242 + ceil32(return_data.size) + 64]
                    continue 
                _15860 = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32]]
                _15871 = mem[64]
                mem[64] = mem[64] + 96
                mem[_15871] = 0
                mem[_15871 + 32] = 0
                mem[_15871 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_10237]:
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if s >= mem[_10237]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _10237 + 32] + 12 len 20] != address(_15860):
                        if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _14930 = mem[mem[mem[_10186]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _10237 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _14930 = mem[mem[mem[_10186]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _16160 = mem[64]
                mem[64] = mem[64] + 96
                mem[_16160] = bool(v)
                mem[_16160 + 32] = 0
                mem[_16160 + 64] = t
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _16181 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32]
                if 0 >= mem[_10237]:
                    revert with 'NH{q', 50
                _16203 = mem[mem[_10237 + 32] + 32]
                if mem[mem[_10237 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 32] > -1 / mem[mem[_10237 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _16246 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_16246 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_16246]:
                    revert with 'NH{q', 50
                mem[_16246 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_16246]:
                    revert with 'NH{q', 50
                mem[_16246 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_16246]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _16295 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                mem[_16246 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_16246 + 100] = address(_16295)
                mem[_16246 + 132] = _16203 / 100 * _16181
                require ext_code.size(mem[_16246 + 44 len 20])
                call mem[_16246 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_16295), _16203 / 100 * _16181
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _16329 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32]]
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                _16339 = mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_16246 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_16246 + 100] = _16203 / 100 * _16181
                mem[_16246 + 132] = 98 * _16339 / 100
                mem[_16246 + 164] = 160
                mem[_16246 + 260] = mem[_16246]
                s = 0
                t = _16246 + 32
                v = _16246 + 292
                while s < mem[_16246]:
                    mem[v] = mem[t + 12 len 20]
                    _14930 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_16246 + 196] = this.address
                mem[_16246 + 228] = block.timestamp + 900
                require ext_code.size(address(_16329))
                call address(_16329).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _16246 + (32 * mem[_16246]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16402 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16404 = mem[_16402]
                require mem[_16402] <= test266151307()
                require _16402 + mem[_16402] + 31 < _16402 + return_data.size
                _16406 = mem[_16402 + mem[_16402]]
                if mem[_16402 + mem[_16402]] > test266151307():
                    revert with 'NH{q', 65
                if _16402 + ceil32(return_data.size) + (32 * mem[_16402 + mem[_16402]]) + 32 > test266151307() or (32 * mem[_16402 + mem[_16402]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _16402 + ceil32(return_data.size) + (32 * mem[_16402 + mem[_16402]]) + 32
                mem[_16402 + ceil32(return_data.size)] = _16406
                require _16404 + (32 * _16406) + 32 <= return_data.size
                s = 0
                t = _16402 + _16404 + 32
                v = _16402 + ceil32(return_data.size) + 32
                while s < _16406:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _14930 = mem[mem[mem[_10186]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_10186]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_10186]] + 32] + 96] + 32] + 44 len 20] != address(_10215):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _14930 = mem[mem[mem[_10186]]]
                    idx = idx + 1
                    s = _16203 / 100 * _16181
                    u = u
                    continue 
                if 1 >= _16406:
                    revert with 'NH{q', 50
                if u > -mem[_16402 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _14930 = mem[mem[mem[_10186]]]
                idx = idx + 1
                s = _16203 / 100 * _16181
                u = u + mem[_16402 + ceil32(return_data.size) + 64]
                continue 
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15171] == bool(mem[_15171])
            if not mem[_15171]:
                revert with 0, 'Transfer fund back failed'
            if 0 >= mem[_1696]:
                revert with 'NH{q', 50
            _15354 = mem[_1696 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_15354))
            staticcall address(_15354).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _15472 = mem[_15455]
            require mem[_15455] == mem[_15455]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _15472
            require ext_code.size(address(_15354))
            call address(_15354).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _15472
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15558 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15558] == bool(mem[_15558])
}



}
