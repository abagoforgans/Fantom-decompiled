contract main {




// =====================  Runtime code  =====================


address owner;
address stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor6 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 128
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_70dcf194(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == bool(arg5)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg1))
    staticcall address(arg1).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    staticcall stor6.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor6, (2 * ext_call.return_data[0]) + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg4, 128, 128, bool(arg5), address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
