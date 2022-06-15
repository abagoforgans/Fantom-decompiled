contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d4e3441(?)
#
address owner;
address comptrollerAddress;

function comptroller() payable {
    return comptrollerAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_87e79d49(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 100).length) + 128 > test266151307() or (32 * ('cd', 100).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 100).length) + 128
    mem[96] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require calldata.size + -cd[100] + -cd[s] - 36 >= 64
        _36 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(cd[100] + cd[s] + 36)] <= test266151307()
        require calldata.size + -cd[100] + -cd[s] + -cd[(cd[100] + cd[s] + 36)] - 36 >= 32
        _37 = mem[64]
        if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 32
        require cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] <= test266151307()
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _39 = mem[64]
        if mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]) + 32
        mem[_39] = cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + (192 * cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 68
        w = _39 + 32
        while u < cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + cd[(cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 36)] + 36)]:
            require calldata.size - v >= 192
            _100 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require cd[v] == address(cd[v])
            mem[_100] = cd[v]
            require cd[(v + 32)] == cd[(v + 32)]
            mem[_100 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == cd[(v + 64)]
            mem[_100 + 64] = cd[(v + 64)]
            require calldata.size + -v - 96 >= 96
            _113 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_113] = cd[(v + 96)]
            require v + 159 < calldata.size
            _118 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require v + 192 <= calldata.size
            idx = 0
            s = v + 128
            t = _118
            while idx < 2:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_113 + 32] = _118
            mem[_100 + 96] = _113
            mem[w] = _100
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_37] = _39
        mem[_36] = _37
        require cd[(cd[100] + cd[s] + 68)] == cd[(cd[100] + cd[s] + 68)]
        mem[_36 + 32] = cd[(cd[100] + cd[s] + 68)]
        mem[t] = _36
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == cd[132]
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    _38 = mem[64]
    if mem[64] + (32 * ('cd', 164).length) + 32 > test266151307() or mem[64] + (32 * ('cd', 164).length) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * ('cd', 164).length) + 32
    mem[_38] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = _38 + 32
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[64]
    mem[mem[64] + 32] = address(cd[36])
    mem[mem[64] + 64] = cd[68]
    mem[mem[64] + 96] = 160
    _71 = mem[96]
    mem[mem[64] + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 224
    u = mem[64] + 224
    while idx < _71:
        mem[u] = t + -_70 - 224
        _97 = mem[s]
        _98 = mem[mem[s]]
        mem[t] = 64
        _99 = mem[_98]
        mem[t + 64] = 32
        _101 = mem[_99]
        mem[t + 96] = mem[_99]
        v = 0
        w = _99 + 32
        x = t + 128
        while v < _101:
            _138 = mem[w]
            mem[x] = mem[mem[w] + 12 len 20]
            mem[x + 32] = mem[_138 + 32]
            mem[x + 64] = mem[_138 + 64]
            _149 = mem[_138 + 96]
            mem[x + 96] = mem[mem[_138 + 96]]
            idx = 0
            s = mem[_149 + 32]
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
        mem[t + 32] = mem[_97 + 32]
        idx = idx + 1
        s = s + 32
        t = x
        u = u + 32
        continue 
    mem[_70 + 128] = cd[132]
    mem[_70 + 160] = t + -_70 - 32
    _102 = mem[_38]
    mem[t] = mem[_38]
    idx = 0
    s = _38 + 32
    u = t + 32
    while idx < _102:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    _127 = mem[64]
    mem[64] = t + (32 * _102) + 32
    mem[t + (32 * _102) + 32] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[t + (32 * _102) + 36] = this.address
    mem[t + (32 * _102) + 68] = address(cd[36])
    mem[t + (32 * _102) + 100] = cd[68]
    mem[t + (32 * _102) + 132] = 128
    _129 = mem[_127]
    mem[t + (32 * _102) + 164] = mem[_127]
    mem[t + (32 * _102) + 196 len ceil32(_129)] = mem[_127 + 32 len ceil32(_129)]
    if ceil32(_129) > _129:
        mem[t + (32 * _102) + _129 + 196] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(cd[36]), cd[68], 128, mem[t + (32 * _102) + 164 len ceil32(_129) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 160
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    require cd[(arg5 + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 128 > test266151307() or (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 128
    mem[ceil32(return_data.size) + 96] = cd[(arg5 + cd[(arg5 + 100)] + 36)]
    idx = 0
    s = arg5 + cd[(arg5 + 100)] + 68
    t = ceil32(return_data.size) + 128
    while idx < cd[(arg5 + cd[(arg5 + 100)] + 36)]:
        require arg5.length + -cd[(arg5 + 100)] + -cd[s] - 32 >= 64
        _949 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] <= test266151307()
        require arg5.length + -cd[(arg5 + 100)] + -cd[s] + -cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] - 32 >= 32
        _950 = mem[64]
        if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 32
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] <= test266151307()
        require arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)] > test266151307():
            revert with 'NH{q', 65
        _952 = mem[64]
        if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32
        mem[_952] = cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]
        require cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + (192 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 100 <= arg5.length + 36
        u = 0
        v = arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 100
        w = _952 + 32
        while u < cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]:
            require arg5 + arg5.length + -v + 36 >= 192
            _4651 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require cd[v] == address(cd[v])
            mem[_4651] = cd[v]
            require cd[(v + 32)] == cd[(v + 32)]
            mem[_4651 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == cd[(v + 64)]
            mem[_4651 + 64] = cd[(v + 64)]
            require arg5 + arg5.length + -v - 60 >= 96
            _5115 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_5115] = cd[(v + 96)]
            require v + 159 < arg5 + arg5.length + 36
            _5477 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require v + 192 <= arg5 + arg5.length + 36
            idx = 0
            s = v + 128
            t = _5477
            while idx < 2:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_5115 + 32] = _5477
            mem[_4651 + 96] = _5115
            mem[w] = _4651
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_950] = _952
        mem[_949] = _950
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)] == cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)]
        mem[_949 + 32] = cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)]
        mem[t] = _949
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 132)] == cd[(arg5 + 132)]
    require cd[(arg5 + 164)] <= test266151307()
    require arg5 + cd[(arg5 + 164)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 164)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _951 = mem[64]
    if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32
    mem[_951] = cd[(arg5 + cd[(arg5 + 164)] + 36)]
    require cd[(arg5 + 164)] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 164)] + 68
    t = _951 + 32
    while idx < cd[(arg5 + cd[(arg5 + 164)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    _2789 = mem[ceil32(return_data.size) + 128]
    if 1 >= cd[(arg5 + cd[(arg5 + 164)] + 36)]:
        revert with 'NH{q', 50
    _2791 = mem[_951 + 64]
    if cd[(arg5 + 132)] > test266151307():
        revert with 'NH{q', 65
    _2792 = mem[64]
    mem[mem[64]] = cd[(arg5 + 132)]
    mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
    if not cd[(arg5 + 132)]:
        _4634 = mem[mem[mem[_2789]]]
        idx = 0
        s = 0
        t = 0
        while idx < _4634:
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _4652 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 32]
            _4660 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4660] = 0
            mem[_4660 + 32] = 0
            mem[_4660 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2792]:
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_4652):
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _6483 = mem[64]
            mem[64] = mem[64] + 96
            mem[_6483] = bool(v)
            mem[_6483 + 32] = 0
            mem[_6483 + 64] = u
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_2792]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _2792 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96]] == 1:
                    _6573 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _6854 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6854 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_6854]:
                        revert with 'NH{q', 50
                    mem[_6854 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_6854]:
                        revert with 'NH{q', 50
                    mem[_6854 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    _7066 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    _7087 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_6854 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_6854 + 100] = arg3 / 100 * _6573
                    mem[_6854 + 132] = 98 * _7087 / 100
                    mem[_6854 + 164] = 160
                    mem[_6854 + 260] = mem[_6854]
                    s = 0
                    u = _6854 + 32
                    v = _6854 + 292
                    while s < mem[_6854]:
                        mem[v] = mem[u + 12 len 20]
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_6854 + 196] = this.address
                    mem[_6854 + 228] = block.timestamp + 900
                    require ext_code.size(address(_7066))
                    call address(_7066).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6854 + (32 * mem[_6854]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8498 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _8547 = mem[_8498]
                    require mem[_8498] <= test266151307()
                    require _8498 + mem[_8498] + 31 < _8498 + return_data.size
                    _8593 = mem[_8498 + mem[_8498]]
                    if mem[_8498 + mem[_8498]] > test266151307():
                        revert with 'NH{q', 65
                    if _8498 + ceil32(return_data.size) + (32 * mem[_8498 + mem[_8498]]) + 32 > test266151307() or (32 * mem[_8498 + mem[_8498]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _8498 + ceil32(return_data.size) + (32 * mem[_8498 + mem[_8498]]) + 32
                    mem[_8498 + ceil32(return_data.size)] = _8593
                    require _8547 + (32 * _8593) + 32 <= return_data.size
                    s = 0
                    u = _8498 + _8547 + 32
                    v = _8498 + ceil32(return_data.size) + 32
                    while s < _8593:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4634 = mem[mem[mem[_2789]]]
                        idx = idx + 1
                        s = arg3 / 100 * _6573
                        t = t
                        continue 
                    if 1 >= _8593:
                        revert with 'NH{q', 50
                    if t > -mem[_8498 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = arg3 / 100 * _6573
                    t = t + mem[_8498 + ceil32(return_data.size) + 64]
                    continue 
                _6578 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32]]
                _6592 = mem[64]
                mem[64] = mem[64] + 96
                mem[_6592] = 0
                mem[_6592 + 32] = 0
                mem[_6592 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_2792]:
                    if s >= mem[_2792]:
                        revert with 'NH{q', 50
                    if s >= mem[_2792]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_6578):
                        if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _4634 = mem[mem[mem[_2789]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _8304 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8304] = bool(v)
                mem[_8304 + 32] = 0
                mem[_8304 + 64] = u
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _8339 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                if 0 >= mem[_2792]:
                    revert with 'NH{q', 50
                _8368 = mem[mem[_2792 + 32] + 32]
                if mem[mem[_2792 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / mem[mem[_2792 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _8592 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_8592 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_8592]:
                    revert with 'NH{q', 50
                mem[_8592 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_8592]:
                    revert with 'NH{q', 50
                mem[_8592 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _8822 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _8842 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_8592 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_8592 + 100] = _8368 / 100 * _8339
                mem[_8592 + 132] = 98 * _8842 / 100
                mem[_8592 + 164] = 160
                mem[_8592 + 260] = mem[_8592]
                s = 0
                u = _8592 + 32
                v = _8592 + 292
                while s < mem[_8592]:
                    mem[v] = mem[u + 12 len 20]
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_8592 + 196] = this.address
                mem[_8592 + 228] = block.timestamp + 900
                require ext_code.size(address(_8822))
                call address(_8822).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _8592 + (32 * mem[_8592]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10209 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10251 = mem[_10209]
                require mem[_10209] <= test266151307()
                require _10209 + mem[_10209] + 31 < _10209 + return_data.size
                _10312 = mem[_10209 + mem[_10209]]
                if mem[_10209 + mem[_10209]] > test266151307():
                    revert with 'NH{q', 65
                if _10209 + ceil32(return_data.size) + (32 * mem[_10209 + mem[_10209]]) + 32 > test266151307() or (32 * mem[_10209 + mem[_10209]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _10209 + ceil32(return_data.size) + (32 * mem[_10209 + mem[_10209]]) + 32
                mem[_10209 + ceil32(return_data.size)] = _10312
                require _10251 + (32 * _10312) + 32 <= return_data.size
                s = 0
                u = _10209 + _10251 + 32
                v = _10209 + ceil32(return_data.size) + 32
                while s < _10312:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = _8368 / 100 * _8339
                    t = t
                    continue 
                if 1 >= _10312:
                    revert with 'NH{q', 50
                if t > -mem[_10209 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = _8368 / 100 * _8339
                t = t + mem[_10209 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_2792]:
                revert with 'NH{q', 50
            if mem[mem[_2792 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_2792 + 32] + 32] = mem[mem[_2792 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96]] == 1:
                _6660 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _7031 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_7031 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_7031]:
                    revert with 'NH{q', 50
                mem[_7031 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_7031]:
                    revert with 'NH{q', 50
                mem[_7031 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _7230 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _7254 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_7031 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7031 + 100] = arg3 / 100 * _6660
                mem[_7031 + 132] = 98 * _7254 / 100
                mem[_7031 + 164] = 160
                mem[_7031 + 260] = mem[_7031]
                s = 0
                u = _7031 + 32
                v = _7031 + 292
                while s < mem[_7031]:
                    mem[v] = mem[u + 12 len 20]
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_7031 + 196] = this.address
                mem[_7031 + 228] = block.timestamp + 900
                require ext_code.size(address(_7230))
                call address(_7230).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7031 + (32 * mem[_7031]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8497 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8546 = mem[_8497]
                require mem[_8497] <= test266151307()
                require _8497 + mem[_8497] + 31 < _8497 + return_data.size
                _8591 = mem[_8497 + mem[_8497]]
                if mem[_8497 + mem[_8497]] > test266151307():
                    revert with 'NH{q', 65
                if _8497 + ceil32(return_data.size) + (32 * mem[_8497 + mem[_8497]]) + 32 > test266151307() or (32 * mem[_8497 + mem[_8497]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _8497 + ceil32(return_data.size) + (32 * mem[_8497 + mem[_8497]]) + 32
                mem[_8497 + ceil32(return_data.size)] = _8591
                require _8546 + (32 * _8591) + 32 <= return_data.size
                s = 0
                u = _8497 + _8546 + 32
                v = _8497 + ceil32(return_data.size) + 32
                while s < _8591:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = arg3 / 100 * _6660
                    t = t
                    continue 
                if 1 >= _8591:
                    revert with 'NH{q', 50
                if t > -mem[_8497 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = arg3 / 100 * _6660
                t = t + mem[_8497 + ceil32(return_data.size) + 64]
                continue 
            _6689 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32]]
            _6745 = mem[64]
            mem[64] = mem[64] + 96
            mem[_6745] = 0
            mem[_6745 + 32] = 0
            mem[_6745 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2792]:
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_6689):
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4634 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _4634 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _8301 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8301] = bool(v)
            mem[_8301 + 32] = 0
            mem[_8301 + 64] = u
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _8334 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
            if 0 >= mem[_2792]:
                revert with 'NH{q', 50
            _8363 = mem[mem[_2792 + 32] + 32]
            if mem[mem[_2792 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / mem[mem[_2792 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _8590 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_8590 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_8590]:
                revert with 'NH{q', 50
            mem[_8590 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_8590]:
                revert with 'NH{q', 50
            mem[_8590 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _8817 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _8840 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_8590 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_8590 + 100] = _8363 / 100 * _8334
            mem[_8590 + 132] = 98 * _8840 / 100
            mem[_8590 + 164] = 160
            mem[_8590 + 260] = mem[_8590]
            s = 0
            u = _8590 + 32
            v = _8590 + 292
            while s < mem[_8590]:
                mem[v] = mem[u + 12 len 20]
                _4634 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_8590 + 196] = this.address
            mem[_8590 + 228] = block.timestamp + 900
            require ext_code.size(address(_8817))
            call address(_8817).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _8590 + (32 * mem[_8590]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10208 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10250 = mem[_10208]
            require mem[_10208] <= test266151307()
            require _10208 + mem[_10208] + 31 < _10208 + return_data.size
            _10311 = mem[_10208 + mem[_10208]]
            if mem[_10208 + mem[_10208]] > test266151307():
                revert with 'NH{q', 65
            if _10208 + ceil32(return_data.size) + (32 * mem[_10208 + mem[_10208]]) + 32 > test266151307() or (32 * mem[_10208 + mem[_10208]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _10208 + ceil32(return_data.size) + (32 * mem[_10208 + mem[_10208]]) + 32
            mem[_10208 + ceil32(return_data.size)] = _10311
            require _10250 + (32 * _10311) + 32 <= return_data.size
            s = 0
            u = _10208 + _10250 + 32
            v = _10208 + ceil32(return_data.size) + 32
            while s < _10311:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _4634 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                if idx == -1:
                    revert with 'NH{q', 17
                _4634 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = _8363 / 100 * _8334
                t = t
                continue 
            if 1 >= _10311:
                revert with 'NH{q', 50
            if t > -mem[_10208 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _4634 = mem[mem[mem[_2789]]]
            idx = idx + 1
            s = _8363 / 100 * _8334
            t = t + mem[_10208 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _4642 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_951]:
            revert with 'NH{q', 50
        _4647 = mem[_951 + 32]
        if cd[(arg5 + 132)] > test266151307():
            revert with 'NH{q', 65
        _4656 = mem[64]
        mem[mem[64]] = cd[(arg5 + 132)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
        if not cd[(arg5 + 132)]:
            _6476 = mem[mem[mem[_4642]]]
            idx = 0
            s = 0
            u = 0
            while idx < _6476:
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _6518 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 32]
                _6539 = mem[64]
                mem[64] = mem[64] + 96
                mem[_6539] = 0
                mem[_6539 + 32] = 0
                mem[_6539 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_4656]:
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_6518):
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _8299 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8299] = bool(w)
                mem[_8299 + 32] = 0
                mem[_8299 + 64] = v
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_4656]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _4656 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96]] == 1:
                        _8419 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _8693 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_8693 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_8693]:
                            revert with 'NH{q', 50
                        mem[_8693 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_8693]:
                            revert with 'NH{q', 50
                        mem[_8693 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        _8923 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        _8951 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_8693 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_8693 + 100] = t / 100 * _8419
                        mem[_8693 + 132] = 98 * _8951 / 100
                        mem[_8693 + 164] = 160
                        mem[_8693 + 260] = mem[_8693]
                        s = 0
                        v = _8693 + 32
                        w = _8693 + 292
                        while s < mem[_8693]:
                            mem[w] = mem[v + 12 len 20]
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_8693 + 196] = this.address
                        mem[_8693 + 228] = block.timestamp + 900
                        require ext_code.size(address(_8923))
                        call address(_8923).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8693 + (32 * mem[_8693]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10204 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10243 = mem[_10204]
                        require mem[_10204] <= test266151307()
                        require _10204 + mem[_10204] + 31 < _10204 + return_data.size
                        _10310 = mem[_10204 + mem[_10204]]
                        if mem[_10204 + mem[_10204]] > test266151307():
                            revert with 'NH{q', 65
                        if _10204 + ceil32(return_data.size) + (32 * mem[_10204 + mem[_10204]]) + 32 > test266151307() or (32 * mem[_10204 + mem[_10204]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10204 + ceil32(return_data.size) + (32 * mem[_10204 + mem[_10204]]) + 32
                        mem[_10204 + ceil32(return_data.size)] = _10310
                        require _10243 + (32 * _10310) + 32 <= return_data.size
                        s = 0
                        v = _10204 + _10243 + 32
                        w = _10204 + ceil32(return_data.size) + 32
                        while s < _10310:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _6476 = mem[mem[mem[_4642]]]
                            idx = idx + 1
                            s = t / 100 * _8419
                            u = u
                            continue 
                        if 1 >= _10310:
                            revert with 'NH{q', 50
                        if u > -mem[_10204 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = t / 100 * _8419
                        u = u + mem[_10204 + ceil32(return_data.size) + 64]
                        continue 
                    _8426 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32]]
                    _8439 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8439] = 0
                    mem[_8439 + 32] = 0
                    mem[_8439 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_4656]:
                        if s >= mem[_4656]:
                            revert with 'NH{q', 50
                        if s >= mem[_4656]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_8426):
                            if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _6476 = mem[mem[mem[_4642]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _9978 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9978] = bool(v)
                    mem[_9978 + 32] = 0
                    mem[_9978 + 64] = t
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _10017 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                    if 0 >= mem[_4656]:
                        revert with 'NH{q', 50
                    _10042 = mem[mem[_4656 + 32] + 32]
                    if mem[mem[_4656 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / mem[mem[_4656 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _10309 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_10309 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_10309]:
                        revert with 'NH{q', 50
                    mem[_10309 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_10309]:
                        revert with 'NH{q', 50
                    mem[_10309 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _10494 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _10511 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_10309 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_10309 + 100] = _10042 / 100 * _10017
                    mem[_10309 + 132] = 98 * _10511 / 100
                    mem[_10309 + 164] = 160
                    mem[_10309 + 260] = mem[_10309]
                    s = 0
                    t = _10309 + 32
                    v = _10309 + 292
                    while s < mem[_10309]:
                        mem[v] = mem[t + 12 len 20]
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_10309 + 196] = this.address
                    mem[_10309 + 228] = block.timestamp + 900
                    require ext_code.size(address(_10494))
                    call address(_10494).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _10309 + (32 * mem[_10309]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11604 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11654 = mem[_11604]
                    require mem[_11604] <= test266151307()
                    require _11604 + mem[_11604] + 31 < _11604 + return_data.size
                    _11705 = mem[_11604 + mem[_11604]]
                    if mem[_11604 + mem[_11604]] > test266151307():
                        revert with 'NH{q', 65
                    if _11604 + ceil32(return_data.size) + (32 * mem[_11604 + mem[_11604]]) + 32 > test266151307() or (32 * mem[_11604 + mem[_11604]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _11604 + ceil32(return_data.size) + (32 * mem[_11604 + mem[_11604]]) + 32
                    mem[_11604 + ceil32(return_data.size)] = _11705
                    require _11654 + (32 * _11705) + 32 <= return_data.size
                    s = 0
                    t = _11604 + _11654 + 32
                    v = _11604 + ceil32(return_data.size) + 32
                    while s < _11705:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = _10042 / 100 * _10017
                        u = u
                        continue 
                    if 1 >= _11705:
                        revert with 'NH{q', 50
                    if u > -mem[_11604 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = _10042 / 100 * _10017
                    u = u + mem[_11604 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_4656]:
                    revert with 'NH{q', 50
                if mem[mem[_4656 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_4656 + 32] + 32] = mem[mem[_4656 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96]] == 1:
                    _8509 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _8874 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_8874 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_8874]:
                        revert with 'NH{q', 50
                    mem[_8874 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_8874]:
                        revert with 'NH{q', 50
                    mem[_8874 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _9078 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _9099 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_8874 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_8874 + 100] = t / 100 * _8509
                    mem[_8874 + 132] = 98 * _9099 / 100
                    mem[_8874 + 164] = 160
                    mem[_8874 + 260] = mem[_8874]
                    s = 0
                    v = _8874 + 32
                    w = _8874 + 292
                    while s < mem[_8874]:
                        mem[w] = mem[v + 12 len 20]
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_8874 + 196] = this.address
                    mem[_8874 + 228] = block.timestamp + 900
                    require ext_code.size(address(_9078))
                    call address(_9078).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _8874 + (32 * mem[_8874]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10203 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10242 = mem[_10203]
                    require mem[_10203] <= test266151307()
                    require _10203 + mem[_10203] + 31 < _10203 + return_data.size
                    _10308 = mem[_10203 + mem[_10203]]
                    if mem[_10203 + mem[_10203]] > test266151307():
                        revert with 'NH{q', 65
                    if _10203 + ceil32(return_data.size) + (32 * mem[_10203 + mem[_10203]]) + 32 > test266151307() or (32 * mem[_10203 + mem[_10203]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _10203 + ceil32(return_data.size) + (32 * mem[_10203 + mem[_10203]]) + 32
                    mem[_10203 + ceil32(return_data.size)] = _10308
                    require _10242 + (32 * _10308) + 32 <= return_data.size
                    s = 0
                    v = _10203 + _10242 + 32
                    w = _10203 + ceil32(return_data.size) + 32
                    while s < _10308:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = t / 100 * _8509
                        u = u
                        continue 
                    if 1 >= _10308:
                        revert with 'NH{q', 50
                    if u > -mem[_10203 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = t / 100 * _8509
                    u = u + mem[_10203 + ceil32(return_data.size) + 64]
                    continue 
                _8529 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32]]
                _8577 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8577] = 0
                mem[_8577 + 32] = 0
                mem[_8577 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_4656]:
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_8529):
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6476 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _6476 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _9975 = mem[64]
                mem[64] = mem[64] + 96
                mem[_9975] = bool(v)
                mem[_9975 + 32] = 0
                mem[_9975 + 64] = t
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _10012 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                if 0 >= mem[_4656]:
                    revert with 'NH{q', 50
                _10037 = mem[mem[_4656 + 32] + 32]
                if mem[mem[_4656 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / mem[mem[_4656 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _10307 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_10307 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_10307]:
                    revert with 'NH{q', 50
                mem[_10307 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_10307]:
                    revert with 'NH{q', 50
                mem[_10307 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _10489 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _10509 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_10307 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_10307 + 100] = _10037 / 100 * _10012
                mem[_10307 + 132] = 98 * _10509 / 100
                mem[_10307 + 164] = 160
                mem[_10307 + 260] = mem[_10307]
                s = 0
                t = _10307 + 32
                v = _10307 + 292
                while s < mem[_10307]:
                    mem[v] = mem[t + 12 len 20]
                    _6476 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_10307 + 196] = this.address
                mem[_10307 + 228] = block.timestamp + 900
                require ext_code.size(address(_10489))
                call address(_10489).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _10307 + (32 * mem[_10307]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11603 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11653 = mem[_11603]
                require mem[_11603] <= test266151307()
                require _11603 + mem[_11603] + 31 < _11603 + return_data.size
                _11704 = mem[_11603 + mem[_11603]]
                if mem[_11603 + mem[_11603]] > test266151307():
                    revert with 'NH{q', 65
                if _11603 + ceil32(return_data.size) + (32 * mem[_11603 + mem[_11603]]) + 32 > test266151307() or (32 * mem[_11603 + mem[_11603]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _11603 + ceil32(return_data.size) + (32 * mem[_11603 + mem[_11603]]) + 32
                mem[_11603 + ceil32(return_data.size)] = _11704
                require _11653 + (32 * _11704) + 32 <= return_data.size
                s = 0
                t = _11603 + _11653 + 32
                v = _11603 + ceil32(return_data.size) + 32
                while s < _11704:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _6476 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6476 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = _10037 / 100 * _10012
                    u = u
                    continue 
                if 1 >= _11704:
                    revert with 'NH{q', 50
                if u > -mem[_11603 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _6476 = mem[mem[mem[_4642]]]
                idx = idx + 1
                s = _10037 / 100 * _10012
                u = u + mem[_11603 + ceil32(return_data.size) + 64]
                continue 
        else:
            mem[64] = _4656 + (32 * cd[(arg5 + 132)]) + 96
            mem[_4656 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_4656 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[var163001] = _4656 + (32 * cd[(arg5 + 132)]) + 32
            s = var163001
            idx = var163002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_4656 + (32 * cd[(arg5 + 132)]) + 32] = 0
                mem[_4656 + (32 * cd[(arg5 + 132)]) + 64] = 0
                mem[s + 32] = _4656 + (32 * cd[(arg5 + 132)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _9970 = mem[mem[mem[_4642]]]
            idx = 0
            s = 0
            u = 0
            while idx < _9970:
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _10073 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 32]
                _10097 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10097] = 0
                mem[_10097 + 32] = 0
                mem[_10097 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_4656]:
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_10073):
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _11390 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11390] = bool(w)
                mem[_11390 + 32] = 0
                mem[_11390 + 64] = v
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_4656]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _4656 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96]] == 1:
                        _11569 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _11774 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_11774 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_11774]:
                            revert with 'NH{q', 50
                        mem[_11774 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_11774]:
                            revert with 'NH{q', 50
                        mem[_11774 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        _11930 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        _11956 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_11774 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_11774 + 100] = t / 100 * _11569
                        mem[_11774 + 132] = 98 * _11956 / 100
                        mem[_11774 + 164] = 160
                        mem[_11774 + 260] = mem[_11774]
                        s = 0
                        v = _11774 + 32
                        w = _11774 + 292
                        while s < mem[_11774]:
                            mem[w] = mem[v + 12 len 20]
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_11774 + 196] = this.address
                        mem[_11774 + 228] = block.timestamp + 900
                        require ext_code.size(address(_11930))
                        call address(_11930).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11774 + (32 * mem[_11774]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12677 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12689 = mem[_12677]
                        require mem[_12677] <= test266151307()
                        require _12677 + mem[_12677] + 31 < _12677 + return_data.size
                        _12709 = mem[_12677 + mem[_12677]]
                        if mem[_12677 + mem[_12677]] > test266151307():
                            revert with 'NH{q', 65
                        if _12677 + ceil32(return_data.size) + (32 * mem[_12677 + mem[_12677]]) + 32 > test266151307() or (32 * mem[_12677 + mem[_12677]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12677 + ceil32(return_data.size) + (32 * mem[_12677 + mem[_12677]]) + 32
                        mem[_12677 + ceil32(return_data.size)] = _12709
                        require _12689 + (32 * _12709) + 32 <= return_data.size
                        s = 0
                        v = _12677 + _12689 + 32
                        w = _12677 + ceil32(return_data.size) + 32
                        while s < _12709:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_4642]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _9970 = mem[mem[mem[_4642]]]
                            idx = idx + 1
                            s = t / 100 * _11569
                            u = u
                            continue 
                        if 1 >= _12709:
                            revert with 'NH{q', 50
                        if u > -mem[_12677 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = t / 100 * _11569
                        u = u + mem[_12677 + ceil32(return_data.size) + 64]
                        continue 
                    _11576 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32]]
                    _11579 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_11579] = 0
                    mem[_11579 + 32] = 0
                    mem[_11579 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_4656]:
                        if s >= mem[_4656]:
                            revert with 'NH{q', 50
                        if s >= mem[_4656]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_11576):
                            if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _9970 = mem[mem[mem[_4642]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _12507 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12507] = bool(v)
                    mem[_12507 + 32] = 0
                    mem[_12507 + 64] = t
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _12553 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                    if 0 >= mem[_4656]:
                        revert with 'NH{q', 50
                    _12583 = mem[mem[_4656 + 32] + 32]
                    if mem[mem[_4656 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / mem[mem[_4656 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _12708 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12708 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12708]:
                        revert with 'NH{q', 50
                    mem[_12708 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12708]:
                        revert with 'NH{q', 50
                    mem[_12708 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _12844 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _12861 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12708 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12708 + 100] = _12583 / 100 * _12553
                    mem[_12708 + 132] = 98 * _12861 / 100
                    mem[_12708 + 164] = 160
                    mem[_12708 + 260] = mem[_12708]
                    s = 0
                    t = _12708 + 32
                    v = _12708 + 292
                    while s < mem[_12708]:
                        mem[v] = mem[t + 12 len 20]
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_12708 + 196] = this.address
                    mem[_12708 + 228] = block.timestamp + 900
                    require ext_code.size(address(_12844))
                    call address(_12844).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12708 + (32 * mem[_12708]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13322 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13344 = mem[_13322]
                    require mem[_13322] <= test266151307()
                    require _13322 + mem[_13322] + 31 < _13322 + return_data.size
                    _13362 = mem[_13322 + mem[_13322]]
                    if mem[_13322 + mem[_13322]] > test266151307():
                        revert with 'NH{q', 65
                    if _13322 + ceil32(return_data.size) + (32 * mem[_13322 + mem[_13322]]) + 32 > test266151307() or (32 * mem[_13322 + mem[_13322]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13322 + ceil32(return_data.size) + (32 * mem[_13322 + mem[_13322]]) + 32
                    mem[_13322 + ceil32(return_data.size)] = _13362
                    require _13344 + (32 * _13362) + 32 <= return_data.size
                    s = 0
                    t = _13322 + _13344 + 32
                    v = _13322 + ceil32(return_data.size) + 32
                    while s < _13362:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = _12583 / 100 * _12553
                        u = u
                        continue 
                    if 1 >= _13362:
                        revert with 'NH{q', 50
                    if u > -mem[_13322 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = _12583 / 100 * _12553
                    u = u + mem[_13322 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_4656]:
                    revert with 'NH{q', 50
                if mem[mem[_4656 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_4656 + 32] + 32] = mem[mem[_4656 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96]] == 1:
                    _11630 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _11892 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_11892 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_11892]:
                        revert with 'NH{q', 50
                    mem[_11892 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_11892]:
                        revert with 'NH{q', 50
                    mem[_11892 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _12051 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    _12069 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_11892 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_11892 + 100] = t / 100 * _11630
                    mem[_11892 + 132] = 98 * _12069 / 100
                    mem[_11892 + 164] = 160
                    mem[_11892 + 260] = mem[_11892]
                    s = 0
                    v = _11892 + 32
                    w = _11892 + 292
                    while s < mem[_11892]:
                        mem[w] = mem[v + 12 len 20]
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_11892 + 196] = this.address
                    mem[_11892 + 228] = block.timestamp + 900
                    require ext_code.size(address(_12051))
                    call address(_12051).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11892 + (32 * mem[_11892]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12676 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12688 = mem[_12676]
                    require mem[_12676] <= test266151307()
                    require _12676 + mem[_12676] + 31 < _12676 + return_data.size
                    _12707 = mem[_12676 + mem[_12676]]
                    if mem[_12676 + mem[_12676]] > test266151307():
                        revert with 'NH{q', 65
                    if _12676 + ceil32(return_data.size) + (32 * mem[_12676 + mem[_12676]]) + 32 > test266151307() or (32 * mem[_12676 + mem[_12676]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12676 + ceil32(return_data.size) + (32 * mem[_12676 + mem[_12676]]) + 32
                    mem[_12676 + ceil32(return_data.size)] = _12707
                    require _12688 + (32 * _12707) + 32 <= return_data.size
                    s = 0
                    v = _12676 + _12688 + 32
                    w = _12676 + ceil32(return_data.size) + 32
                    while s < _12707:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_4642]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        idx = idx + 1
                        s = t / 100 * _11630
                        u = u
                        continue 
                    if 1 >= _12707:
                        revert with 'NH{q', 50
                    if u > -mem[_12676 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = t / 100 * _11630
                    u = u + mem[_12676 + ceil32(return_data.size) + 64]
                    continue 
                _11655 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32]]
                _11695 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11695] = 0
                mem[_11695 + 32] = 0
                mem[_11695 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_4656]:
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if s >= mem[_4656]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4656 + 32] + 12 len 20] != address(_11655):
                        if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9970 = mem[mem[mem[_4642]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _4656 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _9970 = mem[mem[mem[_4642]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _12504 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12504] = bool(v)
                mem[_12504 + 32] = 0
                mem[_12504 + 64] = t
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _12548 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32]
                if 0 >= mem[_4656]:
                    revert with 'NH{q', 50
                _12578 = mem[mem[_4656 + 32] + 32]
                if mem[mem[_4656 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 32] > -1 / mem[mem[_4656 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _12706 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_12706 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_12706]:
                    revert with 'NH{q', 50
                mem[_12706 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_12706]:
                    revert with 'NH{q', 50
                mem[_12706 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _12839 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32]]
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                _12859 = mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_12706 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_12706 + 100] = _12578 / 100 * _12548
                mem[_12706 + 132] = 98 * _12859 / 100
                mem[_12706 + 164] = 160
                mem[_12706 + 260] = mem[_12706]
                s = 0
                t = _12706 + 32
                v = _12706 + 292
                while s < mem[_12706]:
                    mem[v] = mem[t + 12 len 20]
                    _9970 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_12706 + 196] = this.address
                mem[_12706 + 228] = block.timestamp + 900
                require ext_code.size(address(_12839))
                call address(_12839).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _12706 + (32 * mem[_12706]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13321 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13343 = mem[_13321]
                require mem[_13321] <= test266151307()
                require _13321 + mem[_13321] + 31 < _13321 + return_data.size
                _13361 = mem[_13321 + mem[_13321]]
                if mem[_13321 + mem[_13321]] > test266151307():
                    revert with 'NH{q', 65
                if _13321 + ceil32(return_data.size) + (32 * mem[_13321 + mem[_13321]]) + 32 > test266151307() or (32 * mem[_13321 + mem[_13321]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13321 + ceil32(return_data.size) + (32 * mem[_13321 + mem[_13321]]) + 32
                mem[_13321 + ceil32(return_data.size)] = _13361
                require _13343 + (32 * _13361) + 32 <= return_data.size
                s = 0
                t = _13321 + _13343 + 32
                v = _13321 + ceil32(return_data.size) + 32
                while s < _13361:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _9970 = mem[mem[mem[_4642]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_4642]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_4642]] + 32] + 96] + 32] + 44 len 20] != address(_4647):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9970 = mem[mem[mem[_4642]]]
                    idx = idx + 1
                    s = _12578 / 100 * _12548
                    u = u
                    continue 
                if 1 >= _13361:
                    revert with 'NH{q', 50
                if u > -mem[_13321 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _9970 = mem[mem[mem[_4642]]]
                idx = idx + 1
                s = _12578 / 100 * _12548
                u = u + mem[_13321 + ceil32(return_data.size) + 64]
                continue 
    else:
        mem[64] = _2792 + (32 * cd[(arg5 + 132)]) + 96
        mem[_2792 + (32 * cd[(arg5 + 132)]) + 32] = 0
        mem[_2792 + (32 * cd[(arg5 + 132)]) + 64] = 0
        mem[var154001] = _2792 + (32 * cd[(arg5 + 132)]) + 32
        s = var154001
        idx = var154002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_2792 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_2792 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[s + 32] = _2792 + (32 * cd[(arg5 + 132)]) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _8298 = mem[mem[mem[_2789]]]
        idx = 0
        s = 0
        t = 0
        while idx < _8298:
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _8388 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 32]
            _8402 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8402] = 0
            mem[_8402 + 32] = 0
            mem[_8402 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2792]:
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_8388):
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _9990 = mem[64]
            mem[64] = mem[64] + 96
            mem[_9990] = bool(v)
            mem[_9990 + 32] = 0
            mem[_9990 + 64] = u
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_2792]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _2792 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96]] == 1:
                    _10129 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _10427 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_10427 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_10427]:
                        revert with 'NH{q', 50
                    mem[_10427 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_10427]:
                        revert with 'NH{q', 50
                    mem[_10427 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    _10619 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    _10636 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_10427 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_10427 + 100] = arg3 / 100 * _10129
                    mem[_10427 + 132] = 98 * _10636 / 100
                    mem[_10427 + 164] = 160
                    mem[_10427 + 260] = mem[_10427]
                    s = 0
                    u = _10427 + 32
                    v = _10427 + 292
                    while s < mem[_10427]:
                        mem[v] = mem[u + 12 len 20]
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_10427 + 196] = this.address
                    mem[_10427 + 228] = block.timestamp + 900
                    require ext_code.size(address(_10619))
                    call address(_10619).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _10427 + (32 * mem[_10427]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11625 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11679 = mem[_11625]
                    require mem[_11625] <= test266151307()
                    require _11625 + mem[_11625] + 31 < _11625 + return_data.size
                    _11712 = mem[_11625 + mem[_11625]]
                    if mem[_11625 + mem[_11625]] > test266151307():
                        revert with 'NH{q', 65
                    if _11625 + ceil32(return_data.size) + (32 * mem[_11625 + mem[_11625]]) + 32 > test266151307() or (32 * mem[_11625 + mem[_11625]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _11625 + ceil32(return_data.size) + (32 * mem[_11625 + mem[_11625]]) + 32
                    mem[_11625 + ceil32(return_data.size)] = _11712
                    require _11679 + (32 * _11712) + 32 <= return_data.size
                    s = 0
                    u = _11625 + _11679 + 32
                    v = _11625 + ceil32(return_data.size) + 32
                    while s < _11712:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_2789]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _8298 = mem[mem[mem[_2789]]]
                        idx = idx + 1
                        s = arg3 / 100 * _10129
                        t = t
                        continue 
                    if 1 >= _11712:
                        revert with 'NH{q', 50
                    if t > -mem[_11625 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = arg3 / 100 * _10129
                    t = t + mem[_11625 + ceil32(return_data.size) + 64]
                    continue 
                _10135 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32]]
                _10157 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10157] = 0
                mem[_10157 + 32] = 0
                mem[_10157 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_2792]:
                    if s >= mem[_2792]:
                        revert with 'NH{q', 50
                    if s >= mem[_2792]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_10135):
                        if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _8298 = mem[mem[mem[_2789]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _11397 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11397] = bool(v)
                mem[_11397 + 32] = 0
                mem[_11397 + 64] = u
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _11440 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                if 0 >= mem[_2792]:
                    revert with 'NH{q', 50
                _11487 = mem[mem[_2792 + 32] + 32]
                if mem[mem[_2792 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / mem[mem[_2792 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _11711 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_11711 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_11711]:
                    revert with 'NH{q', 50
                mem[_11711 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_11711]:
                    revert with 'NH{q', 50
                mem[_11711 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _11857 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _11876 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_11711 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_11711 + 100] = _11487 / 100 * _11440
                mem[_11711 + 132] = 98 * _11876 / 100
                mem[_11711 + 164] = 160
                mem[_11711 + 260] = mem[_11711]
                s = 0
                u = _11711 + 32
                v = _11711 + 292
                while s < mem[_11711]:
                    mem[v] = mem[u + 12 len 20]
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_11711 + 196] = this.address
                mem[_11711 + 228] = block.timestamp + 900
                require ext_code.size(address(_11857))
                call address(_11857).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11711 + (32 * mem[_11711]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12684 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12699 = mem[_12684]
                require mem[_12684] <= test266151307()
                require _12684 + mem[_12684] + 31 < _12684 + return_data.size
                _12715 = mem[_12684 + mem[_12684]]
                if mem[_12684 + mem[_12684]] > test266151307():
                    revert with 'NH{q', 65
                if _12684 + ceil32(return_data.size) + (32 * mem[_12684 + mem[_12684]]) + 32 > test266151307() or (32 * mem[_12684 + mem[_12684]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12684 + ceil32(return_data.size) + (32 * mem[_12684 + mem[_12684]]) + 32
                mem[_12684 + ceil32(return_data.size)] = _12715
                require _12699 + (32 * _12715) + 32 <= return_data.size
                s = 0
                u = _12684 + _12699 + 32
                v = _12684 + ceil32(return_data.size) + 32
                while s < _12715:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = _11487 / 100 * _11440
                    t = t
                    continue 
                if 1 >= _12715:
                    revert with 'NH{q', 50
                if t > -mem[_12684 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = _11487 / 100 * _11440
                t = t + mem[_12684 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_2792]:
                revert with 'NH{q', 50
            if mem[mem[_2792 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_2792 + 32] + 32] = mem[mem[_2792 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96]] == 1:
                _10236 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _10559 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_10559 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_10559]:
                    revert with 'NH{q', 50
                mem[_10559 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_10559]:
                    revert with 'NH{q', 50
                mem[_10559 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _10731 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                _10747 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_10559 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_10559 + 100] = arg3 / 100 * _10236
                mem[_10559 + 132] = 98 * _10747 / 100
                mem[_10559 + 164] = 160
                mem[_10559 + 260] = mem[_10559]
                s = 0
                u = _10559 + 32
                v = _10559 + 292
                while s < mem[_10559]:
                    mem[v] = mem[u + 12 len 20]
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_10559 + 196] = this.address
                mem[_10559 + 228] = block.timestamp + 900
                require ext_code.size(address(_10731))
                call address(_10731).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _10559 + (32 * mem[_10559]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11624 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11678 = mem[_11624]
                require mem[_11624] <= test266151307()
                require _11624 + mem[_11624] + 31 < _11624 + return_data.size
                _11710 = mem[_11624 + mem[_11624]]
                if mem[_11624 + mem[_11624]] > test266151307():
                    revert with 'NH{q', 65
                if _11624 + ceil32(return_data.size) + (32 * mem[_11624 + mem[_11624]]) + 32 > test266151307() or (32 * mem[_11624 + mem[_11624]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _11624 + ceil32(return_data.size) + (32 * mem[_11624 + mem[_11624]]) + 32
                mem[_11624 + ceil32(return_data.size)] = _11710
                require _11678 + (32 * _11710) + 32 <= return_data.size
                s = 0
                u = _11624 + _11678 + 32
                v = _11624 + ceil32(return_data.size) + 32
                while s < _11710:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2789]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    idx = idx + 1
                    s = arg3 / 100 * _10236
                    t = t
                    continue 
                if 1 >= _11710:
                    revert with 'NH{q', 50
                if t > -mem[_11624 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = arg3 / 100 * _10236
                t = t + mem[_11624 + ceil32(return_data.size) + 64]
                continue 
            _10265 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32]]
            _10304 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10304] = 0
            mem[_10304 + 32] = 0
            mem[_10304 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2792]:
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if s >= mem[_2792]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2792 + 32] + 12 len 20] != address(_10265):
                    if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8298 = mem[mem[mem[_2789]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2792 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _8298 = mem[mem[mem[_2789]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _11394 = mem[64]
            mem[64] = mem[64] + 96
            mem[_11394] = bool(v)
            mem[_11394 + 32] = 0
            mem[_11394 + 64] = u
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _11435 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32]
            if 0 >= mem[_2792]:
                revert with 'NH{q', 50
            _11482 = mem[mem[_2792 + 32] + 32]
            if mem[mem[_2792 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 32] > -1 / mem[mem[_2792 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _11709 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_11709 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_11709]:
                revert with 'NH{q', 50
            mem[_11709 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_11709]:
                revert with 'NH{q', 50
            mem[_11709 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _11852 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32]]
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            _11874 = mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_11709 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_11709 + 100] = _11482 / 100 * _11435
            mem[_11709 + 132] = 98 * _11874 / 100
            mem[_11709 + 164] = 160
            mem[_11709 + 260] = mem[_11709]
            s = 0
            u = _11709 + 32
            v = _11709 + 292
            while s < mem[_11709]:
                mem[v] = mem[u + 12 len 20]
                _8298 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_11709 + 196] = this.address
            mem[_11709 + 228] = block.timestamp + 900
            require ext_code.size(address(_11852))
            call address(_11852).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _11709 + (32 * mem[_11709]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12683 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12698 = mem[_12683]
            require mem[_12683] <= test266151307()
            require _12683 + mem[_12683] + 31 < _12683 + return_data.size
            _12714 = mem[_12683 + mem[_12683]]
            if mem[_12683 + mem[_12683]] > test266151307():
                revert with 'NH{q', 65
            if _12683 + ceil32(return_data.size) + (32 * mem[_12683 + mem[_12683]]) + 32 > test266151307() or (32 * mem[_12683 + mem[_12683]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _12683 + ceil32(return_data.size) + (32 * mem[_12683 + mem[_12683]]) + 32
            mem[_12683 + ceil32(return_data.size)] = _12714
            require _12698 + (32 * _12714) + 32 <= return_data.size
            s = 0
            u = _12683 + _12698 + 32
            v = _12683 + ceil32(return_data.size) + 32
            while s < _12714:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _8298 = mem[mem[mem[_2789]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_2789]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_2789]] + 32] + 96] + 32] + 44 len 20] != address(_2791):
                if idx == -1:
                    revert with 'NH{q', 17
                _8298 = mem[mem[mem[_2789]]]
                idx = idx + 1
                s = _11482 / 100 * _11435
                t = t
                continue 
            if 1 >= _12714:
                revert with 'NH{q', 50
            if t > -mem[_12683 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _8298 = mem[mem[mem[_2789]]]
            idx = idx + 1
            s = _11482 / 100 * _11435
            t = t + mem[_12683 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _8343 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_951]:
            revert with 'NH{q', 50
        _8372 = mem[_951 + 32]
        if cd[(arg5 + 132)] > test266151307():
            revert with 'NH{q', 65
        _8394 = mem[64]
        mem[mem[64]] = cd[(arg5 + 132)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
        if not cd[(arg5 + 132)]:
            _9973 = mem[mem[mem[_8343]]]
            idx = 0
            s = 0
            u = 0
            while idx < _9973:
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _10080 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 32]
                _10100 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10100] = 0
                mem[_10100 + 32] = 0
                mem[_10100 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_8394]:
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_10080):
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _11392 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11392] = bool(w)
                mem[_11392 + 32] = 0
                mem[_11392 + 64] = v
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_8394]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _8394 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96]] == 1:
                        _11574 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _11780 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_11780 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_11780]:
                            revert with 'NH{q', 50
                        mem[_11780 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_11780]:
                            revert with 'NH{q', 50
                        mem[_11780 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        _11939 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        _11961 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_11780 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_11780 + 100] = t / 100 * _11574
                        mem[_11780 + 132] = 98 * _11961 / 100
                        mem[_11780 + 164] = 160
                        mem[_11780 + 260] = mem[_11780]
                        s = 0
                        v = _11780 + 32
                        w = _11780 + 292
                        while s < mem[_11780]:
                            mem[w] = mem[v + 12 len 20]
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_11780 + 196] = this.address
                        mem[_11780 + 228] = block.timestamp + 900
                        require ext_code.size(address(_11939))
                        call address(_11939).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _11780 + (32 * mem[_11780]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12679 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12691 = mem[_12679]
                        require mem[_12679] <= test266151307()
                        require _12679 + mem[_12679] + 31 < _12679 + return_data.size
                        _12713 = mem[_12679 + mem[_12679]]
                        if mem[_12679 + mem[_12679]] > test266151307():
                            revert with 'NH{q', 65
                        if _12679 + ceil32(return_data.size) + (32 * mem[_12679 + mem[_12679]]) + 32 > test266151307() or (32 * mem[_12679 + mem[_12679]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12679 + ceil32(return_data.size) + (32 * mem[_12679 + mem[_12679]]) + 32
                        mem[_12679 + ceil32(return_data.size)] = _12713
                        require _12691 + (32 * _12713) + 32 <= return_data.size
                        s = 0
                        v = _12679 + _12691 + 32
                        w = _12679 + ceil32(return_data.size) + 32
                        while s < _12713:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _9973 = mem[mem[mem[_8343]]]
                            idx = idx + 1
                            s = t / 100 * _11574
                            u = u
                            continue 
                        if 1 >= _12713:
                            revert with 'NH{q', 50
                        if u > -mem[_12679 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = t / 100 * _11574
                        u = u + mem[_12679 + ceil32(return_data.size) + 64]
                        continue 
                    _11577 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32]]
                    _11580 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_11580] = 0
                    mem[_11580 + 32] = 0
                    mem[_11580 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_8394]:
                        if s >= mem[_8394]:
                            revert with 'NH{q', 50
                        if s >= mem[_8394]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_11577):
                            if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _9973 = mem[mem[mem[_8343]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _12513 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12513] = bool(v)
                    mem[_12513 + 32] = 0
                    mem[_12513 + 64] = t
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _12563 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                    if 0 >= mem[_8394]:
                        revert with 'NH{q', 50
                    _12593 = mem[mem[_8394 + 32] + 32]
                    if mem[mem[_8394 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / mem[mem[_8394 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _12712 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12712 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12712]:
                        revert with 'NH{q', 50
                    mem[_12712 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12712]:
                        revert with 'NH{q', 50
                    mem[_12712 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _12854 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _12865 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12712 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12712 + 100] = _12593 / 100 * _12563
                    mem[_12712 + 132] = 98 * _12865 / 100
                    mem[_12712 + 164] = 160
                    mem[_12712 + 260] = mem[_12712]
                    s = 0
                    t = _12712 + 32
                    v = _12712 + 292
                    while s < mem[_12712]:
                        mem[v] = mem[t + 12 len 20]
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_12712 + 196] = this.address
                    mem[_12712 + 228] = block.timestamp + 900
                    require ext_code.size(address(_12854))
                    call address(_12854).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12712 + (32 * mem[_12712]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13324 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13346 = mem[_13324]
                    require mem[_13324] <= test266151307()
                    require _13324 + mem[_13324] + 31 < _13324 + return_data.size
                    _13364 = mem[_13324 + mem[_13324]]
                    if mem[_13324 + mem[_13324]] > test266151307():
                        revert with 'NH{q', 65
                    if _13324 + ceil32(return_data.size) + (32 * mem[_13324 + mem[_13324]]) + 32 > test266151307() or (32 * mem[_13324 + mem[_13324]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13324 + ceil32(return_data.size) + (32 * mem[_13324 + mem[_13324]]) + 32
                    mem[_13324 + ceil32(return_data.size)] = _13364
                    require _13346 + (32 * _13364) + 32 <= return_data.size
                    s = 0
                    t = _13324 + _13346 + 32
                    v = _13324 + ceil32(return_data.size) + 32
                    while s < _13364:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = _12593 / 100 * _12563
                        u = u
                        continue 
                    if 1 >= _13364:
                        revert with 'NH{q', 50
                    if u > -mem[_13324 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = _12593 / 100 * _12563
                    u = u + mem[_13324 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_8394]:
                    revert with 'NH{q', 50
                if mem[mem[_8394 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_8394 + 32] + 32] = mem[mem[_8394 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96]] == 1:
                    _11640 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _11895 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_11895 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_11895]:
                        revert with 'NH{q', 50
                    mem[_11895 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_11895]:
                        revert with 'NH{q', 50
                    mem[_11895 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _12059 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _12074 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_11895 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_11895 + 100] = t / 100 * _11640
                    mem[_11895 + 132] = 98 * _12074 / 100
                    mem[_11895 + 164] = 160
                    mem[_11895 + 260] = mem[_11895]
                    s = 0
                    v = _11895 + 32
                    w = _11895 + 292
                    while s < mem[_11895]:
                        mem[w] = mem[v + 12 len 20]
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_11895 + 196] = this.address
                    mem[_11895 + 228] = block.timestamp + 900
                    require ext_code.size(address(_12059))
                    call address(_12059).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11895 + (32 * mem[_11895]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12678 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12690 = mem[_12678]
                    require mem[_12678] <= test266151307()
                    require _12678 + mem[_12678] + 31 < _12678 + return_data.size
                    _12711 = mem[_12678 + mem[_12678]]
                    if mem[_12678 + mem[_12678]] > test266151307():
                        revert with 'NH{q', 65
                    if _12678 + ceil32(return_data.size) + (32 * mem[_12678 + mem[_12678]]) + 32 > test266151307() or (32 * mem[_12678 + mem[_12678]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12678 + ceil32(return_data.size) + (32 * mem[_12678 + mem[_12678]]) + 32
                    mem[_12678 + ceil32(return_data.size)] = _12711
                    require _12690 + (32 * _12711) + 32 <= return_data.size
                    s = 0
                    v = _12678 + _12690 + 32
                    w = _12678 + ceil32(return_data.size) + 32
                    while s < _12711:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = t / 100 * _11640
                        u = u
                        continue 
                    if 1 >= _12711:
                        revert with 'NH{q', 50
                    if u > -mem[_12678 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = t / 100 * _11640
                    u = u + mem[_12678 + ceil32(return_data.size) + 64]
                    continue 
                _11661 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32]]
                _11698 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11698] = 0
                mem[_11698 + 32] = 0
                mem[_11698 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_8394]:
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_11661):
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _9973 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _9973 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _12510 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12510] = bool(v)
                mem[_12510 + 32] = 0
                mem[_12510 + 64] = t
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _12558 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                if 0 >= mem[_8394]:
                    revert with 'NH{q', 50
                _12588 = mem[mem[_8394 + 32] + 32]
                if mem[mem[_8394 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / mem[mem[_8394 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _12710 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_12710 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_12710]:
                    revert with 'NH{q', 50
                mem[_12710 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_12710]:
                    revert with 'NH{q', 50
                mem[_12710 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _12849 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _12863 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_12710 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_12710 + 100] = _12588 / 100 * _12558
                mem[_12710 + 132] = 98 * _12863 / 100
                mem[_12710 + 164] = 160
                mem[_12710 + 260] = mem[_12710]
                s = 0
                t = _12710 + 32
                v = _12710 + 292
                while s < mem[_12710]:
                    mem[v] = mem[t + 12 len 20]
                    _9973 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_12710 + 196] = this.address
                mem[_12710 + 228] = block.timestamp + 900
                require ext_code.size(address(_12849))
                call address(_12849).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _12710 + (32 * mem[_12710]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13323 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13345 = mem[_13323]
                require mem[_13323] <= test266151307()
                require _13323 + mem[_13323] + 31 < _13323 + return_data.size
                _13363 = mem[_13323 + mem[_13323]]
                if mem[_13323 + mem[_13323]] > test266151307():
                    revert with 'NH{q', 65
                if _13323 + ceil32(return_data.size) + (32 * mem[_13323 + mem[_13323]]) + 32 > test266151307() or (32 * mem[_13323 + mem[_13323]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13323 + ceil32(return_data.size) + (32 * mem[_13323 + mem[_13323]]) + 32
                mem[_13323 + ceil32(return_data.size)] = _13363
                require _13345 + (32 * _13363) + 32 <= return_data.size
                s = 0
                t = _13323 + _13345 + 32
                v = _13323 + ceil32(return_data.size) + 32
                while s < _13363:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _9973 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9973 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = _12588 / 100 * _12558
                    u = u
                    continue 
                if 1 >= _13363:
                    revert with 'NH{q', 50
                if u > -mem[_13323 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _9973 = mem[mem[mem[_8343]]]
                idx = idx + 1
                s = _12588 / 100 * _12558
                u = u + mem[_13323 + ceil32(return_data.size) + 64]
                continue 
        else:
            mem[64] = _8394 + (32 * cd[(arg5 + 132)]) + 96
            mem[_8394 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_8394 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[var170001] = _8394 + (32 * cd[(arg5 + 132)]) + 32
            s = var170001
            idx = var170002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_8394 + (32 * cd[(arg5 + 132)]) + 32] = 0
                mem[_8394 + (32 * cd[(arg5 + 132)]) + 64] = 0
                mem[s + 32] = _8394 + (32 * cd[(arg5 + 132)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _12503 = mem[mem[mem[_8343]]]
            idx = 0
            s = 0
            u = 0
            while idx < _12503:
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _12620 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 32]
                _12633 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12633] = 0
                mem[_12633 + 32] = 0
                mem[_12633 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_8394]:
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_12620):
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _13203 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13203] = bool(w)
                mem[_13203 + 32] = 0
                mem[_13203 + 64] = v
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_8394]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _8394 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96]] == 1:
                        _13307 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _13387 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13387 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_13387]:
                            revert with 'NH{q', 50
                        mem[_13387 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_13387]:
                            revert with 'NH{q', 50
                        mem[_13387 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        _13443 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        _13455 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_13387 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_13387 + 100] = t / 100 * _13307
                        mem[_13387 + 132] = 98 * _13455 / 100
                        mem[_13387 + 164] = 160
                        mem[_13387 + 260] = mem[_13387]
                        s = 0
                        v = _13387 + 32
                        w = _13387 + 292
                        while s < mem[_13387]:
                            mem[w] = mem[v + 12 len 20]
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_13387 + 196] = this.address
                        mem[_13387 + 228] = block.timestamp + 900
                        require ext_code.size(address(_13443))
                        call address(_13443).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _13387 + (32 * mem[_13387]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13694 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13696 = mem[_13694]
                        require mem[_13694] <= test266151307()
                        require _13694 + mem[_13694] + 31 < _13694 + return_data.size
                        _13700 = mem[_13694 + mem[_13694]]
                        if mem[_13694 + mem[_13694]] > test266151307():
                            revert with 'NH{q', 65
                        if _13694 + ceil32(return_data.size) + (32 * mem[_13694 + mem[_13694]]) + 32 > test266151307() or (32 * mem[_13694 + mem[_13694]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _13694 + ceil32(return_data.size) + (32 * mem[_13694 + mem[_13694]]) + 32
                        mem[_13694 + ceil32(return_data.size)] = _13700
                        require _13696 + (32 * _13700) + 32 <= return_data.size
                        s = 0
                        v = _13694 + _13696 + 32
                        w = _13694 + ceil32(return_data.size) + 32
                        while s < _13700:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_8343]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _12503 = mem[mem[mem[_8343]]]
                            idx = idx + 1
                            s = t / 100 * _13307
                            u = u
                            continue 
                        if 1 >= _13700:
                            revert with 'NH{q', 50
                        if u > -mem[_13694 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = t / 100 * _13307
                        u = u + mem[_13694 + ceil32(return_data.size) + 64]
                        continue 
                    _13308 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32]]
                    _13309 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13309] = 0
                    mem[_13309 + 32] = 0
                    mem[_13309 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_8394]:
                        if s >= mem[_8394]:
                            revert with 'NH{q', 50
                        if s >= mem[_8394]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_13308):
                            if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _12503 = mem[mem[mem[_8343]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _13614 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13614] = bool(v)
                    mem[_13614 + 32] = 0
                    mem[_13614 + 64] = t
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _13637 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                    if 0 >= mem[_8394]:
                        revert with 'NH{q', 50
                    _13659 = mem[mem[_8394 + 32] + 32]
                    if mem[mem[_8394 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / mem[mem[_8394 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _13699 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13699 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_13699]:
                        revert with 'NH{q', 50
                    mem[_13699 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_13699]:
                        revert with 'NH{q', 50
                    mem[_13699 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _13747 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _13754 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_13699 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_13699 + 100] = _13659 / 100 * _13637
                    mem[_13699 + 132] = 98 * _13754 / 100
                    mem[_13699 + 164] = 160
                    mem[_13699 + 260] = mem[_13699]
                    s = 0
                    t = _13699 + 32
                    v = _13699 + 292
                    while s < mem[_13699]:
                        mem[v] = mem[t + 12 len 20]
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_13699 + 196] = this.address
                    mem[_13699 + 228] = block.timestamp + 900
                    require ext_code.size(address(_13747))
                    call address(_13747).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13699 + (32 * mem[_13699]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13836 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13838 = mem[_13836]
                    require mem[_13836] <= test266151307()
                    require _13836 + mem[_13836] + 31 < _13836 + return_data.size
                    _13840 = mem[_13836 + mem[_13836]]
                    if mem[_13836 + mem[_13836]] > test266151307():
                        revert with 'NH{q', 65
                    if _13836 + ceil32(return_data.size) + (32 * mem[_13836 + mem[_13836]]) + 32 > test266151307() or (32 * mem[_13836 + mem[_13836]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13836 + ceil32(return_data.size) + (32 * mem[_13836 + mem[_13836]]) + 32
                    mem[_13836 + ceil32(return_data.size)] = _13840
                    require _13838 + (32 * _13840) + 32 <= return_data.size
                    s = 0
                    t = _13836 + _13838 + 32
                    v = _13836 + ceil32(return_data.size) + 32
                    while s < _13840:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = _13659 / 100 * _13637
                        u = u
                        continue 
                    if 1 >= _13840:
                        revert with 'NH{q', 50
                    if u > -mem[_13836 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = _13659 / 100 * _13637
                    u = u + mem[_13836 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_8394]:
                    revert with 'NH{q', 50
                if mem[mem[_8394 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_8394 + 32] + 32] = mem[mem[_8394 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96]] == 1:
                    _13337 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _13408 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13408 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_13408]:
                        revert with 'NH{q', 50
                    mem[_13408 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_13408]:
                        revert with 'NH{q', 50
                    mem[_13408 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _13493 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    _13500 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_13408 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_13408 + 100] = t / 100 * _13337
                    mem[_13408 + 132] = 98 * _13500 / 100
                    mem[_13408 + 164] = 160
                    mem[_13408 + 260] = mem[_13408]
                    s = 0
                    v = _13408 + 32
                    w = _13408 + 292
                    while s < mem[_13408]:
                        mem[w] = mem[v + 12 len 20]
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_13408 + 196] = this.address
                    mem[_13408 + 228] = block.timestamp + 900
                    require ext_code.size(address(_13493))
                    call address(_13493).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13408 + (32 * mem[_13408]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13693 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13695 = mem[_13693]
                    require mem[_13693] <= test266151307()
                    require _13693 + mem[_13693] + 31 < _13693 + return_data.size
                    _13698 = mem[_13693 + mem[_13693]]
                    if mem[_13693 + mem[_13693]] > test266151307():
                        revert with 'NH{q', 65
                    if _13693 + ceil32(return_data.size) + (32 * mem[_13693 + mem[_13693]]) + 32 > test266151307() or (32 * mem[_13693 + mem[_13693]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13693 + ceil32(return_data.size) + (32 * mem[_13693 + mem[_13693]]) + 32
                    mem[_13693 + ceil32(return_data.size)] = _13698
                    require _13695 + (32 * _13698) + 32 <= return_data.size
                    s = 0
                    v = _13693 + _13695 + 32
                    w = _13693 + ceil32(return_data.size) + 32
                    while s < _13698:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_8343]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        idx = idx + 1
                        s = t / 100 * _13337
                        u = u
                        continue 
                    if 1 >= _13698:
                        revert with 'NH{q', 50
                    if u > -mem[_13693 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = t / 100 * _13337
                    u = u + mem[_13693 + ceil32(return_data.size) + 64]
                    continue 
                _13347 = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32]]
                _13358 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13358] = 0
                mem[_13358 + 32] = 0
                mem[_13358 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_8394]:
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if s >= mem[_8394]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _8394 + 32] + 12 len 20] != address(_13347):
                        if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _12503 = mem[mem[mem[_8343]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _8394 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _12503 = mem[mem[mem[_8343]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _13611 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13611] = bool(v)
                mem[_13611 + 32] = 0
                mem[_13611 + 64] = t
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _13632 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32]
                if 0 >= mem[_8394]:
                    revert with 'NH{q', 50
                _13654 = mem[mem[_8394 + 32] + 32]
                if mem[mem[_8394 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 32] > -1 / mem[mem[_8394 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _13697 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_13697 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_13697]:
                    revert with 'NH{q', 50
                mem[_13697 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_13697]:
                    revert with 'NH{q', 50
                mem[_13697 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _13742 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32]]
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                _13752 = mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_13697 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_13697 + 100] = _13654 / 100 * _13632
                mem[_13697 + 132] = 98 * _13752 / 100
                mem[_13697 + 164] = 160
                mem[_13697 + 260] = mem[_13697]
                s = 0
                t = _13697 + 32
                v = _13697 + 292
                while s < mem[_13697]:
                    mem[v] = mem[t + 12 len 20]
                    _12503 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_13697 + 196] = this.address
                mem[_13697 + 228] = block.timestamp + 900
                require ext_code.size(address(_13742))
                call address(_13742).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _13697 + (32 * mem[_13697]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13835 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13837 = mem[_13835]
                require mem[_13835] <= test266151307()
                require _13835 + mem[_13835] + 31 < _13835 + return_data.size
                _13839 = mem[_13835 + mem[_13835]]
                if mem[_13835 + mem[_13835]] > test266151307():
                    revert with 'NH{q', 65
                if _13835 + ceil32(return_data.size) + (32 * mem[_13835 + mem[_13835]]) + 32 > test266151307() or (32 * mem[_13835 + mem[_13835]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13835 + ceil32(return_data.size) + (32 * mem[_13835 + mem[_13835]]) + 32
                mem[_13835 + ceil32(return_data.size)] = _13839
                require _13837 + (32 * _13839) + 32 <= return_data.size
                s = 0
                t = _13835 + _13837 + 32
                v = _13835 + ceil32(return_data.size) + 32
                while s < _13839:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _12503 = mem[mem[mem[_8343]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_8343]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_8343]] + 32] + 96] + 32] + 44 len 20] != address(_8372):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _12503 = mem[mem[mem[_8343]]]
                    idx = idx + 1
                    s = _13654 / 100 * _13632
                    u = u
                    continue 
                if 1 >= _13839:
                    revert with 'NH{q', 50
                if u > -mem[_13835 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _12503 = mem[mem[mem[_8343]]]
                idx = idx + 1
                s = _13654 / 100 * _13632
                u = u + mem[_13835 + ceil32(return_data.size) + 64]
                continue 
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
