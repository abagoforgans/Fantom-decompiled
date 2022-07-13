contract main {




// =====================  Runtime code  =====================


address owner;
address mimAddress;
address sub_9bc67e99Address;
address ethAddress;
address btcAddress;
address sub_c06ec14fAddress;
address sub_c72cadceAddress;
address routerAddress;

function eth() payable {
    return ethAddress
}

function owner() payable {
    return owner
}

function sub_9bc67e99(?) payable {
    return sub_9bc67e99Address
}

function mim() payable {
    return mimAddress
}

function btc() payable {
    return btcAddress
}

function sub_c06ec14f(?) payable {
    return sub_c06ec14fAddress
}

function sub_c72cadce(?) payable {
    return sub_c72cadceAddress
}

function router() payable {
    return routerAddress
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

function sub_38e4f064(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'withdrawAsset: error'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_53de57e5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c72cadceAddress)
    staticcall sub_c72cadceAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'withdrawFromVault: not enough funds in vault'
    require ext_code.size(sub_c72cadceAddress)
    call sub_c72cadceAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_c06ec14fAddress)
    call sub_c06ec14fAddress.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3650b918(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 3
    mem[128] = mimAddress
    mem[160] = sub_9bc67e99Address
    mem[192] = address(arg3)
    mem[228] = routerAddress
    mem[260] = arg2
    require ext_code.size(mimAddress)
    call mimAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, arg2
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg2
    mem[ceil32(return_data.size) + 260] = 0
    mem[ceil32(return_data.size) + 292] = 160
    mem[ceil32(return_data.size) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 420
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = address(arg1)
    mem[ceil32(return_data.size) + 356] = block.timestamp + 10
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 0, 160, address(arg1), block.timestamp + 10, 3, mem[ceil32(return_data.size) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _27 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _28 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    require return_data.size >= _27 + (32 * _28) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _28] = mem[ceil32(return_data.size) + _27 + 256 len 32 * _28]
    if 1 >= _28:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 288]
    return memory
      from mem[64]
       len 32
}

function sub_dce03fa6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10 * 10^18:
        revert with 0, 'dca: amount must be >= 10$'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    require ext_code.size(sub_c72cadceAddress)
    staticcall sub_c72cadceAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'withdrawFromVault: not enough funds in vault'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(sub_c72cadceAddress)
    call sub_c72cadceAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_c06ec14fAddress)
    call sub_c06ec14fAddress.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(4 * ceil32(return_data.size)) + 96] = 3
    mem[(4 * ceil32(return_data.size)) + 128] = mimAddress
    mem[(4 * ceil32(return_data.size)) + 160] = sub_9bc67e99Address
    mem[(4 * ceil32(return_data.size)) + 192] = address(arg2)
    mem[(4 * ceil32(return_data.size)) + 228] = routerAddress
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(mimAddress)
    call mimAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 260] = 0
    mem[(6 * ceil32(return_data.size)) + 292] = 160
    mem[(6 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (6 * ceil32(return_data.size)) + 420
    t = (4 * ceil32(return_data.size)) + 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 10
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 10, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _51 = mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
    require mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
    _52 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
        revert with 0, 65
    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
    mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
    require return_data.size >= _51 + (32 * _52) + 32
    mem[(7 * ceil32(return_data.size)) + 256 len 32 * _52] = mem[(6 * ceil32(return_data.size)) + _51 + 256 len 32 * _52]
    if 1 >= _52:
        revert with 0, 50
    _63 = mem[(7 * ceil32(return_data.size)) + 288]
    mem[mem[64]] = mem[(7 * ceil32(return_data.size)) + 288]
    emit 0xc9f8219e: mem[mem[64]], msg.sender, address(arg2), ext_call.return_data[0]
    return _63
}



}
