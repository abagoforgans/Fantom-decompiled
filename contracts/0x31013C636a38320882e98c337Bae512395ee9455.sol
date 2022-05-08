contract main {




// =====================  Runtime code  =====================


address owner;
address uniRouterAddress;
uint256 slippageFactor;

function uniRouterAddress() payable {
    return uniRouterAddress
}

function owner() payable {
    return owner
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_18a958f0(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    slippageFactor = arg1
    uniRouterAddress = address(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function transfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function swap(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg2.length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + 101] = arg1
    mem[ceil32(32 * arg2.length) + 133] = 64
    mem[ceil32(32 * arg2.length) + 165] = arg2.length
    idx = 0
    s = 128
    t = ceil32(32 * arg2.length) + 197
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniRouterAddress)
    staticcall uniRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + 197 len 32 * arg2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg2.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _51 = mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(32 * arg2.length) + return_data.size + 97 > ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 128
    _52 = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
    if mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 1 < 0 or ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]) + 98
    mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * arg2.length) + mem[ceil32(32 * arg2.length) + 97 len 4], Mask(224, 32, arg1) >> 32 + 97]
    require _51 + (32 * _52) + 32 <= return_data.size
    mem[ceil32(32 * arg2.length) + ceil32(return_data.size) + 129 len 32 * _52] = mem[ceil32(32 * arg2.length) + _51 + 129 len 32 * _52]
    if _52 < 1:
        revert with 0, 17
    if _52 - 1 >= _52:
        revert with 0, 50
    if mem[(32 * _52 - 1) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 129] and slippageFactor > -1 / mem[(32 * _52 - 1) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 129]:
        revert with 0, 17
    if 600 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = mem[(32 * _52 - 1) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 129] * slippageFactor / 1000
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = arg2.length
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + 600
    require ext_code.size(uniRouterAddress)
    call uniRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, mem[mem[64] + 36], Array(len=arg2.length, data=mem[mem[64] + 196 len 32 * arg2.length]), msg.sender, block.timestamp + 600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _82 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_82] <= test266151307()
    require _82 + return_data.size > _82 + mem[_82] + 31
    if mem[_82 + mem[_82]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_82 + mem[_82]]) + 1 < 0 or _82 + ceil32(return_data.size) + ceil32(32 * mem[_82 + mem[_82]]) + 1 > test266151307():
        revert with 0, 65
    require mem[_82] + (32 * mem[_82 + mem[_82]]) + 32 <= return_data.size
}



}
