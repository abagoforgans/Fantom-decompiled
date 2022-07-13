contract main {




// =====================  Runtime code  =====================


#
#  - sub_36eafecb(?)
#  - sub_5309806d(?)
#
address owner;
address stor1;
address stor2;

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

function sub_0040578e(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 0xf94d466800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getPoolTokens(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _28 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 127 < return_data.size + 96
    _30 = mem[mem[128] + 96]
    if mem[mem[128] + 96] > test266151307():
        revert with 0, 65
    _31 = mem[64]
    if mem[64] + ceil32(32 * mem[mem[128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[mem[128] + 96]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[mem[128] + 96]) + 1
    mem[_31] = _30
    require _28 + (32 * _30) + 32 <= return_data.size
    mem[_31 + 32 len 32 * _30] = mem[_28 + 128 len 32 * _30]
    idx = 0
    s = 0
    t = 0
    while idx < _5:
        if idx >= _5:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg2):
            if idx >= _5:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= _30:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[(32 * idx) + _31 + 32]
            t = t
            continue 
        if idx >= _30:
            revert with 0, 50
        if idx >= _5:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] != address(arg3):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = mem[(32 * idx) + _31 + 32]
            continue 
        if idx >= _30:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * idx) + _31 + 32]
        t = mem[(32 * idx) + _31 + 32]
        continue 
    return t, s
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
    require arg4.length >= 256
    if not bool(ceil32(ceil32(arg4.length)) + 353 <= test266151307()):
        revert with 0, 65
    require mem[128] == mem[140 len 20]
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(ceil32(arg4.length)) + 129] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(ceil32(arg4.length)) + 161] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(ceil32(arg4.length)) + 193] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(ceil32(arg4.length)) + 225] = mem[256]
    mem[ceil32(ceil32(arg4.length)) + 257] = mem[288]
    mem[ceil32(ceil32(arg4.length)) + 289] = mem[320]
    mem[ceil32(ceil32(arg4.length)) + 321] = mem[352]
    mem[ceil32(ceil32(arg4.length)) + 417] = mem[ceil32(ceil32(arg4.length)) + 205 len 20]
    mem[ceil32(ceil32(arg4.length)) + 449] = mem[ceil32(ceil32(arg4.length)) + 237 len 20]
    require ext_code.size(mem[ceil32(ceil32(arg4.length)) + 205 len 20])
    if arg2 > 0:
        call mem[ceil32(ceil32(arg4.length)) + 205 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 500 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 933] = mem[ceil32(ceil32(arg4.length)) + 321]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 965] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997] = mem[ceil32(ceil32(arg4.length)) + 429 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1029] = mem[ceil32(ceil32(arg4.length)) + 461 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1061] = arg2
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1093] = 192
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1125] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1157 len 0] = None
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 901] = block.timestamp + (500 * 3600)
        require ext_code.size(stor2)
        call stor2.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args 224, address(this.address), 1, address(this.address), 1, 1, block.timestamp + (500 * 3600), mem[ceil32(ceil32(arg4.length)) + 321], 0, mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997 len 64], arg2, 192, 0
    else:
        call mem[ceil32(ceil32(arg4.length)) + 205 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 500 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 933] = mem[ceil32(ceil32(arg4.length)) + 321]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 965] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997] = mem[ceil32(ceil32(arg4.length)) + 429 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1029] = mem[ceil32(ceil32(arg4.length)) + 461 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1061] = arg3
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1093] = 192
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1125] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1157 len 0] = None
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 901] = block.timestamp + (500 * 3600)
        require ext_code.size(stor2)
        call stor2.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args 224, address(this.address), 1, address(this.address), 1, 1, block.timestamp + (500 * 3600), mem[ceil32(ceil32(arg4.length)) + 321], 0, mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997 len 64], arg3, 192, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(mem[ceil32(ceil32(arg4.length)) + 237 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 869 len 96] = 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0
    call mem[ceil32(ceil32(arg4.length)) + 237 len 20] with:
       funct Mask(32, 224, 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901] == bool(mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901])
            if not mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
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
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 256
    if not bool(ceil32(ceil32(arg4.length)) + 353 <= test266151307()):
        revert with 0, 65
    require mem[128] == mem[140 len 20]
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(ceil32(arg4.length)) + 129] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(ceil32(arg4.length)) + 161] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(ceil32(arg4.length)) + 193] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(ceil32(arg4.length)) + 225] = mem[256]
    mem[ceil32(ceil32(arg4.length)) + 257] = mem[288]
    mem[ceil32(ceil32(arg4.length)) + 289] = mem[320]
    mem[ceil32(ceil32(arg4.length)) + 321] = mem[352]
    mem[ceil32(ceil32(arg4.length)) + 417] = mem[ceil32(ceil32(arg4.length)) + 205 len 20]
    mem[ceil32(ceil32(arg4.length)) + 449] = mem[ceil32(ceil32(arg4.length)) + 237 len 20]
    require ext_code.size(mem[ceil32(ceil32(arg4.length)) + 205 len 20])
    if arg2 > 0:
        call mem[ceil32(ceil32(arg4.length)) + 205 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 500 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 933] = mem[ceil32(ceil32(arg4.length)) + 321]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 965] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997] = mem[ceil32(ceil32(arg4.length)) + 429 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1029] = mem[ceil32(ceil32(arg4.length)) + 461 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1061] = arg2
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1093] = 192
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1125] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1157 len 0] = None
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 901] = block.timestamp + (500 * 3600)
        require ext_code.size(stor2)
        call stor2.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args 224, address(this.address), 1, address(this.address), 1, 1, block.timestamp + (500 * 3600), mem[ceil32(ceil32(arg4.length)) + 321], 0, mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997 len 64], arg2, 192, 0
    else:
        call mem[ceil32(ceil32(arg4.length)) + 205 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 500 * 3600 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 933] = mem[ceil32(ceil32(arg4.length)) + 321]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 965] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997] = mem[ceil32(ceil32(arg4.length)) + 429 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1029] = mem[ceil32(ceil32(arg4.length)) + 461 len 20]
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1061] = arg3
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1093] = 192
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1125] = 0
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 1157 len 0] = None
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 901] = block.timestamp + (500 * 3600)
        require ext_code.size(stor2)
        call stor2.swap(bytes32 arg1, uint8 arg2, address arg3, address arg4, uint256 arg5, bytes arg6, address arg7, bool arg8, address arg9, bool arg10, uint256 arg11, uint256 arg12) with:
             gas gas_remaining wei
            args 224, address(this.address), 1, address(this.address), 1, 1, block.timestamp + (500 * 3600), mem[ceil32(ceil32(arg4.length)) + 321], 0, mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 997 len 64], arg3, 192, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(mem[ceil32(ceil32(arg4.length)) + 237 len 20]):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 869 len 96] = 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0
    call mem[ceil32(ceil32(arg4.length)) + 237 len 20] with:
       funct Mask(32, 224, 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, mem[ceil32(ceil32(arg4.length)) + 109 len 20], mem[ceil32(ceil32(arg4.length)) + 257], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg4.length:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901] == bool(mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901])
            if not mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 901]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return arg4[all]
}



}
