contract main {




// =====================  Runtime code  =====================


#
#  - sub_cbbf3c6b(?)
#
address owner;
mapping of uint256 _runner;

function _runner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _runner[arg1]
}

function owner() {
    return owner
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

function sub_c54e416c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _runner[address(arg1)] = 0
}

function sub_f62bf172(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _runner[address(arg1)] = 1
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

function WithdrawAllBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg2
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_c08757bc(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 2
    mem[192] = 2
    mem[256] = address(arg1)
    mem[128] = address(arg1)
    mem[224] = address(arg2)
    mem[160] = address(arg2)
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 64
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg4))
    staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _34 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require return_data.size + 288 > mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319
    _35 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= test266151307()
    require (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require return_data.size >= _34 + (32 * _35) + 32
    mem[ceil32(return_data.size) + 320 len 32 * _35] = mem[_34 + 320 len 32 * _35]
    require 1 < _35
    _55 = mem[ceil32(return_data.size) + 352]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _55
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = 2
    idx = 0
    s = 224
    t = mem[64] + 100
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg5))
    staticcall address(arg5).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _55, Array(len=2, data=mem[mem[64] + 100 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _72 = mem[_71]
    require mem[_71] <= test266151307()
    require _71 + return_data.size > _71 + mem[_71] + 31
    _73 = mem[_71 + mem[_71]]
    require mem[_71 + mem[_71]] <= test266151307()
    require (32 * mem[_71 + mem[_71]]) + 32 >= 0 and _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32 <= test266151307()
    mem[64] = _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32
    mem[_71 + ceil32(return_data.size)] = _73
    require return_data.size >= _72 + (32 * _73) + 32
    mem[_71 + ceil32(return_data.size) + 32 len 32 * _73] = mem[_71 + _72 + 32 len 32 * _73]
    require 1 < _73
    mem[mem[64]] = mem[_71 + ceil32(return_data.size) + 64] - arg3
    return mem[mem[64]], _55
}

function sub_f3cde7fe(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] > 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 64] = call.data[calldata.size len 64]
    require ('cd', 68).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256] = ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 288
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] = cd[36]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
            require idx < mem[96]
            _251 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
            _256 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
            _257 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _256
            mem[mem[64] + 36] = 64
            _261 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            s = 0
            t = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
            u = mem[64] + 100
            while s < _261:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_251))
            staticcall address(_251).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _257 + (32 * _261) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_287]
            require mem[_287] <= test266151307()
            require _287 + return_data.size > _287 + mem[_287] + 31
            _291 = mem[_287 + mem[_287]]
            require mem[_287 + mem[_287]] <= test266151307()
            require (32 * mem[_287 + mem[_287]]) + 32 >= 0 and _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32 <= test266151307()
            mem[64] = _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32
            mem[_287 + ceil32(return_data.size)] = _291
            require return_data.size >= _289 + (32 * _291) + 32
            t = _287 + _289 + 32
            u = _287 + ceil32(return_data.size) + 32
            s = 0
            while s < _291:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _291
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] = mem[_287 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
        _241 = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
        mem[mem[64]] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] - mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
        return mem[mem[64]], _241
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
        require idx < mem[96]
        _253 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
        _259 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _259
        mem[mem[64] + 36] = 64
        _262 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        u = mem[64] + 100
        while s < _262:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_253))
        staticcall address(_253).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _259, 64, mem[mem[64] + 68 len (32 * _262) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_288]
        require mem[_288] <= test266151307()
        require _288 + return_data.size > _288 + mem[_288] + 31
        _292 = mem[_288 + mem[_288]]
        require mem[_288 + mem[_288]] <= test266151307()
        require (32 * mem[_288 + mem[_288]]) + 32 >= 0 and _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32 <= test266151307()
        mem[64] = _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32
        mem[_288 + ceil32(return_data.size)] = _292
        require return_data.size >= _290 + (32 * _292) + 32
        t = _288 + _290 + 32
        u = _288 + ceil32(return_data.size) + 32
        s = 0
        while s < _292:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        require 1 < _292
        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] = mem[_288 + ceil32(return_data.size) + 64]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 256]
    _244 = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
    mem[mem[64]] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288] - mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
    return mem[mem[64]], _244
}

function sub_3f4b28ab(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if not _runner[msg.sender]:
        revert with 0, 'not allow'
    require cd[36] > 0
    require ('cd', 68).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160] = ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[96]
            _1212 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1218 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1223 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            _1228 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
            _1232 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1232]
            mem[_1232 + 32] = address(_1218)
            require 1 < mem[_1232]
            mem[_1232 + 64] = address(_1223)
            mem[_1232 + 100] = this.address
            mem[_1232 + 132] = address(_1212)
            require ext_code.size(address(_1218))
            staticcall address(_1218).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1212)
            mem[_1232 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1232 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] >= _1228:
                mem[_1232 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1232 + ceil32(return_data.size) + 100] = _1228
                mem[_1232 + ceil32(return_data.size) + 132] = 0
                mem[_1232 + ceil32(return_data.size) + 164] = 160
                mem[_1232 + ceil32(return_data.size) + 260] = mem[_1232]
                s = 0
                t = _1232 + 32
                u = _1232 + ceil32(return_data.size) + 292
                while s < mem[_1232]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1232 + ceil32(return_data.size) + 196] = this.address
                mem[_1232 + ceil32(return_data.size) + 228] = block.timestamp + 30
                require ext_code.size(address(_1212))
                call address(_1212).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1232 + ceil32(return_data.size) + (32 * mem[_1232]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1613 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1621 = mem[_1613]
                require mem[_1613] <= test266151307()
                require _1613 + return_data.size > _1613 + mem[_1613] + 31
                _1627 = mem[_1613 + mem[_1613]]
                require mem[_1613 + mem[_1613]] <= test266151307()
                require (32 * mem[_1613 + mem[_1613]]) + 32 >= 0 and _1613 + ceil32(return_data.size) + (32 * mem[_1613 + mem[_1613]]) + 32 <= test266151307()
                mem[64] = _1613 + ceil32(return_data.size) + (32 * mem[_1613 + mem[_1613]]) + 32
                mem[_1613 + ceil32(return_data.size)] = _1627
                require return_data.size >= _1621 + (32 * _1627) + 32
                t = _1613 + _1621 + 32
                u = _1613 + ceil32(return_data.size) + 32
                s = 0
                while s < _1627:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _1627
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1613 + ceil32(return_data.size) + 64]
            else:
                mem[_1232 + ceil32(return_data.size) + 100] = this.address
                mem[_1232 + ceil32(return_data.size) + 132] = address(_1212)
                require ext_code.size(address(_1218))
                staticcall address(_1218).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1212)
                mem[_1232 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1232 + (2 * ceil32(return_data.size)) + 132] = address(_1212)
                mem[_1232 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[_1232 + (2 * ceil32(return_data.size)) + 96] = 68
                mem[_1232 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1212) << 64
                mem[64] = _1232 + (2 * ceil32(return_data.size)) + 260
                mem[_1232 + (2 * ceil32(return_data.size)) + 196] = 32
                mem[_1232 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1218)):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1232 + (2 * ceil32(return_data.size)) + 260] = mem[s + _1232 + (2 * ceil32(return_data.size)) + 128]
                    s = s + 32
                    continue 
                mem[_1232 + (2 * ceil32(return_data.size)) + 328] = 0
                call address(_1218).mem[_1232 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[_1232 + (2 * ceil32(return_data.size)) + 264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1232 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + 264] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1232 + (2 * ceil32(return_data.size)) + 328] = mem[idx + _1232 + (2 * ceil32(return_data.size)) + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1232 + (2 * ceil32(return_data.size)) + 328]
                    if not mem[96]:
                        mem[_1232 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + 264] = _1228
                        mem[_1232 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1232 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1232 + (2 * ceil32(return_data.size)) + 424] = mem[_1232]
                        s = 0
                        t = _1232 + 32
                        u = _1232 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1232]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1232 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1232 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1212))
                        call address(_1212).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1232 + (2 * ceil32(return_data.size)) + (32 * mem[_1232]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1986 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2007 = mem[_1986]
                        require mem[_1986] <= test266151307()
                        require _1986 + return_data.size > _1986 + mem[_1986] + 31
                        _2023 = mem[_1986 + mem[_1986]]
                        require mem[_1986 + mem[_1986]] <= test266151307()
                        require (32 * mem[_1986 + mem[_1986]]) + 32 >= 0 and _1986 + ceil32(return_data.size) + (32 * mem[_1986 + mem[_1986]]) + 32 <= test266151307()
                        mem[64] = _1986 + ceil32(return_data.size) + (32 * mem[_1986 + mem[_1986]]) + 32
                        mem[_1986 + ceil32(return_data.size)] = _2023
                        require return_data.size >= _2007 + (32 * _2023) + 32
                        t = _1986 + _2007 + 32
                        u = _1986 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2023:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2023
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1986 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1232 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + 264] = _1228
                        mem[_1232 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1232 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1232 + (2 * ceil32(return_data.size)) + 424] = mem[_1232]
                        s = 0
                        t = _1232 + 32
                        u = _1232 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1232]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1232 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1232 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1212))
                        call address(_1212).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1232 + (2 * ceil32(return_data.size)) + (32 * mem[_1232]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1987 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2008 = mem[_1987]
                        require mem[_1987] <= test266151307()
                        require _1987 + return_data.size > _1987 + mem[_1987] + 31
                        _2024 = mem[_1987 + mem[_1987]]
                        require mem[_1987 + mem[_1987]] <= test266151307()
                        require (32 * mem[_1987 + mem[_1987]]) + 32 >= 0 and _1987 + ceil32(return_data.size) + (32 * mem[_1987 + mem[_1987]]) + 32 <= test266151307()
                        mem[64] = _1987 + ceil32(return_data.size) + (32 * mem[_1987 + mem[_1987]]) + 32
                        mem[_1987 + ceil32(return_data.size)] = _2024
                        require return_data.size >= _2008 + (32 * _2024) + 32
                        t = _1987 + _2008 + 32
                        u = _1987 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2024:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2024
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1987 + ceil32(return_data.size) + 64]
                else:
                    mem[64] = _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    mem[_1232 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[_1232 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = mem[idx + _1232 + (2 * ceil32(return_data.size)) + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                    if not return_data.size:
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1228
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1232]
                        s = 0
                        t = _1232 + 32
                        u = _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1232]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1212))
                        call address(_1212).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1232]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1989 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2009 = mem[_1989]
                        require mem[_1989] <= test266151307()
                        require _1989 + return_data.size > _1989 + mem[_1989] + 31
                        _2025 = mem[_1989 + mem[_1989]]
                        require mem[_1989 + mem[_1989]] <= test266151307()
                        require (32 * mem[_1989 + mem[_1989]]) + 32 >= 0 and _1989 + ceil32(return_data.size) + (32 * mem[_1989 + mem[_1989]]) + 32 <= test266151307()
                        mem[64] = _1989 + ceil32(return_data.size) + (32 * mem[_1989 + mem[_1989]]) + 32
                        mem[_1989 + ceil32(return_data.size)] = _2025
                        require return_data.size >= _2009 + (32 * _2025) + 32
                        t = _1989 + _2009 + 32
                        u = _1989 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2025:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2025
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1989 + ceil32(return_data.size) + 64]
                    else:
                        require return_data.size >= 32
                        require mem[_1232 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1232 + (2 * ceil32(return_data.size)) + 292])
                        if not mem[_1232 + (2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1228
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1232]
                        s = 0
                        t = _1232 + 32
                        u = _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1232]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1212))
                        call address(_1212).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1232 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1232]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1990 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2010 = mem[_1990]
                        require mem[_1990] <= test266151307()
                        require _1990 + return_data.size > _1990 + mem[_1990] + 31
                        _2026 = mem[_1990 + mem[_1990]]
                        require mem[_1990 + mem[_1990]] <= test266151307()
                        require (32 * mem[_1990 + mem[_1990]]) + 32 >= 0 and _1990 + ceil32(return_data.size) + (32 * mem[_1990 + mem[_1990]]) + 32 <= test266151307()
                        mem[64] = _1990 + ceil32(return_data.size) + (32 * mem[_1990 + mem[_1990]]) + 32
                        mem[_1990 + ceil32(return_data.size)] = _2026
                        require return_data.size >= _2010 + (32 * _2026) + 32
                        t = _1990 + _2010 + 32
                        u = _1990 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2026:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2026
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1990 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1217 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _1217] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1217]
        return 32, mem[mem[64] + 32 len (32 * _1217) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _1215 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1221 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1225 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        _1230 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
        _1235 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1235]
        mem[_1235 + 32] = address(_1221)
        require 1 < mem[_1235]
        mem[_1235 + 64] = address(_1225)
        mem[_1235 + 100] = this.address
        mem[_1235 + 132] = address(_1215)
        require ext_code.size(address(_1221))
        staticcall address(_1221).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1215)
        mem[_1235 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1235 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= _1230:
            mem[_1235 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1235 + ceil32(return_data.size) + 100] = _1230
            mem[_1235 + ceil32(return_data.size) + 132] = 0
            mem[_1235 + ceil32(return_data.size) + 164] = 160
            mem[_1235 + ceil32(return_data.size) + 260] = mem[_1235]
            s = 0
            t = _1235 + 32
            u = _1235 + ceil32(return_data.size) + 292
            while s < mem[_1235]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1235 + ceil32(return_data.size) + 196] = this.address
            mem[_1235 + ceil32(return_data.size) + 228] = block.timestamp + 30
            require ext_code.size(address(_1215))
            call address(_1215).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1235 + ceil32(return_data.size) + (32 * mem[_1235]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1616 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1622 = mem[_1616]
            require mem[_1616] <= test266151307()
            require _1616 + return_data.size > _1616 + mem[_1616] + 31
            _1634 = mem[_1616 + mem[_1616]]
            require mem[_1616 + mem[_1616]] <= test266151307()
            require (32 * mem[_1616 + mem[_1616]]) + 32 >= 0 and _1616 + ceil32(return_data.size) + (32 * mem[_1616 + mem[_1616]]) + 32 <= test266151307()
            mem[64] = _1616 + ceil32(return_data.size) + (32 * mem[_1616 + mem[_1616]]) + 32
            mem[_1616 + ceil32(return_data.size)] = _1634
            require return_data.size >= _1622 + (32 * _1634) + 32
            t = _1616 + _1622 + 32
            u = _1616 + ceil32(return_data.size) + 32
            s = 0
            while s < _1634:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _1634
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1616 + ceil32(return_data.size) + 64]
        else:
            mem[_1235 + ceil32(return_data.size) + 100] = this.address
            mem[_1235 + ceil32(return_data.size) + 132] = address(_1215)
            require ext_code.size(address(_1221))
            staticcall address(_1221).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1215)
            mem[_1235 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1235 + (2 * ceil32(return_data.size)) + 132] = address(_1215)
            mem[_1235 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[_1235 + (2 * ceil32(return_data.size)) + 96] = 68
            mem[_1235 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1215) << 64
            mem[64] = _1235 + (2 * ceil32(return_data.size)) + 260
            mem[_1235 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_1235 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_1221)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _1235 + (2 * ceil32(return_data.size)) + 260] = mem[s + _1235 + (2 * ceil32(return_data.size)) + 128]
                s = s + 32
                continue 
            mem[_1235 + (2 * ceil32(return_data.size)) + 328] = 0
            call address(_1221).mem[_1235 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[_1235 + (2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1235 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1235 + (2 * ceil32(return_data.size)) + 328] = mem[idx + _1235 + (2 * ceil32(return_data.size)) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1235 + (2 * ceil32(return_data.size)) + 328]
                if not mem[96]:
                    mem[_1235 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + 264] = _1230
                    mem[_1235 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1235 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1235 + (2 * ceil32(return_data.size)) + 424] = mem[_1235]
                    s = 0
                    t = _1235 + 32
                    u = _1235 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1235]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1235 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1235 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1215))
                    call address(_1215).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1235 + (2 * ceil32(return_data.size)) + (32 * mem[_1235]) + -mem[64] + 452]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1998 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2015 = mem[_1998]
                    require mem[_1998] <= test266151307()
                    require _1998 + return_data.size > _1998 + mem[_1998] + 31
                    _2031 = mem[_1998 + mem[_1998]]
                    require mem[_1998 + mem[_1998]] <= test266151307()
                    require (32 * mem[_1998 + mem[_1998]]) + 32 >= 0 and _1998 + ceil32(return_data.size) + (32 * mem[_1998 + mem[_1998]]) + 32 <= test266151307()
                    mem[64] = _1998 + ceil32(return_data.size) + (32 * mem[_1998 + mem[_1998]]) + 32
                    mem[_1998 + ceil32(return_data.size)] = _2031
                    require return_data.size >= _2015 + (32 * _2031) + 32
                    t = _1998 + _2015 + 32
                    u = _1998 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2031:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2031
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1998 + ceil32(return_data.size) + 64]
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1235 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + 264] = _1230
                    mem[_1235 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1235 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1235 + (2 * ceil32(return_data.size)) + 424] = mem[_1235]
                    s = 0
                    t = _1235 + 32
                    u = _1235 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1235]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1235 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1235 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1215))
                    call address(_1215).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1235 + (2 * ceil32(return_data.size)) + (32 * mem[_1235]) + -mem[64] + 452]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1999 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2016 = mem[_1999]
                    require mem[_1999] <= test266151307()
                    require _1999 + return_data.size > _1999 + mem[_1999] + 31
                    _2032 = mem[_1999 + mem[_1999]]
                    require mem[_1999 + mem[_1999]] <= test266151307()
                    require (32 * mem[_1999 + mem[_1999]]) + 32 >= 0 and _1999 + ceil32(return_data.size) + (32 * mem[_1999 + mem[_1999]]) + 32 <= test266151307()
                    mem[64] = _1999 + ceil32(return_data.size) + (32 * mem[_1999 + mem[_1999]]) + 32
                    mem[_1999 + ceil32(return_data.size)] = _2032
                    require return_data.size >= _2016 + (32 * _2032) + 32
                    t = _1999 + _2016 + 32
                    u = _1999 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2032:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2032
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1999 + ceil32(return_data.size) + 64]
            else:
                mem[64] = _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                mem[_1235 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[_1235 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = mem[idx + _1235 + (2 * ceil32(return_data.size)) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                if not return_data.size:
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1230
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1235]
                    s = 0
                    t = _1235 + 32
                    u = _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1235]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1215))
                    call address(_1215).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1235]) + -mem[64] + 453]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2001 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2017 = mem[_2001]
                    require mem[_2001] <= test266151307()
                    require _2001 + return_data.size > _2001 + mem[_2001] + 31
                    _2033 = mem[_2001 + mem[_2001]]
                    require mem[_2001 + mem[_2001]] <= test266151307()
                    require (32 * mem[_2001 + mem[_2001]]) + 32 >= 0 and _2001 + ceil32(return_data.size) + (32 * mem[_2001 + mem[_2001]]) + 32 <= test266151307()
                    mem[64] = _2001 + ceil32(return_data.size) + (32 * mem[_2001 + mem[_2001]]) + 32
                    mem[_2001 + ceil32(return_data.size)] = _2033
                    require return_data.size >= _2017 + (32 * _2033) + 32
                    t = _2001 + _2017 + 32
                    u = _2001 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2033:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2033
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2001 + ceil32(return_data.size) + 64]
                else:
                    require return_data.size >= 32
                    require mem[_1235 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1235 + (2 * ceil32(return_data.size)) + 292])
                    if not mem[_1235 + (2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1230
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1235]
                    s = 0
                    t = _1235 + 32
                    u = _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1235]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1215))
                    call address(_1215).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1235 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1235]) + -mem[64] + 453]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2002 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2018 = mem[_2002]
                    require mem[_2002] <= test266151307()
                    require _2002 + return_data.size > _2002 + mem[_2002] + 31
                    _2034 = mem[_2002 + mem[_2002]]
                    require mem[_2002 + mem[_2002]] <= test266151307()
                    require (32 * mem[_2002 + mem[_2002]]) + 32 >= 0 and _2002 + ceil32(return_data.size) + (32 * mem[_2002 + mem[_2002]]) + 32 <= test266151307()
                    mem[64] = _2002 + ceil32(return_data.size) + (32 * mem[_2002 + mem[_2002]]) + 32
                    mem[_2002 + ceil32(return_data.size)] = _2034
                    require return_data.size >= _2018 + (32 * _2034) + 32
                    t = _2002 + _2018 + 32
                    u = _2002 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2034:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2034
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2002 + ceil32(return_data.size) + 64]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1220 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _1220] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1220]
    return 32, mem[mem[64] + 32 len (32 * _1220) + 32]
}

function sub_964a9bc5(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if not _runner[msg.sender]:
        revert with 0, 'not allow'
    require cd[36] > 0
    require ('cd', 68).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160] = ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192
    if not ('cd', 68).length:
        require 0 < ('cd', 68).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
        idx = 0
        while idx < ('cd', 68).length - 1:
            require idx < mem[96]
            _1258 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1266 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1272 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            _1278 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
            _1283 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1283]
            mem[_1283 + 32] = address(_1266)
            require 1 < mem[_1283]
            mem[_1283 + 64] = address(_1272)
            mem[_1283 + 100] = this.address
            mem[_1283 + 132] = address(_1258)
            require ext_code.size(address(_1266))
            staticcall address(_1266).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1258)
            mem[_1283 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1283 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] >= _1278:
                mem[_1283 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1283 + ceil32(return_data.size) + 100] = _1278
                mem[_1283 + ceil32(return_data.size) + 132] = 0
                mem[_1283 + ceil32(return_data.size) + 164] = 160
                mem[_1283 + ceil32(return_data.size) + 260] = mem[_1283]
                s = 0
                t = _1283 + 32
                u = _1283 + ceil32(return_data.size) + 292
                while s < mem[_1283]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1283 + ceil32(return_data.size) + 196] = this.address
                mem[_1283 + ceil32(return_data.size) + 228] = block.timestamp + 30
                require ext_code.size(address(_1258))
                call address(_1258).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1283 + ceil32(return_data.size) + (32 * mem[_1283]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1669 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1677 = mem[_1669]
                require mem[_1669] <= test266151307()
                require _1669 + return_data.size > _1669 + mem[_1669] + 31
                _1683 = mem[_1669 + mem[_1669]]
                require mem[_1669 + mem[_1669]] <= test266151307()
                require (32 * mem[_1669 + mem[_1669]]) + 32 >= 0 and _1669 + ceil32(return_data.size) + (32 * mem[_1669 + mem[_1669]]) + 32 <= test266151307()
                mem[64] = _1669 + ceil32(return_data.size) + (32 * mem[_1669 + mem[_1669]]) + 32
                mem[_1669 + ceil32(return_data.size)] = _1683
                require return_data.size >= _1677 + (32 * _1683) + 32
                t = _1669 + _1677 + 32
                u = _1669 + ceil32(return_data.size) + 32
                s = 0
                while s < _1683:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                require 1 < _1683
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1669 + ceil32(return_data.size) + 64]
            else:
                mem[_1283 + ceil32(return_data.size) + 100] = this.address
                mem[_1283 + ceil32(return_data.size) + 132] = address(_1258)
                require ext_code.size(address(_1266))
                staticcall address(_1266).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1258)
                mem[_1283 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1283 + (2 * ceil32(return_data.size)) + 132] = address(_1258)
                mem[_1283 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[_1283 + (2 * ceil32(return_data.size)) + 96] = 68
                mem[_1283 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1258) << 64
                mem[64] = _1283 + (2 * ceil32(return_data.size)) + 260
                mem[_1283 + (2 * ceil32(return_data.size)) + 196] = 32
                mem[_1283 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1266)):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1283 + (2 * ceil32(return_data.size)) + 260] = mem[s + _1283 + (2 * ceil32(return_data.size)) + 128]
                    s = s + 32
                    continue 
                mem[_1283 + (2 * ceil32(return_data.size)) + 328] = 0
                call address(_1266).mem[_1283 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[_1283 + (2 * ceil32(return_data.size)) + 264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1283 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + 264] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1283 + (2 * ceil32(return_data.size)) + 328] = mem[idx + _1283 + (2 * ceil32(return_data.size)) + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1283 + (2 * ceil32(return_data.size)) + 328]
                    if not mem[96]:
                        mem[_1283 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + 264] = _1278
                        mem[_1283 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1283 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1283 + (2 * ceil32(return_data.size)) + 424] = mem[_1283]
                        s = 0
                        t = _1283 + 32
                        u = _1283 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1283]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1283 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1283 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1258))
                        call address(_1258).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1283 + (2 * ceil32(return_data.size)) + (32 * mem[_1283]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2042 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2063 = mem[_2042]
                        require mem[_2042] <= test266151307()
                        require _2042 + return_data.size > _2042 + mem[_2042] + 31
                        _2079 = mem[_2042 + mem[_2042]]
                        require mem[_2042 + mem[_2042]] <= test266151307()
                        require (32 * mem[_2042 + mem[_2042]]) + 32 >= 0 and _2042 + ceil32(return_data.size) + (32 * mem[_2042 + mem[_2042]]) + 32 <= test266151307()
                        mem[64] = _2042 + ceil32(return_data.size) + (32 * mem[_2042 + mem[_2042]]) + 32
                        mem[_2042 + ceil32(return_data.size)] = _2079
                        require return_data.size >= _2063 + (32 * _2079) + 32
                        t = _2042 + _2063 + 32
                        u = _2042 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2079:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2079
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2042 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1283 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + 264] = _1278
                        mem[_1283 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1283 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1283 + (2 * ceil32(return_data.size)) + 424] = mem[_1283]
                        s = 0
                        t = _1283 + 32
                        u = _1283 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1283]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1283 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1283 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1258))
                        call address(_1258).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1283 + (2 * ceil32(return_data.size)) + (32 * mem[_1283]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2043 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2064 = mem[_2043]
                        require mem[_2043] <= test266151307()
                        require _2043 + return_data.size > _2043 + mem[_2043] + 31
                        _2080 = mem[_2043 + mem[_2043]]
                        require mem[_2043 + mem[_2043]] <= test266151307()
                        require (32 * mem[_2043 + mem[_2043]]) + 32 >= 0 and _2043 + ceil32(return_data.size) + (32 * mem[_2043 + mem[_2043]]) + 32 <= test266151307()
                        mem[64] = _2043 + ceil32(return_data.size) + (32 * mem[_2043 + mem[_2043]]) + 32
                        mem[_2043 + ceil32(return_data.size)] = _2080
                        require return_data.size >= _2064 + (32 * _2080) + 32
                        t = _2043 + _2064 + 32
                        u = _2043 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2080:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2080
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2043 + ceil32(return_data.size) + 64]
                else:
                    mem[64] = _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    mem[_1283 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[_1283 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = mem[idx + _1283 + (2 * ceil32(return_data.size)) + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                    if not return_data.size:
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1278
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1283]
                        s = 0
                        t = _1283 + 32
                        u = _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1283]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1258))
                        call address(_1258).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1283]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2065 = mem[_2045]
                        require mem[_2045] <= test266151307()
                        require _2045 + return_data.size > _2045 + mem[_2045] + 31
                        _2081 = mem[_2045 + mem[_2045]]
                        require mem[_2045 + mem[_2045]] <= test266151307()
                        require (32 * mem[_2045 + mem[_2045]]) + 32 >= 0 and _2045 + ceil32(return_data.size) + (32 * mem[_2045 + mem[_2045]]) + 32 <= test266151307()
                        mem[64] = _2045 + ceil32(return_data.size) + (32 * mem[_2045 + mem[_2045]]) + 32
                        mem[_2045 + ceil32(return_data.size)] = _2081
                        require return_data.size >= _2065 + (32 * _2081) + 32
                        t = _2045 + _2065 + 32
                        u = _2045 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2081:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2081
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2045 + ceil32(return_data.size) + 64]
                    else:
                        require return_data.size >= 32
                        require mem[_1283 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1283 + (2 * ceil32(return_data.size)) + 292])
                        if not mem[_1283 + (2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1278
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1283]
                        s = 0
                        t = _1283 + 32
                        u = _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1283]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1258))
                        call address(_1258).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1283 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1283]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2066 = mem[_2046]
                        require mem[_2046] <= test266151307()
                        require _2046 + return_data.size > _2046 + mem[_2046] + 31
                        _2082 = mem[_2046 + mem[_2046]]
                        require mem[_2046 + mem[_2046]] <= test266151307()
                        require (32 * mem[_2046 + mem[_2046]]) + 32 >= 0 and _2046 + ceil32(return_data.size) + (32 * mem[_2046 + mem[_2046]]) + 32 <= test266151307()
                        mem[64] = _2046 + ceil32(return_data.size) + (32 * mem[_2046 + mem[_2046]]) + 32
                        mem[_2046 + ceil32(return_data.size)] = _2082
                        require return_data.size >= _2066 + (32 * _2082) + 32
                        t = _2046 + _2066 + 32
                        u = _2046 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _2082:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        require 1 < _2082
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_2046 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
            revert with 0, 'ne'
        mem[mem[64]] = 32
        _1281 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _1281] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1281]
        return 32, mem[mem[64] + 32 len (32 * _1281) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _1263 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1269 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1275 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        _1280 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
        _1287 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1287]
        mem[_1287 + 32] = address(_1269)
        require 1 < mem[_1287]
        mem[_1287 + 64] = address(_1275)
        mem[_1287 + 100] = this.address
        mem[_1287 + 132] = address(_1263)
        require ext_code.size(address(_1269))
        staticcall address(_1269).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1263)
        mem[_1287 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1287 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= _1280:
            mem[_1287 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1287 + ceil32(return_data.size) + 100] = _1280
            mem[_1287 + ceil32(return_data.size) + 132] = 0
            mem[_1287 + ceil32(return_data.size) + 164] = 160
            mem[_1287 + ceil32(return_data.size) + 260] = mem[_1287]
            s = 0
            t = _1287 + 32
            u = _1287 + ceil32(return_data.size) + 292
            while s < mem[_1287]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1287 + ceil32(return_data.size) + 196] = this.address
            mem[_1287 + ceil32(return_data.size) + 228] = block.timestamp + 30
            require ext_code.size(address(_1263))
            call address(_1263).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _1280, 0, 160, address(this.address), block.timestamp + 30, mem[_1287 + ceil32(return_data.size) + 260 len (32 * mem[_1287]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1287 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1287 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1678 = mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32
            require mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 <= test266151307()
            require _1287 + ceil32(return_data.size) + return_data.size + 96 > _1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 127
            _1690 = mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96]
            require mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96] <= test266151307()
            require (32 * mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96]) + 32 >= 0 and _1287 + (2 * ceil32(return_data.size)) + (32 * mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _1287 + (2 * ceil32(return_data.size)) + (32 * mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96]) + 128
            mem[_1287 + (2 * ceil32(return_data.size)) + 96] = mem[_1287 + ceil32(return_data.size) + mem[_1287 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1280) >> 32 + 96]
            require return_data.size >= _1678 + (32 * _1690) + 32
            t = _1287 + ceil32(return_data.size) + _1678 + 128
            u = _1287 + (2 * ceil32(return_data.size)) + 128
            s = 0
            while s < _1690:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            require 1 < _1690
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1287 + (2 * ceil32(return_data.size)) + 160]
        else:
            mem[_1287 + ceil32(return_data.size) + 100] = this.address
            mem[_1287 + ceil32(return_data.size) + 132] = address(_1263)
            require ext_code.size(address(_1269))
            staticcall address(_1269).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1263)
            mem[_1287 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1287 + (2 * ceil32(return_data.size)) + 132] = address(_1263)
            mem[_1287 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[_1287 + (2 * ceil32(return_data.size)) + 96] = 68
            mem[_1287 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1263) << 64
            mem[64] = _1287 + (2 * ceil32(return_data.size)) + 260
            mem[_1287 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_1287 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_1269)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _1287 + (2 * ceil32(return_data.size)) + 260] = mem[s + _1287 + (2 * ceil32(return_data.size)) + 128]
                s = s + 32
                continue 
            mem[_1287 + (2 * ceil32(return_data.size)) + 328] = 0
            call address(_1269).mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[_1287 + (2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1287 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1287 + (2 * ceil32(return_data.size)) + 328] = mem[idx + _1287 + (2 * ceil32(return_data.size)) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1287 + (2 * ceil32(return_data.size)) + 328]
                if not mem[96]:
                    mem[_1287 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + 264] = _1280
                    mem[_1287 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1287 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1287 + (2 * ceil32(return_data.size)) + 424] = mem[_1287]
                    s = 0
                    t = _1287 + 32
                    u = _1287 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1287]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1287 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1287 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1263))
                    call address(_1263).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1280, 0, 160, address(this.address), block.timestamp + 30, mem[_1287 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1287]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1287 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2071 = mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32
                    require mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 <= test266151307()
                    require _1287 + (2 * ceil32(return_data.size)) + return_data.size + 260 > _1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 291
                    _2087 = mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]
                    require mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260] <= test266151307()
                    require (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 32 >= 0 and _1287 + (4 * ceil32(return_data.size)) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 292 <= test266151307()
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 292
                    mem[_1287 + (4 * ceil32(return_data.size)) + 260] = mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]
                    require return_data.size >= _2071 + (32 * _2087) + 32
                    t = _1287 + (2 * ceil32(return_data.size)) + _2071 + 292
                    u = _1287 + (4 * ceil32(return_data.size)) + 292
                    s = 0
                    while s < _2087:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2087
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1287 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + 264] = _1280
                    mem[_1287 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1287 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1287 + (2 * ceil32(return_data.size)) + 424] = mem[_1287]
                    s = 0
                    t = _1287 + 32
                    u = _1287 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1287]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1287 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1287 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1263))
                    call address(_1263).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1280, 0, 160, address(this.address), block.timestamp + 30, mem[_1287 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1287]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1287 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _2072 = mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32
                    require mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 <= test266151307()
                    require _1287 + (2 * ceil32(return_data.size)) + return_data.size + 260 > _1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 291
                    _2088 = mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]
                    require mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260] <= test266151307()
                    require (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 32 >= 0 and _1287 + (4 * ceil32(return_data.size)) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 292 <= test266151307()
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]) + 292
                    mem[_1287 + (4 * ceil32(return_data.size)) + 260] = mem[_1287 + (2 * ceil32(return_data.size)) + mem[_1287 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1280) >> 32 + 260]
                    require return_data.size >= _2072 + (32 * _2088) + 32
                    t = _1287 + (2 * ceil32(return_data.size)) + _2072 + 292
                    u = _1287 + (4 * ceil32(return_data.size)) + 292
                    s = 0
                    while s < _2088:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2088
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1287 + (4 * ceil32(return_data.size)) + 324]
            else:
                mem[64] = _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                mem[_1287 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[_1287 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = mem[idx + _1287 + (2 * ceil32(return_data.size)) + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                if not return_data.size:
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1280
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1287]
                    s = 0
                    t = _1287 + 32
                    u = _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1287]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1263))
                    call address(_1263).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1280, 0, 160, address(this.address), block.timestamp + 30, mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1287]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2073 = mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32
                    require mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 <= test266151307()
                    require _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 292
                    _2089 = mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]
                    require mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261] <= test266151307()
                    require (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 32 >= 0 and _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 293 <= test266151307()
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 293
                    mem[_1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2089
                    require return_data.size >= _2073 + (32 * _2089) + 32
                    t = _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2073 + 293
                    u = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    s = 0
                    while s < _2089:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2089
                else:
                    require return_data.size >= 32
                    require mem[_1287 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1287 + (2 * ceil32(return_data.size)) + 292])
                    if not mem[_1287 + (2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1280
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1287]
                    s = 0
                    t = _1287 + 32
                    u = _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1287]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1263))
                    call address(_1263).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1280, 0, 160, address(this.address), block.timestamp + 30, mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1287]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _2074 = mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32
                    require mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 <= test266151307()
                    require _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261 > _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 292
                    _2090 = mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]
                    require mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261] <= test266151307()
                    require (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 32 >= 0 and _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 293 <= test266151307()
                    mem[64] = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1280) >> 32 + 261]) + 293
                    mem[_1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _2090
                    require return_data.size >= _2074 + (32 * _2090) + 32
                    t = _1287 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _2074 + 293
                    u = _1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    s = 0
                    while s < _2090:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    require 1 < _2090
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1287 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
        revert with 0, 'ne'
    mem[mem[64]] = 32
    _1285 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _1285] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1285]
    return 32, mem[mem[64] + 32 len (32 * _1285) + 32]
}



}
