contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_ee15d29f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and stor1 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < arg1 * stor1 / 10000:
        revert with 'NH{q', 17
    return (arg1 - (arg1 * stor1 / 10000))
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

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(address(arg1), arg2);
}

function sub_9d2ad263(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    require arg4 == arg4
    require arg5 == bool(arg5)
    if arg4 and stor1 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 < arg4 * stor1 / 10000:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    if not arg5:
        staticcall address(arg1).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg3')), arg4 - (arg4 * stor1 / 10000)
    else:
        staticcall address(arg1).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg3')), arg4 - (arg4 * stor1 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_07adb6b5(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == address(arg3)
    require arg4 == ('signextend', 15, ('param', 'arg4'))
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == bool(arg8)
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg6 and stor1 > -1 / arg6:
        revert with 'NH{q', 17
    if arg6 < arg6 * stor1 / 10000:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    if not arg8:
        call address(arg1).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg4')), arg6 - (arg6 * stor1 / 10000), arg7
    else:
        call address(arg1).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('param', 'arg2')), ('signextend', 15, ('param', 'arg4')), arg6 - (arg6 * stor1 / 10000), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg7
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg5))
    call address(arg5).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Swap(msg.sender, address(arg3), address(arg5), arg6);
    require ext_code.size(address(arg5))
    staticcall address(arg5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > ext_call.return_data[0]
}



}
