contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of struct stor2;
mapping of uint256 stor3;

function baseTokensContains(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit BaseTokenAdded(arg1);
}

function getBaseTokens() {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if idx >= stor2.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor2[idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function removeBaseToken(address arg1) {
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
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 0, 17
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 0, 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 0, 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}

function sub_114fee4e(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg1, 0, address(this.address), 128, arg2.length, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    revert with 0, 'oops'
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    if not eth.balance(this.address):
        if var38002 >= stor2.length:
        if var44001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(address(var50001))
        staticcall var52002.mem[var52003 len 4] with:
                gas gas_remaining wei
               args mem[var52003 + 4 len var52004 - 4]
        mem[var52005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require var56002 - var56001 >= 32
        if not var60001:
            if var64001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var64006
            require ext_code.size(var64003)
            call var66002.mem[var66004 len 4] with:
                 gas gas_remaining wei
                args mem[var66004 + 4 len var66005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(owner, eth.balance(this.address));
        if var41002 >= stor2.length:
        if var47001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        require ext_code.size(address(var53001))
        staticcall var55002.mem[var55003 len 4] with:
                gas gas_remaining wei
               args mem[var55003 + 4 len var55004 - 4]
        mem[var55005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require var59002 - var59001 >= 32
        if not var63001:
            if var67001 == -1:
                revert with 0, 17
            # nil
        else:
            mem[ceil32(return_data.size) + 96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = owner
            mem[ceil32(return_data.size) + 132] = var67006
            require ext_code.size(var67003)
            call var69002.mem[var69004 len 4] with:
                 gas gas_remaining wei
                args mem[var69004 + 4 len var69005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 64
    _7 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _8 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128] + 128]) + 98 < 97 or ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[128] + 128]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg4.length)) + ceil32(32 * mem[mem[128] + 128]) + 98
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[mem[128] + 128]
    require _7 + (32 * _8) + 64 <= arg4.length + 32
    s = _7 + 160
    t = ceil32(ceil32(arg4.length)) + 129
    idx = 0
    while idx < _8:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _101 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _103 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 0, 65
    _104 = mem[64]
    if mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1
    mem[_104] = mem[mem[160] + 128]
    require _101 + (32 * _103) + 64 <= arg4.length + 32
    idx = 0
    s = _101 + 160
    t = _104 + 32
    while idx < _103:
        _192 = mem[s]
        require mem[s] <= test266151307()
        require arg4.length + 128 > _101 + mem[s] + 191
        _195 = mem[_101 + mem[s] + 160]
        if mem[_101 + mem[s] + 160] > test266151307():
            revert with 0, 65
        _200 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_101 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_101 + mem[s] + 160])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_101 + mem[s] + 160])) + 1
        mem[_200] = _195
        require _101 + _192 + _195 + 96 <= arg4.length + 32
        u = 0
        while u < _195:
            mem[u + _200 + 32] = mem[u + _101 + _192 + 192]
            u = u + 32
            continue 
        if ceil32(_195) > _195:
            mem[_200 + _195 + 32] = 0
        mem[t] = _200
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(ceil32(arg4.length)) + 97] == mem[_104]
    if 0 >= mem[ceil32(ceil32(arg4.length)) + 97]:
        revert with 0, 50
    mem[mem[64] + 4] = mem[ceil32(ceil32(arg4.length)) + 141 len 20]
    mem[mem[64] + 36] = arg2
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _201 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_201] == bool(mem[_201])
    _279 = mem[ceil32(ceil32(arg4.length)) + 97]
    idx = 0
    while idx < _279:
        if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
            revert with 0, 50
        _282 = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
        if idx >= mem[_104]:
            revert with 0, 50
        _284 = mem[(32 * idx) + _104 + 32]
        _285 = mem[64]
        _286 = mem[mem[(32 * idx) + _104 + 32]]
        s = 0
        while s < _286:
            mem[s + _285] = mem[s + _284 + 32]
            _279 = mem[ceil32(ceil32(arg4.length)) + 97]
            s = s + 32
            continue 
        if ceil32(_286) <= _286:
            call address(_282).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _286 + _285 + -mem[64] - 4]
            if return_data.size:
                _361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_361] = return_data.size
                mem[_361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_285 + _286] = 0
            call address(_282).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _286 + _285 + -mem[64] - 4]
            if return_data.size:
                _364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_364] = return_data.size
                mem[_364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if idx == -1:
            revert with 0, 17
        _279 = mem[ceil32(ceil32(arg4.length)) + 97]
        idx = idx + 1
        continue 
    if arg2 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * arg2 / 997):
        revert with 0, 17
    if arg2 > !((3 * arg2 / 997) + 1):
        revert with 0, 17
    _292 = mem[64]
    mem[mem[64] + 36] = stor1
    mem[mem[64] + 68] = arg2 + (3 * arg2 / 997) + 1
    _293 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_292 + 100] = 32
    mem[_292 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    _300 = mem[_293]
    mem[_292 + 164 len ceil32(mem[_293])] = mem[_293 + 32 len ceil32(mem[_293])]
    if ceil32(_300) > _300:
        mem[_292 + _300 + 164] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
         gas gas_remaining wei
        args mem[_292 + 168 len _300 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_292 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_292 + 196] == bool(mem[_292 + 196])
            if not mem[_292 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg3.length >= 64
    _7 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg3.length + 128
    _8 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[128] + 128]) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(32 * mem[mem[128] + 128]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(32 * mem[mem[128] + 128]) + 98
    mem[ceil32(ceil32(arg3.length)) + 97] = mem[mem[128] + 128]
    require _7 + (32 * _8) + 64 <= arg3.length + 32
    s = _7 + 160
    t = ceil32(ceil32(arg3.length)) + 129
    idx = 0
    while idx < _8:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _109 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg3.length + 128
    _111 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 0, 65
    _112 = mem[64]
    if mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[mem[160] + 128]) + 1
    mem[_112] = mem[mem[160] + 128]
    require _109 + (32 * _111) + 64 <= arg3.length + 32
    idx = 0
    s = _109 + 160
    t = _112 + 32
    while idx < _111:
        _208 = mem[s]
        require mem[s] <= test266151307()
        require arg3.length + 128 > _109 + mem[s] + 191
        _211 = mem[_109 + mem[s] + 160]
        if mem[_109 + mem[s] + 160] > test266151307():
            revert with 0, 65
        _216 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_109 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_109 + mem[s] + 160])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_109 + mem[s] + 160])) + 1
        mem[_216] = _211
        require _109 + _208 + _211 + 96 <= arg3.length + 32
        u = 0
        while u < _211:
            mem[u + _216 + 32] = mem[u + _109 + _208 + 192]
            u = u + 32
            continue 
        if ceil32(_211) > _211:
            mem[_216 + _211 + 32] = 0
        mem[t] = _216
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require mem[ceil32(ceil32(arg3.length)) + 97] == mem[_112]
    if 0 >= mem[ceil32(ceil32(arg3.length)) + 97]:
        revert with 0, 50
    mem[mem[64] + 4] = mem[ceil32(ceil32(arg3.length)) + 141 len 20]
    mem[mem[64] + 36] = arg2
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_217] == bool(mem[_217])
    _303 = mem[ceil32(ceil32(arg3.length)) + 97]
    idx = 0
    while idx < _303:
        if idx >= mem[ceil32(ceil32(arg3.length)) + 97]:
            revert with 0, 50
        _306 = mem[(32 * idx) + ceil32(ceil32(arg3.length)) + 129]
        if idx >= mem[_112]:
            revert with 0, 50
        _308 = mem[(32 * idx) + _112 + 32]
        _309 = mem[64]
        _310 = mem[mem[(32 * idx) + _112 + 32]]
        s = 0
        while s < _310:
            mem[s + _309] = mem[s + _308 + 32]
            _303 = mem[ceil32(ceil32(arg3.length)) + 97]
            s = s + 32
            continue 
        if ceil32(_310) <= _310:
            call address(_306).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _310 + _309 + -mem[64] - 4]
            if return_data.size:
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_393] = return_data.size
                mem[_393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_309 + _310] = 0
            call address(_306).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _310 + _309 + -mem[64] - 4]
            if return_data.size:
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_396] = return_data.size
                mem[_396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if idx == -1:
            revert with 0, 17
        _303 = mem[ceil32(ceil32(arg3.length)) + 97]
        idx = idx + 1
        continue 
    if arg2 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if 1 > !(3 * arg2 / 997):
        revert with 0, 17
    if arg2 > !((3 * arg2 / 997) + 1):
        revert with 0, 17
    _316 = mem[64]
    mem[mem[64] + 36] = stor1
    mem[mem[64] + 68] = arg2 + (3 * arg2 / 997) + 1
    _317 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_316 + 100] = 32
    mem[_316 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    _324 = mem[_317]
    mem[_316 + 164 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
    if ceil32(_324) > _324:
        mem[_316 + _324 + 164] = 0
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
         gas gas_remaining wei
        args mem[_316 + 168 len _324 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_316 + 164] = return_data.size
        mem[_316 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_316 + 196] == bool(mem[_316 + 196])
            if not mem[_316 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return memory
      from 128
       len mem[96]
}



}
