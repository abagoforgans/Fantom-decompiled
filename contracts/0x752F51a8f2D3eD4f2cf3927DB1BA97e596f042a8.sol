contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_8316a956;

function sub_8316a956(?) {
    require calldata.size - 4 >= 32
    return sub_8316a956[arg1]
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

function sub_92074394(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b7643daa(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[164] = this.address
    mem[196] = arg6
    mem[132] = 128
    mem[228] = arg4.length
    mem[260 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 260] = 0
    require ext_code.size(sub_8316a956[0])
    call sub_8316a956[0].swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(arg2), 128, address(this.address), arg6, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    _10 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_7 + 96])] = mem[_7 + 128 len floor32(mem[_7 + 96])]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_8316a956[1], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = 1
    mem[32] = 1
    mem[(32 * _10) + ceil32(return_data.size) + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _10) + ceil32(return_data.size) + 132] = arg2
    mem[(32 * _10) + ceil32(return_data.size) + 164] = arg3
    mem[(32 * _10) + ceil32(return_data.size) + 228] = this.address
    mem[(32 * _10) + ceil32(return_data.size) + 260] = arg6
    mem[(32 * _10) + ceil32(return_data.size) + 196] = 160
    mem[(32 * _10) + ceil32(return_data.size) + 292] = arg5.length
    mem[(32 * _10) + ceil32(return_data.size) + 324 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * _10) + ceil32(return_data.size) + (32 * arg5.length) + 324] = 0
    require ext_code.size(sub_8316a956[1])
    call sub_8316a956[1].swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)]), address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _10) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _10) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require mem[(32 * _10) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * _10) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _10) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _10) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _10) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _10) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * _10) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
}



}
