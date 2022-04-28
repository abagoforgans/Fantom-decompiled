contract main {




// =====================  Runtime code  =====================


address owner;
uint256 name;
address sub_e13b7f5cAddress;

function name() {
    return name
}

function owner() {
    return owner
}

function sub_e13b7f5c(?) {
    return sub_e13b7f5cAddress
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

function multisend(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'AuraMultisend::multisend: Bad array length'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _425 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            _427 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 68] = 0
            _430 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_430 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_430 + 36 len 28]
            mem[64] = _427 + 164
            mem[_427 + 100] = 32
            mem[_427 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e13b7f5cAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_e13b7f5cAddress):
                revert with 0, 'Address: call to non-contract'
            _439 = mem[_430]
            s = 0
            while s < _439:
                mem[s + _427 + 164] = mem[s + _430 + 32]
                s = s + 32
                continue 
            if ceil32(_439) > _439:
                mem[_427 + _439 + 164] = 0
            call sub_e13b7f5cAddress.mem[_427 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_427 + 168 len _439 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_427 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_427 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _427 + 232] = mem[idx + _427 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_427 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _427 + ceil32(return_data.size) + 165
                mem[_427 + 164] = return_data.size
                mem[_427 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_427 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_427 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _427 + ceil32(return_data.size) + 233] = mem[idx + _427 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_427 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_427 + 196] == bool(mem[_427 + 196])
                    if not mem[_427 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            _429 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 68] = 10^18 * _425
            _433 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_433 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_433 + 36 len 28]
            mem[64] = _429 + 164
            mem[_429 + 100] = 32
            mem[_429 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e13b7f5cAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_e13b7f5cAddress):
                revert with 0, 'Address: call to non-contract'
            _445 = mem[_433]
            s = 0
            while s < _445:
                mem[s + _429 + 164] = mem[s + _433 + 32]
                s = s + 32
                continue 
            if ceil32(_445) > _445:
                mem[_429 + _445 + 164] = 0
            call sub_e13b7f5cAddress.mem[_429 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_429 + 168 len _445 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_429 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_429 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _429 + 232] = mem[idx + _429 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_429 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _429 + ceil32(return_data.size) + 165
                mem[_429 + 164] = return_data.size
                mem[_429 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_429 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_429 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _429 + ceil32(return_data.size) + 233] = mem[idx + _429 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_429 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_429 + 196] == bool(mem[_429 + 196])
                    if not mem[_429 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
}



}
