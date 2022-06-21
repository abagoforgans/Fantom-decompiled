contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_dd10b416Address;
address sub_9b6f8a78Address;
address targetVaultAddress;
address targetTokenAddress;
address sub_3685234bAddress;
uint256 sub_b76c4437;
uint256 sub_2eeb75fd;
uint256 balance;
address sub_4871236aAddress;
address comptrollerAddress;
uint256 sub_e2844256;
uint256 sub_3592d016;
uint256 sub_32bea28f;

function targetVault() payable {
    return targetVaultAddress
}

function sub_2eeb75fd(?) payable {
    return sub_2eeb75fd
}

function targetToken() payable {
    return targetTokenAddress
}

function sub_32bea28f(?) payable {
    return sub_32bea28f
}

function sub_3592d016(?) payable {
    return sub_3592d016
}

function sub_3685234b(?) payable {
    return sub_3685234bAddress
}

function sub_4871236a(?) payable {
    return sub_4871236aAddress
}

function paused() payable {
    return bool(stor0)
}

function comptroller() payable {
    return comptrollerAddress
}

function owner() payable {
    return owner
}

function sub_9b6f8a78(?) payable {
    return sub_9b6f8a78Address
}

function balance() payable {
    return balance
}

function sub_b76c4437(?) payable {
    return sub_b76c4437
}

function sub_dd10b416(?) payable {
    return sub_dd10b416Address
}

function sub_e2844256(?) payable {
    return sub_e2844256
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

function sub_bf604cac(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function execute() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args sub_dd10b416Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_4871236aAddress)
    call sub_4871236aAddress.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), targetTokenAddress, ext_call.return_data[0], 128, 64, targetTokenAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 64
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    if address(cd[(arg5 + 36)]) != arg2:
        revert with 0, 'encoded data (borrowToken) does not match'
    if cd[(arg5 + 68)] != arg3:
        revert with 0, 'encoded data (borrowAmount) does not match'
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_b76c4437 = ext_call.return_data[0]
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.repayBorrowBehalf(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd10b416Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_b76c4437 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    sub_2eeb75fd = sub_b76c4437 - ext_call.return_data[0]
    require ext_code.size(targetVaultAddress)
    call targetVaultAddress.upgradeStrat() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9b6f8a78Address)
    call sub_9b6f8a78Address.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
