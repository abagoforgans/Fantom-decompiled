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
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_c08757bc(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
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
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
    _35 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320 <= test266151307() and (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = _34 + 320
    t = ceil32(return_data.size) + 320
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
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
    require _71 + mem[_71] + 31 < _71 + return_data.size
    _73 = mem[_71 + mem[_71]]
    require mem[_71 + mem[_71]] <= test266151307()
    require _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32 <= test266151307() and (32 * mem[_71 + mem[_71]]) + 32 >= 0
    mem[64] = _71 + ceil32(return_data.size) + (32 * mem[_71 + mem[_71]]) + 32
    mem[_71 + ceil32(return_data.size)] = _73
    require _72 + (32 * _73) + 32 <= return_data.size
    idx = 0
    s = _71 + _72 + 32
    t = _71 + ceil32(return_data.size) + 32
    while idx < _73:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 < _73
    mem[mem[64]] = mem[_71 + ceil32(return_data.size) + 64] - arg3
    return mem[mem[64]], _55
}

function sub_f3cde7fe(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
            _255 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
            _256 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _255
            mem[mem[64] + 36] = 64
            _259 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            s = 0
            t = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
            u = mem[64] + 100
            while s < _259:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_251))
            staticcall address(_251).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _256 + (32 * _259) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_287]
            require mem[_287] <= test266151307()
            require _287 + mem[_287] + 31 < _287 + return_data.size
            _291 = mem[_287 + mem[_287]]
            require mem[_287 + mem[_287]] <= test266151307()
            require _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32 <= test266151307() and (32 * mem[_287 + mem[_287]]) + 32 >= 0
            mem[64] = _287 + ceil32(return_data.size) + (32 * mem[_287 + mem[_287]]) + 32
            mem[_287 + ceil32(return_data.size)] = _291
            require _289 + (32 * _291) + 32 <= return_data.size
            s = 0
            t = _287 + _289 + 32
            u = _287 + ceil32(return_data.size) + 32
            while s < _291:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
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
        _257 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 288]
        _258 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _257
        mem[mem[64] + 36] = 64
        _260 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        u = mem[64] + 100
        while s < _260:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_253))
        staticcall address(_253).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _258 + (32 * _260) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_288]
        require mem[_288] <= test266151307()
        require _288 + mem[_288] + 31 < _288 + return_data.size
        _292 = mem[_288 + mem[_288]]
        require mem[_288 + mem[_288]] <= test266151307()
        require _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32 <= test266151307() and (32 * mem[_288 + mem[_288]]) + 32 >= 0
        mem[64] = _288 + ceil32(return_data.size) + (32 * mem[_288 + mem[_288]]) + 32
        mem[_288 + ceil32(return_data.size)] = _292
        require _290 + (32 * _292) + 32 <= return_data.size
        s = 0
        t = _288 + _290 + 32
        u = _288 + ceil32(return_data.size) + 32
        while s < _292:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
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
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    if _runner[address(msg.sender)] <= 0:
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
            _1070 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1075 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1079 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            _1084 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
            _1087 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1087]
            mem[_1087 + 32] = address(_1075)
            require 1 < mem[_1087]
            mem[_1087 + 64] = address(_1079)
            mem[_1087 + 100] = this.address
            mem[_1087 + 132] = address(_1070)
            require ext_code.size(address(_1075))
            staticcall address(_1075).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1070)
            mem[_1087 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1087 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= _1084:
                mem[_1087 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1087 + ceil32(return_data.size) + 100] = _1084
                mem[_1087 + ceil32(return_data.size) + 132] = 0
                mem[_1087 + ceil32(return_data.size) + 164] = 160
                mem[_1087 + ceil32(return_data.size) + 260] = mem[_1087]
                s = 0
                t = _1087 + 32
                u = _1087 + ceil32(return_data.size) + 292
                while s < mem[_1087]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1087 + ceil32(return_data.size) + 196] = this.address
                mem[_1087 + ceil32(return_data.size) + 228] = block.timestamp + 30
                require ext_code.size(address(_1070))
                call address(_1070).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1087 + ceil32(return_data.size) + (32 * mem[_1087]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1521 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1527 = mem[_1521]
                require mem[_1521] <= test266151307()
                require _1521 + mem[_1521] + 31 < _1521 + return_data.size
                _1549 = mem[_1521 + mem[_1521]]
                require mem[_1521 + mem[_1521]] <= test266151307()
                require _1521 + ceil32(return_data.size) + (32 * mem[_1521 + mem[_1521]]) + 32 <= test266151307() and (32 * mem[_1521 + mem[_1521]]) + 32 >= 0
                mem[64] = _1521 + ceil32(return_data.size) + (32 * mem[_1521 + mem[_1521]]) + 32
                mem[_1521 + ceil32(return_data.size)] = _1549
                require _1527 + (32 * _1549) + 32 <= return_data.size
                s = 0
                t = _1521 + _1527 + 32
                u = _1521 + ceil32(return_data.size) + 32
                while s < _1549:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1549
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1521 + ceil32(return_data.size) + 64]
            else:
                mem[_1087 + ceil32(return_data.size) + 100] = this.address
                mem[_1087 + ceil32(return_data.size) + 132] = address(_1070)
                require ext_code.size(address(_1075))
                staticcall address(_1075).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1070)
                mem[_1087 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1087 + (2 * ceil32(return_data.size)) + 132] = address(_1070)
                mem[_1087 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[_1087 + (2 * ceil32(return_data.size)) + 96] = 68
                mem[_1087 + (2 * ceil32(return_data.size)) + 128] = address(_1070) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1087 + (2 * ceil32(return_data.size)) + 260
                mem[_1087 + (2 * ceil32(return_data.size)) + 196] = 32
                mem[_1087 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1075)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[_1087 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1087 + (2 * ceil32(return_data.size)) + s + 128]
                    s = s + 32
                    continue 
                mem[_1087 + (2 * ceil32(return_data.size)) + 328] = 0
                call address(_1075).mem[_1087 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[_1087 + (2 * ceil32(return_data.size)) + 264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1087 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + 264] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1087 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1087 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1087 + (2 * ceil32(return_data.size)) + 328]
                    if mem[96] <= 0:
                        mem[_1087 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + 264] = _1084
                        mem[_1087 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1087 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1087 + (2 * ceil32(return_data.size)) + 424] = mem[_1087]
                        s = 0
                        t = _1087 + 32
                        u = _1087 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1087]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1087 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1087 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1070))
                        call address(_1070).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1087 + (2 * ceil32(return_data.size)) + (32 * mem[_1087]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1849 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1865 = mem[_1849]
                        require mem[_1849] <= test266151307()
                        require _1849 + mem[_1849] + 31 < _1849 + return_data.size
                        _1881 = mem[_1849 + mem[_1849]]
                        require mem[_1849 + mem[_1849]] <= test266151307()
                        require _1849 + ceil32(return_data.size) + (32 * mem[_1849 + mem[_1849]]) + 32 <= test266151307() and (32 * mem[_1849 + mem[_1849]]) + 32 >= 0
                        mem[64] = _1849 + ceil32(return_data.size) + (32 * mem[_1849 + mem[_1849]]) + 32
                        mem[_1849 + ceil32(return_data.size)] = _1881
                        require _1865 + (32 * _1881) + 32 <= return_data.size
                        s = 0
                        t = _1849 + _1865 + 32
                        u = _1849 + ceil32(return_data.size) + 32
                        while s < _1881:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1881
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1849 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1087 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + 264] = _1084
                        mem[_1087 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1087 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1087 + (2 * ceil32(return_data.size)) + 424] = mem[_1087]
                        s = 0
                        t = _1087 + 32
                        u = _1087 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1087]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1087 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1087 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1070))
                        call address(_1070).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1087 + (2 * ceil32(return_data.size)) + (32 * mem[_1087]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1850 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1866 = mem[_1850]
                        require mem[_1850] <= test266151307()
                        require _1850 + mem[_1850] + 31 < _1850 + return_data.size
                        _1882 = mem[_1850 + mem[_1850]]
                        require mem[_1850 + mem[_1850]] <= test266151307()
                        require _1850 + ceil32(return_data.size) + (32 * mem[_1850 + mem[_1850]]) + 32 <= test266151307() and (32 * mem[_1850 + mem[_1850]]) + 32 >= 0
                        mem[64] = _1850 + ceil32(return_data.size) + (32 * mem[_1850 + mem[_1850]]) + 32
                        mem[_1850 + ceil32(return_data.size)] = _1882
                        require _1866 + (32 * _1882) + 32 <= return_data.size
                        s = 0
                        t = _1850 + _1866 + 32
                        u = _1850 + ceil32(return_data.size) + 32
                        while s < _1882:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1882
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1850 + ceil32(return_data.size) + 64]
                else:
                    mem[64] = _1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    mem[_1087 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[_1087 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1087 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                    if return_data.size <= 0:
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1084
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1087]
                        s = 0
                        t = _1087 + 32
                        u = _1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1087]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1070))
                        call address(_1070).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1087]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1851 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1867 = mem[_1851]
                        require mem[_1851] <= test266151307()
                        require _1851 + mem[_1851] + 31 < _1851 + return_data.size
                        _1883 = mem[_1851 + mem[_1851]]
                        require mem[_1851 + mem[_1851]] <= test266151307()
                        require _1851 + ceil32(return_data.size) + (32 * mem[_1851 + mem[_1851]]) + 32 <= test266151307() and (32 * mem[_1851 + mem[_1851]]) + 32 >= 0
                        mem[64] = _1851 + ceil32(return_data.size) + (32 * mem[_1851 + mem[_1851]]) + 32
                        mem[_1851 + ceil32(return_data.size)] = _1883
                        require _1867 + (32 * _1883) + 32 <= return_data.size
                        s = 0
                        t = _1851 + _1867 + 32
                        u = _1851 + ceil32(return_data.size) + 32
                        while s < _1883:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1883
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1851 + ceil32(return_data.size) + 64]
                    else:
                        require return_data.size >= 32
                        require mem[_1087 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1087 + (2 * ceil32(return_data.size)) + 292])
                        if not mem[_1087 + (2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1084
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1087]
                        s = 0
                        t = _1087 + 32
                        u = _1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1087]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1070))
                        call address(_1070).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1087 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1087]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1852 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1868 = mem[_1852]
                        require mem[_1852] <= test266151307()
                        require _1852 + mem[_1852] + 31 < _1852 + return_data.size
                        _1884 = mem[_1852 + mem[_1852]]
                        require mem[_1852 + mem[_1852]] <= test266151307()
                        require _1852 + ceil32(return_data.size) + (32 * mem[_1852 + mem[_1852]]) + 32 <= test266151307() and (32 * mem[_1852 + mem[_1852]]) + 32 >= 0
                        mem[64] = _1852 + ceil32(return_data.size) + (32 * mem[_1852 + mem[_1852]]) + 32
                        mem[_1852 + ceil32(return_data.size)] = _1884
                        require _1868 + (32 * _1884) + 32 <= return_data.size
                        s = 0
                        t = _1852 + _1868 + 32
                        u = _1852 + ceil32(return_data.size) + 32
                        while s < _1884:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1884
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1852 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1083 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _1083] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1083]
        return 32, mem[mem[64] + 32 len (32 * _1083) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _1073 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1077 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1081 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        _1086 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
        _1088 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1088]
        mem[_1088 + 32] = address(_1077)
        require 1 < mem[_1088]
        mem[_1088 + 64] = address(_1081)
        mem[_1088 + 100] = this.address
        mem[_1088 + 132] = address(_1073)
        require ext_code.size(address(_1077))
        staticcall address(_1077).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1073)
        mem[_1088 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1088 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= _1086:
            mem[_1088 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1088 + ceil32(return_data.size) + 100] = _1086
            mem[_1088 + ceil32(return_data.size) + 132] = 0
            mem[_1088 + ceil32(return_data.size) + 164] = 160
            mem[_1088 + ceil32(return_data.size) + 260] = mem[_1088]
            s = 0
            t = _1088 + 32
            u = _1088 + ceil32(return_data.size) + 292
            while s < mem[_1088]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1088 + ceil32(return_data.size) + 196] = this.address
            mem[_1088 + ceil32(return_data.size) + 228] = block.timestamp + 30
            require ext_code.size(address(_1073))
            call address(_1073).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _1086, 0, 160, address(this.address), block.timestamp + 30, mem[_1088 + ceil32(return_data.size) + 260 len (32 * mem[_1088]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1088 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1088 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1532 = mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32
            require mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 <= test266151307()
            require _1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 127 < _1088 + ceil32(return_data.size) + return_data.size + 96
            _1552 = mem[_1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 96]
            require mem[_1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 96] <= test266151307()
            require _1088 + (2 * ceil32(return_data.size)) + (32 * mem[_1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 96]) + 32 >= 0
            mem[64] = _1088 + (2 * ceil32(return_data.size)) + (32 * mem[_1088 + ceil32(return_data.size) + mem[_1088 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1086) >> 32 + 96]) + 128
            mem[_1088 + (2 * ceil32(return_data.size)) + 96] = _1552
            require _1532 + (32 * _1552) + 32 <= return_data.size
            s = 0
            t = _1088 + ceil32(return_data.size) + _1532 + 128
            u = _1088 + (2 * ceil32(return_data.size)) + 128
            while s < _1552:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1552
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1088 + (2 * ceil32(return_data.size)) + 160]
        else:
            mem[_1088 + ceil32(return_data.size) + 100] = this.address
            mem[_1088 + ceil32(return_data.size) + 132] = address(_1073)
            require ext_code.size(address(_1077))
            staticcall address(_1077).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1073)
            mem[_1088 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1088 + (2 * ceil32(return_data.size)) + 132] = address(_1073)
            mem[_1088 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[_1088 + (2 * ceil32(return_data.size)) + 96] = 68
            mem[_1088 + (2 * ceil32(return_data.size)) + 128] = address(_1073) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1088 + (2 * ceil32(return_data.size)) + 260
            mem[_1088 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_1088 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1077)) <= 0:
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[_1088 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1088 + (2 * ceil32(return_data.size)) + s + 128]
                s = s + 32
                continue 
            mem[_1088 + (2 * ceil32(return_data.size)) + 328] = 0
            call address(_1077).mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[_1088 + (2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1088 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1088 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1088 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1088 + (2 * ceil32(return_data.size)) + 328]
                if mem[96] <= 0:
                    mem[_1088 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + 264] = _1086
                    mem[_1088 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1088 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1088 + (2 * ceil32(return_data.size)) + 424] = mem[_1088]
                    s = 0
                    t = _1088 + 32
                    u = _1088 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1088]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1088 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1088 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1073))
                    call address(_1073).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1086, 0, 160, address(this.address), block.timestamp + 30, mem[_1088 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1088]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1088 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1873 = mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32
                    require mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 <= test266151307()
                    require _1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 291 < _1088 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1889 = mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]
                    require mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260] <= test266151307()
                    require _1088 + (4 * ceil32(return_data.size)) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 292
                    mem[_1088 + (4 * ceil32(return_data.size)) + 260] = _1889
                    require _1873 + (32 * _1889) + 32 <= return_data.size
                    s = 0
                    t = _1088 + (2 * ceil32(return_data.size)) + _1873 + 292
                    u = _1088 + (4 * ceil32(return_data.size)) + 292
                    while s < _1889:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1889
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1088 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + 264] = _1086
                    mem[_1088 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1088 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1088 + (2 * ceil32(return_data.size)) + 424] = mem[_1088]
                    s = 0
                    t = _1088 + 32
                    u = _1088 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1088]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1088 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1088 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1073))
                    call address(_1073).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1086, 0, 160, address(this.address), block.timestamp + 30, mem[_1088 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1088]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1088 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1874 = mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32
                    require mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 <= test266151307()
                    require _1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 291 < _1088 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1890 = mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]
                    require mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260] <= test266151307()
                    require _1088 + (4 * ceil32(return_data.size)) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + mem[_1088 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1086) >> 32 + 260]) + 292
                    mem[_1088 + (4 * ceil32(return_data.size)) + 260] = _1890
                    require _1874 + (32 * _1890) + 32 <= return_data.size
                    s = 0
                    t = _1088 + (2 * ceil32(return_data.size)) + _1874 + 292
                    u = _1088 + (4 * ceil32(return_data.size)) + 292
                    while s < _1890:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1890
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1088 + (4 * ceil32(return_data.size)) + 324]
            else:
                mem[64] = _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                mem[_1088 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[_1088 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1088 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                if return_data.size <= 0:
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1086
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1088]
                    s = 0
                    t = _1088 + 32
                    u = _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1088]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1073))
                    call address(_1073).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1086, 0, 160, address(this.address), block.timestamp + 30, mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1088]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1875 = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32
                    require mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 <= test266151307()
                    require _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 292 < _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1891 = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]
                    require mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261] <= test266151307()
                    require _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 293
                    mem[_1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]
                    require _1875 + (32 * _1891) + 32 <= return_data.size
                    s = 0
                    t = _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1875 + 293
                    u = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1891:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1891
                else:
                    require return_data.size >= 32
                    require mem[_1088 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1088 + (2 * ceil32(return_data.size)) + 292])
                    if not mem[_1088 + (2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1086
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1088]
                    s = 0
                    t = _1088 + 32
                    u = _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1088]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1073))
                    call address(_1073).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1086, 0, 160, address(this.address), block.timestamp + 30, mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1088]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1876 = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32
                    require mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 <= test266151307()
                    require _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 292 < _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1892 = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]
                    require mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261] <= test266151307()
                    require _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]) + 293
                    mem[_1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1086) >> 32 + 261]
                    require _1876 + (32 * _1892) + 32 <= return_data.size
                    s = 0
                    t = _1088 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1876 + 293
                    u = _1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1892:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1892
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1088 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1085 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _1085] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1085]
    return 32, mem[mem[64] + 32 len (32 * _1085) + 32]
}

function sub_964a9bc5(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    if _runner[address(msg.sender)] <= 0:
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
            _1116 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1124 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1130 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            _1136 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
            _1139 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1139]
            mem[_1139 + 32] = address(_1124)
            require 1 < mem[_1139]
            mem[_1139 + 64] = address(_1130)
            mem[_1139 + 100] = this.address
            mem[_1139 + 132] = address(_1116)
            require ext_code.size(address(_1124))
            staticcall address(_1124).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1116)
            mem[_1139 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1139 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= _1136:
                mem[_1139 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1139 + ceil32(return_data.size) + 100] = _1136
                mem[_1139 + ceil32(return_data.size) + 132] = 0
                mem[_1139 + ceil32(return_data.size) + 164] = 160
                mem[_1139 + ceil32(return_data.size) + 260] = mem[_1139]
                s = 0
                t = _1139 + 32
                u = _1139 + ceil32(return_data.size) + 292
                while s < mem[_1139]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1139 + ceil32(return_data.size) + 196] = this.address
                mem[_1139 + ceil32(return_data.size) + 228] = block.timestamp + 30
                require ext_code.size(address(_1116))
                call address(_1116).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1139 + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1577 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1583 = mem[_1577]
                require mem[_1577] <= test266151307()
                require _1577 + mem[_1577] + 31 < _1577 + return_data.size
                _1605 = mem[_1577 + mem[_1577]]
                require mem[_1577 + mem[_1577]] <= test266151307()
                require _1577 + ceil32(return_data.size) + (32 * mem[_1577 + mem[_1577]]) + 32 <= test266151307() and (32 * mem[_1577 + mem[_1577]]) + 32 >= 0
                mem[64] = _1577 + ceil32(return_data.size) + (32 * mem[_1577 + mem[_1577]]) + 32
                mem[_1577 + ceil32(return_data.size)] = _1605
                require _1583 + (32 * _1605) + 32 <= return_data.size
                s = 0
                t = _1577 + _1583 + 32
                u = _1577 + ceil32(return_data.size) + 32
                while s < _1605:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1605
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1577 + ceil32(return_data.size) + 64]
            else:
                mem[_1139 + ceil32(return_data.size) + 100] = this.address
                mem[_1139 + ceil32(return_data.size) + 132] = address(_1116)
                require ext_code.size(address(_1124))
                staticcall address(_1124).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1116)
                mem[_1139 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1139 + (2 * ceil32(return_data.size)) + 132] = address(_1116)
                mem[_1139 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[_1139 + (2 * ceil32(return_data.size)) + 96] = 68
                mem[_1139 + (2 * ceil32(return_data.size)) + 128] = address(_1116) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1139 + (2 * ceil32(return_data.size)) + 260
                mem[_1139 + (2 * ceil32(return_data.size)) + 196] = 32
                mem[_1139 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1124)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[_1139 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1139 + (2 * ceil32(return_data.size)) + s + 128]
                    s = s + 32
                    continue 
                mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 0
                call address(_1124).mem[_1139 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[_1139 + (2 * ceil32(return_data.size)) + 264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1139 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1139 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1139 + (2 * ceil32(return_data.size)) + 328]
                    if mem[96] <= 0:
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + 424] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + (32 * mem[_1139]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1905 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1921 = mem[_1905]
                        require mem[_1905] <= test266151307()
                        require _1905 + mem[_1905] + 31 < _1905 + return_data.size
                        _1937 = mem[_1905 + mem[_1905]]
                        require mem[_1905 + mem[_1905]] <= test266151307()
                        require _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32 <= test266151307() and (32 * mem[_1905 + mem[_1905]]) + 32 >= 0
                        mem[64] = _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32
                        mem[_1905 + ceil32(return_data.size)] = _1937
                        require _1921 + (32 * _1937) + 32 <= return_data.size
                        s = 0
                        t = _1905 + _1921 + 32
                        u = _1905 + ceil32(return_data.size) + 32
                        while s < _1937:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1937
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1905 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + 424] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + (32 * mem[_1139]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1906 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1922 = mem[_1906]
                        require mem[_1906] <= test266151307()
                        require _1906 + mem[_1906] + 31 < _1906 + return_data.size
                        _1938 = mem[_1906 + mem[_1906]]
                        require mem[_1906 + mem[_1906]] <= test266151307()
                        require _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32 <= test266151307() and (32 * mem[_1906 + mem[_1906]]) + 32 >= 0
                        mem[64] = _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32
                        mem[_1906 + ceil32(return_data.size)] = _1938
                        require _1922 + (32 * _1938) + 32 <= return_data.size
                        s = 0
                        t = _1906 + _1922 + 32
                        u = _1906 + ceil32(return_data.size) + 32
                        while s < _1938:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1938
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1906 + ceil32(return_data.size) + 64]
                else:
                    mem[64] = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    mem[_1139 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[_1139 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1139 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                    if return_data.size <= 0:
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1923 = mem[_1907]
                        require mem[_1907] <= test266151307()
                        require _1907 + mem[_1907] + 31 < _1907 + return_data.size
                        _1939 = mem[_1907 + mem[_1907]]
                        require mem[_1907 + mem[_1907]] <= test266151307()
                        require _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32 <= test266151307() and (32 * mem[_1907 + mem[_1907]]) + 32 >= 0
                        mem[64] = _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32
                        mem[_1907 + ceil32(return_data.size)] = _1939
                        require _1923 + (32 * _1939) + 32 <= return_data.size
                        s = 0
                        t = _1907 + _1923 + 32
                        u = _1907 + ceil32(return_data.size) + 32
                        while s < _1939:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1939
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1907 + ceil32(return_data.size) + 64]
                    else:
                        require return_data.size >= 32
                        require mem[_1139 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1139 + (2 * ceil32(return_data.size)) + 292])
                        if not mem[_1139 + (2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1908 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1924 = mem[_1908]
                        require mem[_1908] <= test266151307()
                        require _1908 + mem[_1908] + 31 < _1908 + return_data.size
                        _1940 = mem[_1908 + mem[_1908]]
                        require mem[_1908 + mem[_1908]] <= test266151307()
                        require _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32 <= test266151307() and (32 * mem[_1908 + mem[_1908]]) + 32 >= 0
                        mem[64] = _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32
                        mem[_1908 + ceil32(return_data.size)] = _1940
                        require _1924 + (32 * _1940) + 32 <= return_data.size
                        s = 0
                        t = _1908 + _1924 + 32
                        u = _1908 + ceil32(return_data.size) + 32
                        while s < _1940:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1940
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1908 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
            revert with 0, 'ne'
        mem[mem[64]] = 32
        _1141 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _1141] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1141]
        return 32, mem[mem[64] + 32 len (32 * _1141) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _1121 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1127 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1133 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        _1138 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
        _1140 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1140]
        mem[_1140 + 32] = address(_1127)
        require 1 < mem[_1140]
        mem[_1140 + 64] = address(_1133)
        mem[_1140 + 100] = this.address
        mem[_1140 + 132] = address(_1121)
        require ext_code.size(address(_1127))
        staticcall address(_1127).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1121)
        mem[_1140 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1140 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= _1138:
            mem[_1140 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1140 + ceil32(return_data.size) + 100] = _1138
            mem[_1140 + ceil32(return_data.size) + 132] = 0
            mem[_1140 + ceil32(return_data.size) + 164] = 160
            mem[_1140 + ceil32(return_data.size) + 260] = mem[_1140]
            s = 0
            t = _1140 + 32
            u = _1140 + ceil32(return_data.size) + 292
            while s < mem[_1140]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1140 + ceil32(return_data.size) + 196] = this.address
            mem[_1140 + ceil32(return_data.size) + 228] = block.timestamp + 30
            require ext_code.size(address(_1121))
            call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + ceil32(return_data.size) + 260 len (32 * mem[_1140]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1140 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1588 = mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32
            require mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
            require _1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 127 < _1140 + ceil32(return_data.size) + return_data.size + 96
            _1608 = mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]
            require mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96] <= test266151307()
            require _1140 + (2 * ceil32(return_data.size)) + (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 32 >= 0
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 128
            mem[_1140 + (2 * ceil32(return_data.size)) + 96] = _1608
            require _1588 + (32 * _1608) + 32 <= return_data.size
            s = 0
            t = _1140 + ceil32(return_data.size) + _1588 + 128
            u = _1140 + (2 * ceil32(return_data.size)) + 128
            while s < _1608:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1608
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (2 * ceil32(return_data.size)) + 160]
        else:
            mem[_1140 + ceil32(return_data.size) + 100] = this.address
            mem[_1140 + ceil32(return_data.size) + 132] = address(_1121)
            require ext_code.size(address(_1127))
            staticcall address(_1127).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1121)
            mem[_1140 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1140 + (2 * ceil32(return_data.size)) + 132] = address(_1121)
            mem[_1140 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[_1140 + (2 * ceil32(return_data.size)) + 96] = 68
            mem[_1140 + (2 * ceil32(return_data.size)) + 128] = address(_1121) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + 260
            mem[_1140 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_1140 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1127)) <= 0:
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[_1140 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1140 + (2 * ceil32(return_data.size)) + s + 128]
                s = s + 32
                continue 
            mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 0
            call address(_1127).mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[_1140 + (2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1140 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1140 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1140 + (2 * ceil32(return_data.size)) + 328]
                if mem[96] <= 0:
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + 424] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1929 = mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 291 < _1140 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1945 = mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292
                    mem[_1140 + (4 * ceil32(return_data.size)) + 260] = _1945
                    require _1929 + (32 * _1945) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + _1929 + 292
                    u = _1140 + (4 * ceil32(return_data.size)) + 292
                    while s < _1945:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1945
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + 424] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1930 = mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 291 < _1140 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1946 = mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292
                    mem[_1140 + (4 * ceil32(return_data.size)) + 260] = _1946
                    require _1930 + (32 * _1946) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + _1930 + 292
                    u = _1140 + (4 * ceil32(return_data.size)) + 292
                    while s < _1946:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1946
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (4 * ceil32(return_data.size)) + 324]
            else:
                mem[64] = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                mem[_1140 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[_1140 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1140 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                if return_data.size <= 0:
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1931 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 292 < _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1947 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293
                    mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _1947
                    require _1931 + (32 * _1947) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1931 + 293
                    u = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1947:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1947
                else:
                    require return_data.size >= 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1140 + (2 * ceil32(return_data.size)) + 292])
                    if not mem[_1140 + (2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1932 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 292 < _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1948 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293
                    mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _1948
                    require _1932 + (32 * _1948) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1932 + 293
                    u = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1948:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1948
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
        revert with 0, 'ne'
    mem[mem[64]] = 32
    _1142 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _1142] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1142]
    return 32, mem[mem[64] + 32 len (32 * _1142) + 32]
}

function sub_b935570f(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    if _runner[address(msg.sender)] <= 0:
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
            _1116 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1124 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1130 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            _1136 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
            _1139 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1139]
            mem[_1139 + 32] = address(_1124)
            require 1 < mem[_1139]
            mem[_1139 + 64] = address(_1130)
            mem[_1139 + 100] = this.address
            mem[_1139 + 132] = address(_1116)
            require ext_code.size(address(_1124))
            staticcall address(_1124).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1116)
            mem[_1139 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1139 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= _1136:
                mem[_1139 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1139 + ceil32(return_data.size) + 100] = _1136
                mem[_1139 + ceil32(return_data.size) + 132] = 0
                mem[_1139 + ceil32(return_data.size) + 164] = 160
                mem[_1139 + ceil32(return_data.size) + 260] = mem[_1139]
                s = 0
                t = _1139 + 32
                u = _1139 + ceil32(return_data.size) + 292
                while s < mem[_1139]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1139 + ceil32(return_data.size) + 196] = this.address
                mem[_1139 + ceil32(return_data.size) + 228] = block.timestamp + 30
                require ext_code.size(address(_1116))
                call address(_1116).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1139 + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1577 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1583 = mem[_1577]
                require mem[_1577] <= test266151307()
                require _1577 + mem[_1577] + 31 < _1577 + return_data.size
                _1605 = mem[_1577 + mem[_1577]]
                require mem[_1577 + mem[_1577]] <= test266151307()
                require _1577 + ceil32(return_data.size) + (32 * mem[_1577 + mem[_1577]]) + 32 <= test266151307() and (32 * mem[_1577 + mem[_1577]]) + 32 >= 0
                mem[64] = _1577 + ceil32(return_data.size) + (32 * mem[_1577 + mem[_1577]]) + 32
                mem[_1577 + ceil32(return_data.size)] = _1605
                require _1583 + (32 * _1605) + 32 <= return_data.size
                s = 0
                t = _1577 + _1583 + 32
                u = _1577 + ceil32(return_data.size) + 32
                while s < _1605:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1605
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1577 + ceil32(return_data.size) + 64]
            else:
                mem[_1139 + ceil32(return_data.size) + 100] = this.address
                mem[_1139 + ceil32(return_data.size) + 132] = address(_1116)
                require ext_code.size(address(_1124))
                staticcall address(_1124).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1116)
                mem[_1139 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1139 + (2 * ceil32(return_data.size)) + 132] = address(_1116)
                mem[_1139 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[_1139 + (2 * ceil32(return_data.size)) + 96] = 68
                mem[_1139 + (2 * ceil32(return_data.size)) + 128] = address(_1116) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1139 + (2 * ceil32(return_data.size)) + 260
                mem[_1139 + (2 * ceil32(return_data.size)) + 196] = 32
                mem[_1139 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1124)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[_1139 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1139 + (2 * ceil32(return_data.size)) + s + 128]
                    s = s + 32
                    continue 
                mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 0
                call address(_1124).mem[_1139 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                     gas gas_remaining wei
                    args mem[_1139 + (2 * ceil32(return_data.size)) + 264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1139 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1139 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1139 + (2 * ceil32(return_data.size)) + 328]
                    if mem[96] <= 0:
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + 424] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + (32 * mem[_1139]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1905 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1921 = mem[_1905]
                        require mem[_1905] <= test266151307()
                        require _1905 + mem[_1905] + 31 < _1905 + return_data.size
                        _1937 = mem[_1905 + mem[_1905]]
                        require mem[_1905 + mem[_1905]] <= test266151307()
                        require _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32 <= test266151307() and (32 * mem[_1905 + mem[_1905]]) + 32 >= 0
                        mem[64] = _1905 + ceil32(return_data.size) + (32 * mem[_1905 + mem[_1905]]) + 32
                        mem[_1905 + ceil32(return_data.size)] = _1937
                        require _1921 + (32 * _1937) + 32 <= return_data.size
                        s = 0
                        t = _1905 + _1921 + 32
                        u = _1905 + ceil32(return_data.size) + 32
                        while s < _1937:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1937
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1905 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1139 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + 264] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + 296] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + 328] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + 424] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + 456
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + 360] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + (32 * mem[_1139]) + -mem[64] + 452]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1906 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1922 = mem[_1906]
                        require mem[_1906] <= test266151307()
                        require _1906 + mem[_1906] + 31 < _1906 + return_data.size
                        _1938 = mem[_1906 + mem[_1906]]
                        require mem[_1906 + mem[_1906]] <= test266151307()
                        require _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32 <= test266151307() and (32 * mem[_1906 + mem[_1906]]) + 32 >= 0
                        mem[64] = _1906 + ceil32(return_data.size) + (32 * mem[_1906 + mem[_1906]]) + 32
                        mem[_1906 + ceil32(return_data.size)] = _1938
                        require _1922 + (32 * _1938) + 32 <= return_data.size
                        s = 0
                        t = _1906 + _1922 + 32
                        u = _1906 + ceil32(return_data.size) + 32
                        while s < _1938:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1938
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1906 + ceil32(return_data.size) + 64]
                else:
                    mem[64] = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    mem[_1139 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[_1139 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1139 + (2 * ceil32(return_data.size)) + idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                    if return_data.size <= 0:
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1907 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1923 = mem[_1907]
                        require mem[_1907] <= test266151307()
                        require _1907 + mem[_1907] + 31 < _1907 + return_data.size
                        _1939 = mem[_1907 + mem[_1907]]
                        require mem[_1907 + mem[_1907]] <= test266151307()
                        require _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32 <= test266151307() and (32 * mem[_1907 + mem[_1907]]) + 32 >= 0
                        mem[64] = _1907 + ceil32(return_data.size) + (32 * mem[_1907 + mem[_1907]]) + 32
                        mem[_1907 + ceil32(return_data.size)] = _1939
                        require _1923 + (32 * _1939) + 32 <= return_data.size
                        s = 0
                        t = _1907 + _1923 + 32
                        u = _1907 + ceil32(return_data.size) + 32
                        while s < _1939:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1939
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1907 + ceil32(return_data.size) + 64]
                    else:
                        require return_data.size >= 32
                        require mem[_1139 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1139 + (2 * ceil32(return_data.size)) + 292])
                        if not mem[_1139 + (2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1136
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1139]
                        s = 0
                        t = _1139 + 32
                        u = _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                        while s < mem[_1139]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                        mem[_1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                        require ext_code.size(address(_1116))
                        call address(_1116).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1139 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1139]) + -mem[64] + 453]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1908 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1924 = mem[_1908]
                        require mem[_1908] <= test266151307()
                        require _1908 + mem[_1908] + 31 < _1908 + return_data.size
                        _1940 = mem[_1908 + mem[_1908]]
                        require mem[_1908 + mem[_1908]] <= test266151307()
                        require _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32 <= test266151307() and (32 * mem[_1908 + mem[_1908]]) + 32 >= 0
                        mem[64] = _1908 + ceil32(return_data.size) + (32 * mem[_1908 + mem[_1908]]) + 32
                        mem[_1908 + ceil32(return_data.size)] = _1940
                        require _1924 + (32 * _1940) + 32 <= return_data.size
                        s = 0
                        t = _1908 + _1924 + 32
                        u = _1908 + ceil32(return_data.size) + 32
                        while s < _1940:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _1940
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1908 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
            revert with 0, 'ne'
        mem[mem[64]] = 32
        _1141 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _1141] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1141]
        return 32, mem[mem[64] + 32 len (32 * _1141) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    require 0 < ('cd', 68).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = cd[36]
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _1121 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1127 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1133 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        _1138 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]
        _1140 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1140]
        mem[_1140 + 32] = address(_1127)
        require 1 < mem[_1140]
        mem[_1140 + 64] = address(_1133)
        mem[_1140 + 100] = this.address
        mem[_1140 + 132] = address(_1121)
        require ext_code.size(address(_1127))
        staticcall address(_1127).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1121)
        mem[_1140 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1140 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= _1138:
            mem[_1140 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1140 + ceil32(return_data.size) + 100] = _1138
            mem[_1140 + ceil32(return_data.size) + 132] = 0
            mem[_1140 + ceil32(return_data.size) + 164] = 160
            mem[_1140 + ceil32(return_data.size) + 260] = mem[_1140]
            s = 0
            t = _1140 + 32
            u = _1140 + ceil32(return_data.size) + 292
            while s < mem[_1140]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1140 + ceil32(return_data.size) + 196] = this.address
            mem[_1140 + ceil32(return_data.size) + 228] = block.timestamp + 30
            require ext_code.size(address(_1121))
            call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + ceil32(return_data.size) + 260 len (32 * mem[_1140]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1140 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1588 = mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32
            require mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
            require _1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 127 < _1140 + ceil32(return_data.size) + return_data.size + 96
            _1608 = mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]
            require mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96] <= test266151307()
            require _1140 + (2 * ceil32(return_data.size)) + (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 32 >= 0
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + (32 * mem[_1140 + ceil32(return_data.size) + mem[_1140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _1138) >> 32 + 96]) + 128
            mem[_1140 + (2 * ceil32(return_data.size)) + 96] = _1608
            require _1588 + (32 * _1608) + 32 <= return_data.size
            s = 0
            t = _1140 + ceil32(return_data.size) + _1588 + 128
            u = _1140 + (2 * ceil32(return_data.size)) + 128
            while s < _1608:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1608
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (2 * ceil32(return_data.size)) + 160]
        else:
            mem[_1140 + ceil32(return_data.size) + 100] = this.address
            mem[_1140 + ceil32(return_data.size) + 132] = address(_1121)
            require ext_code.size(address(_1127))
            staticcall address(_1127).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1121)
            mem[_1140 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1140 + (2 * ceil32(return_data.size)) + 132] = address(_1121)
            mem[_1140 + (2 * ceil32(return_data.size)) + 164] = 0x8000000000000000000000000000000000000000000000000000000000000000
            mem[_1140 + (2 * ceil32(return_data.size)) + 96] = 68
            mem[_1140 + (2 * ceil32(return_data.size)) + 128] = address(_1121) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1140 + (2 * ceil32(return_data.size)) + 260
            mem[_1140 + (2 * ceil32(return_data.size)) + 196] = 32
            mem[_1140 + (2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1127)) <= 0:
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[_1140 + (2 * ceil32(return_data.size)) + s + 260] = mem[_1140 + (2 * ceil32(return_data.size)) + s + 128]
                s = s + 32
                continue 
            mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 0
            call address(_1127).mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[_1140 + (2 * ceil32(return_data.size)) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1140 + (2 * ceil32(return_data.size)) + idx + 328] = mem[_1140 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1140 + (2 * ceil32(return_data.size)) + 328]
                if mem[96] <= 0:
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + 424] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1929 = mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 291 < _1140 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1945 = mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292
                    mem[_1140 + (4 * ceil32(return_data.size)) + 260] = _1945
                    require _1929 + (32 * _1945) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + _1929 + 292
                    u = _1140 + (4 * ceil32(return_data.size)) + 292
                    while s < _1945:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1945
                else:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + 264] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + 296] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + 328] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + 424] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + 456
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + 360] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + 392] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + 424 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + 260
                    require return_data.size >= 32
                    _1930 = mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 291 < _1140 + (2 * ceil32(return_data.size)) + return_data.size + 260
                    _1946 = mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + mem[_1140 + (2 * ceil32(return_data.size)) + 260 len 4], Mask(224, 32, _1138) >> 32 + 260]) + 292
                    mem[_1140 + (4 * ceil32(return_data.size)) + 260] = _1946
                    require _1930 + (32 * _1946) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + _1930 + 292
                    u = _1140 + (4 * ceil32(return_data.size)) + 292
                    while s < _1946:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1946
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (4 * ceil32(return_data.size)) + 324]
            else:
                mem[64] = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                mem[_1140 + (2 * ceil32(return_data.size)) + 260] = return_data.size
                mem[_1140 + (2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    idx = 0
                    while idx < 32:
                        mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 329] = mem[_1140 + (2 * ceil32(return_data.size)) + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329]
                if return_data.size <= 0:
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1931 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 292 < _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1947 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293
                    mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _1947
                    require _1931 + (32 * _1947) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1931 + 293
                    u = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1947:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1947
                else:
                    require return_data.size >= 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + 292] == bool(mem[_1140 + (2 * ceil32(return_data.size)) + 292])
                    if not mem[_1140 + (2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = _1138
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 0
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 160
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[_1140]
                    s = 0
                    t = _1140 + 32
                    u = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457
                    while s < mem[_1140]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = block.timestamp + 30
                    require ext_code.size(address(_1121))
                    call address(_1121).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _1138, 0, 160, address(this.address), block.timestamp + 30, mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len (32 * mem[_1140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                    require return_data.size >= 32
                    _1932 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 <= test266151307()
                    require _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 292 < _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 261
                    _1948 = mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]
                    require mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261] <= test266151307()
                    require _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 32 >= 0
                    mem[64] = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1138) >> 32 + 261]) + 293
                    mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = _1948
                    require _1932 + (32 * _1948) + 32 <= return_data.size
                    s = 0
                    t = _1140 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1932 + 293
                    u = _1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                    while s < _1948:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require 1 < _1948
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = mem[_1140 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192]:
        revert with 0, 'ne'
    mem[mem[64]] = 32
    _1142 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _1142] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192 len 32 * _1142]
    return 32, mem[mem[64] + 32 len (32 * _1142) + 32]
}



}
