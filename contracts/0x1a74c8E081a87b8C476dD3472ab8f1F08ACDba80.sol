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

function sub_2324c4f1(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if arg1 < 10 * 10^18:
        revert with 0, 'dcaIn: amount must be >= 10$'
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
    mem[64] = (6 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10 > !block.timestamp:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 260] = arg3
    mem[(6 * ceil32(return_data.size)) + 292] = 160
    mem[(6 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = (6 * ceil32(return_data.size)) + 420
    t = (4 * ceil32(return_data.size)) + 128
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 10
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _56 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _57 = mem[_56]
    require mem[_56] <= test266151307()
    require _56 + mem[_56] + 31 < _56 + return_data.size
    _58 = mem[_56 + mem[_56]]
    if mem[_56 + mem[_56]] > test266151307():
        revert with 0, 65
    if _56 + ceil32(return_data.size) + ceil32(32 * mem[_56 + mem[_56]]) + 1 > test266151307() or ceil32(32 * mem[_56 + mem[_56]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _56 + ceil32(return_data.size) + ceil32(32 * mem[_56 + mem[_56]]) + 1
    mem[_56 + ceil32(return_data.size)] = _58
    require return_data.size >= _57 + (32 * _58) + 32
    mem[_56 + ceil32(return_data.size) + 32 len 32 * _58] = mem[_56 + _57 + 32 len 32 * _58]
    if 2 >= _58:
        revert with 0, 50
    _81 = mem[_56 + ceil32(return_data.size) + 96]
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_c72cadceAddress)
    staticcall sub_c72cadceAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _84 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_84]:
        revert with 0, 'dcaIn: leftover vault tokens in contract'
    mem[mem[64] + 4] = this.address
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_90]:
        revert with 0, 'dcaIn: leftover MIM in contract'
    emit 0xc9f8219e: ext_call.return_data[0], _81, msg.sender, address(arg2)
    return _81
}



}
