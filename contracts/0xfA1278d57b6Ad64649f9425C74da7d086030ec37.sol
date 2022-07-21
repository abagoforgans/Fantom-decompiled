contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function sub_1cf37da4(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[100]:
        revert with 0, 'fromBeefySingleVaultToAsset: insufficient vault tokens'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = cd[100]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[100]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x1f1fcd51 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x2e1a7d4d with:
         gas gas_remaining wei
        args cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    emit VaultWithdraw(0, msg.sender, address(cd[4]));
    mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 100] = 0
    mem[(7 * ceil32(return_data.size)) + 132] = cd[132]
    mem[(7 * ceil32(return_data.size)) + 164] = 160
    mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = (7 * ceil32(return_data.size)) + 292
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 196] = msg.sender
    mem[(7 * ceil32(return_data.size)) + 228] = cd[164]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, cd[132], 160, msg.sender, cd[164], ('cd', 68).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _41 = mem[(7 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _42 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(8 * ceil32(return_data.size)) + 96] = _42
    require return_data.size >= _41 + (32 * _42) + 32
    mem[(8 * ceil32(return_data.size)) + 128 len 32 * _42] = mem[(7 * ceil32(return_data.size)) + _41 + 128 len 32 * _42]
    if ('cd', 68).length < 1:
        revert with 0, 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 0, 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if _42 < 1:
        revert with 0, 17
    if _42 - 1 >= _42:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _42 - 1) + (8 * ceil32(return_data.size)) + 128]
    emit 0x5f36f73a: mem[mem[64]], msg.sender, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
}



}
