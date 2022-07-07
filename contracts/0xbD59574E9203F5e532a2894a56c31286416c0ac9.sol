contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address stor2;
mapping of uint8 stor3;

function owner() payable {
    return owner
}

function isExecutor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFujiAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function cancelTransferOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require pendingOwner
    pendingOwner = 0
    emit NewPendingOwner(address arg1)
    emit 0x0 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not pendingOwner
    pendingOwner = arg1
    emit NewPendingOwner(arg1);
}

function sub_37016ad1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function doRefinancing(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require ext_code.size(stor2)
    staticcall stor2.validVault(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid vault!'
    if owner != msg.sender:
        if not stor3[msg.sender]:
            revert with 0, 'Not executor!'
    require ext_code.size(arg1)
    staticcall arg1.vAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_code.size(arg1)
    call arg1.updateF1155Balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.activeProvider() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getBorrowBalanceOf(address arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[44 len 20], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    if ext_call.return_data[0] < ext_call.return_data[0] * arg3 / arg4:
        revert with 0, '301', 0
    if ext_call.return_data[0] * arg3 / arg4 <= 0:
        revert with 0, '301', 0
    mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[44 len 20]
    mem[(6 * ceil32(return_data.size)) + 608] = 0
    require ext_code.size(stor2)
    staticcall stor2.getFlasher() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    s = (6 * ceil32(return_data.size)) + 608
    t = (7 * ceil32(return_data.size)) + 1028
    while idx < 0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5ccd808c with:
         gas gas_remaining wei
        args 64, arg5, 0, mem[(6 * ceil32(return_data.size)) + 332 len 20], ext_call.return_data[0] * arg3 / arg4, address(arg1), address(arg2), 288, 320, 0, 0, 0, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.setActiveProvider(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
