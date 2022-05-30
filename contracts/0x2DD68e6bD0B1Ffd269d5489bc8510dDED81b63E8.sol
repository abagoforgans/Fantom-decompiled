contract main {




// =====================  Runtime code  =====================


address sub_b8c6ec08Address;
address sub_b47cd7b3Address;
uint32 stor2;
address owner;
uint256 stor2;
address sub_2ec3e8bcAddress;
address stor4;
uint32 stor5;
address stor6;
address stor7;
uint32 stor8;
uint32 stor9;
address stor10;
uint256 stor11;

function sub_2ec3e8bc(?) {
    return sub_2ec3e8bcAddress
}

function owner() {
    return address(owner)
}

function sub_b47cd7b3(?) {
    return sub_b47cd7b3Address
}

function sub_b8c6ec08(?) {
    return sub_b8c6ec08Address
}

function _fallback() payable {
    revert
}

function transferFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_891671ba(?) payable {
    require calldata.size - 4 >= 64
    require msg.value == arg2
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mintETH(address arg1, address arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), msg.sender, 9999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2c14d386(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, msg.sender, 9999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_b4a1ed27(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[292 len arg3.length] = arg3[all]
    mem[arg3.length + 292] = 0
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mintCollateral(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, msg.sender, 9999999999, 160, arg3.length, arg3[all], mem[arg3.length + 292 len ceil32(arg3.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_967b93b6(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.value == arg2
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, stor5, arg1, msg.sender, 9999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mintETH(address arg1, address arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args stor4, msg.sender, stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[292 len arg4.length] = arg4[all]
    mem[arg4.length + 292] = 0
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mintCollateral(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, stor8, arg3, msg.sender, 9999999999, 160, arg4.length, arg4[all], mem[arg4.length + 292 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 420] = arg4.length
    mem[ceil32(arg4.length) + 452 len arg4.length] = arg4[all]
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.leverage(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, bytes arg8, bytes arg9) with:
         gas gas_remaining wei
        args 0, stor9, arg5, arg6, 1, 1, stor10, stor11, 288, ceil32(arg4.length) + 320, arg4.length, arg4[all], 0, mem[arg4.length + 452 len (2 * ceil32(arg4.length)) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
