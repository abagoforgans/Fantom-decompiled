contract main {




// =====================  Runtime code  =====================


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

function sub_ba9c47a8(?) {
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[68] > 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 64] = call.data[calldata.size len 64]
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 288
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
            require idx < mem[96]
            _201 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            _205 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
            _206 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _205
            mem[mem[64] + 36] = 64
            _212 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            s = 0
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            u = mem[64] + 100
            while s < _212:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_201))
            staticcall address(_201).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _206 + (32 * _212) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_243]
            require mem[_243] <= test266151307()
            require _243 + mem[_243] + 31 < _243 + return_data.size
            _247 = mem[_243 + mem[_243]]
            require mem[_243 + mem[_243]] <= test266151307()
            require _243 + ceil32(return_data.size) + (32 * mem[_243 + mem[_243]]) + 32 <= test266151307() and (32 * mem[_243 + mem[_243]]) + 32 >= 0
            mem[64] = _243 + ceil32(return_data.size) + (32 * mem[_243 + mem[_243]]) + 32
            mem[_243 + ceil32(return_data.size)] = _247
            require _245 + (32 * _247) + 32 <= return_data.size
            s = 0
            t = _243 + _245 + 32
            u = _243 + ceil32(return_data.size) + 32
            while s < _247:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _247
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_243 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _197 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[mem[64] + 64 len 32 * _197] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * _197]
        return 32, mem[mem[64] + 32 len (32 * _197) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
        require idx < mem[96]
        _203 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        _207 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
        _208 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _207
        mem[mem[64] + 36] = 64
        _214 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
        u = mem[64] + 100
        while s < _214:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_203))
        staticcall address(_203).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _208 + (32 * _214) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _246 = mem[_244]
        require mem[_244] <= test266151307()
        require _244 + mem[_244] + 31 < _244 + return_data.size
        _248 = mem[_244 + mem[_244]]
        require mem[_244 + mem[_244]] <= test266151307()
        require _244 + ceil32(return_data.size) + (32 * mem[_244 + mem[_244]]) + 32 <= test266151307() and (32 * mem[_244 + mem[_244]]) + 32 >= 0
        mem[64] = _244 + ceil32(return_data.size) + (32 * mem[_244 + mem[_244]]) + 32
        mem[_244 + ceil32(return_data.size)] = _248
        require _246 + (32 * _248) + 32 <= return_data.size
        s = 0
        t = _244 + _246 + 32
        u = _244 + ceil32(return_data.size) + 32
        while s < _248:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require 1 < _248
        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_244 + ceil32(return_data.size) + 64]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _199 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    mem[mem[64] + 64 len 32 * _199] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * _199]
    return 32, mem[mem[64] + 32 len (32 * _199) + 32]
}

function sub_3b67612f(?) {
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[68] > 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 64] = call.data[calldata.size len 64]
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 288
    if not ('cd', 36).length:
        require ('cd', 36).length - 1 < ('cd', 36).length
        mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
        idx = mem[(32 * ('cd', 4).length) + 128] - 1
        while idx > 0:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require idx - 1 < mem[(32 * ('cd', 4).length) + 128]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
            require idx < mem[96]
            _205 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            _209 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
            _210 = mem[64]
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _209
            mem[mem[64] + 36] = 64
            _216 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            s = 0
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            u = mem[64] + 100
            while s < _216:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_205))
            staticcall address(_205).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _210 + (32 * _216) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _249 = mem[_247]
            require mem[_247] <= test266151307()
            require _247 + mem[_247] + 31 < _247 + return_data.size
            _251 = mem[_247 + mem[_247]]
            require mem[_247 + mem[_247]] <= test266151307()
            require _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32 <= test266151307() and (32 * mem[_247 + mem[_247]]) + 32 >= 0
            mem[64] = _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32
            mem[_247 + ceil32(return_data.size)] = _251
            require _249 + (32 * _251) + 32 <= return_data.size
            s = 0
            t = _247 + _249 + 32
            u = _247 + ceil32(return_data.size) + 32
            while s < _251:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _251
            require idx - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            mem[(32 * idx - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_247 + ceil32(return_data.size) + 64]
            idx = idx - 1
            continue 
        mem[mem[64]] = 32
        _201 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[mem[64] + 64 len 32 * _201] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * _201]
        return 32, mem[mem[64] + 32 len (32 * _201) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require ('cd', 36).length - 1 < ('cd', 36).length
    mem[(32 * ('cd', 36).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
    idx = mem[(32 * ('cd', 4).length) + 128] - 1
    while idx > 0:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require idx - 1 < mem[(32 * ('cd', 4).length) + 128]
        require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx - 1) + (32 * ('cd', 4).length) + 172 len 20]
        require idx < mem[96]
        _207 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        _211 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
        _212 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _211
        mem[mem[64] + 36] = 64
        _218 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
        u = mem[64] + 100
        while s < _218:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_207))
        staticcall address(_207).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _212 + (32 * _218) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _248 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _250 = mem[_248]
        require mem[_248] <= test266151307()
        require _248 + mem[_248] + 31 < _248 + return_data.size
        _252 = mem[_248 + mem[_248]]
        require mem[_248 + mem[_248]] <= test266151307()
        require _248 + ceil32(return_data.size) + (32 * mem[_248 + mem[_248]]) + 32 <= test266151307() and (32 * mem[_248 + mem[_248]]) + 32 >= 0
        mem[64] = _248 + ceil32(return_data.size) + (32 * mem[_248 + mem[_248]]) + 32
        mem[_248 + ceil32(return_data.size)] = _252
        require _250 + (32 * _252) + 32 <= return_data.size
        s = 0
        t = _248 + _250 + 32
        u = _248 + ceil32(return_data.size) + 32
        while s < _252:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require 1 < _252
        require idx - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[(32 * idx - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_248 + ceil32(return_data.size) + 64]
        idx = idx - 1
        continue 
    mem[mem[64]] = 32
    _203 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    mem[mem[64] + 64 len 32 * _203] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * _203]
    return 32, mem[mem[64] + 32 len (32 * _203) + 32]
}

function sub_008bf8b3(?) {
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[68] > 0
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 64] = call.data[calldata.size len 64]
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 288
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
            require idx < mem[96]
            _251 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            _255 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
            _256 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _255
            mem[mem[64] + 36] = 64
            _259 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            s = 0
            t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
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
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_287 + ceil32(return_data.size) + 64]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        _241 = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
        mem[mem[64]] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] - mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
        return mem[mem[64]], _241
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = cd[68]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        require 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 172 len 20]
        require idx < mem[96]
        _253 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        _257 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
        _258 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _257
        mem[mem[64] + 36] = 64
        _260 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 68] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
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
        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] = mem[_288 + ceil32(return_data.size) + 64]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256]
    _244 = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
    mem[mem[64]] = mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288] - mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 288]
    return mem[mem[64]], _244
}

function sub_765a7615(?) {
    require calldata.size - 4 >= 128
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    mem[0] = msg.sender
    mem[32] = 1
    if _runner[address(msg.sender)] <= 0:
        revert with 0, 'not allow'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 192
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[96]
            _1164 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1169 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1173 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _1178 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1164)
            require ext_code.size(address(_1169))
            staticcall address(_1169).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1164)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1189] == mem[_1189]
            if mem[_1189] >= _1178:
                _1193 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1193]
                mem[_1193 + 32] = address(_1169)
                require 1 < mem[_1193]
                mem[_1193 + 64] = address(_1173)
                mem[_1193 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1193 + 100] = _1178
                mem[_1193 + 132] = 0
                mem[_1193 + 164] = 160
                mem[_1193 + 260] = mem[_1193]
                s = 0
                t = _1193 + 32
                u = _1193 + 292
                while s < mem[_1193]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1193 + 196] = this.address
                mem[_1193 + 228] = block.timestamp + cd[100]
                require ext_code.size(address(_1164))
                call address(_1164).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1193 + (32 * mem[_1193]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1663 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1669 = mem[_1663]
                require mem[_1663] <= test266151307()
                require _1663 + mem[_1663] + 31 < _1663 + return_data.size
                _1691 = mem[_1663 + mem[_1663]]
                require mem[_1663 + mem[_1663]] <= test266151307()
                require _1663 + ceil32(return_data.size) + (32 * mem[_1663 + mem[_1663]]) + 32 <= test266151307() and (32 * mem[_1663 + mem[_1663]]) + 32 >= 0
                mem[64] = _1663 + ceil32(return_data.size) + (32 * mem[_1663 + mem[_1663]]) + 32
                mem[_1663 + ceil32(return_data.size)] = _1691
                require _1669 + (32 * _1691) + 32 <= return_data.size
                s = 0
                t = _1663 + _1669 + 32
                u = _1663 + ceil32(return_data.size) + 32
                while s < _1691:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1691
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1663 + ceil32(return_data.size) + 64]
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1164)
                require ext_code.size(address(_1169))
                staticcall address(_1169).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1164)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1206] == mem[_1206]
                if mem[_1206]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _1213 = mem[64]
                mem[mem[64] + 36] = address(_1164)
                mem[mem[64] + 68] = -1
                _1225 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1225 + 32] = mem[_1225 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1213 + 164
                mem[_1213 + 100] = 32
                mem[_1213 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1169)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1241 = mem[_1225]
                s = 0
                while s < _1241:
                    mem[_1213 + s + 164] = mem[_1225 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1241) <= _1241:
                    call address(_1169).mem[_1213 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1213 + 168 len _1241 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1213 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1213 + idx + 232] = mem[_1213 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1213 + 232]
                        if mem[96] <= 0:
                            mem[_1213 + 164] = 2
                            mem[64] = _1213 + 260
                            mem[_1213 + 196] = address(_1169)
                            mem[_1213 + 228] = address(_1173)
                            mem[_1213 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 264] = _1178
                            mem[_1213 + 296] = 0
                            mem[_1213 + 328] = 160
                            mem[_1213 + 424] = 2
                            s = 0
                            t = _1213 + 196
                            u = _1213 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + 360] = this.address
                            mem[_1213 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1213 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2035 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2051 = mem[_2035]
                            require mem[_2035] <= test266151307()
                            require _2035 + mem[_2035] + 31 < _2035 + return_data.size
                            _2067 = mem[_2035 + mem[_2035]]
                            require mem[_2035 + mem[_2035]] <= test266151307()
                            require _2035 + ceil32(return_data.size) + (32 * mem[_2035 + mem[_2035]]) + 32 <= test266151307() and (32 * mem[_2035 + mem[_2035]]) + 32 >= 0
                            mem[64] = _2035 + ceil32(return_data.size) + (32 * mem[_2035 + mem[_2035]]) + 32
                            mem[_2035 + ceil32(return_data.size)] = _2067
                            require _2051 + (32 * _2067) + 32 <= return_data.size
                            s = 0
                            t = _2035 + _2051 + 32
                            u = _2035 + ceil32(return_data.size) + 32
                            while s < _2067:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2067
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2035 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1213 + 164] = 2
                            mem[64] = _1213 + 260
                            mem[_1213 + 196] = address(_1169)
                            mem[_1213 + 228] = address(_1173)
                            mem[_1213 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 264] = _1178
                            mem[_1213 + 296] = 0
                            mem[_1213 + 328] = 160
                            mem[_1213 + 424] = 2
                            s = 0
                            t = _1213 + 196
                            u = _1213 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + 360] = this.address
                            mem[_1213 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1213 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2036 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2052 = mem[_2036]
                            require mem[_2036] <= test266151307()
                            require _2036 + mem[_2036] + 31 < _2036 + return_data.size
                            _2068 = mem[_2036 + mem[_2036]]
                            require mem[_2036 + mem[_2036]] <= test266151307()
                            require _2036 + ceil32(return_data.size) + (32 * mem[_2036 + mem[_2036]]) + 32 <= test266151307() and (32 * mem[_2036 + mem[_2036]]) + 32 >= 0
                            mem[64] = _2036 + ceil32(return_data.size) + (32 * mem[_2036 + mem[_2036]]) + 32
                            mem[_2036 + ceil32(return_data.size)] = _2068
                            require _2052 + (32 * _2068) + 32 <= return_data.size
                            s = 0
                            t = _2036 + _2052 + 32
                            u = _2036 + ceil32(return_data.size) + 32
                            while s < _2068:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2068
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2036 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1213 + 164] = return_data.size
                        mem[_1213 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1213 + ceil32(return_data.size) + idx + 233] = mem[_1213 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1213 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1213 + ceil32(return_data.size) + 165] = 2
                            mem[_1213 + ceil32(return_data.size) + 197] = address(_1169)
                            mem[_1213 + ceil32(return_data.size) + 229] = address(_1173)
                            mem[_1213 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 265] = _1178
                            mem[_1213 + ceil32(return_data.size) + 297] = 0
                            mem[_1213 + ceil32(return_data.size) + 329] = 160
                            mem[_1213 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1213 + ceil32(return_data.size) + 197
                            u = _1213 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + ceil32(return_data.size) + 361] = this.address
                            mem[_1213 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1178, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1213 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2053 = mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32
                            require mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 <= test266151307()
                            require _1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 292 < _1213 + ceil32(return_data.size) + return_data.size + 261
                            _2069 = mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]
                            require mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261] <= test266151307()
                            require _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293
                            mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2069
                            require _2053 + (32 * _2069) + 32 <= return_data.size
                            s = 0
                            t = _1213 + ceil32(return_data.size) + _2053 + 293
                            u = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2069:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2069
                        else:
                            require return_data.size >= 32
                            require mem[_1213 + 196] == bool(mem[_1213 + 196])
                            if not mem[_1213 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1213 + ceil32(return_data.size) + 165] = 2
                            mem[_1213 + ceil32(return_data.size) + 197] = address(_1169)
                            mem[_1213 + ceil32(return_data.size) + 229] = address(_1173)
                            mem[_1213 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 265] = _1178
                            mem[_1213 + ceil32(return_data.size) + 297] = 0
                            mem[_1213 + ceil32(return_data.size) + 329] = 160
                            mem[_1213 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1213 + ceil32(return_data.size) + 197
                            u = _1213 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + ceil32(return_data.size) + 361] = this.address
                            mem[_1213 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1178, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1213 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2054 = mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32
                            require mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 <= test266151307()
                            require _1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 292 < _1213 + ceil32(return_data.size) + return_data.size + 261
                            _2070 = mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]
                            require mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261] <= test266151307()
                            require _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293
                            mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2070
                            require _2054 + (32 * _2070) + 32 <= return_data.size
                            s = 0
                            t = _1213 + ceil32(return_data.size) + _2054 + 293
                            u = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2070:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2070
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
                else:
                    mem[_1213 + _1241 + 164] = 0
                    call address(_1169).mem[_1213 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1213 + 168 len _1241 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1213 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1213 + idx + 232] = mem[_1213 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1213 + 232]
                        if mem[96] <= 0:
                            mem[_1213 + 164] = 2
                            mem[64] = _1213 + 260
                            mem[_1213 + 196] = address(_1169)
                            mem[_1213 + 228] = address(_1173)
                            mem[_1213 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 264] = _1178
                            mem[_1213 + 296] = 0
                            mem[_1213 + 328] = 160
                            mem[_1213 + 424] = 2
                            s = 0
                            t = _1213 + 196
                            u = _1213 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + 360] = this.address
                            mem[_1213 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1213 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2039 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2055 = mem[_2039]
                            require mem[_2039] <= test266151307()
                            require _2039 + mem[_2039] + 31 < _2039 + return_data.size
                            _2071 = mem[_2039 + mem[_2039]]
                            require mem[_2039 + mem[_2039]] <= test266151307()
                            require _2039 + ceil32(return_data.size) + (32 * mem[_2039 + mem[_2039]]) + 32 <= test266151307() and (32 * mem[_2039 + mem[_2039]]) + 32 >= 0
                            mem[64] = _2039 + ceil32(return_data.size) + (32 * mem[_2039 + mem[_2039]]) + 32
                            mem[_2039 + ceil32(return_data.size)] = _2071
                            require _2055 + (32 * _2071) + 32 <= return_data.size
                            s = 0
                            t = _2039 + _2055 + 32
                            u = _2039 + ceil32(return_data.size) + 32
                            while s < _2071:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2071
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2039 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1213 + 164] = 2
                            mem[64] = _1213 + 260
                            mem[_1213 + 196] = address(_1169)
                            mem[_1213 + 228] = address(_1173)
                            mem[_1213 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + 264] = _1178
                            mem[_1213 + 296] = 0
                            mem[_1213 + 328] = 160
                            mem[_1213 + 424] = 2
                            s = 0
                            t = _1213 + 196
                            u = _1213 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + 360] = this.address
                            mem[_1213 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1213 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2040 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2056 = mem[_2040]
                            require mem[_2040] <= test266151307()
                            require _2040 + mem[_2040] + 31 < _2040 + return_data.size
                            _2072 = mem[_2040 + mem[_2040]]
                            require mem[_2040 + mem[_2040]] <= test266151307()
                            require _2040 + ceil32(return_data.size) + (32 * mem[_2040 + mem[_2040]]) + 32 <= test266151307() and (32 * mem[_2040 + mem[_2040]]) + 32 >= 0
                            mem[64] = _2040 + ceil32(return_data.size) + (32 * mem[_2040 + mem[_2040]]) + 32
                            mem[_2040 + ceil32(return_data.size)] = _2072
                            require _2056 + (32 * _2072) + 32 <= return_data.size
                            s = 0
                            t = _2040 + _2056 + 32
                            u = _2040 + ceil32(return_data.size) + 32
                            while s < _2072:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2072
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2040 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1213 + 164] = return_data.size
                        mem[_1213 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1213 + ceil32(return_data.size) + idx + 233] = mem[_1213 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1213 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1213 + ceil32(return_data.size) + 165] = 2
                            mem[_1213 + ceil32(return_data.size) + 197] = address(_1169)
                            mem[_1213 + ceil32(return_data.size) + 229] = address(_1173)
                            mem[_1213 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 265] = _1178
                            mem[_1213 + ceil32(return_data.size) + 297] = 0
                            mem[_1213 + ceil32(return_data.size) + 329] = 160
                            mem[_1213 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1213 + ceil32(return_data.size) + 197
                            u = _1213 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + ceil32(return_data.size) + 361] = this.address
                            mem[_1213 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1178, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1213 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2057 = mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32
                            require mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 <= test266151307()
                            require _1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 292 < _1213 + ceil32(return_data.size) + return_data.size + 261
                            _2073 = mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]
                            require mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261] <= test266151307()
                            require _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293
                            mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2073
                            require _2057 + (32 * _2073) + 32 <= return_data.size
                            s = 0
                            t = _1213 + ceil32(return_data.size) + _2057 + 293
                            u = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2073:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2073
                        else:
                            require return_data.size >= 32
                            require mem[_1213 + 196] == bool(mem[_1213 + 196])
                            if not mem[_1213 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1213 + ceil32(return_data.size) + 165] = 2
                            mem[_1213 + ceil32(return_data.size) + 197] = address(_1169)
                            mem[_1213 + ceil32(return_data.size) + 229] = address(_1173)
                            mem[_1213 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1213 + ceil32(return_data.size) + 265] = _1178
                            mem[_1213 + ceil32(return_data.size) + 297] = 0
                            mem[_1213 + ceil32(return_data.size) + 329] = 160
                            mem[_1213 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1213 + ceil32(return_data.size) + 197
                            u = _1213 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1213 + ceil32(return_data.size) + 361] = this.address
                            mem[_1213 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1164))
                            call address(_1164).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1178, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1213 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1213 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2058 = mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32
                            require mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 <= test266151307()
                            require _1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 292 < _1213 + ceil32(return_data.size) + return_data.size + 261
                            _2074 = mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]
                            require mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261] <= test266151307()
                            require _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1213 + ceil32(return_data.size) + mem[_1213 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1178) >> 32 + 261]) + 293
                            mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2074
                            require _2058 + (32 * _2074) + 32 <= return_data.size
                            s = 0
                            t = _1213 + ceil32(return_data.size) + _2058 + 293
                            u = _1213 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2074:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2074
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1213 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1177 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _1177] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1177]
        return 32, mem[mem[64] + 32 len (32 * _1177) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < mem[96]
        _1167 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1171 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1175 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _1180 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_1167)
        require ext_code.size(address(_1171))
        staticcall address(_1171).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1167)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1190] == mem[_1190]
        if mem[_1190] >= _1180:
            _1194 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1194]
            mem[_1194 + 32] = address(_1171)
            require 1 < mem[_1194]
            mem[_1194 + 64] = address(_1175)
            mem[_1194 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1194 + 100] = _1180
            mem[_1194 + 132] = 0
            mem[_1194 + 164] = 160
            mem[_1194 + 260] = mem[_1194]
            s = 0
            t = _1194 + 32
            u = _1194 + 292
            while s < mem[_1194]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1194 + 196] = this.address
            mem[_1194 + 228] = block.timestamp + cd[100]
            require ext_code.size(address(_1167))
            call address(_1167).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1194 + (32 * mem[_1194]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1666 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1672 = mem[_1666]
            require mem[_1666] <= test266151307()
            require _1666 + mem[_1666] + 31 < _1666 + return_data.size
            _1696 = mem[_1666 + mem[_1666]]
            require mem[_1666 + mem[_1666]] <= test266151307()
            require _1666 + ceil32(return_data.size) + (32 * mem[_1666 + mem[_1666]]) + 32 <= test266151307() and (32 * mem[_1666 + mem[_1666]]) + 32 >= 0
            mem[64] = _1666 + ceil32(return_data.size) + (32 * mem[_1666 + mem[_1666]]) + 32
            mem[_1666 + ceil32(return_data.size)] = _1696
            require _1672 + (32 * _1696) + 32 <= return_data.size
            s = 0
            t = _1666 + _1672 + 32
            u = _1666 + ceil32(return_data.size) + 32
            while s < _1696:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1696
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1666 + ceil32(return_data.size) + 64]
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1167)
            require ext_code.size(address(_1171))
            staticcall address(_1171).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1167)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1208] == mem[_1208]
            if mem[_1208]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _1215 = mem[64]
            mem[mem[64] + 36] = address(_1167)
            mem[mem[64] + 68] = -1
            _1227 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1227 + 32] = mem[_1227 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1215 + 164
            mem[_1215 + 100] = 32
            mem[_1215 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1171)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1243 = mem[_1227]
            s = 0
            while s < _1243:
                mem[_1215 + s + 164] = mem[_1227 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1243) <= _1243:
                call address(_1171).mem[_1215 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1215 + 168 len _1243 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1215 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1215 + idx + 232] = mem[_1215 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1215 + 232]
                    if mem[96] <= 0:
                        mem[_1215 + 164] = 2
                        mem[64] = _1215 + 260
                        mem[_1215 + 196] = address(_1171)
                        mem[_1215 + 228] = address(_1175)
                        mem[_1215 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 264] = _1180
                        mem[_1215 + 296] = 0
                        mem[_1215 + 328] = 160
                        mem[_1215 + 424] = 2
                        s = 0
                        t = _1215 + 196
                        u = _1215 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + 360] = this.address
                        mem[_1215 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1215 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2043 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2059 = mem[_2043]
                        require mem[_2043] <= test266151307()
                        require _2043 + mem[_2043] + 31 < _2043 + return_data.size
                        _2075 = mem[_2043 + mem[_2043]]
                        require mem[_2043 + mem[_2043]] <= test266151307()
                        require _2043 + ceil32(return_data.size) + (32 * mem[_2043 + mem[_2043]]) + 32 <= test266151307() and (32 * mem[_2043 + mem[_2043]]) + 32 >= 0
                        mem[64] = _2043 + ceil32(return_data.size) + (32 * mem[_2043 + mem[_2043]]) + 32
                        mem[_2043 + ceil32(return_data.size)] = _2075
                        require _2059 + (32 * _2075) + 32 <= return_data.size
                        s = 0
                        t = _2043 + _2059 + 32
                        u = _2043 + ceil32(return_data.size) + 32
                        while s < _2075:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2075
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2043 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1215 + 164] = 2
                        mem[64] = _1215 + 260
                        mem[_1215 + 196] = address(_1171)
                        mem[_1215 + 228] = address(_1175)
                        mem[_1215 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 264] = _1180
                        mem[_1215 + 296] = 0
                        mem[_1215 + 328] = 160
                        mem[_1215 + 424] = 2
                        s = 0
                        t = _1215 + 196
                        u = _1215 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + 360] = this.address
                        mem[_1215 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1215 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2044 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2060 = mem[_2044]
                        require mem[_2044] <= test266151307()
                        require _2044 + mem[_2044] + 31 < _2044 + return_data.size
                        _2076 = mem[_2044 + mem[_2044]]
                        require mem[_2044 + mem[_2044]] <= test266151307()
                        require _2044 + ceil32(return_data.size) + (32 * mem[_2044 + mem[_2044]]) + 32 <= test266151307() and (32 * mem[_2044 + mem[_2044]]) + 32 >= 0
                        mem[64] = _2044 + ceil32(return_data.size) + (32 * mem[_2044 + mem[_2044]]) + 32
                        mem[_2044 + ceil32(return_data.size)] = _2076
                        require _2060 + (32 * _2076) + 32 <= return_data.size
                        s = 0
                        t = _2044 + _2060 + 32
                        u = _2044 + ceil32(return_data.size) + 32
                        while s < _2076:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2076
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2044 + ceil32(return_data.size) + 64]
                else:
                    mem[_1215 + 164] = return_data.size
                    mem[_1215 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1215 + ceil32(return_data.size) + idx + 233] = mem[_1215 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1215 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1215 + ceil32(return_data.size) + 165] = 2
                        mem[_1215 + ceil32(return_data.size) + 197] = address(_1171)
                        mem[_1215 + ceil32(return_data.size) + 229] = address(_1175)
                        mem[_1215 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 265] = _1180
                        mem[_1215 + ceil32(return_data.size) + 297] = 0
                        mem[_1215 + ceil32(return_data.size) + 329] = 160
                        mem[_1215 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1215 + ceil32(return_data.size) + 197
                        u = _1215 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + ceil32(return_data.size) + 361] = this.address
                        mem[_1215 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1180, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1215 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2061 = mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32
                        require mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 <= test266151307()
                        require _1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 292 < _1215 + ceil32(return_data.size) + return_data.size + 261
                        _2077 = mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]
                        require mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261] <= test266151307()
                        require _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293
                        mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2077
                        require _2061 + (32 * _2077) + 32 <= return_data.size
                        s = 0
                        t = _1215 + ceil32(return_data.size) + _2061 + 293
                        u = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2077:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2077
                    else:
                        require return_data.size >= 32
                        require mem[_1215 + 196] == bool(mem[_1215 + 196])
                        if not mem[_1215 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1215 + ceil32(return_data.size) + 165] = 2
                        mem[_1215 + ceil32(return_data.size) + 197] = address(_1171)
                        mem[_1215 + ceil32(return_data.size) + 229] = address(_1175)
                        mem[_1215 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 265] = _1180
                        mem[_1215 + ceil32(return_data.size) + 297] = 0
                        mem[_1215 + ceil32(return_data.size) + 329] = 160
                        mem[_1215 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1215 + ceil32(return_data.size) + 197
                        u = _1215 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + ceil32(return_data.size) + 361] = this.address
                        mem[_1215 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1180, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1215 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2062 = mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32
                        require mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 <= test266151307()
                        require _1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 292 < _1215 + ceil32(return_data.size) + return_data.size + 261
                        _2078 = mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]
                        require mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261] <= test266151307()
                        require _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293
                        mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2078
                        require _2062 + (32 * _2078) + 32 <= return_data.size
                        s = 0
                        t = _1215 + ceil32(return_data.size) + _2062 + 293
                        u = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2078:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2078
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            else:
                mem[_1215 + _1243 + 164] = 0
                call address(_1171).mem[_1215 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1215 + 168 len _1243 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1215 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1215 + idx + 232] = mem[_1215 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1215 + 232]
                    if mem[96] <= 0:
                        mem[_1215 + 164] = 2
                        mem[64] = _1215 + 260
                        mem[_1215 + 196] = address(_1171)
                        mem[_1215 + 228] = address(_1175)
                        mem[_1215 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 264] = _1180
                        mem[_1215 + 296] = 0
                        mem[_1215 + 328] = 160
                        mem[_1215 + 424] = 2
                        s = 0
                        t = _1215 + 196
                        u = _1215 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + 360] = this.address
                        mem[_1215 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1215 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2047 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2063 = mem[_2047]
                        require mem[_2047] <= test266151307()
                        require _2047 + mem[_2047] + 31 < _2047 + return_data.size
                        _2079 = mem[_2047 + mem[_2047]]
                        require mem[_2047 + mem[_2047]] <= test266151307()
                        require _2047 + ceil32(return_data.size) + (32 * mem[_2047 + mem[_2047]]) + 32 <= test266151307() and (32 * mem[_2047 + mem[_2047]]) + 32 >= 0
                        mem[64] = _2047 + ceil32(return_data.size) + (32 * mem[_2047 + mem[_2047]]) + 32
                        mem[_2047 + ceil32(return_data.size)] = _2079
                        require _2063 + (32 * _2079) + 32 <= return_data.size
                        s = 0
                        t = _2047 + _2063 + 32
                        u = _2047 + ceil32(return_data.size) + 32
                        while s < _2079:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2079
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2047 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1215 + 164] = 2
                        mem[64] = _1215 + 260
                        mem[_1215 + 196] = address(_1171)
                        mem[_1215 + 228] = address(_1175)
                        mem[_1215 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + 264] = _1180
                        mem[_1215 + 296] = 0
                        mem[_1215 + 328] = 160
                        mem[_1215 + 424] = 2
                        s = 0
                        t = _1215 + 196
                        u = _1215 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + 360] = this.address
                        mem[_1215 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1215 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2064 = mem[_2048]
                        require mem[_2048] <= test266151307()
                        require _2048 + mem[_2048] + 31 < _2048 + return_data.size
                        _2080 = mem[_2048 + mem[_2048]]
                        require mem[_2048 + mem[_2048]] <= test266151307()
                        require _2048 + ceil32(return_data.size) + (32 * mem[_2048 + mem[_2048]]) + 32 <= test266151307() and (32 * mem[_2048 + mem[_2048]]) + 32 >= 0
                        mem[64] = _2048 + ceil32(return_data.size) + (32 * mem[_2048 + mem[_2048]]) + 32
                        mem[_2048 + ceil32(return_data.size)] = _2080
                        require _2064 + (32 * _2080) + 32 <= return_data.size
                        s = 0
                        t = _2048 + _2064 + 32
                        u = _2048 + ceil32(return_data.size) + 32
                        while s < _2080:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2080
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2048 + ceil32(return_data.size) + 64]
                else:
                    mem[_1215 + 164] = return_data.size
                    mem[_1215 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1215 + ceil32(return_data.size) + idx + 233] = mem[_1215 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1215 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1215 + ceil32(return_data.size) + 165] = 2
                        mem[_1215 + ceil32(return_data.size) + 197] = address(_1171)
                        mem[_1215 + ceil32(return_data.size) + 229] = address(_1175)
                        mem[_1215 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 265] = _1180
                        mem[_1215 + ceil32(return_data.size) + 297] = 0
                        mem[_1215 + ceil32(return_data.size) + 329] = 160
                        mem[_1215 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1215 + ceil32(return_data.size) + 197
                        u = _1215 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + ceil32(return_data.size) + 361] = this.address
                        mem[_1215 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1180, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1215 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2065 = mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32
                        require mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 <= test266151307()
                        require _1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 292 < _1215 + ceil32(return_data.size) + return_data.size + 261
                        _2081 = mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]
                        require mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261] <= test266151307()
                        require _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293
                        mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2081
                        require _2065 + (32 * _2081) + 32 <= return_data.size
                        s = 0
                        t = _1215 + ceil32(return_data.size) + _2065 + 293
                        u = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2081:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2081
                    else:
                        require return_data.size >= 32
                        require mem[_1215 + 196] == bool(mem[_1215 + 196])
                        if not mem[_1215 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1215 + ceil32(return_data.size) + 165] = 2
                        mem[_1215 + ceil32(return_data.size) + 197] = address(_1171)
                        mem[_1215 + ceil32(return_data.size) + 229] = address(_1175)
                        mem[_1215 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1215 + ceil32(return_data.size) + 265] = _1180
                        mem[_1215 + ceil32(return_data.size) + 297] = 0
                        mem[_1215 + ceil32(return_data.size) + 329] = 160
                        mem[_1215 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1215 + ceil32(return_data.size) + 197
                        u = _1215 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1215 + ceil32(return_data.size) + 361] = this.address
                        mem[_1215 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1167))
                        call address(_1167).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1180, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1215 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1215 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2066 = mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32
                        require mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 <= test266151307()
                        require _1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 292 < _1215 + ceil32(return_data.size) + return_data.size + 261
                        _2082 = mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]
                        require mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261] <= test266151307()
                        require _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1215 + ceil32(return_data.size) + mem[_1215 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1180) >> 32 + 261]) + 293
                        mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2082
                        require _2066 + (32 * _2082) + 32 <= return_data.size
                        s = 0
                        t = _1215 + ceil32(return_data.size) + _2066 + 293
                        u = _1215 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2082:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2082
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1215 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1179 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _1179] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1179]
    return 32, mem[mem[64] + 32 len (32 * _1179) + 32]
}

function sub_14c5c778(?) {
    require calldata.size - 4 >= 128
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    mem[0] = msg.sender
    mem[32] = 1
    if _runner[address(msg.sender)] <= 0:
        revert with 0, 'not allow'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 192
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[96]
            _1210 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1218 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1224 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _1230 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1210)
            require ext_code.size(address(_1218))
            staticcall address(_1218).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1210)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1245] == mem[_1245]
            if mem[_1245] >= _1230:
                _1249 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1249]
                mem[_1249 + 32] = address(_1218)
                require 1 < mem[_1249]
                mem[_1249 + 64] = address(_1224)
                mem[_1249 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1249 + 100] = _1230
                mem[_1249 + 132] = 0
                mem[_1249 + 164] = 160
                mem[_1249 + 260] = mem[_1249]
                s = 0
                t = _1249 + 32
                u = _1249 + 292
                while s < mem[_1249]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1249 + 196] = this.address
                mem[_1249 + 228] = block.timestamp + cd[100]
                require ext_code.size(address(_1210))
                call address(_1210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1249 + (32 * mem[_1249]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1719 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1725 = mem[_1719]
                require mem[_1719] <= test266151307()
                require _1719 + mem[_1719] + 31 < _1719 + return_data.size
                _1747 = mem[_1719 + mem[_1719]]
                require mem[_1719 + mem[_1719]] <= test266151307()
                require _1719 + ceil32(return_data.size) + (32 * mem[_1719 + mem[_1719]]) + 32 <= test266151307() and (32 * mem[_1719 + mem[_1719]]) + 32 >= 0
                mem[64] = _1719 + ceil32(return_data.size) + (32 * mem[_1719 + mem[_1719]]) + 32
                mem[_1719 + ceil32(return_data.size)] = _1747
                require _1725 + (32 * _1747) + 32 <= return_data.size
                s = 0
                t = _1719 + _1725 + 32
                u = _1719 + ceil32(return_data.size) + 32
                while s < _1747:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1747
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1719 + ceil32(return_data.size) + 64]
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1210)
                require ext_code.size(address(_1218))
                staticcall address(_1218).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1210)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1262] == mem[_1262]
                if mem[_1262]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _1269 = mem[64]
                mem[mem[64] + 36] = address(_1210)
                mem[mem[64] + 68] = -1
                _1281 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1281 + 32] = mem[_1281 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1269 + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1218)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1297 = mem[_1281]
                s = 0
                while s < _1297:
                    mem[_1269 + s + 164] = mem[_1281 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1297) <= _1297:
                    call address(_1218).mem[_1269 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1269 + 168 len _1297 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1269 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + idx + 232] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + 232]
                        if mem[96] <= 0:
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2091 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2107 = mem[_2091]
                            require mem[_2091] <= test266151307()
                            require _2091 + mem[_2091] + 31 < _2091 + return_data.size
                            _2123 = mem[_2091 + mem[_2091]]
                            require mem[_2091 + mem[_2091]] <= test266151307()
                            require _2091 + ceil32(return_data.size) + (32 * mem[_2091 + mem[_2091]]) + 32 <= test266151307() and (32 * mem[_2091 + mem[_2091]]) + 32 >= 0
                            mem[64] = _2091 + ceil32(return_data.size) + (32 * mem[_2091 + mem[_2091]]) + 32
                            mem[_2091 + ceil32(return_data.size)] = _2123
                            require _2107 + (32 * _2123) + 32 <= return_data.size
                            s = 0
                            t = _2091 + _2107 + 32
                            u = _2091 + ceil32(return_data.size) + 32
                            while s < _2123:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2123
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2091 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2092 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2108 = mem[_2092]
                            require mem[_2092] <= test266151307()
                            require _2092 + mem[_2092] + 31 < _2092 + return_data.size
                            _2124 = mem[_2092 + mem[_2092]]
                            require mem[_2092 + mem[_2092]] <= test266151307()
                            require _2092 + ceil32(return_data.size) + (32 * mem[_2092 + mem[_2092]]) + 32 <= test266151307() and (32 * mem[_2092 + mem[_2092]]) + 32 >= 0
                            mem[64] = _2092 + ceil32(return_data.size) + (32 * mem[_2092 + mem[_2092]]) + 32
                            mem[_2092 + ceil32(return_data.size)] = _2124
                            require _2108 + (32 * _2124) + 32 <= return_data.size
                            s = 0
                            t = _2092 + _2108 + 32
                            u = _2092 + ceil32(return_data.size) + 32
                            while s < _2124:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2124
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2092 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1269 + 164] = return_data.size
                        mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + ceil32(return_data.size) + idx + 233] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2109 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2125 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2109 + (32 * _2125) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2109 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2125:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2125
                        else:
                            require return_data.size >= 32
                            require mem[_1269 + 196] == bool(mem[_1269 + 196])
                            if not mem[_1269 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2110 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2126 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2110 + (32 * _2126) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2110 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2126:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2126
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
                else:
                    mem[_1269 + _1297 + 164] = 0
                    call address(_1218).mem[_1269 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1269 + 168 len _1297 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1269 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + idx + 232] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + 232]
                        if mem[96] <= 0:
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2095 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2111 = mem[_2095]
                            require mem[_2095] <= test266151307()
                            require _2095 + mem[_2095] + 31 < _2095 + return_data.size
                            _2127 = mem[_2095 + mem[_2095]]
                            require mem[_2095 + mem[_2095]] <= test266151307()
                            require _2095 + ceil32(return_data.size) + (32 * mem[_2095 + mem[_2095]]) + 32 <= test266151307() and (32 * mem[_2095 + mem[_2095]]) + 32 >= 0
                            mem[64] = _2095 + ceil32(return_data.size) + (32 * mem[_2095 + mem[_2095]]) + 32
                            mem[_2095 + ceil32(return_data.size)] = _2127
                            require _2111 + (32 * _2127) + 32 <= return_data.size
                            s = 0
                            t = _2095 + _2111 + 32
                            u = _2095 + ceil32(return_data.size) + 32
                            while s < _2127:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2127
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2095 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2096 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2112 = mem[_2096]
                            require mem[_2096] <= test266151307()
                            require _2096 + mem[_2096] + 31 < _2096 + return_data.size
                            _2128 = mem[_2096 + mem[_2096]]
                            require mem[_2096 + mem[_2096]] <= test266151307()
                            require _2096 + ceil32(return_data.size) + (32 * mem[_2096 + mem[_2096]]) + 32 <= test266151307() and (32 * mem[_2096 + mem[_2096]]) + 32 >= 0
                            mem[64] = _2096 + ceil32(return_data.size) + (32 * mem[_2096 + mem[_2096]]) + 32
                            mem[_2096 + ceil32(return_data.size)] = _2128
                            require _2112 + (32 * _2128) + 32 <= return_data.size
                            s = 0
                            t = _2096 + _2112 + 32
                            u = _2096 + ceil32(return_data.size) + 32
                            while s < _2128:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2128
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2096 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1269 + 164] = return_data.size
                        mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + ceil32(return_data.size) + idx + 233] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2113 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2129 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2113 + (32 * _2129) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2113 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2129:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2129
                        else:
                            require return_data.size >= 32
                            require mem[_1269 + 196] == bool(mem[_1269 + 196])
                            if not mem[_1269 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2114 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2130 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2114 + (32 * _2130) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2114 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2130:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2130
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
            revert with 0, 'ne'
        mem[mem[64]] = 32
        _1235 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _1235] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1235]
        return 32, mem[mem[64] + 32 len (32 * _1235) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < mem[96]
        _1215 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1221 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1227 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _1232 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_1215)
        require ext_code.size(address(_1221))
        staticcall address(_1221).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1215)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1246] == mem[_1246]
        if mem[_1246] >= _1232:
            _1250 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1250]
            mem[_1250 + 32] = address(_1221)
            require 1 < mem[_1250]
            mem[_1250 + 64] = address(_1227)
            mem[_1250 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1250 + 100] = _1232
            mem[_1250 + 132] = 0
            mem[_1250 + 164] = 160
            mem[_1250 + 260] = mem[_1250]
            s = 0
            t = _1250 + 32
            u = _1250 + 292
            while s < mem[_1250]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1250 + 196] = this.address
            mem[_1250 + 228] = block.timestamp + cd[100]
            require ext_code.size(address(_1215))
            call address(_1215).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1250 + (32 * mem[_1250]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1722 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1728 = mem[_1722]
            require mem[_1722] <= test266151307()
            require _1722 + mem[_1722] + 31 < _1722 + return_data.size
            _1752 = mem[_1722 + mem[_1722]]
            require mem[_1722 + mem[_1722]] <= test266151307()
            require _1722 + ceil32(return_data.size) + (32 * mem[_1722 + mem[_1722]]) + 32 <= test266151307() and (32 * mem[_1722 + mem[_1722]]) + 32 >= 0
            mem[64] = _1722 + ceil32(return_data.size) + (32 * mem[_1722 + mem[_1722]]) + 32
            mem[_1722 + ceil32(return_data.size)] = _1752
            require _1728 + (32 * _1752) + 32 <= return_data.size
            s = 0
            t = _1722 + _1728 + 32
            u = _1722 + ceil32(return_data.size) + 32
            while s < _1752:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1752
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1722 + ceil32(return_data.size) + 64]
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1215)
            require ext_code.size(address(_1221))
            staticcall address(_1221).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1215)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1264] == mem[_1264]
            if mem[_1264]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _1271 = mem[64]
            mem[mem[64] + 36] = address(_1215)
            mem[mem[64] + 68] = -1
            _1283 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1283 + 32] = mem[_1283 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1271 + 164
            mem[_1271 + 100] = 32
            mem[_1271 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1221)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1299 = mem[_1283]
            s = 0
            while s < _1299:
                mem[_1271 + s + 164] = mem[_1283 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1299) <= _1299:
                call address(_1221).mem[_1271 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1299 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1271 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + idx + 232] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + 232]
                    if mem[96] <= 0:
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2099 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2115 = mem[_2099]
                        require mem[_2099] <= test266151307()
                        require _2099 + mem[_2099] + 31 < _2099 + return_data.size
                        _2131 = mem[_2099 + mem[_2099]]
                        require mem[_2099 + mem[_2099]] <= test266151307()
                        require _2099 + ceil32(return_data.size) + (32 * mem[_2099 + mem[_2099]]) + 32 <= test266151307() and (32 * mem[_2099 + mem[_2099]]) + 32 >= 0
                        mem[64] = _2099 + ceil32(return_data.size) + (32 * mem[_2099 + mem[_2099]]) + 32
                        mem[_2099 + ceil32(return_data.size)] = _2131
                        require _2115 + (32 * _2131) + 32 <= return_data.size
                        s = 0
                        t = _2099 + _2115 + 32
                        u = _2099 + ceil32(return_data.size) + 32
                        while s < _2131:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2131
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2099 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2100 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2116 = mem[_2100]
                        require mem[_2100] <= test266151307()
                        require _2100 + mem[_2100] + 31 < _2100 + return_data.size
                        _2132 = mem[_2100 + mem[_2100]]
                        require mem[_2100 + mem[_2100]] <= test266151307()
                        require _2100 + ceil32(return_data.size) + (32 * mem[_2100 + mem[_2100]]) + 32 <= test266151307() and (32 * mem[_2100 + mem[_2100]]) + 32 >= 0
                        mem[64] = _2100 + ceil32(return_data.size) + (32 * mem[_2100 + mem[_2100]]) + 32
                        mem[_2100 + ceil32(return_data.size)] = _2132
                        require _2116 + (32 * _2132) + 32 <= return_data.size
                        s = 0
                        t = _2100 + _2116 + 32
                        u = _2100 + ceil32(return_data.size) + 32
                        while s < _2132:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2132
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2100 + ceil32(return_data.size) + 64]
                else:
                    mem[_1271 + 164] = return_data.size
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + ceil32(return_data.size) + idx + 233] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2117 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2133 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2133
                        require _2117 + (32 * _2133) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2117 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2133:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2133
                    else:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2118 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2134 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2134
                        require _2118 + (32 * _2134) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2118 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2134:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2134
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            else:
                mem[_1271 + _1299 + 164] = 0
                call address(_1221).mem[_1271 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1299 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1271 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + idx + 232] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + 232]
                    if mem[96] <= 0:
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2103 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2119 = mem[_2103]
                        require mem[_2103] <= test266151307()
                        require _2103 + mem[_2103] + 31 < _2103 + return_data.size
                        _2135 = mem[_2103 + mem[_2103]]
                        require mem[_2103 + mem[_2103]] <= test266151307()
                        require _2103 + ceil32(return_data.size) + (32 * mem[_2103 + mem[_2103]]) + 32 <= test266151307() and (32 * mem[_2103 + mem[_2103]]) + 32 >= 0
                        mem[64] = _2103 + ceil32(return_data.size) + (32 * mem[_2103 + mem[_2103]]) + 32
                        mem[_2103 + ceil32(return_data.size)] = _2135
                        require _2119 + (32 * _2135) + 32 <= return_data.size
                        s = 0
                        t = _2103 + _2119 + 32
                        u = _2103 + ceil32(return_data.size) + 32
                        while s < _2135:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2135
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2103 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2104 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2120 = mem[_2104]
                        require mem[_2104] <= test266151307()
                        require _2104 + mem[_2104] + 31 < _2104 + return_data.size
                        _2136 = mem[_2104 + mem[_2104]]
                        require mem[_2104 + mem[_2104]] <= test266151307()
                        require _2104 + ceil32(return_data.size) + (32 * mem[_2104 + mem[_2104]]) + 32 <= test266151307() and (32 * mem[_2104 + mem[_2104]]) + 32 >= 0
                        mem[64] = _2104 + ceil32(return_data.size) + (32 * mem[_2104 + mem[_2104]]) + 32
                        mem[_2104 + ceil32(return_data.size)] = _2136
                        require _2120 + (32 * _2136) + 32 <= return_data.size
                        s = 0
                        t = _2104 + _2120 + 32
                        u = _2104 + ceil32(return_data.size) + 32
                        while s < _2136:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2136
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2104 + ceil32(return_data.size) + 64]
                else:
                    mem[_1271 + 164] = return_data.size
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + ceil32(return_data.size) + idx + 233] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2121 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2137 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2137
                        require _2121 + (32 * _2137) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2121 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2137:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2137
                    else:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2122 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2138 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2138
                        require _2122 + (32 * _2138) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2122 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2138:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2138
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
        revert with 0, 'ne'
    mem[mem[64]] = 32
    _1236 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _1236] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1236]
    return 32, mem[mem[64] + 32 len (32 * _1236) + 32]
}

function sub_918664f1(?) {
    require calldata.size - 4 >= 128
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    mem[0] = msg.sender
    mem[32] = 1
    if _runner[address(msg.sender)] <= 0:
        revert with 0, 'not allow'
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 36).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 36).length) + 192
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[96]
            _1210 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _1218 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
            _1224 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _1230 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1210)
            require ext_code.size(address(_1218))
            staticcall address(_1218).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1210)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1245] == mem[_1245]
            if mem[_1245] >= _1230:
                _1249 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1249]
                mem[_1249 + 32] = address(_1218)
                require 1 < mem[_1249]
                mem[_1249 + 64] = address(_1224)
                mem[_1249 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1249 + 100] = _1230
                mem[_1249 + 132] = 0
                mem[_1249 + 164] = 160
                mem[_1249 + 260] = mem[_1249]
                s = 0
                t = _1249 + 32
                u = _1249 + 292
                while s < mem[_1249]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1249 + 196] = this.address
                mem[_1249 + 228] = block.timestamp + cd[100]
                require ext_code.size(address(_1210))
                call address(_1210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1249 + (32 * mem[_1249]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1719 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1725 = mem[_1719]
                require mem[_1719] <= test266151307()
                require _1719 + mem[_1719] + 31 < _1719 + return_data.size
                _1747 = mem[_1719 + mem[_1719]]
                require mem[_1719 + mem[_1719]] <= test266151307()
                require _1719 + ceil32(return_data.size) + (32 * mem[_1719 + mem[_1719]]) + 32 <= test266151307() and (32 * mem[_1719 + mem[_1719]]) + 32 >= 0
                mem[64] = _1719 + ceil32(return_data.size) + (32 * mem[_1719 + mem[_1719]]) + 32
                mem[_1719 + ceil32(return_data.size)] = _1747
                require _1725 + (32 * _1747) + 32 <= return_data.size
                s = 0
                t = _1719 + _1725 + 32
                u = _1719 + ceil32(return_data.size) + 32
                while s < _1747:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require 1 < _1747
                require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1719 + ceil32(return_data.size) + 64]
            else:
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(_1210)
                require ext_code.size(address(_1218))
                staticcall address(_1218).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(_1210)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1262] == mem[_1262]
                if mem[_1262]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                _1269 = mem[64]
                mem[mem[64] + 36] = address(_1210)
                mem[mem[64] + 68] = -1
                _1281 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1281 + 32] = mem[_1281 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1269 + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(_1218)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1297 = mem[_1281]
                s = 0
                while s < _1297:
                    mem[_1269 + s + 164] = mem[_1281 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1297) <= _1297:
                    call address(_1218).mem[_1269 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1269 + 168 len _1297 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1269 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + idx + 232] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + 232]
                        if mem[96] <= 0:
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2091 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2107 = mem[_2091]
                            require mem[_2091] <= test266151307()
                            require _2091 + mem[_2091] + 31 < _2091 + return_data.size
                            _2123 = mem[_2091 + mem[_2091]]
                            require mem[_2091 + mem[_2091]] <= test266151307()
                            require _2091 + ceil32(return_data.size) + (32 * mem[_2091 + mem[_2091]]) + 32 <= test266151307() and (32 * mem[_2091 + mem[_2091]]) + 32 >= 0
                            mem[64] = _2091 + ceil32(return_data.size) + (32 * mem[_2091 + mem[_2091]]) + 32
                            mem[_2091 + ceil32(return_data.size)] = _2123
                            require _2107 + (32 * _2123) + 32 <= return_data.size
                            s = 0
                            t = _2091 + _2107 + 32
                            u = _2091 + ceil32(return_data.size) + 32
                            while s < _2123:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2123
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2091 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2092 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2108 = mem[_2092]
                            require mem[_2092] <= test266151307()
                            require _2092 + mem[_2092] + 31 < _2092 + return_data.size
                            _2124 = mem[_2092 + mem[_2092]]
                            require mem[_2092 + mem[_2092]] <= test266151307()
                            require _2092 + ceil32(return_data.size) + (32 * mem[_2092 + mem[_2092]]) + 32 <= test266151307() and (32 * mem[_2092 + mem[_2092]]) + 32 >= 0
                            mem[64] = _2092 + ceil32(return_data.size) + (32 * mem[_2092 + mem[_2092]]) + 32
                            mem[_2092 + ceil32(return_data.size)] = _2124
                            require _2108 + (32 * _2124) + 32 <= return_data.size
                            s = 0
                            t = _2092 + _2108 + 32
                            u = _2092 + ceil32(return_data.size) + 32
                            while s < _2124:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2124
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2092 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1269 + 164] = return_data.size
                        mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + ceil32(return_data.size) + idx + 233] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2109 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2125 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2109 + (32 * _2125) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2109 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2125:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2125
                        else:
                            require return_data.size >= 32
                            require mem[_1269 + 196] == bool(mem[_1269 + 196])
                            if not mem[_1269 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2110 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2126 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2110 + (32 * _2126) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2110 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2126:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2126
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
                else:
                    mem[_1269 + _1297 + 164] = 0
                    call address(_1218).mem[_1269 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1269 + 168 len _1297 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1269 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + idx + 232] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + 232]
                        if mem[96] <= 0:
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2095 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2111 = mem[_2095]
                            require mem[_2095] <= test266151307()
                            require _2095 + mem[_2095] + 31 < _2095 + return_data.size
                            _2127 = mem[_2095 + mem[_2095]]
                            require mem[_2095 + mem[_2095]] <= test266151307()
                            require _2095 + ceil32(return_data.size) + (32 * mem[_2095 + mem[_2095]]) + 32 <= test266151307() and (32 * mem[_2095 + mem[_2095]]) + 32 >= 0
                            mem[64] = _2095 + ceil32(return_data.size) + (32 * mem[_2095 + mem[_2095]]) + 32
                            mem[_2095 + ceil32(return_data.size)] = _2127
                            require _2111 + (32 * _2127) + 32 <= return_data.size
                            s = 0
                            t = _2095 + _2111 + 32
                            u = _2095 + ceil32(return_data.size) + 32
                            while s < _2127:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2127
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2095 + ceil32(return_data.size) + 64]
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + 164] = 2
                            mem[64] = _1269 + 260
                            mem[_1269 + 196] = address(_1218)
                            mem[_1269 + 228] = address(_1224)
                            mem[_1269 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + 264] = _1230
                            mem[_1269 + 296] = 0
                            mem[_1269 + 328] = 160
                            mem[_1269 + 424] = 2
                            s = 0
                            t = _1269 + 196
                            u = _1269 + 456
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + 360] = this.address
                            mem[_1269 + 392] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1269 + -mem[64] + 516]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2096 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2112 = mem[_2096]
                            require mem[_2096] <= test266151307()
                            require _2096 + mem[_2096] + 31 < _2096 + return_data.size
                            _2128 = mem[_2096 + mem[_2096]]
                            require mem[_2096 + mem[_2096]] <= test266151307()
                            require _2096 + ceil32(return_data.size) + (32 * mem[_2096 + mem[_2096]]) + 32 <= test266151307() and (32 * mem[_2096 + mem[_2096]]) + 32 >= 0
                            mem[64] = _2096 + ceil32(return_data.size) + (32 * mem[_2096 + mem[_2096]]) + 32
                            mem[_2096 + ceil32(return_data.size)] = _2128
                            require _2112 + (32 * _2128) + 32 <= return_data.size
                            s = 0
                            t = _2096 + _2112 + 32
                            u = _2096 + ceil32(return_data.size) + 32
                            while s < _2128:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2128
                            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2096 + ceil32(return_data.size) + 64]
                    else:
                        mem[_1269 + 164] = return_data.size
                        mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[_1269 + ceil32(return_data.size) + idx + 233] = mem[_1269 + idx + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1269 + ceil32(return_data.size) + 233]
                        if return_data.size <= 0:
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2113 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2129 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2113 + (32 * _2129) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2113 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2129:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2129
                        else:
                            require return_data.size >= 32
                            require mem[_1269 + 196] == bool(mem[_1269 + 196])
                            if not mem[_1269 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_1269 + ceil32(return_data.size) + 165] = 2
                            mem[_1269 + ceil32(return_data.size) + 197] = address(_1218)
                            mem[_1269 + ceil32(return_data.size) + 229] = address(_1224)
                            mem[_1269 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_1269 + ceil32(return_data.size) + 265] = _1230
                            mem[_1269 + ceil32(return_data.size) + 297] = 0
                            mem[_1269 + ceil32(return_data.size) + 329] = 160
                            mem[_1269 + ceil32(return_data.size) + 425] = 2
                            s = 0
                            t = _1269 + ceil32(return_data.size) + 197
                            u = _1269 + ceil32(return_data.size) + 457
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1269 + ceil32(return_data.size) + 361] = this.address
                            mem[_1269 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                            require ext_code.size(address(_1210))
                            call address(_1210).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _1230, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1269 + ceil32(return_data.size) + 457 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1269 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                            require return_data.size >= 32
                            _2114 = mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32
                            require mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 <= test266151307()
                            require _1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 292 < _1269 + ceil32(return_data.size) + return_data.size + 261
                            _2130 = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261] <= test266151307()
                            require _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 32 >= 0
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]) + 293
                            mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[_1269 + ceil32(return_data.size) + mem[_1269 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1230) >> 32 + 261]
                            require _2114 + (32 * _2130) + 32 <= return_data.size
                            s = 0
                            t = _1269 + ceil32(return_data.size) + _2114 + 293
                            u = _1269 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                            while s < _2130:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require 1 < _2130
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1269 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            idx = idx + 1
            continue 
        require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
            revert with 0, 'ne'
        mem[mem[64]] = 32
        _1235 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _1235] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1235]
        return 32, mem[mem[64] + 32 len (32 * _1235) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = cd[68]
    idx = 0
    while idx < ('cd', 36).length - 1:
        require idx < mem[96]
        _1215 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _1221 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _1227 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _1232 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_1215)
        require ext_code.size(address(_1221))
        staticcall address(_1221).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(_1215)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1246] == mem[_1246]
        if mem[_1246] >= _1232:
            _1250 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1250]
            mem[_1250 + 32] = address(_1221)
            require 1 < mem[_1250]
            mem[_1250 + 64] = address(_1227)
            mem[_1250 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1250 + 100] = _1232
            mem[_1250 + 132] = 0
            mem[_1250 + 164] = 160
            mem[_1250 + 260] = mem[_1250]
            s = 0
            t = _1250 + 32
            u = _1250 + 292
            while s < mem[_1250]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1250 + 196] = this.address
            mem[_1250 + 228] = block.timestamp + cd[100]
            require ext_code.size(address(_1215))
            call address(_1215).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1250 + (32 * mem[_1250]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1722 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1728 = mem[_1722]
            require mem[_1722] <= test266151307()
            require _1722 + mem[_1722] + 31 < _1722 + return_data.size
            _1752 = mem[_1722 + mem[_1722]]
            require mem[_1722 + mem[_1722]] <= test266151307()
            require _1722 + ceil32(return_data.size) + (32 * mem[_1722 + mem[_1722]]) + 32 <= test266151307() and (32 * mem[_1722 + mem[_1722]]) + 32 >= 0
            mem[64] = _1722 + ceil32(return_data.size) + (32 * mem[_1722 + mem[_1722]]) + 32
            mem[_1722 + ceil32(return_data.size)] = _1752
            require _1728 + (32 * _1752) + 32 <= return_data.size
            s = 0
            t = _1722 + _1728 + 32
            u = _1722 + ceil32(return_data.size) + 32
            while s < _1752:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require 1 < _1752
            require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1722 + ceil32(return_data.size) + 64]
        else:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_1215)
            require ext_code.size(address(_1221))
            staticcall address(_1221).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(_1215)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1264] == mem[_1264]
            if mem[_1264]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _1271 = mem[64]
            mem[mem[64] + 36] = address(_1215)
            mem[mem[64] + 68] = -1
            _1283 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1283 + 32] = mem[_1283 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _1271 + 164
            mem[_1271 + 100] = 32
            mem[_1271 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(_1221)) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1299 = mem[_1283]
            s = 0
            while s < _1299:
                mem[_1271 + s + 164] = mem[_1283 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1299) <= _1299:
                call address(_1221).mem[_1271 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1299 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1271 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + idx + 232] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + 232]
                    if mem[96] <= 0:
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2099 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2115 = mem[_2099]
                        require mem[_2099] <= test266151307()
                        require _2099 + mem[_2099] + 31 < _2099 + return_data.size
                        _2131 = mem[_2099 + mem[_2099]]
                        require mem[_2099 + mem[_2099]] <= test266151307()
                        require _2099 + ceil32(return_data.size) + (32 * mem[_2099 + mem[_2099]]) + 32 <= test266151307() and (32 * mem[_2099 + mem[_2099]]) + 32 >= 0
                        mem[64] = _2099 + ceil32(return_data.size) + (32 * mem[_2099 + mem[_2099]]) + 32
                        mem[_2099 + ceil32(return_data.size)] = _2131
                        require _2115 + (32 * _2131) + 32 <= return_data.size
                        s = 0
                        t = _2099 + _2115 + 32
                        u = _2099 + ceil32(return_data.size) + 32
                        while s < _2131:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2131
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2099 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2100 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2116 = mem[_2100]
                        require mem[_2100] <= test266151307()
                        require _2100 + mem[_2100] + 31 < _2100 + return_data.size
                        _2132 = mem[_2100 + mem[_2100]]
                        require mem[_2100 + mem[_2100]] <= test266151307()
                        require _2100 + ceil32(return_data.size) + (32 * mem[_2100 + mem[_2100]]) + 32 <= test266151307() and (32 * mem[_2100 + mem[_2100]]) + 32 >= 0
                        mem[64] = _2100 + ceil32(return_data.size) + (32 * mem[_2100 + mem[_2100]]) + 32
                        mem[_2100 + ceil32(return_data.size)] = _2132
                        require _2116 + (32 * _2132) + 32 <= return_data.size
                        s = 0
                        t = _2100 + _2116 + 32
                        u = _2100 + ceil32(return_data.size) + 32
                        while s < _2132:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2132
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2100 + ceil32(return_data.size) + 64]
                else:
                    mem[_1271 + 164] = return_data.size
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + ceil32(return_data.size) + idx + 233] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2117 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2133 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2133
                        require _2117 + (32 * _2133) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2117 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2133:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2133
                    else:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2118 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2134 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2134
                        require _2118 + (32 * _2134) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2118 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2134:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2134
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
            else:
                mem[_1271 + _1299 + 164] = 0
                call address(_1221).mem[_1271 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1299 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1271 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + idx + 232] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + 232]
                    if mem[96] <= 0:
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2103 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2119 = mem[_2103]
                        require mem[_2103] <= test266151307()
                        require _2103 + mem[_2103] + 31 < _2103 + return_data.size
                        _2135 = mem[_2103 + mem[_2103]]
                        require mem[_2103 + mem[_2103]] <= test266151307()
                        require _2103 + ceil32(return_data.size) + (32 * mem[_2103 + mem[_2103]]) + 32 <= test266151307() and (32 * mem[_2103 + mem[_2103]]) + 32 >= 0
                        mem[64] = _2103 + ceil32(return_data.size) + (32 * mem[_2103 + mem[_2103]]) + 32
                        mem[_2103 + ceil32(return_data.size)] = _2135
                        require _2119 + (32 * _2135) + 32 <= return_data.size
                        s = 0
                        t = _2103 + _2119 + 32
                        u = _2103 + ceil32(return_data.size) + 32
                        while s < _2135:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2135
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2103 + ceil32(return_data.size) + 64]
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + 164] = 2
                        mem[64] = _1271 + 260
                        mem[_1271 + 196] = address(_1221)
                        mem[_1271 + 228] = address(_1227)
                        mem[_1271 + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + 264] = _1232
                        mem[_1271 + 296] = 0
                        mem[_1271 + 328] = 160
                        mem[_1271 + 424] = 2
                        s = 0
                        t = _1271 + 196
                        u = _1271 + 456
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + 360] = this.address
                        mem[_1271 + 392] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1271 + -mem[64] + 516]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2104 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2120 = mem[_2104]
                        require mem[_2104] <= test266151307()
                        require _2104 + mem[_2104] + 31 < _2104 + return_data.size
                        _2136 = mem[_2104 + mem[_2104]]
                        require mem[_2104 + mem[_2104]] <= test266151307()
                        require _2104 + ceil32(return_data.size) + (32 * mem[_2104 + mem[_2104]]) + 32 <= test266151307() and (32 * mem[_2104 + mem[_2104]]) + 32 >= 0
                        mem[64] = _2104 + ceil32(return_data.size) + (32 * mem[_2104 + mem[_2104]]) + 32
                        mem[_2104 + ceil32(return_data.size)] = _2136
                        require _2120 + (32 * _2136) + 32 <= return_data.size
                        s = 0
                        t = _2104 + _2120 + 32
                        u = _2104 + ceil32(return_data.size) + 32
                        while s < _2136:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2136
                        require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                        mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_2104 + ceil32(return_data.size) + 64]
                else:
                    mem[_1271 + 164] = return_data.size
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1271 + ceil32(return_data.size) + idx + 233] = mem[_1271 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1271 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2121 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2137 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2137
                        require _2121 + (32 * _2137) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2121 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2137:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2137
                    else:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_1271 + ceil32(return_data.size) + 165] = 2
                        mem[_1271 + ceil32(return_data.size) + 197] = address(_1221)
                        mem[_1271 + ceil32(return_data.size) + 229] = address(_1227)
                        mem[_1271 + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1271 + ceil32(return_data.size) + 265] = _1232
                        mem[_1271 + ceil32(return_data.size) + 297] = 0
                        mem[_1271 + ceil32(return_data.size) + 329] = 160
                        mem[_1271 + ceil32(return_data.size) + 425] = 2
                        s = 0
                        t = _1271 + ceil32(return_data.size) + 197
                        u = _1271 + ceil32(return_data.size) + 457
                        while s < 2:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1271 + ceil32(return_data.size) + 361] = this.address
                        mem[_1271 + ceil32(return_data.size) + 393] = block.timestamp + cd[100]
                        require ext_code.size(address(_1215))
                        call address(_1215).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _1232, 0, 160, address(this.address), block.timestamp + cd[100], 2, mem[_1271 + ceil32(return_data.size) + 457 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1271 + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2122 = mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32
                        require mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 <= test266151307()
                        require _1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 292 < _1271 + ceil32(return_data.size) + return_data.size + 261
                        _2138 = mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]
                        require mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261] <= test266151307()
                        require _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293 <= test266151307() and (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 32 >= 0
                        mem[64] = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * mem[_1271 + ceil32(return_data.size) + mem[_1271 + ceil32(return_data.size) + 261 len 4], Mask(224, 32, _1232) >> 32 + 261]) + 293
                        mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = _2138
                        require _2122 + (32 * _2138) + 32 <= return_data.size
                        s = 0
                        t = _1271 + ceil32(return_data.size) + _2122 + 293
                        u = _1271 + ceil32(return_data.size) + ceil32(return_data.size) + 293
                        while s < _2138:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require 1 < _2138
                    require idx + 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[(32 * idx + 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_1271 + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        idx = idx + 1
        continue 
    require 0 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    require mem[(32 * ('cd', 4).length) + 128] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    if mem[(32 * mem[(32 * ('cd', 4).length) + 128] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] <= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]:
        revert with 0, 'ne'
    mem[mem[64]] = 32
    _1236 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _1236] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _1236]
    return 32, mem[mem[64] + 32 len (32 * _1236) + 32]
}



}
