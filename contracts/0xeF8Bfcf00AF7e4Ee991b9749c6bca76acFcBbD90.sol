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
        _938 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] <= test266151307()
        require arg5.length + -cd[(arg5 + 100)] + -cd[s] + -cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] - 32 >= 32
        _939 = mem[64]
        if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 32
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] <= test266151307()
        require arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 99 < arg5 + arg5.length + 36
        if cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)] > test266151307():
            revert with 'NH{q', 65
        _941 = mem[64]
        if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 32
        mem[_941] = cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]
        require cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + (192 * cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]) + 100 <= arg5.length + 36
        u = 0
        v = arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 100
        w = _941 + 32
        while u < cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 68)] + 68)] + 68)]:
            require arg5 + arg5.length + -v + 36 >= 192
            _4905 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require cd[v] == address(cd[v])
            mem[_4905] = cd[v]
            require cd[(v + 32)] == cd[(v + 32)]
            mem[_4905 + 32] = cd[(v + 32)]
            require cd[(v + 64)] == cd[(v + 64)]
            mem[_4905 + 64] = cd[(v + 64)]
            require arg5 + arg5.length + -v - 60 >= 96
            _5369 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require cd[(v + 96)] == cd[(v + 96)]
            mem[_5369] = cd[(v + 96)]
            require v + 159 < arg5 + arg5.length + 36
            _5726 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require v + 192 <= arg5 + arg5.length + 36
            idx = 0
            s = v + 128
            t = _5726
            while idx < 2:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_5369 + 32] = _5726
            mem[_4905 + 96] = _5369
            mem[w] = _4905
            u = u + 1
            v = v + 192
            w = w + 32
            continue 
        mem[_939] = _941
        mem[_938] = _939
        require cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)] == cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)]
        mem[_938 + 32] = cd[(arg5 + cd[(arg5 + 100)] + cd[s] + 100)]
        mem[t] = _938
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg5 + 132)] == cd[(arg5 + 132)]
    require cd[(arg5 + 164)] <= test266151307()
    require arg5 + cd[(arg5 + 164)] + 67 < arg5 + arg5.length + 36
    if cd[(arg5 + cd[(arg5 + 164)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _940 = mem[64]
    if mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 32
    mem[_940] = cd[(arg5 + cd[(arg5 + 164)] + 36)]
    require cd[(arg5 + 164)] + (32 * cd[(arg5 + cd[(arg5 + 164)] + 36)]) + 68 <= arg5.length + 36
    idx = 0
    s = arg5 + cd[(arg5 + 164)] + 68
    t = _940 + 32
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
    _2830 = mem[ceil32(return_data.size) + 128]
    if 1 >= cd[(arg5 + cd[(arg5 + 164)] + 36)]:
        revert with 'NH{q', 50
    _2832 = mem[_940 + 64]
    if cd[(arg5 + 132)] > test266151307():
        revert with 'NH{q', 65
    _2833 = mem[64]
    mem[mem[64]] = cd[(arg5 + 132)]
    mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
    if not cd[(arg5 + 132)]:
        _4888 = mem[mem[mem[_2830]]]
        idx = 0
        s = 0
        t = 0
        while idx < _4888:
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _4906 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 32]
            _4914 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4914] = 0
            mem[_4914 + 32] = 0
            mem[_4914 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2833]:
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_4906):
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _6953 = mem[64]
            mem[64] = mem[64] + 96
            mem[_6953] = bool(v)
            mem[_6953 + 32] = 0
            mem[_6953 + 64] = u
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_2833]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _2833 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96]] == 1:
                    _7043 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _7324 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_7324 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_7324]:
                        revert with 'NH{q', 50
                    mem[_7324 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_7324]:
                        revert with 'NH{q', 50
                    mem[_7324 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_7324]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _7554 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                    mem[_7324 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_7324 + 100] = address(_7554)
                    mem[_7324 + 132] = arg3 / 100 * _7043
                    require ext_code.size(mem[_7324 + 44 len 20])
                    call mem[_7324 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_7554), arg3 / 100 * _7043
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _7920 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _7951 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_7324 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_7324 + 100] = arg3 / 100 * _7043
                    mem[_7324 + 132] = 98 * _7951 / 100
                    mem[_7324 + 164] = 160
                    mem[_7324 + 260] = mem[_7324]
                    s = 0
                    u = _7324 + 32
                    v = _7324 + 292
                    while s < mem[_7324]:
                        mem[v] = mem[u + 12 len 20]
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_7324 + 196] = this.address
                    mem[_7324 + 228] = block.timestamp + 900
                    require ext_code.size(address(_7920))
                    call address(_7920).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _7324 + (32 * mem[_7324]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9184 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9233 = mem[_9184]
                    require mem[_9184] <= test266151307()
                    require _9184 + mem[_9184] + 31 < _9184 + return_data.size
                    _9279 = mem[_9184 + mem[_9184]]
                    if mem[_9184 + mem[_9184]] > test266151307():
                        revert with 'NH{q', 65
                    if _9184 + ceil32(return_data.size) + (32 * mem[_9184 + mem[_9184]]) + 32 > test266151307() or (32 * mem[_9184 + mem[_9184]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _9184 + ceil32(return_data.size) + (32 * mem[_9184 + mem[_9184]]) + 32
                    mem[_9184 + ceil32(return_data.size)] = _9279
                    require _9233 + (32 * _9279) + 32 <= return_data.size
                    s = 0
                    u = _9184 + _9233 + 32
                    v = _9184 + ceil32(return_data.size) + 32
                    while s < _9279:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _4888 = mem[mem[mem[_2830]]]
                        idx = idx + 1
                        s = arg3 / 100 * _7043
                        t = t
                        continue 
                    if 1 >= _9279:
                        revert with 'NH{q', 50
                    if t > -mem[_9184 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = arg3 / 100 * _7043
                    t = t + mem[_9184 + ceil32(return_data.size) + 64]
                    continue 
                _7048 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32]]
                _7062 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7062] = 0
                mem[_7062 + 32] = 0
                mem[_7062 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_2833]:
                    if s >= mem[_2833]:
                        revert with 'NH{q', 50
                    if s >= mem[_2833]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_7048):
                        if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _4888 = mem[mem[mem[_2830]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _8990 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8990] = bool(v)
                mem[_8990 + 32] = 0
                mem[_8990 + 64] = u
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _9025 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                if 0 >= mem[_2833]:
                    revert with 'NH{q', 50
                _9054 = mem[mem[_2833 + 32] + 32]
                if mem[mem[_2833 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / mem[mem[_2833 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _9278 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_9278 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_9278]:
                    revert with 'NH{q', 50
                mem[_9278 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_9278]:
                    revert with 'NH{q', 50
                mem[_9278 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_9278]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _9523 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                mem[_9278 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_9278 + 100] = address(_9523)
                mem[_9278 + 132] = _9054 / 100 * _9025
                require ext_code.size(mem[_9278 + 44 len 20])
                call mem[_9278 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_9523), _9054 / 100 * _9025
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _9848 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _9872 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_9278 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_9278 + 100] = _9054 / 100 * _9025
                mem[_9278 + 132] = 98 * _9872 / 100
                mem[_9278 + 164] = 160
                mem[_9278 + 260] = mem[_9278]
                s = 0
                u = _9278 + 32
                v = _9278 + 292
                while s < mem[_9278]:
                    mem[v] = mem[u + 12 len 20]
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_9278 + 196] = this.address
                mem[_9278 + 228] = block.timestamp + 900
                require ext_code.size(address(_9848))
                call address(_9848).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _9278 + (32 * mem[_9278]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11093 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11135 = mem[_11093]
                require mem[_11093] <= test266151307()
                require _11093 + mem[_11093] + 31 < _11093 + return_data.size
                _11196 = mem[_11093 + mem[_11093]]
                if mem[_11093 + mem[_11093]] > test266151307():
                    revert with 'NH{q', 65
                if _11093 + ceil32(return_data.size) + (32 * mem[_11093 + mem[_11093]]) + 32 > test266151307() or (32 * mem[_11093 + mem[_11093]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _11093 + ceil32(return_data.size) + (32 * mem[_11093 + mem[_11093]]) + 32
                mem[_11093 + ceil32(return_data.size)] = _11196
                require _11135 + (32 * _11196) + 32 <= return_data.size
                s = 0
                u = _11093 + _11135 + 32
                v = _11093 + ceil32(return_data.size) + 32
                while s < _11196:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = _9054 / 100 * _9025
                    t = t
                    continue 
                if 1 >= _11196:
                    revert with 'NH{q', 50
                if t > -mem[_11093 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = _9054 / 100 * _9025
                t = t + mem[_11093 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_2833]:
                revert with 'NH{q', 50
            if mem[mem[_2833 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_2833 + 32] + 32] = mem[mem[_2833 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96]] == 1:
                _7130 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _7501 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_7501 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_7501]:
                    revert with 'NH{q', 50
                mem[_7501 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_7501]:
                    revert with 'NH{q', 50
                mem[_7501 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_7501]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _7717 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                mem[_7501 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_7501 + 100] = address(_7717)
                mem[_7501 + 132] = arg3 / 100 * _7130
                require ext_code.size(mem[_7501 + 44 len 20])
                call mem[_7501 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_7717), arg3 / 100 * _7130
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _8089 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _8118 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_7501 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_7501 + 100] = arg3 / 100 * _7130
                mem[_7501 + 132] = 98 * _8118 / 100
                mem[_7501 + 164] = 160
                mem[_7501 + 260] = mem[_7501]
                s = 0
                u = _7501 + 32
                v = _7501 + 292
                while s < mem[_7501]:
                    mem[v] = mem[u + 12 len 20]
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_7501 + 196] = this.address
                mem[_7501 + 228] = block.timestamp + 900
                require ext_code.size(address(_8089))
                call address(_8089).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _7501 + (32 * mem[_7501]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9183 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9232 = mem[_9183]
                require mem[_9183] <= test266151307()
                require _9183 + mem[_9183] + 31 < _9183 + return_data.size
                _9277 = mem[_9183 + mem[_9183]]
                if mem[_9183 + mem[_9183]] > test266151307():
                    revert with 'NH{q', 65
                if _9183 + ceil32(return_data.size) + (32 * mem[_9183 + mem[_9183]]) + 32 > test266151307() or (32 * mem[_9183 + mem[_9183]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9183 + ceil32(return_data.size) + (32 * mem[_9183 + mem[_9183]]) + 32
                mem[_9183 + ceil32(return_data.size)] = _9277
                require _9232 + (32 * _9277) + 32 <= return_data.size
                s = 0
                u = _9183 + _9232 + 32
                v = _9183 + ceil32(return_data.size) + 32
                while s < _9277:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = arg3 / 100 * _7130
                    t = t
                    continue 
                if 1 >= _9277:
                    revert with 'NH{q', 50
                if t > -mem[_9183 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = arg3 / 100 * _7130
                t = t + mem[_9183 + ceil32(return_data.size) + 64]
                continue 
            _7159 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32]]
            _7215 = mem[64]
            mem[64] = mem[64] + 96
            mem[_7215] = 0
            mem[_7215 + 32] = 0
            mem[_7215 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2833]:
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_7159):
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _4888 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _4888 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _8987 = mem[64]
            mem[64] = mem[64] + 96
            mem[_8987] = bool(v)
            mem[_8987 + 32] = 0
            mem[_8987 + 64] = u
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _9020 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
            if 0 >= mem[_2833]:
                revert with 'NH{q', 50
            _9049 = mem[mem[_2833 + 32] + 32]
            if mem[mem[_2833 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / mem[mem[_2833 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _9276 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_9276 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_9276]:
                revert with 'NH{q', 50
            mem[_9276 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_9276]:
                revert with 'NH{q', 50
            mem[_9276 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
            if 0 >= mem[_9276]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _9520 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
            mem[_9276 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[_9276 + 100] = address(_9520)
            mem[_9276 + 132] = _9049 / 100 * _9020
            require ext_code.size(mem[_9276 + 44 len 20])
            call mem[_9276 + 44 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_9520), _9049 / 100 * _9020
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _9843 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _9870 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_9276 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_9276 + 100] = _9049 / 100 * _9020
            mem[_9276 + 132] = 98 * _9870 / 100
            mem[_9276 + 164] = 160
            mem[_9276 + 260] = mem[_9276]
            s = 0
            u = _9276 + 32
            v = _9276 + 292
            while s < mem[_9276]:
                mem[v] = mem[u + 12 len 20]
                _4888 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_9276 + 196] = this.address
            mem[_9276 + 228] = block.timestamp + 900
            require ext_code.size(address(_9843))
            call address(_9843).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _9276 + (32 * mem[_9276]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11092 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11134 = mem[_11092]
            require mem[_11092] <= test266151307()
            require _11092 + mem[_11092] + 31 < _11092 + return_data.size
            _11195 = mem[_11092 + mem[_11092]]
            if mem[_11092 + mem[_11092]] > test266151307():
                revert with 'NH{q', 65
            if _11092 + ceil32(return_data.size) + (32 * mem[_11092 + mem[_11092]]) + 32 > test266151307() or (32 * mem[_11092 + mem[_11092]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _11092 + ceil32(return_data.size) + (32 * mem[_11092 + mem[_11092]]) + 32
            mem[_11092 + ceil32(return_data.size)] = _11195
            require _11134 + (32 * _11195) + 32 <= return_data.size
            s = 0
            u = _11092 + _11134 + 32
            v = _11092 + ceil32(return_data.size) + 32
            while s < _11195:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _4888 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                if idx == -1:
                    revert with 'NH{q', 17
                _4888 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = _9049 / 100 * _9020
                t = t
                continue 
            if 1 >= _11195:
                revert with 'NH{q', 50
            if t > -mem[_11092 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _4888 = mem[mem[mem[_2830]]]
            idx = idx + 1
            s = _9049 / 100 * _9020
            t = t + mem[_11092 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _4896 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_940]:
            revert with 'NH{q', 50
        _4901 = mem[_940 + 32]
        if cd[(arg5 + 132)] > test266151307():
            revert with 'NH{q', 65
        _4910 = mem[64]
        mem[mem[64]] = cd[(arg5 + 132)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
        if not cd[(arg5 + 132)]:
            _6946 = mem[mem[mem[_4896]]]
            idx = 0
            s = 0
            u = 0
            while idx < _6946:
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _6988 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 32]
                _7009 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7009] = 0
                mem[_7009 + 32] = 0
                mem[_7009 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_4910]:
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_6988):
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _8985 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8985] = bool(w)
                mem[_8985 + 32] = 0
                mem[_8985 + 64] = v
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_4910]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _4910 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96]] == 1:
                        _9105 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _9379 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_9379 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_9379]:
                            revert with 'NH{q', 50
                        mem[_9379 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_9379]:
                            revert with 'NH{q', 50
                        mem[_9379 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_9379]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _9630 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                        mem[_9379 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_9379 + 100] = address(_9630)
                        mem[_9379 + 132] = t / 100 * _9105
                        require ext_code.size(mem[_9379 + 44 len 20])
                        call mem[_9379 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_9630), t / 100 * _9105
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _9954 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _9979 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_9379 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_9379 + 100] = t / 100 * _9105
                        mem[_9379 + 132] = 98 * _9979 / 100
                        mem[_9379 + 164] = 160
                        mem[_9379 + 260] = mem[_9379]
                        s = 0
                        v = _9379 + 32
                        w = _9379 + 292
                        while s < mem[_9379]:
                            mem[w] = mem[v + 12 len 20]
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_9379 + 196] = this.address
                        mem[_9379 + 228] = block.timestamp + 900
                        require ext_code.size(address(_9954))
                        call address(_9954).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _9379 + (32 * mem[_9379]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11088 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11127 = mem[_11088]
                        require mem[_11088] <= test266151307()
                        require _11088 + mem[_11088] + 31 < _11088 + return_data.size
                        _11194 = mem[_11088 + mem[_11088]]
                        if mem[_11088 + mem[_11088]] > test266151307():
                            revert with 'NH{q', 65
                        if _11088 + ceil32(return_data.size) + (32 * mem[_11088 + mem[_11088]]) + 32 > test266151307() or (32 * mem[_11088 + mem[_11088]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _11088 + ceil32(return_data.size) + (32 * mem[_11088 + mem[_11088]]) + 32
                        mem[_11088 + ceil32(return_data.size)] = _11194
                        require _11127 + (32 * _11194) + 32 <= return_data.size
                        s = 0
                        v = _11088 + _11127 + 32
                        w = _11088 + ceil32(return_data.size) + 32
                        while s < _11194:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _6946 = mem[mem[mem[_4896]]]
                            idx = idx + 1
                            s = t / 100 * _9105
                            u = u
                            continue 
                        if 1 >= _11194:
                            revert with 'NH{q', 50
                        if u > -mem[_11088 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = t / 100 * _9105
                        u = u + mem[_11088 + ceil32(return_data.size) + 64]
                        continue 
                    _9112 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32]]
                    _9125 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_9125] = 0
                    mem[_9125 + 32] = 0
                    mem[_9125 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_4910]:
                        if s >= mem[_4910]:
                            revert with 'NH{q', 50
                        if s >= mem[_4910]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_9112):
                            if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _6946 = mem[mem[mem[_4896]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _10862 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_10862] = bool(v)
                    mem[_10862 + 32] = 0
                    mem[_10862 + 64] = t
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _10901 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                    if 0 >= mem[_4910]:
                        revert with 'NH{q', 50
                    _10926 = mem[mem[_4910 + 32] + 32]
                    if mem[mem[_4910 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / mem[mem[_4910 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _11193 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_11193 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_11193]:
                        revert with 'NH{q', 50
                    mem[_11193 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_11193]:
                        revert with 'NH{q', 50
                    mem[_11193 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_11193]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _11390 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    mem[_11193 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_11193 + 100] = address(_11390)
                    mem[_11193 + 132] = _10926 / 100 * _10901
                    require ext_code.size(mem[_11193 + 44 len 20])
                    call mem[_11193 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_11390), _10926 / 100 * _10901
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _11681 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _11703 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_11193 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_11193 + 100] = _10926 / 100 * _10901
                    mem[_11193 + 132] = 98 * _11703 / 100
                    mem[_11193 + 164] = 160
                    mem[_11193 + 260] = mem[_11193]
                    s = 0
                    t = _11193 + 32
                    v = _11193 + 292
                    while s < mem[_11193]:
                        mem[v] = mem[t + 12 len 20]
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_11193 + 196] = this.address
                    mem[_11193 + 228] = block.timestamp + 900
                    require ext_code.size(address(_11681))
                    call address(_11681).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11193 + (32 * mem[_11193]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12650 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12700 = mem[_12650]
                    require mem[_12650] <= test266151307()
                    require _12650 + mem[_12650] + 31 < _12650 + return_data.size
                    _12751 = mem[_12650 + mem[_12650]]
                    if mem[_12650 + mem[_12650]] > test266151307():
                        revert with 'NH{q', 65
                    if _12650 + ceil32(return_data.size) + (32 * mem[_12650 + mem[_12650]]) + 32 > test266151307() or (32 * mem[_12650 + mem[_12650]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12650 + ceil32(return_data.size) + (32 * mem[_12650 + mem[_12650]]) + 32
                    mem[_12650 + ceil32(return_data.size)] = _12751
                    require _12700 + (32 * _12751) + 32 <= return_data.size
                    s = 0
                    t = _12650 + _12700 + 32
                    v = _12650 + ceil32(return_data.size) + 32
                    while s < _12751:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = _10926 / 100 * _10901
                        u = u
                        continue 
                    if 1 >= _12751:
                        revert with 'NH{q', 50
                    if u > -mem[_12650 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = _10926 / 100 * _10901
                    u = u + mem[_12650 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_4910]:
                    revert with 'NH{q', 50
                if mem[mem[_4910 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_4910 + 32] + 32] = mem[mem[_4910 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96]] == 1:
                    _9195 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _9556 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_9556 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_9556]:
                        revert with 'NH{q', 50
                    mem[_9556 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_9556]:
                        revert with 'NH{q', 50
                    mem[_9556 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_9556]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _9776 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    mem[_9556 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_9556 + 100] = address(_9776)
                    mem[_9556 + 132] = t / 100 * _9195
                    require ext_code.size(mem[_9556 + 44 len 20])
                    call mem[_9556 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_9776), t / 100 * _9195
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _10099 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _10122 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_9556 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_9556 + 100] = t / 100 * _9195
                    mem[_9556 + 132] = 98 * _10122 / 100
                    mem[_9556 + 164] = 160
                    mem[_9556 + 260] = mem[_9556]
                    s = 0
                    v = _9556 + 32
                    w = _9556 + 292
                    while s < mem[_9556]:
                        mem[w] = mem[v + 12 len 20]
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_9556 + 196] = this.address
                    mem[_9556 + 228] = block.timestamp + 900
                    require ext_code.size(address(_10099))
                    call address(_10099).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9556 + (32 * mem[_9556]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11087 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11126 = mem[_11087]
                    require mem[_11087] <= test266151307()
                    require _11087 + mem[_11087] + 31 < _11087 + return_data.size
                    _11192 = mem[_11087 + mem[_11087]]
                    if mem[_11087 + mem[_11087]] > test266151307():
                        revert with 'NH{q', 65
                    if _11087 + ceil32(return_data.size) + (32 * mem[_11087 + mem[_11087]]) + 32 > test266151307() or (32 * mem[_11087 + mem[_11087]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _11087 + ceil32(return_data.size) + (32 * mem[_11087 + mem[_11087]]) + 32
                    mem[_11087 + ceil32(return_data.size)] = _11192
                    require _11126 + (32 * _11192) + 32 <= return_data.size
                    s = 0
                    v = _11087 + _11126 + 32
                    w = _11087 + ceil32(return_data.size) + 32
                    while s < _11192:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = t / 100 * _9195
                        u = u
                        continue 
                    if 1 >= _11192:
                        revert with 'NH{q', 50
                    if u > -mem[_11087 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = t / 100 * _9195
                    u = u + mem[_11087 + ceil32(return_data.size) + 64]
                    continue 
                _9215 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32]]
                _9263 = mem[64]
                mem[64] = mem[64] + 96
                mem[_9263] = 0
                mem[_9263 + 32] = 0
                mem[_9263 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_4910]:
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_9215):
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _6946 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _6946 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _10859 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10859] = bool(v)
                mem[_10859 + 32] = 0
                mem[_10859 + 64] = t
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _10896 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                if 0 >= mem[_4910]:
                    revert with 'NH{q', 50
                _10921 = mem[mem[_4910 + 32] + 32]
                if mem[mem[_4910 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / mem[mem[_4910 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _11191 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_11191 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_11191]:
                    revert with 'NH{q', 50
                mem[_11191 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_11191]:
                    revert with 'NH{q', 50
                mem[_11191 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_11191]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _11387 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                mem[_11191 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_11191 + 100] = address(_11387)
                mem[_11191 + 132] = _10921 / 100 * _10896
                require ext_code.size(mem[_11191 + 44 len 20])
                call mem[_11191 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_11387), _10921 / 100 * _10896
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _11676 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _11701 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_11191 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_11191 + 100] = _10921 / 100 * _10896
                mem[_11191 + 132] = 98 * _11701 / 100
                mem[_11191 + 164] = 160
                mem[_11191 + 260] = mem[_11191]
                s = 0
                t = _11191 + 32
                v = _11191 + 292
                while s < mem[_11191]:
                    mem[v] = mem[t + 12 len 20]
                    _6946 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_11191 + 196] = this.address
                mem[_11191 + 228] = block.timestamp + 900
                require ext_code.size(address(_11676))
                call address(_11676).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11191 + (32 * mem[_11191]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12649 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12699 = mem[_12649]
                require mem[_12649] <= test266151307()
                require _12649 + mem[_12649] + 31 < _12649 + return_data.size
                _12750 = mem[_12649 + mem[_12649]]
                if mem[_12649 + mem[_12649]] > test266151307():
                    revert with 'NH{q', 65
                if _12649 + ceil32(return_data.size) + (32 * mem[_12649 + mem[_12649]]) + 32 > test266151307() or (32 * mem[_12649 + mem[_12649]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12649 + ceil32(return_data.size) + (32 * mem[_12649 + mem[_12649]]) + 32
                mem[_12649 + ceil32(return_data.size)] = _12750
                require _12699 + (32 * _12750) + 32 <= return_data.size
                s = 0
                t = _12649 + _12699 + 32
                v = _12649 + ceil32(return_data.size) + 32
                while s < _12750:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _6946 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _6946 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = _10921 / 100 * _10896
                    u = u
                    continue 
                if 1 >= _12750:
                    revert with 'NH{q', 50
                if u > -mem[_12649 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _6946 = mem[mem[mem[_4896]]]
                idx = idx + 1
                s = _10921 / 100 * _10896
                u = u + mem[_12649 + ceil32(return_data.size) + 64]
                continue 
        else:
            mem[64] = _4910 + (32 * cd[(arg5 + 132)]) + 96
            mem[_4910 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_4910 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[var163001] = _4910 + (32 * cd[(arg5 + 132)]) + 32
            s = var163001
            idx = var163002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_4910 + (32 * cd[(arg5 + 132)]) + 32] = 0
                mem[_4910 + (32 * cd[(arg5 + 132)]) + 64] = 0
                mem[s + 32] = _4910 + (32 * cd[(arg5 + 132)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _10854 = mem[mem[mem[_4896]]]
            idx = 0
            s = 0
            u = 0
            while idx < _10854:
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _10957 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 32]
                _10981 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10981] = 0
                mem[_10981 + 32] = 0
                mem[_10981 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_4910]:
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_10957):
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _12436 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12436] = bool(w)
                mem[_12436 + 32] = 0
                mem[_12436 + 64] = v
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_4910]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _4910 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96]] == 1:
                        _12615 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _12820 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_12820 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_12820]:
                            revert with 'NH{q', 50
                        mem[_12820 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_12820]:
                            revert with 'NH{q', 50
                        mem[_12820 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_12820]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _12992 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                        mem[_12820 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_12820 + 100] = address(_12992)
                        mem[_12820 + 132] = t / 100 * _12615
                        require ext_code.size(mem[_12820 + 44 len 20])
                        call mem[_12820 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_12992), t / 100 * _12615
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _13222 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        _13245 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_12820 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_12820 + 100] = t / 100 * _12615
                        mem[_12820 + 132] = 98 * _13245 / 100
                        mem[_12820 + 164] = 160
                        mem[_12820 + 260] = mem[_12820]
                        s = 0
                        v = _12820 + 32
                        w = _12820 + 292
                        while s < mem[_12820]:
                            mem[w] = mem[v + 12 len 20]
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_12820 + 196] = this.address
                        mem[_12820 + 228] = block.timestamp + 900
                        require ext_code.size(address(_13222))
                        call address(_13222).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12820 + (32 * mem[_12820]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13849 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13861 = mem[_13849]
                        require mem[_13849] <= test266151307()
                        require _13849 + mem[_13849] + 31 < _13849 + return_data.size
                        _13881 = mem[_13849 + mem[_13849]]
                        if mem[_13849 + mem[_13849]] > test266151307():
                            revert with 'NH{q', 65
                        if _13849 + ceil32(return_data.size) + (32 * mem[_13849 + mem[_13849]]) + 32 > test266151307() or (32 * mem[_13849 + mem[_13849]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _13849 + ceil32(return_data.size) + (32 * mem[_13849 + mem[_13849]]) + 32
                        mem[_13849 + ceil32(return_data.size)] = _13881
                        require _13861 + (32 * _13881) + 32 <= return_data.size
                        s = 0
                        v = _13849 + _13861 + 32
                        w = _13849 + ceil32(return_data.size) + 32
                        while s < _13881:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_4896]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10854 = mem[mem[mem[_4896]]]
                            idx = idx + 1
                            s = t / 100 * _12615
                            u = u
                            continue 
                        if 1 >= _13881:
                            revert with 'NH{q', 50
                        if u > -mem[_13849 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = t / 100 * _12615
                        u = u + mem[_13849 + ceil32(return_data.size) + 64]
                        continue 
                    _12622 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32]]
                    _12625 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12625] = 0
                    mem[_12625 + 32] = 0
                    mem[_12625 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_4910]:
                        if s >= mem[_4910]:
                            revert with 'NH{q', 50
                        if s >= mem[_4910]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_12622):
                            if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _10854 = mem[mem[mem[_4896]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _13679 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13679] = bool(v)
                    mem[_13679 + 32] = 0
                    mem[_13679 + 64] = t
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _13725 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                    if 0 >= mem[_4910]:
                        revert with 'NH{q', 50
                    _13755 = mem[mem[_4910 + 32] + 32]
                    if mem[mem[_4910 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / mem[mem[_4910 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _13880 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13880 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_13880]:
                        revert with 'NH{q', 50
                    mem[_13880 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_13880]:
                        revert with 'NH{q', 50
                    mem[_13880 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_13880]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _14022 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    mem[_13880 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_13880 + 100] = address(_14022)
                    mem[_13880 + 132] = _13755 / 100 * _13725
                    require ext_code.size(mem[_13880 + 44 len 20])
                    call mem[_13880 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_14022), _13755 / 100 * _13725
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _14165 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _14187 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_13880 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_13880 + 100] = _13755 / 100 * _13725
                    mem[_13880 + 132] = 98 * _14187 / 100
                    mem[_13880 + 164] = 160
                    mem[_13880 + 260] = mem[_13880]
                    s = 0
                    t = _13880 + 32
                    v = _13880 + 292
                    while s < mem[_13880]:
                        mem[v] = mem[t + 12 len 20]
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_13880 + 196] = this.address
                    mem[_13880 + 228] = block.timestamp + 900
                    require ext_code.size(address(_14165))
                    call address(_14165).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13880 + (32 * mem[_13880]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14566 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14588 = mem[_14566]
                    require mem[_14566] <= test266151307()
                    require _14566 + mem[_14566] + 31 < _14566 + return_data.size
                    _14606 = mem[_14566 + mem[_14566]]
                    if mem[_14566 + mem[_14566]] > test266151307():
                        revert with 'NH{q', 65
                    if _14566 + ceil32(return_data.size) + (32 * mem[_14566 + mem[_14566]]) + 32 > test266151307() or (32 * mem[_14566 + mem[_14566]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _14566 + ceil32(return_data.size) + (32 * mem[_14566 + mem[_14566]]) + 32
                    mem[_14566 + ceil32(return_data.size)] = _14606
                    require _14588 + (32 * _14606) + 32 <= return_data.size
                    s = 0
                    t = _14566 + _14588 + 32
                    v = _14566 + ceil32(return_data.size) + 32
                    while s < _14606:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = _13755 / 100 * _13725
                        u = u
                        continue 
                    if 1 >= _14606:
                        revert with 'NH{q', 50
                    if u > -mem[_14566 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = _13755 / 100 * _13725
                    u = u + mem[_14566 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_4910]:
                    revert with 'NH{q', 50
                if mem[mem[_4910 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_4910 + 32] + 32] = mem[mem[_4910 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96]] == 1:
                    _12676 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _12934 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12934 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12934]:
                        revert with 'NH{q', 50
                    mem[_12934 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12934]:
                        revert with 'NH{q', 50
                    mem[_12934 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_12934]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _13101 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    mem[_12934 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_12934 + 100] = address(_13101)
                    mem[_12934 + 132] = t / 100 * _12676
                    require ext_code.size(mem[_12934 + 44 len 20])
                    call mem[_12934 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_13101), t / 100 * _12676
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _13294 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    _13310 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12934 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12934 + 100] = t / 100 * _12676
                    mem[_12934 + 132] = 98 * _13310 / 100
                    mem[_12934 + 164] = 160
                    mem[_12934 + 260] = mem[_12934]
                    s = 0
                    v = _12934 + 32
                    w = _12934 + 292
                    while s < mem[_12934]:
                        mem[w] = mem[v + 12 len 20]
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_12934 + 196] = this.address
                    mem[_12934 + 228] = block.timestamp + 900
                    require ext_code.size(address(_13294))
                    call address(_13294).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12934 + (32 * mem[_12934]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13848 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13860 = mem[_13848]
                    require mem[_13848] <= test266151307()
                    require _13848 + mem[_13848] + 31 < _13848 + return_data.size
                    _13879 = mem[_13848 + mem[_13848]]
                    if mem[_13848 + mem[_13848]] > test266151307():
                        revert with 'NH{q', 65
                    if _13848 + ceil32(return_data.size) + (32 * mem[_13848 + mem[_13848]]) + 32 > test266151307() or (32 * mem[_13848 + mem[_13848]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13848 + ceil32(return_data.size) + (32 * mem[_13848 + mem[_13848]]) + 32
                    mem[_13848 + ceil32(return_data.size)] = _13879
                    require _13860 + (32 * _13879) + 32 <= return_data.size
                    s = 0
                    v = _13848 + _13860 + 32
                    w = _13848 + ceil32(return_data.size) + 32
                    while s < _13879:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_4896]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        idx = idx + 1
                        s = t / 100 * _12676
                        u = u
                        continue 
                    if 1 >= _13879:
                        revert with 'NH{q', 50
                    if u > -mem[_13848 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = t / 100 * _12676
                    u = u + mem[_13848 + ceil32(return_data.size) + 64]
                    continue 
                _12701 = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32]]
                _12741 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12741] = 0
                mem[_12741 + 32] = 0
                mem[_12741 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_4910]:
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if s >= mem[_4910]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _4910 + 32] + 12 len 20] != address(_12701):
                        if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10854 = mem[mem[mem[_4896]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _4910 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10854 = mem[mem[mem[_4896]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _13676 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13676] = bool(v)
                mem[_13676 + 32] = 0
                mem[_13676 + 64] = t
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _13720 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32]
                if 0 >= mem[_4910]:
                    revert with 'NH{q', 50
                _13750 = mem[mem[_4910 + 32] + 32]
                if mem[mem[_4910 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 32] > -1 / mem[mem[_4910 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _13878 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_13878 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_13878]:
                    revert with 'NH{q', 50
                mem[_13878 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_13878]:
                    revert with 'NH{q', 50
                mem[_13878 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_13878]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _14019 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                mem[_13878 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_13878 + 100] = address(_14019)
                mem[_13878 + 132] = _13750 / 100 * _13720
                require ext_code.size(mem[_13878 + 44 len 20])
                call mem[_13878 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_14019), _13750 / 100 * _13720
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _14160 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32]]
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                _14185 = mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_13878 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_13878 + 100] = _13750 / 100 * _13720
                mem[_13878 + 132] = 98 * _14185 / 100
                mem[_13878 + 164] = 160
                mem[_13878 + 260] = mem[_13878]
                s = 0
                t = _13878 + 32
                v = _13878 + 292
                while s < mem[_13878]:
                    mem[v] = mem[t + 12 len 20]
                    _10854 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_13878 + 196] = this.address
                mem[_13878 + 228] = block.timestamp + 900
                require ext_code.size(address(_14160))
                call address(_14160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _13878 + (32 * mem[_13878]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14565 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14587 = mem[_14565]
                require mem[_14565] <= test266151307()
                require _14565 + mem[_14565] + 31 < _14565 + return_data.size
                _14605 = mem[_14565 + mem[_14565]]
                if mem[_14565 + mem[_14565]] > test266151307():
                    revert with 'NH{q', 65
                if _14565 + ceil32(return_data.size) + (32 * mem[_14565 + mem[_14565]]) + 32 > test266151307() or (32 * mem[_14565 + mem[_14565]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _14565 + ceil32(return_data.size) + (32 * mem[_14565 + mem[_14565]]) + 32
                mem[_14565 + ceil32(return_data.size)] = _14605
                require _14587 + (32 * _14605) + 32 <= return_data.size
                s = 0
                t = _14565 + _14587 + 32
                v = _14565 + ceil32(return_data.size) + 32
                while s < _14605:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _10854 = mem[mem[mem[_4896]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_4896]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_4896]] + 32] + 96] + 32] + 44 len 20] != address(_4901):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10854 = mem[mem[mem[_4896]]]
                    idx = idx + 1
                    s = _13750 / 100 * _13720
                    u = u
                    continue 
                if 1 >= _14605:
                    revert with 'NH{q', 50
                if u > -mem[_14565 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _10854 = mem[mem[mem[_4896]]]
                idx = idx + 1
                s = _13750 / 100 * _13720
                u = u + mem[_14565 + ceil32(return_data.size) + 64]
                continue 
    else:
        mem[64] = _2833 + (32 * cd[(arg5 + 132)]) + 96
        mem[_2833 + (32 * cd[(arg5 + 132)]) + 32] = 0
        mem[_2833 + (32 * cd[(arg5 + 132)]) + 64] = 0
        mem[var154001] = _2833 + (32 * cd[(arg5 + 132)]) + 32
        s = var154001
        idx = var154002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_2833 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_2833 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[s + 32] = _2833 + (32 * cd[(arg5 + 132)]) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _8984 = mem[mem[mem[_2830]]]
        idx = 0
        s = 0
        t = 0
        while idx < _8984:
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _9074 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 32]
            _9088 = mem[64]
            mem[64] = mem[64] + 96
            mem[_9088] = 0
            mem[_9088 + 32] = 0
            mem[_9088 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2833]:
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_9074):
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _10874 = mem[64]
            mem[64] = mem[64] + 96
            mem[_10874] = bool(v)
            mem[_10874 + 32] = 0
            mem[_10874 + 64] = u
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if not v:
                if u >= mem[_2833]:
                    revert with 'NH{q', 50
                mem[mem[(32 * u) + _2833 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96]] == 1:
                    _11013 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                    if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    _11311 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_11311 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_11311]:
                        revert with 'NH{q', 50
                    mem[_11311 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_11311]:
                        revert with 'NH{q', 50
                    mem[_11311 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_11311]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _11513 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                    mem[_11311 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_11311 + 100] = address(_11513)
                    mem[_11311 + 132] = arg3 / 100 * _11013
                    require ext_code.size(mem[_11311 + 44 len 20])
                    call mem[_11311 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_11513), arg3 / 100 * _11013
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _11799 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    _11821 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_11311 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_11311 + 100] = arg3 / 100 * _11013
                    mem[_11311 + 132] = 98 * _11821 / 100
                    mem[_11311 + 164] = 160
                    mem[_11311 + 260] = mem[_11311]
                    s = 0
                    u = _11311 + 32
                    v = _11311 + 292
                    while s < mem[_11311]:
                        mem[v] = mem[u + 12 len 20]
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_11311 + 196] = this.address
                    mem[_11311 + 228] = block.timestamp + 900
                    require ext_code.size(address(_11799))
                    call address(_11799).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _11311 + (32 * mem[_11311]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12671 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12725 = mem[_12671]
                    require mem[_12671] <= test266151307()
                    require _12671 + mem[_12671] + 31 < _12671 + return_data.size
                    _12758 = mem[_12671 + mem[_12671]]
                    if mem[_12671 + mem[_12671]] > test266151307():
                        revert with 'NH{q', 65
                    if _12671 + ceil32(return_data.size) + (32 * mem[_12671 + mem[_12671]]) + 32 > test266151307() or (32 * mem[_12671 + mem[_12671]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12671 + ceil32(return_data.size) + (32 * mem[_12671 + mem[_12671]]) + 32
                    mem[_12671 + ceil32(return_data.size)] = _12758
                    require _12725 + (32 * _12758) + 32 <= return_data.size
                    s = 0
                    u = _12671 + _12725 + 32
                    v = _12671 + ceil32(return_data.size) + 32
                    while s < _12758:
                        require mem[u] == mem[u]
                        mem[v] = mem[u]
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_2830]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _8984 = mem[mem[mem[_2830]]]
                        idx = idx + 1
                        s = arg3 / 100 * _11013
                        t = t
                        continue 
                    if 1 >= _12758:
                        revert with 'NH{q', 50
                    if t > -mem[_12671 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = arg3 / 100 * _11013
                    t = t + mem[_12671 + ceil32(return_data.size) + 64]
                    continue 
                _11019 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32]]
                _11041 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11041] = 0
                mem[_11041 + 32] = 0
                mem[_11041 + 64] = 0
                s = 0
                u = 0
                v = 0
                while s < mem[_2833]:
                    if s >= mem[_2833]:
                        revert with 'NH{q', 50
                    if s >= mem[_2833]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_11019):
                        if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _8984 = mem[mem[mem[_2830]]]
                            s = s + 1
                            u = u
                            v = v
                            continue 
                        if u == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = 1
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = 1
                    continue 
                _12443 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12443] = bool(v)
                mem[_12443 + 32] = 0
                mem[_12443 + 64] = u
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _12486 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                if 0 >= mem[_2833]:
                    revert with 'NH{q', 50
                _12533 = mem[mem[_2833 + 32] + 32]
                if mem[mem[_2833 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / mem[mem[_2833 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _12757 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_12757 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_12757]:
                    revert with 'NH{q', 50
                mem[_12757 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_12757]:
                    revert with 'NH{q', 50
                mem[_12757 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_12757]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _12917 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                mem[_12757 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_12757 + 100] = address(_12917)
                mem[_12757 + 132] = _12533 / 100 * _12486
                require ext_code.size(mem[_12757 + 44 len 20])
                call mem[_12757 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_12917), _12533 / 100 * _12486
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _13163 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _13177 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_12757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_12757 + 100] = _12533 / 100 * _12486
                mem[_12757 + 132] = 98 * _13177 / 100
                mem[_12757 + 164] = 160
                mem[_12757 + 260] = mem[_12757]
                s = 0
                u = _12757 + 32
                v = _12757 + 292
                while s < mem[_12757]:
                    mem[v] = mem[u + 12 len 20]
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_12757 + 196] = this.address
                mem[_12757 + 228] = block.timestamp + 900
                require ext_code.size(address(_13163))
                call address(_13163).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _12757 + (32 * mem[_12757]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13856 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13871 = mem[_13856]
                require mem[_13856] <= test266151307()
                require _13856 + mem[_13856] + 31 < _13856 + return_data.size
                _13887 = mem[_13856 + mem[_13856]]
                if mem[_13856 + mem[_13856]] > test266151307():
                    revert with 'NH{q', 65
                if _13856 + ceil32(return_data.size) + (32 * mem[_13856 + mem[_13856]]) + 32 > test266151307() or (32 * mem[_13856 + mem[_13856]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13856 + ceil32(return_data.size) + (32 * mem[_13856 + mem[_13856]]) + 32
                mem[_13856 + ceil32(return_data.size)] = _13887
                require _13871 + (32 * _13887) + 32 <= return_data.size
                s = 0
                u = _13856 + _13871 + 32
                v = _13856 + ceil32(return_data.size) + 32
                while s < _13887:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = _12533 / 100 * _12486
                    t = t
                    continue 
                if 1 >= _13887:
                    revert with 'NH{q', 50
                if t > -mem[_13856 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = _12533 / 100 * _12486
                t = t + mem[_13856 + ceil32(return_data.size) + 64]
                continue 
            if 0 >= mem[_2833]:
                revert with 'NH{q', 50
            if mem[mem[_2833 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] - 1:
                revert with 'NH{q', 17
            mem[mem[_2833 + 32] + 32] = mem[mem[_2833 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96]] == 1:
                _11120 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
                if arg3 / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                _11439 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_11439 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_11439]:
                    revert with 'NH{q', 50
                mem[_11439 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_11439]:
                    revert with 'NH{q', 50
                mem[_11439 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_11439]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _11620 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                mem[_11439 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_11439 + 100] = address(_11620)
                mem[_11439 + 132] = arg3 / 100 * _11120
                require ext_code.size(mem[_11439 + 44 len 20])
                call mem[_11439 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_11620), arg3 / 100 * _11120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _11908 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                _11927 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_11439 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_11439 + 100] = arg3 / 100 * _11120
                mem[_11439 + 132] = 98 * _11927 / 100
                mem[_11439 + 164] = 160
                mem[_11439 + 260] = mem[_11439]
                s = 0
                u = _11439 + 32
                v = _11439 + 292
                while s < mem[_11439]:
                    mem[v] = mem[u + 12 len 20]
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_11439 + 196] = this.address
                mem[_11439 + 228] = block.timestamp + 900
                require ext_code.size(address(_11908))
                call address(_11908).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _11439 + (32 * mem[_11439]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12670 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12724 = mem[_12670]
                require mem[_12670] <= test266151307()
                require _12670 + mem[_12670] + 31 < _12670 + return_data.size
                _12756 = mem[_12670 + mem[_12670]]
                if mem[_12670 + mem[_12670]] > test266151307():
                    revert with 'NH{q', 65
                if _12670 + ceil32(return_data.size) + (32 * mem[_12670 + mem[_12670]]) + 32 > test266151307() or (32 * mem[_12670 + mem[_12670]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12670 + ceil32(return_data.size) + (32 * mem[_12670 + mem[_12670]]) + 32
                mem[_12670 + ceil32(return_data.size)] = _12756
                require _12724 + (32 * _12756) + 32 <= return_data.size
                s = 0
                u = _12670 + _12724 + 32
                v = _12670 + ceil32(return_data.size) + 32
                while s < _12756:
                    require mem[u] == mem[u]
                    mem[v] = mem[u]
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_2830]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    idx = idx + 1
                    s = arg3 / 100 * _11120
                    t = t
                    continue 
                if 1 >= _12756:
                    revert with 'NH{q', 50
                if t > -mem[_12670 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = arg3 / 100 * _11120
                t = t + mem[_12670 + ceil32(return_data.size) + 64]
                continue 
            _11149 = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32]]
            _11188 = mem[64]
            mem[64] = mem[64] + 96
            mem[_11188] = 0
            mem[_11188 + 32] = 0
            mem[_11188 + 64] = 0
            s = 0
            u = 0
            v = 0
            while s < mem[_2833]:
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if s >= mem[_2833]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * s) + _2833 + 32] + 12 len 20] != address(_11149):
                    if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _8984 = mem[mem[mem[_2830]]]
                        s = s + 1
                        u = u
                        v = v
                        continue 
                    if u == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u + 1
                    v = v
                    continue 
                if not mem[mem[(32 * s) + _2833 + 32] + 12 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    _8984 = mem[mem[mem[_2830]]]
                    s = s + 1
                    u = u
                    v = 1
                    continue 
                if u == -1:
                    revert with 'NH{q', 17
                if s == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 1
                v = 1
                continue 
            _12440 = mem[64]
            mem[64] = mem[64] + 96
            mem[_12440] = bool(v)
            mem[_12440 + 32] = 0
            mem[_12440 + 64] = u
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _12481 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32]
            if 0 >= mem[_2833]:
                revert with 'NH{q', 50
            _12528 = mem[mem[_2833 + 32] + 32]
            if mem[mem[_2833 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 32] > -1 / mem[mem[_2833 + 32] + 32] / 100:
                revert with 'NH{q', 17
            _12755 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_12755 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if 0 >= mem[_12755]:
                revert with 'NH{q', 50
            mem[_12755 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 12 len 20]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if 1 >= mem[_12755]:
                revert with 'NH{q', 50
            mem[_12755 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20]
            if 0 >= mem[_12755]:
                revert with 'NH{q', 50
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _12914 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
            mem[_12755 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[_12755 + 100] = address(_12914)
            mem[_12755 + 132] = _12528 / 100 * _12481
            require ext_code.size(mem[_12755 + 44 len 20])
            call mem[_12755 + 44 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_12914), _12528 / 100 * _12481
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _13158 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32]]
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            _13175 = mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64]
            if mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 64] / 100:
                revert with 'NH{q', 17
            if block.timestamp > -901:
                revert with 'NH{q', 17
            mem[_12755 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_12755 + 100] = _12528 / 100 * _12481
            mem[_12755 + 132] = 98 * _13175 / 100
            mem[_12755 + 164] = 160
            mem[_12755 + 260] = mem[_12755]
            s = 0
            u = _12755 + 32
            v = _12755 + 292
            while s < mem[_12755]:
                mem[v] = mem[u + 12 len 20]
                _8984 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_12755 + 196] = this.address
            mem[_12755 + 228] = block.timestamp + 900
            require ext_code.size(address(_13158))
            call address(_13158).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _12755 + (32 * mem[_12755]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13855 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _13870 = mem[_13855]
            require mem[_13855] <= test266151307()
            require _13855 + mem[_13855] + 31 < _13855 + return_data.size
            _13886 = mem[_13855 + mem[_13855]]
            if mem[_13855 + mem[_13855]] > test266151307():
                revert with 'NH{q', 65
            if _13855 + ceil32(return_data.size) + (32 * mem[_13855 + mem[_13855]]) + 32 > test266151307() or (32 * mem[_13855 + mem[_13855]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _13855 + ceil32(return_data.size) + (32 * mem[_13855 + mem[_13855]]) + 32
            mem[_13855 + ceil32(return_data.size)] = _13886
            require _13870 + (32 * _13886) + 32 <= return_data.size
            s = 0
            u = _13855 + _13870 + 32
            v = _13855 + ceil32(return_data.size) + 32
            while s < _13886:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                _8984 = mem[mem[mem[_2830]]]
                s = s + 1
                u = u + 32
                v = v + 32
                continue 
            if idx >= mem[mem[mem[_2830]]]:
                revert with 'NH{q', 50
            if mem[mem[mem[mem[(32 * idx) + mem[mem[_2830]] + 32] + 96] + 32] + 44 len 20] != address(_2832):
                if idx == -1:
                    revert with 'NH{q', 17
                _8984 = mem[mem[mem[_2830]]]
                idx = idx + 1
                s = _12528 / 100 * _12481
                t = t
                continue 
            if 1 >= _13886:
                revert with 'NH{q', 50
            if t > -mem[_13855 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _8984 = mem[mem[mem[_2830]]]
            idx = idx + 1
            s = _12528 / 100 * _12481
            t = t + mem[_13855 + ceil32(return_data.size) + 64]
            continue 
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _9029 = mem[ceil32(return_data.size) + 160]
        if 0 >= mem[_940]:
            revert with 'NH{q', 50
        _9058 = mem[_940 + 32]
        if cd[(arg5 + 132)] > test266151307():
            revert with 'NH{q', 65
        _9080 = mem[64]
        mem[mem[64]] = cd[(arg5 + 132)]
        mem[64] = mem[64] + (32 * cd[(arg5 + 132)]) + 32
        if not cd[(arg5 + 132)]:
            _10857 = mem[mem[mem[_9029]]]
            idx = 0
            s = 0
            u = 0
            while idx < _10857:
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _10964 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 32]
                _10984 = mem[64]
                mem[64] = mem[64] + 96
                mem[_10984] = 0
                mem[_10984 + 32] = 0
                mem[_10984 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_9080]:
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_10964):
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _12438 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12438] = bool(w)
                mem[_12438 + 32] = 0
                mem[_12438 + 64] = v
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_9080]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _9080 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96]] == 1:
                        _12620 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _12826 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_12826 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_12826]:
                            revert with 'NH{q', 50
                        mem[_12826 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_12826]:
                            revert with 'NH{q', 50
                        mem[_12826 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_12826]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _12998 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                        mem[_12826 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_12826 + 100] = address(_12998)
                        mem[_12826 + 132] = t / 100 * _12620
                        require ext_code.size(mem[_12826 + 44 len 20])
                        call mem[_12826 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_12998), t / 100 * _12620
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _13231 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _13250 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_12826 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_12826 + 100] = t / 100 * _12620
                        mem[_12826 + 132] = 98 * _13250 / 100
                        mem[_12826 + 164] = 160
                        mem[_12826 + 260] = mem[_12826]
                        s = 0
                        v = _12826 + 32
                        w = _12826 + 292
                        while s < mem[_12826]:
                            mem[w] = mem[v + 12 len 20]
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_12826 + 196] = this.address
                        mem[_12826 + 228] = block.timestamp + 900
                        require ext_code.size(address(_13231))
                        call address(_13231).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _12826 + (32 * mem[_12826]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _13851 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _13863 = mem[_13851]
                        require mem[_13851] <= test266151307()
                        require _13851 + mem[_13851] + 31 < _13851 + return_data.size
                        _13885 = mem[_13851 + mem[_13851]]
                        if mem[_13851 + mem[_13851]] > test266151307():
                            revert with 'NH{q', 65
                        if _13851 + ceil32(return_data.size) + (32 * mem[_13851 + mem[_13851]]) + 32 > test266151307() or (32 * mem[_13851 + mem[_13851]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _13851 + ceil32(return_data.size) + (32 * mem[_13851 + mem[_13851]]) + 32
                        mem[_13851 + ceil32(return_data.size)] = _13885
                        require _13863 + (32 * _13885) + 32 <= return_data.size
                        s = 0
                        v = _13851 + _13863 + 32
                        w = _13851 + ceil32(return_data.size) + 32
                        while s < _13885:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _10857 = mem[mem[mem[_9029]]]
                            idx = idx + 1
                            s = t / 100 * _12620
                            u = u
                            continue 
                        if 1 >= _13885:
                            revert with 'NH{q', 50
                        if u > -mem[_13851 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = t / 100 * _12620
                        u = u + mem[_13851 + ceil32(return_data.size) + 64]
                        continue 
                    _12623 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32]]
                    _12626 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_12626] = 0
                    mem[_12626 + 32] = 0
                    mem[_12626 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_9080]:
                        if s >= mem[_9080]:
                            revert with 'NH{q', 50
                        if s >= mem[_9080]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_12623):
                            if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _10857 = mem[mem[mem[_9029]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _13685 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_13685] = bool(v)
                    mem[_13685 + 32] = 0
                    mem[_13685 + 64] = t
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _13735 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                    if 0 >= mem[_9080]:
                        revert with 'NH{q', 50
                    _13765 = mem[mem[_9080 + 32] + 32]
                    if mem[mem[_9080 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / mem[mem[_9080 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _13884 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13884 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_13884]:
                        revert with 'NH{q', 50
                    mem[_13884 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_13884]:
                        revert with 'NH{q', 50
                    mem[_13884 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_13884]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14028 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    mem[_13884 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_13884 + 100] = address(_14028)
                    mem[_13884 + 132] = _13765 / 100 * _13735
                    require ext_code.size(mem[_13884 + 44 len 20])
                    call mem[_13884 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_14028), _13765 / 100 * _13735
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14175 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14191 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_13884 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_13884 + 100] = _13765 / 100 * _13735
                    mem[_13884 + 132] = 98 * _14191 / 100
                    mem[_13884 + 164] = 160
                    mem[_13884 + 260] = mem[_13884]
                    s = 0
                    t = _13884 + 32
                    v = _13884 + 292
                    while s < mem[_13884]:
                        mem[v] = mem[t + 12 len 20]
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_13884 + 196] = this.address
                    mem[_13884 + 228] = block.timestamp + 900
                    require ext_code.size(address(_14175))
                    call address(_14175).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13884 + (32 * mem[_13884]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14568 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14590 = mem[_14568]
                    require mem[_14568] <= test266151307()
                    require _14568 + mem[_14568] + 31 < _14568 + return_data.size
                    _14608 = mem[_14568 + mem[_14568]]
                    if mem[_14568 + mem[_14568]] > test266151307():
                        revert with 'NH{q', 65
                    if _14568 + ceil32(return_data.size) + (32 * mem[_14568 + mem[_14568]]) + 32 > test266151307() or (32 * mem[_14568 + mem[_14568]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _14568 + ceil32(return_data.size) + (32 * mem[_14568 + mem[_14568]]) + 32
                    mem[_14568 + ceil32(return_data.size)] = _14608
                    require _14590 + (32 * _14608) + 32 <= return_data.size
                    s = 0
                    t = _14568 + _14590 + 32
                    v = _14568 + ceil32(return_data.size) + 32
                    while s < _14608:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = _13765 / 100 * _13735
                        u = u
                        continue 
                    if 1 >= _14608:
                        revert with 'NH{q', 50
                    if u > -mem[_14568 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = _13765 / 100 * _13735
                    u = u + mem[_14568 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_9080]:
                    revert with 'NH{q', 50
                if mem[mem[_9080 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_9080 + 32] + 32] = mem[mem[_9080 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96]] == 1:
                    _12686 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _12937 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_12937 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_12937]:
                        revert with 'NH{q', 50
                    mem[_12937 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_12937]:
                        revert with 'NH{q', 50
                    mem[_12937 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_12937]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _13105 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    mem[_12937 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_12937 + 100] = address(_13105)
                    mem[_12937 + 132] = t / 100 * _12686
                    require ext_code.size(mem[_12937 + 44 len 20])
                    call mem[_12937 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_13105), t / 100 * _12686
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _13299 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _13315 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_12937 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_12937 + 100] = t / 100 * _12686
                    mem[_12937 + 132] = 98 * _13315 / 100
                    mem[_12937 + 164] = 160
                    mem[_12937 + 260] = mem[_12937]
                    s = 0
                    v = _12937 + 32
                    w = _12937 + 292
                    while s < mem[_12937]:
                        mem[w] = mem[v + 12 len 20]
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_12937 + 196] = this.address
                    mem[_12937 + 228] = block.timestamp + 900
                    require ext_code.size(address(_13299))
                    call address(_13299).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _12937 + (32 * mem[_12937]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13850 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _13862 = mem[_13850]
                    require mem[_13850] <= test266151307()
                    require _13850 + mem[_13850] + 31 < _13850 + return_data.size
                    _13883 = mem[_13850 + mem[_13850]]
                    if mem[_13850 + mem[_13850]] > test266151307():
                        revert with 'NH{q', 65
                    if _13850 + ceil32(return_data.size) + (32 * mem[_13850 + mem[_13850]]) + 32 > test266151307() or (32 * mem[_13850 + mem[_13850]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _13850 + ceil32(return_data.size) + (32 * mem[_13850 + mem[_13850]]) + 32
                    mem[_13850 + ceil32(return_data.size)] = _13883
                    require _13862 + (32 * _13883) + 32 <= return_data.size
                    s = 0
                    v = _13850 + _13862 + 32
                    w = _13850 + ceil32(return_data.size) + 32
                    while s < _13883:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = t / 100 * _12686
                        u = u
                        continue 
                    if 1 >= _13883:
                        revert with 'NH{q', 50
                    if u > -mem[_13850 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = t / 100 * _12686
                    u = u + mem[_13850 + ceil32(return_data.size) + 64]
                    continue 
                _12707 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32]]
                _12744 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12744] = 0
                mem[_12744 + 32] = 0
                mem[_12744 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_9080]:
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_12707):
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _10857 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _10857 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _13682 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13682] = bool(v)
                mem[_13682 + 32] = 0
                mem[_13682 + 64] = t
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _13730 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                if 0 >= mem[_9080]:
                    revert with 'NH{q', 50
                _13760 = mem[mem[_9080 + 32] + 32]
                if mem[mem[_9080 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / mem[mem[_9080 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _13882 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_13882 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_13882]:
                    revert with 'NH{q', 50
                mem[_13882 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_13882]:
                    revert with 'NH{q', 50
                mem[_13882 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_13882]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _14025 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                mem[_13882 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_13882 + 100] = address(_14025)
                mem[_13882 + 132] = _13760 / 100 * _13730
                require ext_code.size(mem[_13882 + 44 len 20])
                call mem[_13882 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_14025), _13760 / 100 * _13730
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _14170 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _14189 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_13882 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_13882 + 100] = _13760 / 100 * _13730
                mem[_13882 + 132] = 98 * _14189 / 100
                mem[_13882 + 164] = 160
                mem[_13882 + 260] = mem[_13882]
                s = 0
                t = _13882 + 32
                v = _13882 + 292
                while s < mem[_13882]:
                    mem[v] = mem[t + 12 len 20]
                    _10857 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_13882 + 196] = this.address
                mem[_13882 + 228] = block.timestamp + 900
                require ext_code.size(address(_14170))
                call address(_14170).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _13882 + (32 * mem[_13882]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _14567 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _14589 = mem[_14567]
                require mem[_14567] <= test266151307()
                require _14567 + mem[_14567] + 31 < _14567 + return_data.size
                _14607 = mem[_14567 + mem[_14567]]
                if mem[_14567 + mem[_14567]] > test266151307():
                    revert with 'NH{q', 65
                if _14567 + ceil32(return_data.size) + (32 * mem[_14567 + mem[_14567]]) + 32 > test266151307() or (32 * mem[_14567 + mem[_14567]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _14567 + ceil32(return_data.size) + (32 * mem[_14567 + mem[_14567]]) + 32
                mem[_14567 + ceil32(return_data.size)] = _14607
                require _14589 + (32 * _14607) + 32 <= return_data.size
                s = 0
                t = _14567 + _14589 + 32
                v = _14567 + ceil32(return_data.size) + 32
                while s < _14607:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _10857 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _10857 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = _13760 / 100 * _13730
                    u = u
                    continue 
                if 1 >= _14607:
                    revert with 'NH{q', 50
                if u > -mem[_14567 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _10857 = mem[mem[mem[_9029]]]
                idx = idx + 1
                s = _13760 / 100 * _13730
                u = u + mem[_14567 + ceil32(return_data.size) + 64]
                continue 
        else:
            mem[64] = _9080 + (32 * cd[(arg5 + 132)]) + 96
            mem[_9080 + (32 * cd[(arg5 + 132)]) + 32] = 0
            mem[_9080 + (32 * cd[(arg5 + 132)]) + 64] = 0
            mem[var170001] = _9080 + (32 * cd[(arg5 + 132)]) + 32
            s = var170001
            idx = var170002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_9080 + (32 * cd[(arg5 + 132)]) + 32] = 0
                mem[_9080 + (32 * cd[(arg5 + 132)]) + 64] = 0
                mem[s + 32] = _9080 + (32 * cd[(arg5 + 132)]) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _13675 = mem[mem[mem[_9029]]]
            idx = 0
            s = 0
            u = 0
            while idx < _13675:
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = s
                    u = u
                    continue 
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _13792 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 32]
                _13805 = mem[64]
                mem[64] = mem[64] + 96
                mem[_13805] = 0
                mem[_13805 + 32] = 0
                mem[_13805 + 64] = 0
                s = 0
                v = 0
                w = 0
                while s < mem[_9080]:
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_13792):
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v
                            w = w
                            continue 
                        if v == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 1
                        w = w
                        continue 
                    if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v
                        w = 1
                        continue 
                    if v == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    s = s + 1
                    v = v + 1
                    w = 1
                    continue 
                _14447 = mem[64]
                mem[64] = mem[64] + 96
                mem[_14447] = bool(w)
                mem[_14447 + 32] = 0
                mem[_14447 + 64] = v
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if not w:
                    if v >= mem[_9080]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * v) + _9080 + 32] + 32] = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96]] == 1:
                        _14551 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                        if t / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / t / 100:
                            revert with 'NH{q', 17
                        _14631 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_14631 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_14631]:
                            revert with 'NH{q', 50
                        mem[_14631 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_14631]:
                            revert with 'NH{q', 50
                        mem[_14631 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                        if 0 >= mem[_14631]:
                            revert with 'NH{q', 50
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _14696 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                        mem[_14631 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_14631 + 100] = address(_14696)
                        mem[_14631 + 132] = t / 100 * _14551
                        require ext_code.size(mem[_14631 + 44 len 20])
                        call mem[_14631 + 44 len 20].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_14696), t / 100 * _14551
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _14775 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        _14783 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                        if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                            revert with 'NH{q', 17
                        if block.timestamp > -901:
                            revert with 'NH{q', 17
                        mem[_14631 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_14631 + 100] = t / 100 * _14551
                        mem[_14631 + 132] = 98 * _14783 / 100
                        mem[_14631 + 164] = 160
                        mem[_14631 + 260] = mem[_14631]
                        s = 0
                        v = _14631 + 32
                        w = _14631 + 292
                        while s < mem[_14631]:
                            mem[w] = mem[v + 12 len 20]
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_14631 + 196] = this.address
                        mem[_14631 + 228] = block.timestamp + 900
                        require ext_code.size(address(_14775))
                        call address(_14775).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _14631 + (32 * mem[_14631]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14974 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14976 = mem[_14974]
                        require mem[_14974] <= test266151307()
                        require _14974 + mem[_14974] + 31 < _14974 + return_data.size
                        _14980 = mem[_14974 + mem[_14974]]
                        if mem[_14974 + mem[_14974]] > test266151307():
                            revert with 'NH{q', 65
                        if _14974 + ceil32(return_data.size) + (32 * mem[_14974 + mem[_14974]]) + 32 > test266151307() or (32 * mem[_14974 + mem[_14974]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _14974 + ceil32(return_data.size) + (32 * mem[_14974 + mem[_14974]]) + 32
                        mem[_14974 + ceil32(return_data.size)] = _14980
                        require _14976 + (32 * _14980) + 32 <= return_data.size
                        s = 0
                        v = _14974 + _14976 + 32
                        w = _14974 + ceil32(return_data.size) + 32
                        while s < _14980:
                            require mem[v] == mem[v]
                            mem[w] = mem[v]
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        if idx >= mem[mem[mem[_9029]]]:
                            revert with 'NH{q', 50
                        if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                            if idx == -1:
                                revert with 'NH{q', 17
                            _13675 = mem[mem[mem[_9029]]]
                            idx = idx + 1
                            s = t / 100 * _14551
                            u = u
                            continue 
                        if 1 >= _14980:
                            revert with 'NH{q', 50
                        if u > -mem[_14974 + ceil32(return_data.size) + 64] - 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = t / 100 * _14551
                        u = u + mem[_14974 + ceil32(return_data.size) + 64]
                        continue 
                    _14552 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32]]
                    _14553 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_14553] = 0
                    mem[_14553 + 32] = 0
                    mem[_14553 + 64] = 0
                    s = 0
                    t = 0
                    v = 0
                    while s < mem[_9080]:
                        if s >= mem[_9080]:
                            revert with 'NH{q', 50
                        if s >= mem[_9080]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_14552):
                            if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                                if s == -1:
                                    revert with 'NH{q', 17
                                _13675 = mem[mem[mem[_9029]]]
                                s = s + 1
                                t = t
                                v = v
                                continue 
                            if t == -1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t + 1
                            v = v
                            continue 
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t
                            v = 1
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 1
                        v = 1
                        continue 
                    _14894 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_14894] = bool(v)
                    mem[_14894 + 32] = 0
                    mem[_14894 + 64] = t
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14917 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                    if 0 >= mem[_9080]:
                        revert with 'NH{q', 50
                    _14939 = mem[mem[_9080 + 32] + 32]
                    if mem[mem[_9080 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / mem[mem[_9080 + 32] + 32] / 100:
                        revert with 'NH{q', 17
                    _14979 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_14979 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_14979]:
                        revert with 'NH{q', 50
                    mem[_14979 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_14979]:
                        revert with 'NH{q', 50
                    mem[_14979 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_14979]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _15029 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    mem[_14979 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_14979 + 100] = address(_15029)
                    mem[_14979 + 132] = _14939 / 100 * _14917
                    require ext_code.size(mem[_14979 + 44 len 20])
                    call mem[_14979 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_15029), _14939 / 100 * _14917
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _15065 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _15072 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_14979 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_14979 + 100] = _14939 / 100 * _14917
                    mem[_14979 + 132] = 98 * _15072 / 100
                    mem[_14979 + 164] = 160
                    mem[_14979 + 260] = mem[_14979]
                    s = 0
                    t = _14979 + 32
                    v = _14979 + 292
                    while s < mem[_14979]:
                        mem[v] = mem[t + 12 len 20]
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[_14979 + 196] = this.address
                    mem[_14979 + 228] = block.timestamp + 900
                    require ext_code.size(address(_15065))
                    call address(_15065).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14979 + (32 * mem[_14979]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _15134 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _15136 = mem[_15134]
                    require mem[_15134] <= test266151307()
                    require _15134 + mem[_15134] + 31 < _15134 + return_data.size
                    _15138 = mem[_15134 + mem[_15134]]
                    if mem[_15134 + mem[_15134]] > test266151307():
                        revert with 'NH{q', 65
                    if _15134 + ceil32(return_data.size) + (32 * mem[_15134 + mem[_15134]]) + 32 > test266151307() or (32 * mem[_15134 + mem[_15134]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _15134 + ceil32(return_data.size) + (32 * mem[_15134 + mem[_15134]]) + 32
                    mem[_15134 + ceil32(return_data.size)] = _15138
                    require _15136 + (32 * _15138) + 32 <= return_data.size
                    s = 0
                    t = _15134 + _15136 + 32
                    v = _15134 + ceil32(return_data.size) + 32
                    while s < _15138:
                        require mem[t] == mem[t]
                        mem[v] = mem[t]
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 32
                        v = v + 32
                        continue 
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = _14939 / 100 * _14917
                        u = u
                        continue 
                    if 1 >= _15138:
                        revert with 'NH{q', 50
                    if u > -mem[_15134 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = _14939 / 100 * _14917
                    u = u + mem[_15134 + ceil32(return_data.size) + 64]
                    continue 
                if 0 >= mem[_9080]:
                    revert with 'NH{q', 50
                if mem[mem[_9080 + 32] + 32] > -mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] - 1:
                    revert with 'NH{q', 17
                mem[mem[_9080 + 32] + 32] = mem[mem[_9080 + 32] + 32] + mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96]] == 1:
                    _14581 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                    if t / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / t / 100:
                        revert with 'NH{q', 17
                    _14652 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_14652 + 32 len 64] = call.data[calldata.size len 64]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_14652]:
                        revert with 'NH{q', 50
                    mem[_14652 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_14652]:
                        revert with 'NH{q', 50
                    mem[_14652 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                    if 0 >= mem[_14652]:
                        revert with 'NH{q', 50
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14739 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    mem[_14652 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                    mem[_14652 + 100] = address(_14739)
                    mem[_14652 + 132] = t / 100 * _14581
                    require ext_code.size(mem[_14652 + 44 len 20])
                    call mem[_14652 + 44 len 20].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_14739), t / 100 * _14581
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14790 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    _14795 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                    if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                        revert with 'NH{q', 17
                    if block.timestamp > -901:
                        revert with 'NH{q', 17
                    mem[_14652 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_14652 + 100] = t / 100 * _14581
                    mem[_14652 + 132] = 98 * _14795 / 100
                    mem[_14652 + 164] = 160
                    mem[_14652 + 260] = mem[_14652]
                    s = 0
                    v = _14652 + 32
                    w = _14652 + 292
                    while s < mem[_14652]:
                        mem[w] = mem[v + 12 len 20]
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_14652 + 196] = this.address
                    mem[_14652 + 228] = block.timestamp + 900
                    require ext_code.size(address(_14790))
                    call address(_14790).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _14652 + (32 * mem[_14652]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14973 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _14975 = mem[_14973]
                    require mem[_14973] <= test266151307()
                    require _14973 + mem[_14973] + 31 < _14973 + return_data.size
                    _14978 = mem[_14973 + mem[_14973]]
                    if mem[_14973 + mem[_14973]] > test266151307():
                        revert with 'NH{q', 65
                    if _14973 + ceil32(return_data.size) + (32 * mem[_14973 + mem[_14973]]) + 32 > test266151307() or (32 * mem[_14973 + mem[_14973]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _14973 + ceil32(return_data.size) + (32 * mem[_14973 + mem[_14973]]) + 32
                    mem[_14973 + ceil32(return_data.size)] = _14978
                    require _14975 + (32 * _14978) + 32 <= return_data.size
                    s = 0
                    v = _14973 + _14975 + 32
                    w = _14973 + ceil32(return_data.size) + 32
                    while s < _14978:
                        require mem[v] == mem[v]
                        mem[w] = mem[v]
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    if idx >= mem[mem[mem[_9029]]]:
                        revert with 'NH{q', 50
                    if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                        if idx == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        idx = idx + 1
                        s = t / 100 * _14581
                        u = u
                        continue 
                    if 1 >= _14978:
                        revert with 'NH{q', 50
                    if u > -mem[_14973 + ceil32(return_data.size) + 64] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = t / 100 * _14581
                    u = u + mem[_14973 + ceil32(return_data.size) + 64]
                    continue 
                _14591 = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32]]
                _14602 = mem[64]
                mem[64] = mem[64] + 96
                mem[_14602] = 0
                mem[_14602 + 32] = 0
                mem[_14602 + 64] = 0
                s = 0
                t = 0
                v = 0
                while s < mem[_9080]:
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if s >= mem[_9080]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * s) + _9080 + 32] + 12 len 20] != address(_14591):
                        if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                            if s == -1:
                                revert with 'NH{q', 17
                            _13675 = mem[mem[mem[_9029]]]
                            s = s + 1
                            t = t
                            v = v
                            continue 
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t + 1
                        v = v
                        continue 
                    if not mem[mem[(32 * s) + _9080 + 32] + 12 len 20]:
                        if s == -1:
                            revert with 'NH{q', 17
                        _13675 = mem[mem[mem[_9029]]]
                        s = s + 1
                        t = t
                        v = 1
                        continue 
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 1
                    v = 1
                    continue 
                _14891 = mem[64]
                mem[64] = mem[64] + 96
                mem[_14891] = bool(v)
                mem[_14891 + 32] = 0
                mem[_14891 + 64] = t
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _14912 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32]
                if 0 >= mem[_9080]:
                    revert with 'NH{q', 50
                _14934 = mem[mem[_9080 + 32] + 32]
                if mem[mem[_9080 + 32] + 32] / 100 and mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 32] > -1 / mem[mem[_9080 + 32] + 32] / 100:
                    revert with 'NH{q', 17
                _14977 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_14977 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if 0 >= mem[_14977]:
                    revert with 'NH{q', 50
                mem[_14977 + 32] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 12 len 20]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if 1 >= mem[_14977]:
                    revert with 'NH{q', 50
                mem[_14977 + 64] = mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20]
                if 0 >= mem[_14977]:
                    revert with 'NH{q', 50
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _15026 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                mem[_14977 + 96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[_14977 + 100] = address(_15026)
                mem[_14977 + 132] = _14934 / 100 * _14912
                require ext_code.size(mem[_14977 + 44 len 20])
                call mem[_14977 + 44 len 20].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_15026), _14934 / 100 * _14912
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _15060 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32]]
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                _15070 = mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64]
                if mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100 and 98 > -1 / mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 64] / 100:
                    revert with 'NH{q', 17
                if block.timestamp > -901:
                    revert with 'NH{q', 17
                mem[_14977 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_14977 + 100] = _14934 / 100 * _14912
                mem[_14977 + 132] = 98 * _15070 / 100
                mem[_14977 + 164] = 160
                mem[_14977 + 260] = mem[_14977]
                s = 0
                t = _14977 + 32
                v = _14977 + 292
                while s < mem[_14977]:
                    mem[v] = mem[t + 12 len 20]
                    _13675 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                mem[_14977 + 196] = this.address
                mem[_14977 + 228] = block.timestamp + 900
                require ext_code.size(address(_15060))
                call address(_15060).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _14977 + (32 * mem[_14977]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _15133 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _15135 = mem[_15133]
                require mem[_15133] <= test266151307()
                require _15133 + mem[_15133] + 31 < _15133 + return_data.size
                _15137 = mem[_15133 + mem[_15133]]
                if mem[_15133 + mem[_15133]] > test266151307():
                    revert with 'NH{q', 65
                if _15133 + ceil32(return_data.size) + (32 * mem[_15133 + mem[_15133]]) + 32 > test266151307() or (32 * mem[_15133 + mem[_15133]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _15133 + ceil32(return_data.size) + (32 * mem[_15133 + mem[_15133]]) + 32
                mem[_15133 + ceil32(return_data.size)] = _15137
                require _15135 + (32 * _15137) + 32 <= return_data.size
                s = 0
                t = _15133 + _15135 + 32
                v = _15133 + ceil32(return_data.size) + 32
                while s < _15137:
                    require mem[t] == mem[t]
                    mem[v] = mem[t]
                    _13675 = mem[mem[mem[_9029]]]
                    s = s + 1
                    t = t + 32
                    v = v + 32
                    continue 
                if idx >= mem[mem[mem[_9029]]]:
                    revert with 'NH{q', 50
                if mem[mem[mem[mem[(32 * idx) + mem[mem[_9029]] + 32] + 96] + 32] + 44 len 20] != address(_9058):
                    if idx == -1:
                        revert with 'NH{q', 17
                    _13675 = mem[mem[mem[_9029]]]
                    idx = idx + 1
                    s = _14934 / 100 * _14912
                    u = u
                    continue 
                if 1 >= _15137:
                    revert with 'NH{q', 50
                if u > -mem[_15133 + ceil32(return_data.size) + 64] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _13675 = mem[mem[mem[_9029]]]
                idx = idx + 1
                s = _14934 / 100 * _14912
                u = u + mem[_15133 + ceil32(return_data.size) + 64]
                continue 
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
