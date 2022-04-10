contract main {




// =====================  Runtime code  =====================


const sub_7fb9b726(?) = 750000


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function traders(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3219f37a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
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

function transfer(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'BAL'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'XFER'
}

function invoke(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function transferERC20(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'BAL'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7fc030b8(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'LOL'
    if ('cd', 4).length < 2:
        revert with 0, 'LEN'
    if cd[36] <= 0:
        revert with 0, 'AMOUNT'
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    require cd[((96 * ('cd', 4).length) + cd[4] + 4)] == address(cd[((96 * ('cd', 4).length) + cd[4] + 4)])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    if address(('cd', 4)[1]) != address(cd[((96 * ('cd', 4).length) + cd[4] + 4)]):
        revert with 0, 'IN!=OUT'
    if block.timestamp > -31536001:
        revert with 0, 17
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[100] = this.address
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36]:
        revert with 0, 17
    if ext_call.return_data[0] - cd[36] > !cd[68]:
        revert with 0, 17
    idx = 0
    s = mem[96]
    while idx < ('cd', 4).length:
        require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 100)]))
        staticcall address(cd[((96 * idx) + cd[4] + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
        staticcall address(cd[((96 * idx) + cd[4] + 68)]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(cd[((96 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_78] >= s:
            _82 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            if 0 >= mem[_82]:
                revert with 0, 50
            mem[_82 + 32] = address(cd[((96 * idx) + cd[4] + 68)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
            if 1 >= mem[_82]:
                revert with 0, 50
            mem[_82 + 64] = address(cd[((96 * idx) + cd[4] + 100)])
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[_82 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_82 + 100] = s
            mem[_82 + 132] = 1
            mem[_82 + 164] = 160
            mem[_82 + 260] = mem[_82]
            s = 0
            t = _82 + 292
            u = _82 + 32
            while s < mem[_82]:
                mem[t] = mem[u + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_82 + 196] = this.address
            mem[_82 + 228] = block.timestamp + (8760 * 24 * 3600)
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
            call address(cd[((96 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas 500000 wei
                args mem[mem[64] + 4 len _82 + (32 * mem[_82]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _128 = mem[_126]
            require mem[_126] <= test266151307()
            require _126 + mem[_126] + 31 < _126 + return_data.size
            _130 = mem[_126 + mem[_126]]
            if mem[_126 + mem[_126]] > test266151307():
                revert with 0, 65
            if _126 + ceil32(return_data.size) + ceil32(32 * mem[_126 + mem[_126]]) + 1 > test266151307() or ceil32(32 * mem[_126 + mem[_126]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _126 + ceil32(return_data.size) + ceil32(32 * mem[_126 + mem[_126]]) + 1
            mem[_126 + ceil32(return_data.size)] = _130
            require return_data.size >= _128 + (32 * _130) + 32
            t = _126 + _128 + 32
            u = _126 + ceil32(return_data.size) + 32
            s = 0
            while s < _130:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 100)]))
            staticcall address(cd[((96 * idx) + cd[4] + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_154] <= _69:
                revert with 0, '<BEF'
            if mem[_154] < _69:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_154] - _69
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = test266151307()
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
        call address(cd[((96 * idx) + cd[4] + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[((96 * idx) + cd[4] + 36)]), test266151307()
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_87] == bool(mem[_87])
        _90 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        if 0 >= mem[_90]:
            revert with 0, 50
        mem[_90 + 32] = address(cd[((96 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
        if 1 >= mem[_90]:
            revert with 0, 50
        mem[_90 + 64] = address(cd[((96 * idx) + cd[4] + 100)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        mem[_90 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_90 + 100] = s
        mem[_90 + 132] = 1
        mem[_90 + 164] = 160
        mem[_90 + 260] = mem[_90]
        s = 0
        t = _90 + 292
        u = _90 + 32
        while s < mem[_90]:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_90 + 196] = this.address
        mem[_90 + 228] = block.timestamp + (8760 * 24 * 3600)
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
        call address(cd[((96 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas 500000 wei
            args mem[mem[64] + 4 len _90 + (32 * mem[_90]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _129 = mem[_127]
        require mem[_127] <= test266151307()
        require _127 + mem[_127] + 31 < _127 + return_data.size
        _131 = mem[_127 + mem[_127]]
        if mem[_127 + mem[_127]] > test266151307():
            revert with 0, 65
        if _127 + ceil32(return_data.size) + ceil32(32 * mem[_127 + mem[_127]]) + 1 > test266151307() or ceil32(32 * mem[_127 + mem[_127]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _127 + ceil32(return_data.size) + ceil32(32 * mem[_127 + mem[_127]]) + 1
        mem[_127 + ceil32(return_data.size)] = _131
        require return_data.size >= _129 + (32 * _131) + 32
        t = _127 + _129 + 32
        u = _127 + ceil32(return_data.size) + 32
        s = 0
        while s < _131:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 100)]))
        staticcall address(cd[((96 * idx) + cd[4] + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_155] <= _69:
            revert with 0, '<BEF'
        if mem[_155] < _69:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_155] - _69
        continue 
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_66] < ext_call.return_data[0] - cd[36] + cd[68]:
        revert with 0, '<MIN'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 4)[1]))
    staticcall address(('cd', 4)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_74] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
        revert with 0, 17
    if ext_call.return_data[0] < 0 and mem[_74] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    mem[mem[64]] = mem[_74] - ext_call.return_data[0]
    emit 0x4f2bc590: mem[mem[64]], 1, msg.sender
}

function sub_7aa20e63(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'LOL'
    if cd[132] < 1:
        revert with 0, 'ITER'
    if ('cd', 100).length < 4:
        revert with 0, 'LEN'
    if ('cd', 100).length < 1:
        revert with 0, 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 0, 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if address(('cd', 100)[0]) != address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]):
        revert with 0, 'IN!=OUT'
    if block.timestamp > -31536001:
        revert with 0, 17
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36]:
        revert with 0, 17
    if ext_call.return_data[0] - cd[36] > !cd[68]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(cd[4])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if cd[36] and cd[132] > -1 / cd[36]:
        revert with 0, 17
    if not cd[164]:
        if ext_call.return_data[0] >= cd[36] * cd[132]:
            idx = 0
            while idx < cd[132]:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 100).length
                s = 0
                t = cd[100] + 36
                u = mem[64] + 196
                while s < ('cd', 100).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + (8760 * 24 * 3600)
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas 500000 wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), address(this.address), block.timestamp + (8760 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_422]
                require mem[_422] <= test266151307()
                require _422 + mem[_422] + 31 < _422 + return_data.size
                _430 = mem[_422 + mem[_422]]
                if mem[_422 + mem[_422]] > test266151307():
                    revert with 0, 65
                if _422 + ceil32(return_data.size) + ceil32(32 * mem[_422 + mem[_422]]) + 1 > test266151307() or ceil32(32 * mem[_422 + mem[_422]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _422 + ceil32(return_data.size) + ceil32(32 * mem[_422 + mem[_422]]) + 1
                mem[_422 + ceil32(return_data.size)] = _430
                require return_data.size >= _426 + (32 * _430) + 32
                t = _422 + _426 + 32
                u = _422 + ceil32(return_data.size) + 32
                s = 0
                while s < _430:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_594] < ext_call.return_data[0] - cd[36] + cd[68]:
                    revert with 0, '<MIN'
                if gas_remaining < 750000:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_622] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                        revert with 0, 17
                    if ext_call.return_data[0] < 0 and mem[_622] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64]] = mem[_622] - ext_call.return_data[0]
                else:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[36]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = ('cd', 100).length
                    s = 0
                    t = cd[100] + 36
                    u = mem[64] + 100
                    while s < ('cd', 100).length:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args cd[36], Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _730 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _734 = mem[_730]
                    require mem[_730] <= test266151307()
                    require _730 + mem[_730] + 31 < _730 + return_data.size
                    _738 = mem[_730 + mem[_730]]
                    if mem[_730 + mem[_730]] > test266151307():
                        revert with 0, 65
                    if _730 + ceil32(return_data.size) + ceil32(32 * mem[_730 + mem[_730]]) + 1 > test266151307() or ceil32(32 * mem[_730 + mem[_730]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _730 + ceil32(return_data.size) + ceil32(32 * mem[_730 + mem[_730]]) + 1
                    mem[_730 + ceil32(return_data.size)] = _738
                    require return_data.size >= _734 + (32 * _738) + 32
                    t = _730 + _734 + 32
                    u = _730 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _738:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 == _738:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_835] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_835] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_835] - ext_call.return_data[0]
                    else:
                        if _738 < 1:
                            revert with 0, 17
                        if _738 - 1 >= _738:
                            revert with 0, 50
                        if mem[(32 * _738 - 1) + _730 + ceil32(return_data.size) + 32] >= cd[68]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_858] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_858] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_858] - ext_call.return_data[0]
                emit 0x4f2bc590: mem[mem[64]], 0, msg.sender
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_238] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                revert with 0, 17
            if ext_call.return_data[0] < 0 and mem[_238] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[mem[64]] = mem[_238] - ext_call.return_data[0]
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(address(('cd', 100)[0]))
            call address(('cd', 100)[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < cd[132]:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 100).length
                s = 0
                t = cd[100] + 36
                u = mem[64] + 196
                while s < ('cd', 100).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + (8760 * 24 * 3600)
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas 500000 wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), address(this.address), block.timestamp + (8760 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _427 = mem[_423]
                require mem[_423] <= test266151307()
                require _423 + mem[_423] + 31 < _423 + return_data.size
                _431 = mem[_423 + mem[_423]]
                if mem[_423 + mem[_423]] > test266151307():
                    revert with 0, 65
                if _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1 > test266151307() or ceil32(32 * mem[_423 + mem[_423]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1
                mem[_423 + ceil32(return_data.size)] = _431
                require return_data.size >= _427 + (32 * _431) + 32
                t = _423 + _427 + 32
                u = _423 + ceil32(return_data.size) + 32
                s = 0
                while s < _431:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_595] < ext_call.return_data[0] - cd[36] + cd[68]:
                    revert with 0, '<MIN'
                if gas_remaining < 750000:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_623] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                        revert with 0, 17
                    if ext_call.return_data[0] < 0 and mem[_623] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64]] = mem[_623] - ext_call.return_data[0]
                else:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[36]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = ('cd', 100).length
                    s = 0
                    t = cd[100] + 36
                    u = mem[64] + 100
                    while s < ('cd', 100).length:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args cd[36], Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _731 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _735 = mem[_731]
                    require mem[_731] <= test266151307()
                    require _731 + mem[_731] + 31 < _731 + return_data.size
                    _739 = mem[_731 + mem[_731]]
                    if mem[_731 + mem[_731]] > test266151307():
                        revert with 0, 65
                    if _731 + ceil32(return_data.size) + ceil32(32 * mem[_731 + mem[_731]]) + 1 > test266151307() or ceil32(32 * mem[_731 + mem[_731]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _731 + ceil32(return_data.size) + ceil32(32 * mem[_731 + mem[_731]]) + 1
                    mem[_731 + ceil32(return_data.size)] = _739
                    require return_data.size >= _735 + (32 * _739) + 32
                    t = _731 + _735 + 32
                    u = _731 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _739:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 == _739:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_837] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_837] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_837] - ext_call.return_data[0]
                    else:
                        if _739 < 1:
                            revert with 0, 17
                        if _739 - 1 >= _739:
                            revert with 0, 50
                        if mem[(32 * _739 - 1) + _731 + ceil32(return_data.size) + 32] >= cd[68]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_859] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_859] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_859] - ext_call.return_data[0]
                emit 0x4f2bc590: mem[mem[64]], 0, msg.sender
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_239] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                revert with 0, 17
            if ext_call.return_data[0] < 0 and mem[_239] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[mem[64]] = mem[_239] - ext_call.return_data[0]
    else:
        if ext_call.return_data[0] >= cd[36] * cd[132]:
            idx = 0
            while idx < cd[132]:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 100).length
                s = 0
                t = cd[100] + 36
                u = mem[64] + 196
                while s < ('cd', 100).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + (8760 * 24 * 3600)
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas cd[164] wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), address(this.address), block.timestamp + (8760 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _428 = mem[_424]
                require mem[_424] <= test266151307()
                require _424 + mem[_424] + 31 < _424 + return_data.size
                _432 = mem[_424 + mem[_424]]
                if mem[_424 + mem[_424]] > test266151307():
                    revert with 0, 65
                if _424 + ceil32(return_data.size) + ceil32(32 * mem[_424 + mem[_424]]) + 1 > test266151307() or ceil32(32 * mem[_424 + mem[_424]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _424 + ceil32(return_data.size) + ceil32(32 * mem[_424 + mem[_424]]) + 1
                mem[_424 + ceil32(return_data.size)] = _432
                require return_data.size >= _428 + (32 * _432) + 32
                t = _424 + _428 + 32
                u = _424 + ceil32(return_data.size) + 32
                s = 0
                while s < _432:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_596] < ext_call.return_data[0] - cd[36] + cd[68]:
                    revert with 0, '<MIN'
                if gas_remaining < 750000:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_624] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                        revert with 0, 17
                    if ext_call.return_data[0] < 0 and mem[_624] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64]] = mem[_624] - ext_call.return_data[0]
                else:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[36]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = ('cd', 100).length
                    s = 0
                    t = cd[100] + 36
                    u = mem[64] + 100
                    while s < ('cd', 100).length:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args cd[36], Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _736 = mem[_732]
                    require mem[_732] <= test266151307()
                    require _732 + mem[_732] + 31 < _732 + return_data.size
                    _740 = mem[_732 + mem[_732]]
                    if mem[_732 + mem[_732]] > test266151307():
                        revert with 0, 65
                    if _732 + ceil32(return_data.size) + ceil32(32 * mem[_732 + mem[_732]]) + 1 > test266151307() or ceil32(32 * mem[_732 + mem[_732]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _732 + ceil32(return_data.size) + ceil32(32 * mem[_732 + mem[_732]]) + 1
                    mem[_732 + ceil32(return_data.size)] = _740
                    require return_data.size >= _736 + (32 * _740) + 32
                    t = _732 + _736 + 32
                    u = _732 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _740:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 == _740:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _839 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_839] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_839] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_839] - ext_call.return_data[0]
                    else:
                        if _740 < 1:
                            revert with 0, 17
                        if _740 - 1 >= _740:
                            revert with 0, 50
                        if mem[(32 * _740 - 1) + _732 + ceil32(return_data.size) + 32] >= cd[68]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_860] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_860] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_860] - ext_call.return_data[0]
                emit 0x4f2bc590: mem[mem[64]], 0, msg.sender
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_240] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                revert with 0, 17
            if ext_call.return_data[0] < 0 and mem[_240] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[mem[64]] = mem[_240] - ext_call.return_data[0]
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(cd[4])
            mem[(2 * ceil32(return_data.size)) + 132] = test266151307()
            require ext_code.size(address(('cd', 100)[0]))
            call address(('cd', 100)[0]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), test266151307()
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < cd[132]:
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = cd[68]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 100).length
                s = 0
                t = cd[100] + 36
                u = mem[64] + 196
                while s < ('cd', 100).length:
                    require cd[t] == address(cd[t])
                    mem[u] = address(cd[t])
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + (8760 * 24 * 3600)
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas cd[164] wei
                    args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[mem[64] + 196 len 32 * ('cd', 100).length]), address(this.address), block.timestamp + (8760 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _429 = mem[_425]
                require mem[_425] <= test266151307()
                require _425 + mem[_425] + 31 < _425 + return_data.size
                _433 = mem[_425 + mem[_425]]
                if mem[_425 + mem[_425]] > test266151307():
                    revert with 0, 65
                if _425 + ceil32(return_data.size) + ceil32(32 * mem[_425 + mem[_425]]) + 1 > test266151307() or ceil32(32 * mem[_425 + mem[_425]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _425 + ceil32(return_data.size) + ceil32(32 * mem[_425 + mem[_425]]) + 1
                mem[_425 + ceil32(return_data.size)] = _433
                require return_data.size >= _429 + (32 * _433) + 32
                t = _425 + _429 + 32
                u = _425 + ceil32(return_data.size) + 32
                s = 0
                while s < _433:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(('cd', 100)[0]))
                staticcall address(('cd', 100)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_597] < ext_call.return_data[0] - cd[36] + cd[68]:
                    revert with 0, '<MIN'
                if gas_remaining < 750000:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(('cd', 100)[0]))
                    staticcall address(('cd', 100)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_625] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                        revert with 0, 17
                    if ext_call.return_data[0] < 0 and mem[_625] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    mem[mem[64]] = mem[_625] - ext_call.return_data[0]
                else:
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[36]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = ('cd', 100).length
                    s = 0
                    t = cd[100] + 36
                    u = mem[64] + 100
                    while s < ('cd', 100).length:
                        require cd[t] == address(cd[t])
                        mem[u] = address(cd[t])
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args cd[36], Array(len=('cd', 100).length, data=mem[mem[64] + 100 len 32 * ('cd', 100).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _733 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _737 = mem[_733]
                    require mem[_733] <= test266151307()
                    require _733 + mem[_733] + 31 < _733 + return_data.size
                    _741 = mem[_733 + mem[_733]]
                    if mem[_733 + mem[_733]] > test266151307():
                        revert with 0, 65
                    if _733 + ceil32(return_data.size) + ceil32(32 * mem[_733 + mem[_733]]) + 1 > test266151307() or ceil32(32 * mem[_733 + mem[_733]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _733 + ceil32(return_data.size) + ceil32(32 * mem[_733 + mem[_733]]) + 1
                    mem[_733 + ceil32(return_data.size)] = _741
                    require return_data.size >= _737 + (32 * _741) + 32
                    t = _733 + _737 + 32
                    u = _733 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _741:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if 0 == _741:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_841] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_841] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_841] - ext_call.return_data[0]
                    else:
                        if _741 < 1:
                            revert with 0, 17
                        if _741 - 1 >= _741:
                            revert with 0, 50
                        if mem[(32 * _741 - 1) + _733 + ceil32(return_data.size) + 32] >= cd[68]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(('cd', 100)[0]))
                        staticcall address(('cd', 100)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_861] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                            revert with 0, 17
                        if ext_call.return_data[0] < 0 and mem[_861] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        mem[mem[64]] = mem[_861] - ext_call.return_data[0]
                emit 0x4f2bc590: mem[mem[64]], 0, msg.sender
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(('cd', 100)[0]))
            staticcall address(('cd', 100)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_241] < ext_call.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[0] >= 0:
                revert with 0, 17
            if ext_call.return_data[0] < 0 and mem[_241] > ext_call.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            mem[mem[64]] = mem[_241] - ext_call.return_data[0]
    emit 0x4f2bc590: mem[mem[64]], 0, msg.sender
}



}
