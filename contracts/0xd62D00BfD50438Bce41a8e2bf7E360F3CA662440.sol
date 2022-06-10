contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function drainEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return bool(ext_call.success)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ApproveERC20(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9b81dadc(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _532 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_532] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _532 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _532
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 'Invalid input'
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    if mem[mem[(32 * ('cd', 36).length) + 160]] != 2:
        revert with 0, 'Invalid Input, not 2'
    require 0 < mem[96]
    _533 = mem[128]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    _535 = mem[(32 * ('cd', 36).length) + 160]
    _536 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    _539 = mem[_535]
    mem[mem[64] + 68] = mem[_535]
    idx = 0
    s = _535 + 32
    t = mem[64] + 100
    while idx < _539:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_533))
    staticcall address(_533).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _536 + (32 * _539) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _839 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _840 = mem[_839]
    require mem[_839] <= test266151307()
    require _839 + mem[_839] + 31 < _839 + return_data.size
    _841 = mem[_839 + mem[_839]]
    require mem[_839 + mem[_839]] <= test266151307()
    require _839 + ceil32(return_data.size) + (32 * mem[_839 + mem[_839]]) + 32 <= test266151307() and (32 * mem[_839 + mem[_839]]) + 32 >= 0
    mem[64] = _839 + ceil32(return_data.size) + (32 * mem[_839 + mem[_839]]) + 32
    mem[_839 + ceil32(return_data.size)] = _841
    require _840 + (32 * _841) + 32 <= return_data.size
    idx = 0
    s = _839 + _840 + 32
    t = _839 + ceil32(return_data.size) + 32
    while idx < _841:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _841 - 1 < _841
    _1137 = mem[(32 * _841 - 1) + _839 + ceil32(return_data.size) + 32]
    _1425 = mem[96]
    idx = 1
    s = mem[(32 * mem[_839 + ceil32(return_data.size)] - 1) + _839 + ceil32(return_data.size) + 32]
    t = _839 + ceil32(return_data.size)
    while idx < _1425:
        require idx < mem[96]
        _1429 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _1432 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        _1433 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _1456 = mem[_1432]
        mem[mem[64] + 68] = mem[_1432]
        s = 0
        t = _1432 + 32
        u = mem[64] + 100
        while s < _1456:
            mem[u] = mem[t + 12 len 20]
            _1425 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_1429))
        staticcall address(_1429).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1433 + (32 * _1456) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1742 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1751 = mem[_1742]
        require mem[_1742] <= test266151307()
        require _1742 + mem[_1742] + 31 < _1742 + return_data.size
        _1752 = mem[_1742 + mem[_1742]]
        require mem[_1742 + mem[_1742]] <= test266151307()
        require _1742 + ceil32(return_data.size) + (32 * mem[_1742 + mem[_1742]]) + 32 <= test266151307() and (32 * mem[_1742 + mem[_1742]]) + 32 >= 0
        mem[64] = _1742 + ceil32(return_data.size) + (32 * mem[_1742 + mem[_1742]]) + 32
        mem[_1742 + ceil32(return_data.size)] = _1752
        require _1751 + (32 * _1752) + 32 <= return_data.size
        s = 0
        t = _1742 + _1751 + 32
        u = _1742 + ceil32(return_data.size) + 32
        while s < _1752:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _1425 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require _1752 - 1 < _1752
        _1425 = mem[96]
        idx = idx + 1
        s = mem[(32 * _1752 - 1) + _1742 + ceil32(return_data.size) + 32]
        t = _1742 + ceil32(return_data.size)
        continue 
    _1426 = mem[96]
    require mem[96] - 1 <= test266151307()
    _1428 = mem[64]
    mem[mem[64]] = mem[96] - 1
    if not _1426 - 1:
        _1431 = mem[(32 * ('cd', 36).length) + 128]
        require mem[(32 * ('cd', 36).length) + 128] - 1 <= test266151307()
        mem[mem[64] + (32 * _1426 - 1) + 32] = mem[(32 * ('cd', 36).length) + 128] - 1
        mem[64] = mem[64] + (32 * _1426 - 1) + (32 * _1431 - 1) + 64
        if not _1431 - 1:
            _1712 = mem[96]
            idx = 1
            while idx < _1712:
                require idx < mem[96]
                require idx - 1 < mem[_1428]
                mem[(32 * idx - 1) + _1428 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1428 + (32 * _1426 - 1) + 32]
                mem[(32 * idx - 1) + _1428 + (32 * _1426 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1712 = mem[96]
                idx = idx + 1
                continue 
            _1714 = mem[64]
            mem[mem[64] + 32] = 64
            _1728 = mem[_1428]
            mem[mem[64] + 96] = mem[_1428]
            idx = 0
            s = _1428 + 32
            t = mem[64] + 128
            while idx < _1728:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1714 + 64] = (32 * _1728) + 96
            _2003 = mem[_1428 + (32 * _1426 - 1) + 32]
            mem[_1714 + (32 * _1728) + 128] = mem[_1428 + (32 * _1426 - 1) + 32]
            idx = 0
            s = _1428 + (32 * _1426 - 1) + 64
            t = _1714 + (32 * _1728) + (32 * _2003) + 160
            u = _1714 + (32 * _1728) + 160
            while idx < _2003:
                mem[u] = t + -_1714 + -(32 * _1728) - 160
                _2236 = mem[s]
                _2246 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2236 + 32
                x = t + 32
                while v < _2246:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2246) + 32
                u = u + 32
                continue 
            _2240 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2244 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2256 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2264 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2256)
            mem[t + ceil32(return_data.size) + 36] = address(_2264)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2256), address(_2264)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2244)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2330 = mem[_2240]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2240]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2330)] = mem[_2240 + 32 len ceil32(_2330)]
            if ceil32(_2330) <= _2330:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2330) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2264):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2330 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2330) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2330) + _2330 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2330 + 160 len -_2330 + ceil32(_2330)] == Mask(8 * -ceil32(_2330) + _2330 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2330 + 160 len -_2330 + ceil32(_2330)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2330) + _2330 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2330 + 160 len -_2330 + ceil32(_2330)] != address(_2264):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 260] = ceil32(_2330) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 292 len ceil32(ceil32(_2330)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2330)) + 3]
            if ceil32(ceil32(_2330)) + 3 > ceil32(_2330) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2330)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2330) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2330)) + 163]
        else:
            mem[_1428 + (32 * _1426 - 1) + 64] = 96
            s = _1428 + (32 * _1426 - 1) + 64
            idx = _1431 - 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1986 = mem[96]
            idx = 1
            while idx < _1986:
                require idx < mem[96]
                require idx - 1 < mem[_1428]
                mem[(32 * idx - 1) + _1428 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1428 + (32 * _1426 - 1) + 32]
                mem[(32 * idx - 1) + _1428 + (32 * _1426 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1986 = mem[96]
                idx = idx + 1
                continue 
            _1989 = mem[64]
            mem[mem[64] + 32] = 64
            _2004 = mem[_1428]
            mem[mem[64] + 96] = mem[_1428]
            idx = 0
            s = _1428 + 32
            t = mem[64] + 128
            while idx < _2004:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1989 + 64] = (32 * _2004) + 96
            _2247 = mem[_1428 + (32 * _1426 - 1) + 32]
            mem[_1989 + (32 * _2004) + 128] = mem[_1428 + (32 * _1426 - 1) + 32]
            idx = 0
            s = _1428 + (32 * _1426 - 1) + 64
            t = _1989 + (32 * _2004) + (32 * _2247) + 160
            u = _1989 + (32 * _2004) + 160
            while idx < _2247:
                mem[u] = t + -_1989 + -(32 * _2004) - 160
                _2462 = mem[s]
                _2472 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2462 + 32
                x = t + 32
                while v < _2472:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2472) + 32
                u = u + 32
                continue 
            _2466 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2470 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2480 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2497 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2480)
            mem[t + ceil32(return_data.size) + 36] = address(_2497)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2480), address(_2497)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2470)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2570 = mem[_2466]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2466]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2570)] = mem[_2466 + 32 len ceil32(_2570)]
            if ceil32(_2570) <= _2570:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2570) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2497):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2570 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2570) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2570) + _2570 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2570 + 160 len -_2570 + ceil32(_2570)] == Mask(8 * -ceil32(_2570) + _2570 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2570 + 160 len -_2570 + ceil32(_2570)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2570) + _2570 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2570 + 160 len -_2570 + ceil32(_2570)] != address(_2497):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 260] = ceil32(_2570) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 292 len ceil32(ceil32(_2570)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2570)) + 3]
            if ceil32(ceil32(_2570)) + 3 > ceil32(_2570) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2570)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2570) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2570)) + 163]
    else:
        mem[mem[64] + 32 len 32 * _1426 - 1] = call.data[calldata.size len 32 * _1426 - 1]
        _1435 = mem[(32 * ('cd', 36).length) + 128]
        require mem[(32 * ('cd', 36).length) + 128] - 1 <= test266151307()
        mem[mem[64] + (32 * _1426 - 1) + 32] = mem[(32 * ('cd', 36).length) + 128] - 1
        mem[64] = mem[64] + (32 * _1426 - 1) + (32 * _1435 - 1) + 64
        if not _1435 - 1:
            _1713 = mem[96]
            idx = 1
            while idx < _1713:
                require idx < mem[96]
                require idx - 1 < mem[_1428]
                mem[(32 * idx - 1) + _1428 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1428 + (32 * _1426 - 1) + 32]
                mem[(32 * idx - 1) + _1428 + (32 * _1426 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1713 = mem[96]
                idx = idx + 1
                continue 
            _1716 = mem[64]
            mem[mem[64] + 32] = 64
            _1733 = mem[_1428]
            mem[mem[64] + 96] = mem[_1428]
            idx = 0
            s = _1428 + 32
            t = mem[64] + 128
            while idx < _1733:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1716 + 64] = (32 * _1733) + 96
            _2007 = mem[_1428 + (32 * _1426 - 1) + 32]
            mem[_1716 + (32 * _1733) + 128] = mem[_1428 + (32 * _1426 - 1) + 32]
            idx = 0
            s = _1428 + (32 * _1426 - 1) + 64
            t = _1716 + (32 * _1733) + (32 * _2007) + 160
            u = _1716 + (32 * _1733) + 160
            while idx < _2007:
                mem[u] = t + -_1716 + -(32 * _1733) - 160
                _2238 = mem[s]
                _2250 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2238 + 32
                x = t + 32
                while v < _2250:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2250) + 32
                u = u + 32
                continue 
            _2242 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2248 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2258 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2265 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2258)
            mem[t + ceil32(return_data.size) + 36] = address(_2265)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2258), address(_2265)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2248)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2331 = mem[_2242]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2242]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2331)] = mem[_2242 + 32 len ceil32(_2331)]
            if ceil32(_2331) <= _2331:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2331) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2265):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2331 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2331) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2331) + _2331 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2331 + 160 len -_2331 + ceil32(_2331)] == Mask(8 * -ceil32(_2331) + _2331 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2331 + 160 len -_2331 + ceil32(_2331)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2331) + _2331 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2331 + 160 len -_2331 + ceil32(_2331)] != address(_2265):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 260] = ceil32(_2331) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 292 len ceil32(ceil32(_2331)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2331)) + 3]
            if ceil32(ceil32(_2331)) + 3 > ceil32(_2331) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2331)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2331) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2331)) + 163]
        else:
            mem[_1428 + (32 * _1426 - 1) + 64] = 96
            s = _1428 + (32 * _1426 - 1) + 64
            idx = _1435 - 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1987 = mem[96]
            idx = 1
            while idx < _1987:
                require idx < mem[96]
                require idx - 1 < mem[_1428]
                mem[(32 * idx - 1) + _1428 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1428 + (32 * _1426 - 1) + 32]
                mem[(32 * idx - 1) + _1428 + (32 * _1426 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1987 = mem[96]
                idx = idx + 1
                continue 
            _1992 = mem[64]
            mem[mem[64] + 32] = 64
            _2008 = mem[_1428]
            mem[mem[64] + 96] = mem[_1428]
            idx = 0
            s = _1428 + 32
            t = mem[64] + 128
            while idx < _2008:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1992 + 64] = (32 * _2008) + 96
            _2251 = mem[_1428 + (32 * _1426 - 1) + 32]
            mem[_1992 + (32 * _2008) + 128] = mem[_1428 + (32 * _1426 - 1) + 32]
            idx = 0
            s = _1428 + (32 * _1426 - 1) + 64
            t = _1992 + (32 * _2008) + (32 * _2251) + 160
            u = _1992 + (32 * _2008) + 160
            while idx < _2251:
                mem[u] = t + -_1992 + -(32 * _2008) - 160
                _2465 = mem[s]
                _2475 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2465 + 32
                x = t + 32
                while v < _2475:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2475) + 32
                u = u + 32
                continue 
            _2468 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2473 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2482 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2501 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2482)
            mem[t + ceil32(return_data.size) + 36] = address(_2501)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2482), address(_2501)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2473)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2571 = mem[_2468]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2468]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2571)] = mem[_2468 + 32 len ceil32(_2571)]
            if ceil32(_2571) <= _2571:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2571) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2501):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2571 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2571) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2571) + _2571 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2571 + 160 len -_2571 + ceil32(_2571)] == Mask(8 * -ceil32(_2571) + _2571 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2571 + 160 len -_2571 + ceil32(_2571)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2571) + _2571 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2571 + 160 len -_2571 + ceil32(_2571)] != address(_2501):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 164] = _1137
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 132] = _1137
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 260] = ceil32(_2571) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 292 len ceil32(ceil32(_2571)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2571)) + 3]
            if ceil32(ceil32(_2571)) + 3 > ceil32(_2571) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2571)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2571) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2571)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_acb42004(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _532 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_532] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _532 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _532
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != mem[(32 * ('cd', 36).length) + 128]:
        revert with 0, 'Invalid input'
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    if mem[mem[(32 * ('cd', 36).length) + 160]] != 2:
        revert with 0, 'Invalid Input, not 2'
    require 0 < mem[96]
    _533 = mem[128]
    require 0 < mem[(32 * ('cd', 36).length) + 128]
    _535 = mem[(32 * ('cd', 36).length) + 160]
    _536 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    _539 = mem[_535]
    mem[mem[64] + 68] = mem[_535]
    idx = 0
    s = _535 + 32
    t = mem[64] + 100
    while idx < _539:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_533))
    staticcall address(_533).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _536 + (32 * _539) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _841 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _842 = mem[_841]
    require mem[_841] <= test266151307()
    require _841 + mem[_841] + 31 < _841 + return_data.size
    _843 = mem[_841 + mem[_841]]
    require mem[_841 + mem[_841]] <= test266151307()
    require _841 + ceil32(return_data.size) + (32 * mem[_841 + mem[_841]]) + 32 <= test266151307() and (32 * mem[_841 + mem[_841]]) + 32 >= 0
    mem[64] = _841 + ceil32(return_data.size) + (32 * mem[_841 + mem[_841]]) + 32
    mem[_841 + ceil32(return_data.size)] = _843
    require _842 + (32 * _843) + 32 <= return_data.size
    idx = 0
    s = _841 + _842 + 32
    t = _841 + ceil32(return_data.size) + 32
    while idx < _843:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _843 - 1 < _843
    _1141 = mem[(32 * _843 - 1) + _841 + ceil32(return_data.size) + 32]
    _1431 = mem[96]
    idx = 1
    s = mem[(32 * mem[_841 + ceil32(return_data.size)] - 1) + _841 + ceil32(return_data.size) + 32]
    t = _841 + ceil32(return_data.size)
    while idx < _1431:
        require idx < mem[96]
        _1435 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _1438 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        _1439 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _1457 = mem[_1438]
        mem[mem[64] + 68] = mem[_1438]
        s = 0
        t = _1438 + 32
        u = mem[64] + 100
        while s < _1457:
            mem[u] = mem[t + 12 len 20]
            _1431 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_1435))
        staticcall address(_1435).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1439 + (32 * _1457) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1750 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1759 = mem[_1750]
        require mem[_1750] <= test266151307()
        require _1750 + mem[_1750] + 31 < _1750 + return_data.size
        _1760 = mem[_1750 + mem[_1750]]
        require mem[_1750 + mem[_1750]] <= test266151307()
        require _1750 + ceil32(return_data.size) + (32 * mem[_1750 + mem[_1750]]) + 32 <= test266151307() and (32 * mem[_1750 + mem[_1750]]) + 32 >= 0
        mem[64] = _1750 + ceil32(return_data.size) + (32 * mem[_1750 + mem[_1750]]) + 32
        mem[_1750 + ceil32(return_data.size)] = _1760
        require _1759 + (32 * _1760) + 32 <= return_data.size
        s = 0
        t = _1750 + _1759 + 32
        u = _1750 + ceil32(return_data.size) + 32
        while s < _1760:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _1431 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require _1760 - 1 < _1760
        _1431 = mem[96]
        idx = idx + 1
        s = mem[(32 * _1760 - 1) + _1750 + ceil32(return_data.size) + 32]
        t = _1750 + ceil32(return_data.size)
        continue 
    if s <= cd[4]:
        revert with 0, 'Fail 50137'
    _1433 = mem[96]
    require mem[96] - 1 <= test266151307()
    _1437 = mem[64]
    mem[mem[64]] = mem[96] - 1
    if not _1433 - 1:
        _1440 = mem[(32 * ('cd', 36).length) + 128]
        require mem[(32 * ('cd', 36).length) + 128] - 1 <= test266151307()
        mem[mem[64] + (32 * _1433 - 1) + 32] = mem[(32 * ('cd', 36).length) + 128] - 1
        mem[64] = mem[64] + (32 * _1433 - 1) + (32 * _1440 - 1) + 64
        if not _1440 - 1:
            _1720 = mem[96]
            idx = 1
            while idx < _1720:
                require idx < mem[96]
                require idx - 1 < mem[_1437]
                mem[(32 * idx - 1) + _1437 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1437 + (32 * _1433 - 1) + 32]
                mem[(32 * idx - 1) + _1437 + (32 * _1433 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1720 = mem[96]
                idx = idx + 1
                continue 
            _1722 = mem[64]
            mem[mem[64] + 32] = 64
            _1736 = mem[_1437]
            mem[mem[64] + 96] = mem[_1437]
            idx = 0
            s = _1437 + 32
            t = mem[64] + 128
            while idx < _1736:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _1736) + 96
            _2011 = mem[_1437 + (32 * _1433 - 1) + 32]
            mem[_1722 + (32 * _1736) + 128] = mem[_1437 + (32 * _1433 - 1) + 32]
            idx = 0
            s = _1437 + (32 * _1433 - 1) + 64
            t = _1722 + (32 * _1736) + (32 * _2011) + 160
            u = _1722 + (32 * _1736) + 160
            while idx < _2011:
                mem[u] = t + -_1722 + -(32 * _1736) - 160
                _2244 = mem[s]
                _2254 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2244 + 32
                x = t + 32
                while v < _2254:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2254) + 32
                u = u + 32
                continue 
            _2248 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2252 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2264 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2272 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2264)
            mem[t + ceil32(return_data.size) + 36] = address(_2272)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2264), address(_2272)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2252)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2338 = mem[_2248]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2248]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2338)] = mem[_2248 + 32 len ceil32(_2338)]
            if ceil32(_2338) <= _2338:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2338) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2272):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2338 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2338) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2338) + _2338 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2338 + 160 len -_2338 + ceil32(_2338)] == Mask(8 * -ceil32(_2338) + _2338 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2338 + 160 len -_2338 + ceil32(_2338)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2338) + _2338 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2338 + 160 len -_2338 + ceil32(_2338)] != address(_2272):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 260] = ceil32(_2338) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 292 len ceil32(ceil32(_2338)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2338)) + 3]
            if ceil32(ceil32(_2338)) + 3 > ceil32(_2338) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2338)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2338) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2338)) + 163]
        else:
            mem[_1437 + (32 * _1433 - 1) + 64] = 96
            s = _1437 + (32 * _1433 - 1) + 64
            idx = _1440 - 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1994 = mem[96]
            idx = 1
            while idx < _1994:
                require idx < mem[96]
                require idx - 1 < mem[_1437]
                mem[(32 * idx - 1) + _1437 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1437 + (32 * _1433 - 1) + 32]
                mem[(32 * idx - 1) + _1437 + (32 * _1433 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1994 = mem[96]
                idx = idx + 1
                continue 
            _1997 = mem[64]
            mem[mem[64] + 32] = 64
            _2012 = mem[_1437]
            mem[mem[64] + 96] = mem[_1437]
            idx = 0
            s = _1437 + 32
            t = mem[64] + 128
            while idx < _2012:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1997 + 64] = (32 * _2012) + 96
            _2255 = mem[_1437 + (32 * _1433 - 1) + 32]
            mem[_1997 + (32 * _2012) + 128] = mem[_1437 + (32 * _1433 - 1) + 32]
            idx = 0
            s = _1437 + (32 * _1433 - 1) + 64
            t = _1997 + (32 * _2012) + (32 * _2255) + 160
            u = _1997 + (32 * _2012) + 160
            while idx < _2255:
                mem[u] = t + -_1997 + -(32 * _2012) - 160
                _2470 = mem[s]
                _2480 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2470 + 32
                x = t + 32
                while v < _2480:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2480) + 32
                u = u + 32
                continue 
            _2474 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2478 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2488 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2505 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2488)
            mem[t + ceil32(return_data.size) + 36] = address(_2505)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2488), address(_2505)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2478)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2578 = mem[_2474]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2474]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2578)] = mem[_2474 + 32 len ceil32(_2578)]
            if ceil32(_2578) <= _2578:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2578) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2505):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2578 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2578) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2578) + _2578 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2578 + 160 len -_2578 + ceil32(_2578)] == Mask(8 * -ceil32(_2578) + _2578 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2578 + 160 len -_2578 + ceil32(_2578)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2578) + _2578 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2578 + 160 len -_2578 + ceil32(_2578)] != address(_2505):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 260] = ceil32(_2578) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 292 len ceil32(ceil32(_2578)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2578)) + 3]
            if ceil32(ceil32(_2578)) + 3 > ceil32(_2578) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2578)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2578) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2578)) + 163]
    else:
        mem[mem[64] + 32 len 32 * _1433 - 1] = call.data[calldata.size len 32 * _1433 - 1]
        _1442 = mem[(32 * ('cd', 36).length) + 128]
        require mem[(32 * ('cd', 36).length) + 128] - 1 <= test266151307()
        mem[mem[64] + (32 * _1433 - 1) + 32] = mem[(32 * ('cd', 36).length) + 128] - 1
        mem[64] = mem[64] + (32 * _1433 - 1) + (32 * _1442 - 1) + 64
        if not _1442 - 1:
            _1721 = mem[96]
            idx = 1
            while idx < _1721:
                require idx < mem[96]
                require idx - 1 < mem[_1437]
                mem[(32 * idx - 1) + _1437 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1437 + (32 * _1433 - 1) + 32]
                mem[(32 * idx - 1) + _1437 + (32 * _1433 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1721 = mem[96]
                idx = idx + 1
                continue 
            _1724 = mem[64]
            mem[mem[64] + 32] = 64
            _1741 = mem[_1437]
            mem[mem[64] + 96] = mem[_1437]
            idx = 0
            s = _1437 + 32
            t = mem[64] + 128
            while idx < _1741:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1724 + 64] = (32 * _1741) + 96
            _2015 = mem[_1437 + (32 * _1433 - 1) + 32]
            mem[_1724 + (32 * _1741) + 128] = mem[_1437 + (32 * _1433 - 1) + 32]
            idx = 0
            s = _1437 + (32 * _1433 - 1) + 64
            t = _1724 + (32 * _1741) + (32 * _2015) + 160
            u = _1724 + (32 * _1741) + 160
            while idx < _2015:
                mem[u] = t + -_1724 + -(32 * _1741) - 160
                _2246 = mem[s]
                _2258 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2246 + 32
                x = t + 32
                while v < _2258:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2258) + 32
                u = u + 32
                continue 
            _2250 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2256 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2266 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2273 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2266)
            mem[t + ceil32(return_data.size) + 36] = address(_2273)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2266), address(_2273)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2256)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2339 = mem[_2250]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2250]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2339)] = mem[_2250 + 32 len ceil32(_2339)]
            if ceil32(_2339) <= _2339:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2339) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2273):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2339 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2339) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2339) + _2339 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2339 + 160 len -_2339 + ceil32(_2339)] == Mask(8 * -ceil32(_2339) + _2339 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2339 + 160 len -_2339 + ceil32(_2339)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2339) + _2339 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2339 + 160 len -_2339 + ceil32(_2339)] != address(_2273):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 260] = ceil32(_2339) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 292 len ceil32(ceil32(_2339)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2339)) + 3]
            if ceil32(ceil32(_2339)) + 3 > ceil32(_2339) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2339)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2339) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2339)) + 163]
        else:
            mem[_1437 + (32 * _1433 - 1) + 64] = 96
            s = _1437 + (32 * _1433 - 1) + 64
            idx = _1442 - 1
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            _1995 = mem[96]
            idx = 1
            while idx < _1995:
                require idx < mem[96]
                require idx - 1 < mem[_1437]
                mem[(32 * idx - 1) + _1437 + 32] = mem[(32 * idx) + 140 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                require idx - 1 < mem[_1437 + (32 * _1433 - 1) + 32]
                mem[(32 * idx - 1) + _1437 + (32 * _1433 - 1) + 64] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
                _1995 = mem[96]
                idx = idx + 1
                continue 
            _2000 = mem[64]
            mem[mem[64] + 32] = 64
            _2016 = mem[_1437]
            mem[mem[64] + 96] = mem[_1437]
            idx = 0
            s = _1437 + 32
            t = mem[64] + 128
            while idx < _2016:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2000 + 64] = (32 * _2016) + 96
            _2259 = mem[_1437 + (32 * _1433 - 1) + 32]
            mem[_2000 + (32 * _2016) + 128] = mem[_1437 + (32 * _1433 - 1) + 32]
            idx = 0
            s = _1437 + (32 * _1433 - 1) + 64
            t = _2000 + (32 * _2016) + (32 * _2259) + 160
            u = _2000 + (32 * _2016) + 160
            while idx < _2259:
                mem[u] = t + -_2000 + -(32 * _2016) - 160
                _2473 = mem[s]
                _2483 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                w = _2473 + 32
                x = t + 32
                while v < _2483:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _2483) + 32
                u = u + 32
                continue 
            _2476 = mem[64]
            mem[mem[64]] = t + -mem[64] - 32
            mem[64] = t
            require 0 < mem[96]
            _2481 = mem[128]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 0 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2490 = mem[mem[(32 * ('cd', 36).length) + 160] + 32]
            require 0 < mem[(32 * ('cd', 36).length) + 128]
            require 1 < mem[mem[(32 * ('cd', 36).length) + 160]]
            _2509 = mem[mem[(32 * ('cd', 36).length) + 160] + 64]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].factory() with:
                    gas gas_remaining wei
            mem[t] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + ceil32(return_data.size) + 4] = address(_2490)
            mem[t + ceil32(return_data.size) + 36] = address(_2509)
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2490), address(_2509)
            mem[t + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = t + (2 * ceil32(return_data.size))
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[t + (2 * ceil32(return_data.size)) + 32] = address(_2481)
            mem[t + (2 * ceil32(return_data.size)) + 64] = 64
            _2579 = mem[_2476]
            mem[t + (2 * ceil32(return_data.size)) + 96] = mem[_2476]
            mem[t + (2 * ceil32(return_data.size)) + 128 len ceil32(_2579)] = mem[_2476 + 32 len ceil32(_2579)]
            if ceil32(_2579) <= _2579:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2579) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] != address(_2509):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 164] = 0
            else:
                mem[t + (2 * ceil32(return_data.size)) + _2579 + 128] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[t + (2 * ceil32(return_data.size)) + ceil32(_2579) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 128
                require return_data.size >= 32
                require Mask(8 * -ceil32(_2579) + _2579 + 32, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2579 + 160 len -_2579 + ceil32(_2579)] == Mask(8 * -ceil32(_2579) + _2579 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2579 + 160 len -_2579 + ceil32(_2579)]
                mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if Mask(8 * -ceil32(_2579) + _2579 + 20, 0, 0), mem[t + (2 * ceil32(return_data.size)) + _2579 + 160 len -_2579 + ceil32(_2579)] != address(_2509):
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 132] = 0
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 164] = _1141
                else:
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 132] = _1141
                    mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 164] = 0
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 196] = this.address
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 228] = 128
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 260] = ceil32(_2579) + 96
            mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 292 len ceil32(ceil32(_2579)) + 3] = mem[t + (2 * ceil32(return_data.size)) + 32 len ceil32(ceil32(_2579)) + 3]
            if ceil32(ceil32(_2579)) + 3 > ceil32(_2579) + 96:
                mem[t + (4 * ceil32(return_data.size)) + (2 * ceil32(_2579)) + 388] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[t + (4 * ceil32(return_data.size)) + ceil32(_2579) + 132 len (5 * ceil32(return_data.size)) + ceil32(ceil32(_2579)) + 163]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        mem[128] = address(ext_call.return_data[0])
        if not arg2:
            mem[160] = ext_call.return_data[12 len 20]
            require arg4.length >= 64
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
            mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
            mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                _595 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                require 0, Mask(224, 32, arg3) >> 32 + (32 * _595) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                while idx < _595:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 0 < _595
                _1303 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                _1315 = mem[(2 * ceil32(return_data.size)) + 192]
                require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                _1327 = mem[(2 * ceil32(return_data.size)) + 224]
                require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                _1339 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                _1351 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                mem[_1351] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require _1327 + (32 * _1339) + 64 <= _1315 + 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1327 + 256
                t = _1351 + 32
                while idx < _1339:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _1939 = mem[(2 * ceil32(return_data.size)) + 256]
                require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1315 + 224
                _1963 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                _1975 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                mem[_1975] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1939 + 256
                t = _1975 + 32
                while idx < _1963:
                    _2515 = mem[s]
                    require (2 * ceil32(return_data.size)) + _1939 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1315 + 224
                    _2527 = mem[(2 * ceil32(return_data.size)) + _1939 + mem[s] + 256]
                    require mem[(2 * ceil32(return_data.size)) + _1939 + mem[s] + 256] <= test266151307()
                    _2601 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1939 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1939 + mem[s] + 256]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1939 + mem[s] + 256]) + 32
                    mem[_2601] = _2527
                    require _1939 + _2515 + (32 * _2527) + 96 <= _1315 + 32
                    u = 0
                    v = (2 * ceil32(return_data.size)) + _1939 + _2515 + 288
                    w = _2601 + 32
                    while u < _2527:
                        require mem[v] == mem[v + 12 len 20]
                        mem[w] = mem[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[t] = _2601
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3043 = mem[_1351]
                idx = 0
                while idx < _3043:
                    require idx < mem[_1975]
                    require 0 < mem[mem[(32 * idx) + _1975 + 32]]
                    _3115 = mem[mem[(32 * idx) + _1975 + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3115))
                    staticcall address(_3115).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3199 = mem[_3175]
                    require mem[_3175] == mem[_3175]
                    require idx < mem[_1351]
                    _3247 = mem[(32 * idx) + _1351 + 32]
                    require idx < mem[_1975]
                    _3271 = mem[(32 * idx) + _1975 + 32]
                    _3272 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3199
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3307 = mem[_3271]
                    mem[mem[64] + 164] = mem[_3271]
                    s = 0
                    t = _3271 + 32
                    u = mem[64] + 196
                    while s < _3307:
                        mem[u] = mem[t + 12 len 20]
                        _3043 = mem[_1351]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3272 + 100] = this.address
                    mem[_3272 + 132] = block.timestamp
                    require ext_code.size(address(_3247))
                    call address(_3247).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3272 + (32 * _3307) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3559 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3571 = mem[_3559]
                    require mem[_3559] <= test266151307()
                    require _3559 + mem[_3559] + 31 < _3559 + return_data.size
                    _3583 = mem[_3559 + mem[_3559]]
                    require mem[_3559 + mem[_3559]] <= test266151307()
                    require _3559 + ceil32(return_data.size) + (32 * mem[_3559 + mem[_3559]]) + 32 <= test266151307() and (32 * mem[_3559 + mem[_3559]]) + 32 >= 0
                    mem[64] = _3559 + ceil32(return_data.size) + (32 * mem[_3559 + mem[_3559]]) + 32
                    mem[_3559 + ceil32(return_data.size)] = _3583
                    require _3571 + (32 * _3583) + 32 <= return_data.size
                    s = 0
                    t = _3559 + _3571 + 32
                    u = _3559 + ceil32(return_data.size) + 32
                    while s < _3583:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3043 = mem[_1351]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _3043 = mem[_1351]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3163] == mem[_3163]
                if mem[_3163] < _1303:
                    revert with 0, 'Late fail'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1303
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1303
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3331] == bool(mem[_3331])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3439 = mem[_3415]
                require mem[_3415] == mem[_3415]
                mem[mem[64] + 4] = stor1
                mem[mem[64] + 36] = _3439
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, _3439
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3511] == bool(mem[_3511])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                _596 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                require 0, Mask(224, 32, arg2) >> 32 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 0 < _596
                _1304 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                _1316 = mem[(2 * ceil32(return_data.size)) + 192]
                require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                _1328 = mem[(2 * ceil32(return_data.size)) + 224]
                require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                _1340 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                _1352 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                mem[_1352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require _1328 + (32 * _1340) + 64 <= _1316 + 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1328 + 256
                t = _1352 + 32
                while idx < _1340:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _1941 = mem[(2 * ceil32(return_data.size)) + 256]
                require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1316 + 224
                _1964 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                _1976 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                mem[_1976] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1941 + 256
                t = _1976 + 32
                while idx < _1964:
                    _2516 = mem[s]
                    require (2 * ceil32(return_data.size)) + _1941 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1316 + 224
                    _2528 = mem[(2 * ceil32(return_data.size)) + _1941 + mem[s] + 256]
                    require mem[(2 * ceil32(return_data.size)) + _1941 + mem[s] + 256] <= test266151307()
                    _2604 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1941 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1941 + mem[s] + 256]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1941 + mem[s] + 256]) + 32
                    mem[_2604] = _2528
                    require _1941 + _2516 + (32 * _2528) + 96 <= _1316 + 32
                    u = 0
                    v = (2 * ceil32(return_data.size)) + _1941 + _2516 + 288
                    w = _2604 + 32
                    while u < _2528:
                        require mem[v] == mem[v + 12 len 20]
                        mem[w] = mem[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[t] = _2604
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3044 = mem[_1352]
                idx = 0
                while idx < _3044:
                    require idx < mem[_1976]
                    require 0 < mem[mem[(32 * idx) + _1976 + 32]]
                    _3117 = mem[mem[(32 * idx) + _1976 + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3117))
                    staticcall address(_3117).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3200 = mem[_3176]
                    require mem[_3176] == mem[_3176]
                    require idx < mem[_1352]
                    _3249 = mem[(32 * idx) + _1352 + 32]
                    require idx < mem[_1976]
                    _3273 = mem[(32 * idx) + _1976 + 32]
                    _3274 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3200
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3308 = mem[_3273]
                    mem[mem[64] + 164] = mem[_3273]
                    s = 0
                    t = _3273 + 32
                    u = mem[64] + 196
                    while s < _3308:
                        mem[u] = mem[t + 12 len 20]
                        _3044 = mem[_1352]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3274 + 100] = this.address
                    mem[_3274 + 132] = block.timestamp
                    require ext_code.size(address(_3249))
                    call address(_3249).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3274 + (32 * _3308) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3560 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3572 = mem[_3560]
                    require mem[_3560] <= test266151307()
                    require _3560 + mem[_3560] + 31 < _3560 + return_data.size
                    _3584 = mem[_3560 + mem[_3560]]
                    require mem[_3560 + mem[_3560]] <= test266151307()
                    require _3560 + ceil32(return_data.size) + (32 * mem[_3560 + mem[_3560]]) + 32 <= test266151307() and (32 * mem[_3560 + mem[_3560]]) + 32 >= 0
                    mem[64] = _3560 + ceil32(return_data.size) + (32 * mem[_3560 + mem[_3560]]) + 32
                    mem[_3560 + ceil32(return_data.size)] = _3584
                    require _3572 + (32 * _3584) + 32 <= return_data.size
                    s = 0
                    t = _3560 + _3572 + 32
                    u = _3560 + ceil32(return_data.size) + 32
                    while s < _3584:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3044 = mem[_1352]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _3044 = mem[_1352]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3164 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3164] == mem[_3164]
                if mem[_3164] < _1304:
                    revert with 0, 'Late fail'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1304
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1304
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3332 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3332] == bool(mem[_3332])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3441 = mem[_3417]
                require mem[_3417] == mem[_3417]
                mem[mem[64] + 4] = stor1
                mem[mem[64] + 36] = _3441
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, _3441
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3512] == bool(mem[_3512])
        else:
            mem[160] = address(ext_call.return_data[0])
            require arg4.length >= 64
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
            mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
            mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
            mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                _597 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                require 0, Mask(224, 32, arg3) >> 32 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 0 < _597
                _1305 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                _1317 = mem[(2 * ceil32(return_data.size)) + 192]
                require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                _1329 = mem[(2 * ceil32(return_data.size)) + 224]
                require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                _1341 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                _1353 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                mem[_1353] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require _1329 + (32 * _1341) + 64 <= _1317 + 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1329 + 256
                t = _1353 + 32
                while idx < _1341:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _1943 = mem[(2 * ceil32(return_data.size)) + 256]
                require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1317 + 224
                _1965 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                _1977 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                mem[_1977] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1943 + 256
                t = _1977 + 32
                while idx < _1965:
                    _2517 = mem[s]
                    require (2 * ceil32(return_data.size)) + _1943 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1317 + 224
                    _2529 = mem[(2 * ceil32(return_data.size)) + _1943 + mem[s] + 256]
                    require mem[(2 * ceil32(return_data.size)) + _1943 + mem[s] + 256] <= test266151307()
                    _2607 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1943 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1943 + mem[s] + 256]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1943 + mem[s] + 256]) + 32
                    mem[_2607] = _2529
                    require _1943 + _2517 + (32 * _2529) + 96 <= _1317 + 32
                    u = 0
                    v = (2 * ceil32(return_data.size)) + _1943 + _2517 + 288
                    w = _2607 + 32
                    while u < _2529:
                        require mem[v] == mem[v + 12 len 20]
                        mem[w] = mem[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[t] = _2607
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3045 = mem[_1353]
                idx = 0
                while idx < _3045:
                    require idx < mem[_1977]
                    require 0 < mem[mem[(32 * idx) + _1977 + 32]]
                    _3119 = mem[mem[(32 * idx) + _1977 + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3119))
                    staticcall address(_3119).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3201 = mem[_3177]
                    require mem[_3177] == mem[_3177]
                    require idx < mem[_1353]
                    _3251 = mem[(32 * idx) + _1353 + 32]
                    require idx < mem[_1977]
                    _3275 = mem[(32 * idx) + _1977 + 32]
                    _3276 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3201
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3309 = mem[_3275]
                    mem[mem[64] + 164] = mem[_3275]
                    s = 0
                    t = _3275 + 32
                    u = mem[64] + 196
                    while s < _3309:
                        mem[u] = mem[t + 12 len 20]
                        _3045 = mem[_1353]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3276 + 100] = this.address
                    mem[_3276 + 132] = block.timestamp
                    require ext_code.size(address(_3251))
                    call address(_3251).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3276 + (32 * _3309) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3561 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3573 = mem[_3561]
                    require mem[_3561] <= test266151307()
                    require _3561 + mem[_3561] + 31 < _3561 + return_data.size
                    _3585 = mem[_3561 + mem[_3561]]
                    require mem[_3561 + mem[_3561]] <= test266151307()
                    require _3561 + ceil32(return_data.size) + (32 * mem[_3561 + mem[_3561]]) + 32 <= test266151307() and (32 * mem[_3561 + mem[_3561]]) + 32 >= 0
                    mem[64] = _3561 + ceil32(return_data.size) + (32 * mem[_3561 + mem[_3561]]) + 32
                    mem[_3561 + ceil32(return_data.size)] = _3585
                    require _3573 + (32 * _3585) + 32 <= return_data.size
                    s = 0
                    t = _3561 + _3573 + 32
                    u = _3561 + ceil32(return_data.size) + 32
                    while s < _3585:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3045 = mem[_1353]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _3045 = mem[_1353]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3165] == mem[_3165]
                if mem[_3165] < _1305:
                    revert with 0, 'Late fail'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1305
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1305
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3333] == bool(mem[_3333])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3443 = mem[_3419]
                require mem[_3419] == mem[_3419]
                mem[mem[64] + 4] = stor1
                mem[mem[64] + 36] = _3443
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, _3443
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3513] == bool(mem[_3513])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = 128
                t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[(arg4 + 36)]))
                staticcall address(cd[(arg4 + 36)]) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                _598 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                require 0, Mask(224, 32, arg2) >> 32 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 0 < _598
                _1306 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                _1318 = mem[(2 * ceil32(return_data.size)) + 192]
                require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                _1330 = mem[(2 * ceil32(return_data.size)) + 224]
                require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                _1342 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                _1354 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                mem[_1354] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                require _1330 + (32 * _1342) + 64 <= _1318 + 32
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1330 + 256
                t = _1354 + 32
                while idx < _1342:
                    require mem[s] == mem[s + 12 len 20]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _1945 = mem[(2 * ceil32(return_data.size)) + 256]
                require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1318 + 224
                _1966 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                _1978 = mem[64]
                require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                mem[_1978] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + _1945 + 256
                t = _1978 + 32
                while idx < _1966:
                    _2518 = mem[s]
                    require (2 * ceil32(return_data.size)) + _1945 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1318 + 224
                    _2530 = mem[(2 * ceil32(return_data.size)) + _1945 + mem[s] + 256]
                    require mem[(2 * ceil32(return_data.size)) + _1945 + mem[s] + 256] <= test266151307()
                    _2610 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1945 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1945 + mem[s] + 256]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1945 + mem[s] + 256]) + 32
                    mem[_2610] = _2530
                    require _1945 + _2518 + (32 * _2530) + 96 <= _1318 + 32
                    u = 0
                    v = (2 * ceil32(return_data.size)) + _1945 + _2518 + 288
                    w = _2610 + 32
                    while u < _2530:
                        require mem[v] == mem[v + 12 len 20]
                        mem[w] = mem[v]
                        u = u + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[t] = _2610
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3046 = mem[_1354]
                idx = 0
                while idx < _3046:
                    require idx < mem[_1978]
                    require 0 < mem[mem[(32 * idx) + _1978 + 32]]
                    _3121 = mem[mem[(32 * idx) + _1978 + 32] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_3121))
                    staticcall address(_3121).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3202 = mem[_3178]
                    require mem[_3178] == mem[_3178]
                    require idx < mem[_1354]
                    _3253 = mem[(32 * idx) + _1354 + 32]
                    require idx < mem[_1978]
                    _3277 = mem[(32 * idx) + _1978 + 32]
                    _3278 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3202
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _3310 = mem[_3277]
                    mem[mem[64] + 164] = mem[_3277]
                    s = 0
                    t = _3277 + 32
                    u = mem[64] + 196
                    while s < _3310:
                        mem[u] = mem[t + 12 len 20]
                        _3046 = mem[_1354]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3278 + 100] = this.address
                    mem[_3278 + 132] = block.timestamp
                    require ext_code.size(address(_3253))
                    call address(_3253).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3278 + (32 * _3310) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3562 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3574 = mem[_3562]
                    require mem[_3562] <= test266151307()
                    require _3562 + mem[_3562] + 31 < _3562 + return_data.size
                    _3586 = mem[_3562 + mem[_3562]]
                    require mem[_3562 + mem[_3562]] <= test266151307()
                    require _3562 + ceil32(return_data.size) + (32 * mem[_3562 + mem[_3562]]) + 32 <= test266151307() and (32 * mem[_3562 + mem[_3562]]) + 32 >= 0
                    mem[64] = _3562 + ceil32(return_data.size) + (32 * mem[_3562 + mem[_3562]]) + 32
                    mem[_3562 + ceil32(return_data.size)] = _3586
                    require _3574 + (32 * _3586) + 32 <= return_data.size
                    s = 0
                    t = _3562 + _3574 + 32
                    u = _3562 + ceil32(return_data.size) + 32
                    while s < _3586:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _3046 = mem[_1354]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    _3046 = mem[_1354]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3166] == mem[_3166]
                if mem[_3166] < _1306:
                    revert with 0, 'Late fail'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1306
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1306
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3334] == bool(mem[_3334])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3445 = mem[_3421]
                require mem[_3421] == mem[_3421]
                mem[mem[64] + 4] = stor1
                mem[mem[64] + 36] = _3445
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, _3445
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3514] == bool(mem[_3514])
    else:
        require not arg3
        if not arg2:
            mem[128] = address(ext_call.return_data[0])
            if not arg2:
                mem[160] = ext_call.return_data[12 len 20]
                require arg4.length >= 64
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
                mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
                mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
                mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _599 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require 0, Mask(224, 32, arg3) >> 32 + (32 * _599) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _599:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _599
                    _1307 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1319 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1331 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1343 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1355 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1355] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1331 + (32 * _1343) + 64 <= _1319 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1331 + 256
                    t = _1355 + 32
                    while idx < _1343:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1947 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1319 + 224
                    _1967 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1979 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1979] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1947 + 256
                    t = _1979 + 32
                    while idx < _1967:
                        _2519 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1947 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1319 + 224
                        _2531 = mem[(2 * ceil32(return_data.size)) + _1947 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1947 + mem[s] + 256] <= test266151307()
                        _2613 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1947 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1947 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1947 + mem[s] + 256]) + 32
                        mem[_2613] = _2531
                        require _1947 + _2519 + (32 * _2531) + 96 <= _1319 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1947 + _2519 + 288
                        w = _2613 + 32
                        while u < _2531:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2613
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3047 = mem[_1355]
                    idx = 0
                    while idx < _3047:
                        require idx < mem[_1979]
                        require 0 < mem[mem[(32 * idx) + _1979 + 32]]
                        _3123 = mem[mem[(32 * idx) + _1979 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3123))
                        staticcall address(_3123).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3203 = mem[_3179]
                        require mem[_3179] == mem[_3179]
                        require idx < mem[_1355]
                        _3255 = mem[(32 * idx) + _1355 + 32]
                        require idx < mem[_1979]
                        _3279 = mem[(32 * idx) + _1979 + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3203
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3311 = mem[_3279]
                        mem[mem[64] + 164] = mem[_3279]
                        s = 0
                        t = _3279 + 32
                        u = mem[64] + 196
                        while s < _3311:
                            mem[u] = mem[t + 12 len 20]
                            _3047 = mem[_1355]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(_3255))
                        call address(_3255).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _3203, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _3311) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3563 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3575 = mem[_3563]
                        require mem[_3563] <= test266151307()
                        require _3563 + mem[_3563] + 31 < _3563 + return_data.size
                        _3587 = mem[_3563 + mem[_3563]]
                        require mem[_3563 + mem[_3563]] <= test266151307()
                        require _3563 + ceil32(return_data.size) + (32 * mem[_3563 + mem[_3563]]) + 32 <= test266151307() and (32 * mem[_3563 + mem[_3563]]) + 32 >= 0
                        mem[64] = _3563 + ceil32(return_data.size) + (32 * mem[_3563 + mem[_3563]]) + 32
                        mem[_3563 + ceil32(return_data.size)] = _3587
                        require _3575 + (32 * _3587) + 32 <= return_data.size
                        s = 0
                        t = _3563 + _3575 + 32
                        u = _3563 + ceil32(return_data.size) + 32
                        while s < _3587:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3047 = mem[_1355]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3047 = mem[_1355]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3167] == mem[_3167]
                    if mem[_3167] < _1307:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1307
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1307
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3335] == bool(mem[_3335])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3447 = mem[_3423]
                    require mem[_3423] == mem[_3423]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3447
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3447
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3515] == bool(mem[_3515])
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _600 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require 0, Mask(224, 32, arg2) >> 32 + (32 * _600) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _600:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _600
                    _1308 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1320 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1332 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1344 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1356 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1356] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1332 + (32 * _1344) + 64 <= _1320 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1332 + 256
                    t = _1356 + 32
                    while idx < _1344:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1949 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1320 + 224
                    _1968 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1980 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1980] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1949 + 256
                    t = _1980 + 32
                    while idx < _1968:
                        _2520 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1949 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1320 + 224
                        _2532 = mem[(2 * ceil32(return_data.size)) + _1949 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1949 + mem[s] + 256] <= test266151307()
                        _2616 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1949 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1949 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1949 + mem[s] + 256]) + 32
                        mem[_2616] = _2532
                        require _1949 + _2520 + (32 * _2532) + 96 <= _1320 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1949 + _2520 + 288
                        w = _2616 + 32
                        while u < _2532:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2616
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3048 = mem[_1356]
                    idx = 0
                    while idx < _3048:
                        require idx < mem[_1980]
                        require 0 < mem[mem[(32 * idx) + _1980 + 32]]
                        _3125 = mem[mem[(32 * idx) + _1980 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3125))
                        staticcall address(_3125).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3204 = mem[_3180]
                        require mem[_3180] == mem[_3180]
                        require idx < mem[_1356]
                        _3257 = mem[(32 * idx) + _1356 + 32]
                        require idx < mem[_1980]
                        _3281 = mem[(32 * idx) + _1980 + 32]
                        _3282 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3204
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3312 = mem[_3281]
                        mem[mem[64] + 164] = mem[_3281]
                        s = 0
                        t = _3281 + 32
                        u = mem[64] + 196
                        while s < _3312:
                            mem[u] = mem[t + 12 len 20]
                            _3048 = mem[_1356]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3282 + 100] = this.address
                        mem[_3282 + 132] = block.timestamp
                        require ext_code.size(address(_3257))
                        call address(_3257).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3282 + (32 * _3312) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3564 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3576 = mem[_3564]
                        require mem[_3564] <= test266151307()
                        require _3564 + mem[_3564] + 31 < _3564 + return_data.size
                        _3588 = mem[_3564 + mem[_3564]]
                        require mem[_3564 + mem[_3564]] <= test266151307()
                        require _3564 + ceil32(return_data.size) + (32 * mem[_3564 + mem[_3564]]) + 32 <= test266151307() and (32 * mem[_3564 + mem[_3564]]) + 32 >= 0
                        mem[64] = _3564 + ceil32(return_data.size) + (32 * mem[_3564 + mem[_3564]]) + 32
                        mem[_3564 + ceil32(return_data.size)] = _3588
                        require _3576 + (32 * _3588) + 32 <= return_data.size
                        s = 0
                        t = _3564 + _3576 + 32
                        u = _3564 + ceil32(return_data.size) + 32
                        while s < _3588:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3048 = mem[_1356]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3048 = mem[_1356]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3168] == mem[_3168]
                    if mem[_3168] < _1308:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1308
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1308
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3336] == bool(mem[_3336])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3449 = mem[_3425]
                    require mem[_3425] == mem[_3425]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3449
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3449
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3516] == bool(mem[_3516])
            else:
                mem[160] = address(ext_call.return_data[0])
                require arg4.length >= 64
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
                mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
                mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
                mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _601 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require 0, Mask(224, 32, arg3) >> 32 + (32 * _601) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _601:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _601
                    _1309 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1321 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1333 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1345 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1357 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1357] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1333 + (32 * _1345) + 64 <= _1321 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1333 + 256
                    t = _1357 + 32
                    while idx < _1345:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1951 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1321 + 224
                    _1969 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1981 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1981] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1951 + 256
                    t = _1981 + 32
                    while idx < _1969:
                        _2521 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1951 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1321 + 224
                        _2533 = mem[(2 * ceil32(return_data.size)) + _1951 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1951 + mem[s] + 256] <= test266151307()
                        _2619 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1951 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1951 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1951 + mem[s] + 256]) + 32
                        mem[_2619] = _2533
                        require _1951 + _2521 + (32 * _2533) + 96 <= _1321 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1951 + _2521 + 288
                        w = _2619 + 32
                        while u < _2533:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2619
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3049 = mem[_1357]
                    idx = 0
                    while idx < _3049:
                        require idx < mem[_1981]
                        require 0 < mem[mem[(32 * idx) + _1981 + 32]]
                        _3127 = mem[mem[(32 * idx) + _1981 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3127))
                        staticcall address(_3127).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3205 = mem[_3181]
                        require mem[_3181] == mem[_3181]
                        require idx < mem[_1357]
                        _3259 = mem[(32 * idx) + _1357 + 32]
                        require idx < mem[_1981]
                        _3283 = mem[(32 * idx) + _1981 + 32]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3205
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3313 = mem[_3283]
                        mem[mem[64] + 164] = mem[_3283]
                        s = 0
                        t = _3283 + 32
                        u = mem[64] + 196
                        while s < _3313:
                            mem[u] = mem[t + 12 len 20]
                            _3049 = mem[_1357]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(_3259))
                        call address(_3259).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _3205, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _3313) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3565 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3577 = mem[_3565]
                        require mem[_3565] <= test266151307()
                        require _3565 + mem[_3565] + 31 < _3565 + return_data.size
                        _3589 = mem[_3565 + mem[_3565]]
                        require mem[_3565 + mem[_3565]] <= test266151307()
                        require _3565 + ceil32(return_data.size) + (32 * mem[_3565 + mem[_3565]]) + 32 <= test266151307() and (32 * mem[_3565 + mem[_3565]]) + 32 >= 0
                        mem[64] = _3565 + ceil32(return_data.size) + (32 * mem[_3565 + mem[_3565]]) + 32
                        mem[_3565 + ceil32(return_data.size)] = _3589
                        require _3577 + (32 * _3589) + 32 <= return_data.size
                        s = 0
                        t = _3565 + _3577 + 32
                        u = _3565 + ceil32(return_data.size) + 32
                        while s < _3589:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3049 = mem[_1357]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3049 = mem[_1357]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3169] == mem[_3169]
                    if mem[_3169] < _1309:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1309
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1309
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3337] == bool(mem[_3337])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3451 = mem[_3427]
                    require mem[_3427] == mem[_3427]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3451
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3451
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3517] == bool(mem[_3517])
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _602 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require 0, Mask(224, 32, arg2) >> 32 + (32 * _602) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _602:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _602
                    _1310 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1322 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1334 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1346 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1358 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1358] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1334 + (32 * _1346) + 64 <= _1322 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1334 + 256
                    t = _1358 + 32
                    while idx < _1346:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1953 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1322 + 224
                    _1970 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1982 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1982] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1953 + 256
                    t = _1982 + 32
                    while idx < _1970:
                        _2522 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1953 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1322 + 224
                        _2534 = mem[(2 * ceil32(return_data.size)) + _1953 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1953 + mem[s] + 256] <= test266151307()
                        _2622 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1953 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1953 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1953 + mem[s] + 256]) + 32
                        mem[_2622] = _2534
                        require _1953 + _2522 + (32 * _2534) + 96 <= _1322 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1953 + _2522 + 288
                        w = _2622 + 32
                        while u < _2534:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2622
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3050 = mem[_1358]
                    idx = 0
                    while idx < _3050:
                        require idx < mem[_1982]
                        require 0 < mem[mem[(32 * idx) + _1982 + 32]]
                        _3129 = mem[mem[(32 * idx) + _1982 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3129))
                        staticcall address(_3129).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3206 = mem[_3182]
                        require mem[_3182] == mem[_3182]
                        require idx < mem[_1358]
                        _3261 = mem[(32 * idx) + _1358 + 32]
                        require idx < mem[_1982]
                        _3285 = mem[(32 * idx) + _1982 + 32]
                        _3286 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3206
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3314 = mem[_3285]
                        mem[mem[64] + 164] = mem[_3285]
                        s = 0
                        t = _3285 + 32
                        u = mem[64] + 196
                        while s < _3314:
                            mem[u] = mem[t + 12 len 20]
                            _3050 = mem[_1358]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3286 + 100] = this.address
                        mem[_3286 + 132] = block.timestamp
                        require ext_code.size(address(_3261))
                        call address(_3261).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3286 + (32 * _3314) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3566 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3578 = mem[_3566]
                        require mem[_3566] <= test266151307()
                        require _3566 + mem[_3566] + 31 < _3566 + return_data.size
                        _3590 = mem[_3566 + mem[_3566]]
                        require mem[_3566 + mem[_3566]] <= test266151307()
                        require _3566 + ceil32(return_data.size) + (32 * mem[_3566 + mem[_3566]]) + 32 <= test266151307() and (32 * mem[_3566 + mem[_3566]]) + 32 >= 0
                        mem[64] = _3566 + ceil32(return_data.size) + (32 * mem[_3566 + mem[_3566]]) + 32
                        mem[_3566 + ceil32(return_data.size)] = _3590
                        require _3578 + (32 * _3590) + 32 <= return_data.size
                        s = 0
                        t = _3566 + _3578 + 32
                        u = _3566 + ceil32(return_data.size) + 32
                        while s < _3590:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3050 = mem[_1358]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3050 = mem[_1358]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3170] == mem[_3170]
                    if mem[_3170] < _1310:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1310
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1310
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3338] == bool(mem[_3338])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3453 = mem[_3429]
                    require mem[_3429] == mem[_3429]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3453
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3453
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3518] == bool(mem[_3518])
        else:
            mem[128] = ext_call.return_data[12 len 20]
            if not arg2:
                mem[160] = ext_call.return_data[12 len 20]
                require arg4.length >= 64
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
                mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
                mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
                mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _603 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require 0, Mask(224, 32, arg3) >> 32 + (32 * _603) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _603:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _603
                    _1311 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1323 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1335 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1347 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1359 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1359] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1335 + (32 * _1347) + 64 <= _1323 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1335 + 256
                    t = _1359 + 32
                    while idx < _1347:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1955 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1323 + 224
                    _1971 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1983 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1983] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1955 + 256
                    t = _1983 + 32
                    while idx < _1971:
                        _2523 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1955 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1323 + 224
                        _2535 = mem[(2 * ceil32(return_data.size)) + _1955 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1955 + mem[s] + 256] <= test266151307()
                        _2625 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1955 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1955 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1955 + mem[s] + 256]) + 32
                        mem[_2625] = _2535
                        require _1955 + _2523 + (32 * _2535) + 96 <= _1323 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1955 + _2523 + 288
                        w = _2625 + 32
                        while u < _2535:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2625
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3051 = mem[_1359]
                    idx = 0
                    while idx < _3051:
                        require idx < mem[_1983]
                        require 0 < mem[mem[(32 * idx) + _1983 + 32]]
                        _3131 = mem[mem[(32 * idx) + _1983 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3131))
                        staticcall address(_3131).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3207 = mem[_3183]
                        require mem[_3183] == mem[_3183]
                        require idx < mem[_1359]
                        _3263 = mem[(32 * idx) + _1359 + 32]
                        require idx < mem[_1983]
                        _3287 = mem[(32 * idx) + _1983 + 32]
                        _3288 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3207
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3315 = mem[_3287]
                        mem[mem[64] + 164] = mem[_3287]
                        s = 0
                        t = _3287 + 32
                        u = mem[64] + 196
                        while s < _3315:
                            mem[u] = mem[t + 12 len 20]
                            _3051 = mem[_1359]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3288 + 100] = this.address
                        mem[_3288 + 132] = block.timestamp
                        require ext_code.size(address(_3263))
                        call address(_3263).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3288 + (32 * _3315) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3567 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3579 = mem[_3567]
                        require mem[_3567] <= test266151307()
                        require _3567 + mem[_3567] + 31 < _3567 + return_data.size
                        _3591 = mem[_3567 + mem[_3567]]
                        require mem[_3567 + mem[_3567]] <= test266151307()
                        require _3567 + ceil32(return_data.size) + (32 * mem[_3567 + mem[_3567]]) + 32 <= test266151307() and (32 * mem[_3567 + mem[_3567]]) + 32 >= 0
                        mem[64] = _3567 + ceil32(return_data.size) + (32 * mem[_3567 + mem[_3567]]) + 32
                        mem[_3567 + ceil32(return_data.size)] = _3591
                        require _3579 + (32 * _3591) + 32 <= return_data.size
                        s = 0
                        t = _3567 + _3579 + 32
                        u = _3567 + ceil32(return_data.size) + 32
                        while s < _3591:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3051 = mem[_1359]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3051 = mem[_1359]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3171] == mem[_3171]
                    if mem[_3171] < _1311:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1311
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1311
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3339] == bool(mem[_3339])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3431 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3455 = mem[_3431]
                    require mem[_3431] == mem[_3431]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3455
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3455
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3519] == bool(mem[_3519])
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _604 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require 0, Mask(224, 32, arg2) >> 32 + (32 * _604) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _604:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _604
                    _1312 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1324 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1336 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1348 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1360 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1360] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1336 + (32 * _1348) + 64 <= _1324 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1336 + 256
                    t = _1360 + 32
                    while idx < _1348:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1957 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1324 + 224
                    _1972 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1984 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1984] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1957 + 256
                    t = _1984 + 32
                    while idx < _1972:
                        _2524 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1957 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1324 + 224
                        _2536 = mem[(2 * ceil32(return_data.size)) + _1957 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1957 + mem[s] + 256] <= test266151307()
                        _2628 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1957 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1957 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1957 + mem[s] + 256]) + 32
                        mem[_2628] = _2536
                        require _1957 + _2524 + (32 * _2536) + 96 <= _1324 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1957 + _2524 + 288
                        w = _2628 + 32
                        while u < _2536:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2628
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3052 = mem[_1360]
                    idx = 0
                    while idx < _3052:
                        require idx < mem[_1984]
                        require 0 < mem[mem[(32 * idx) + _1984 + 32]]
                        _3133 = mem[mem[(32 * idx) + _1984 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3133))
                        staticcall address(_3133).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3184 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3208 = mem[_3184]
                        require mem[_3184] == mem[_3184]
                        require idx < mem[_1360]
                        _3265 = mem[(32 * idx) + _1360 + 32]
                        require idx < mem[_1984]
                        _3289 = mem[(32 * idx) + _1984 + 32]
                        _3290 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3208
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3316 = mem[_3289]
                        mem[mem[64] + 164] = mem[_3289]
                        s = 0
                        t = _3289 + 32
                        u = mem[64] + 196
                        while s < _3316:
                            mem[u] = mem[t + 12 len 20]
                            _3052 = mem[_1360]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3290 + 100] = this.address
                        mem[_3290 + 132] = block.timestamp
                        require ext_code.size(address(_3265))
                        call address(_3265).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3290 + (32 * _3316) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3568 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3580 = mem[_3568]
                        require mem[_3568] <= test266151307()
                        require _3568 + mem[_3568] + 31 < _3568 + return_data.size
                        _3592 = mem[_3568 + mem[_3568]]
                        require mem[_3568 + mem[_3568]] <= test266151307()
                        require _3568 + ceil32(return_data.size) + (32 * mem[_3568 + mem[_3568]]) + 32 <= test266151307() and (32 * mem[_3568 + mem[_3568]]) + 32 >= 0
                        mem[64] = _3568 + ceil32(return_data.size) + (32 * mem[_3568 + mem[_3568]]) + 32
                        mem[_3568 + ceil32(return_data.size)] = _3592
                        require _3580 + (32 * _3592) + 32 <= return_data.size
                        s = 0
                        t = _3568 + _3580 + 32
                        u = _3568 + ceil32(return_data.size) + 32
                        while s < _3592:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3052 = mem[_1360]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3052 = mem[_1360]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3172] == mem[_3172]
                    if mem[_3172] < _1312:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1312
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1312
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3340 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3340] == bool(mem[_3340])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3457 = mem[_3433]
                    require mem[_3433] == mem[_3433]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3457
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3457
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3520] == bool(mem[_3520])
            else:
                mem[160] = address(ext_call.return_data[0])
                require arg4.length >= 64
                require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96
                mem[(2 * ceil32(return_data.size)) + 192] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require cd[(arg4 + 68)] + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 68 <= arg4.length + 36
                mem[(2 * ceil32(return_data.size)) + 224 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
                mem[(2 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 224] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                if not arg2:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _605 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 224]
                    require 0, Mask(224, 32, arg3) >> 32 + (32 * _605) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg3) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _605:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _605
                    _1313 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1325 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1337 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1349 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1361 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1361] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1337 + (32 * _1349) + 64 <= _1325 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1337 + 256
                    t = _1361 + 32
                    while idx < _1349:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1959 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1325 + 224
                    _1973 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1985 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1985] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1959 + 256
                    t = _1985 + 32
                    while idx < _1973:
                        _2525 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1959 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1325 + 224
                        _2537 = mem[(2 * ceil32(return_data.size)) + _1959 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1959 + mem[s] + 256] <= test266151307()
                        _2631 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1959 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1959 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1959 + mem[s] + 256]) + 32
                        mem[_2631] = _2537
                        require _1959 + _2525 + (32 * _2537) + 96 <= _1325 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1959 + _2525 + 288
                        w = _2631 + 32
                        while u < _2537:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2631
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3053 = mem[_1361]
                    idx = 0
                    while idx < _3053:
                        require idx < mem[_1985]
                        require 0 < mem[mem[(32 * idx) + _1985 + 32]]
                        _3135 = mem[mem[(32 * idx) + _1985 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3135))
                        staticcall address(_3135).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3209 = mem[_3185]
                        require mem[_3185] == mem[_3185]
                        require idx < mem[_1361]
                        _3267 = mem[(32 * idx) + _1361 + 32]
                        require idx < mem[_1985]
                        _3291 = mem[(32 * idx) + _1985 + 32]
                        _3292 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3209
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3317 = mem[_3291]
                        mem[mem[64] + 164] = mem[_3291]
                        s = 0
                        t = _3291 + 32
                        u = mem[64] + 196
                        while s < _3317:
                            mem[u] = mem[t + 12 len 20]
                            _3053 = mem[_1361]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3292 + 100] = this.address
                        mem[_3292 + 132] = block.timestamp
                        require ext_code.size(address(_3267))
                        call address(_3267).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3292 + (32 * _3317) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3569 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3581 = mem[_3569]
                        require mem[_3569] <= test266151307()
                        require _3569 + mem[_3569] + 31 < _3569 + return_data.size
                        _3593 = mem[_3569 + mem[_3569]]
                        require mem[_3569 + mem[_3569]] <= test266151307()
                        require _3569 + ceil32(return_data.size) + (32 * mem[_3569 + mem[_3569]]) + 32 <= test266151307() and (32 * mem[_3569 + mem[_3569]]) + 32 >= 0
                        mem[64] = _3569 + ceil32(return_data.size) + (32 * mem[_3569 + mem[_3569]]) + 32
                        mem[_3569 + ceil32(return_data.size)] = _3593
                        require _3581 + (32 * _3593) + 32 <= return_data.size
                        s = 0
                        t = _3569 + _3581 + 32
                        u = _3569 + ceil32(return_data.size) + 32
                        while s < _3593:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3053 = mem[_1361]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3053 = mem[_1361]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3173] == mem[_3173]
                    if mem[_3173] < _1313:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1313
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1313
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3341] == bool(mem[_3341])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3459 = mem[_3435]
                    require mem[_3435] == mem[_3435]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3459
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3459
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3521] == bool(mem[_3521])
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    staticcall address(cd[(arg4 + 36)]) with:
                            gas gas_remaining wei
                           args arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                    require return_data.size >= 32
                    require 0, Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 255 < (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224
                    _606 = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0
                    mem[64] = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]) + 256
                    mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = mem[(2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 224]
                    require 0, Mask(224, 32, arg2) >> 32 + (32 * _606) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 0, Mask(224, 32, arg2) >> 32 + 256
                    t = (4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256
                    while idx < _606:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 0 < _606
                    _1314 = mem[(4 * ceil32(return_data.size)) + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                    _1326 = mem[(2 * ceil32(return_data.size)) + 192]
                    require mem[(2 * ceil32(return_data.size)) + 192] >= 64
                    _1338 = mem[(2 * ceil32(return_data.size)) + 224]
                    require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192] + 224
                    _1350 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] <= test266151307()
                    _1362 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 32
                    mem[_1362] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
                    require _1338 + (32 * _1350) + 64 <= _1326 + 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1338 + 256
                    t = _1362 + 32
                    while idx < _1350:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _1961 = mem[(2 * ceil32(return_data.size)) + 256]
                    require mem[(2 * ceil32(return_data.size)) + 256] <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 255 < (2 * ceil32(return_data.size)) + _1326 + 224
                    _1974 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224] <= test266151307()
                    _1986 = mem[64]
                    require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32 >= mem[64]
                    mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]) + 32
                    mem[_1986] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256] + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _1961 + 256
                    t = _1986 + 32
                    while idx < _1974:
                        _2526 = mem[s]
                        require (2 * ceil32(return_data.size)) + _1961 + mem[s] + 287 < (2 * ceil32(return_data.size)) + _1326 + 224
                        _2538 = mem[(2 * ceil32(return_data.size)) + _1961 + mem[s] + 256]
                        require mem[(2 * ceil32(return_data.size)) + _1961 + mem[s] + 256] <= test266151307()
                        _2634 = mem[64]
                        require mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1961 + mem[s] + 256]) + 32 <= test266151307() and mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1961 + mem[s] + 256]) + 32 >= mem[64]
                        mem[64] = mem[64] + (32 * mem[(2 * ceil32(return_data.size)) + _1961 + mem[s] + 256]) + 32
                        mem[_2634] = _2538
                        require _1961 + _2526 + (32 * _2538) + 96 <= _1326 + 32
                        u = 0
                        v = (2 * ceil32(return_data.size)) + _1961 + _2526 + 288
                        w = _2634 + 32
                        while u < _2538:
                            require mem[v] == mem[v + 12 len 20]
                            mem[w] = mem[v]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[t] = _2634
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _3054 = mem[_1362]
                    idx = 0
                    while idx < _3054:
                        require idx < mem[_1986]
                        require 0 < mem[mem[(32 * idx) + _1986 + 32]]
                        _3137 = mem[mem[(32 * idx) + _1986 + 32] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_3137))
                        staticcall address(_3137).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3210 = mem[_3186]
                        require mem[_3186] == mem[_3186]
                        require idx < mem[_1362]
                        _3269 = mem[(32 * idx) + _1362 + 32]
                        require idx < mem[_1986]
                        _3293 = mem[(32 * idx) + _1986 + 32]
                        _3294 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _3210
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _3318 = mem[_3293]
                        mem[mem[64] + 164] = mem[_3293]
                        s = 0
                        t = _3293 + 32
                        u = mem[64] + 196
                        while s < _3318:
                            mem[u] = mem[t + 12 len 20]
                            _3054 = mem[_1362]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_3294 + 100] = this.address
                        mem[_3294 + 132] = block.timestamp
                        require ext_code.size(address(_3269))
                        call address(_3269).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3294 + (32 * _3318) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3570 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3582 = mem[_3570]
                        require mem[_3570] <= test266151307()
                        require _3570 + mem[_3570] + 31 < _3570 + return_data.size
                        _3594 = mem[_3570 + mem[_3570]]
                        require mem[_3570 + mem[_3570]] <= test266151307()
                        require _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32 <= test266151307() and (32 * mem[_3570 + mem[_3570]]) + 32 >= 0
                        mem[64] = _3570 + ceil32(return_data.size) + (32 * mem[_3570 + mem[_3570]]) + 32
                        mem[_3570 + ceil32(return_data.size)] = _3594
                        require _3582 + (32 * _3594) + 32 <= return_data.size
                        s = 0
                        t = _3570 + _3582 + 32
                        u = _3570 + ceil32(return_data.size) + 32
                        while s < _3594:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _3054 = mem[_1362]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        _3054 = mem[_1362]
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3174 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3174] == mem[_3174]
                    if mem[_3174] < _1314:
                        revert with 0, 'Late fail'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1314
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1314
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3342 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3342] == bool(mem[_3342])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3437 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3461 = mem[_3437]
                    require mem[_3437] == mem[_3437]
                    mem[mem[64] + 4] = stor1
                    mem[mem[64] + 36] = _3461
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, _3461
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3522] == bool(mem[_3522])
}



}
