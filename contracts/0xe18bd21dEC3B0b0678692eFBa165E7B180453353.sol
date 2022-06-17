contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
address sub_dd10b416Address;
address sub_9b6f8a78Address;
address targetVaultAddress;
address targetTokenAddress;
address sub_3685234bAddress;
uint256 sub_b76c4437;
uint256 sub_2eeb75fd;
uint256 balance;
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

function paused() payable {
    return bool(paused)
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

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_bf604cac(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(targetTokenAddress)
    call targetTokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function execute() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b76c4437 = ext_call.return_data[0]
    require ext_code.size(sub_3685234bAddress)
    call sub_3685234bAddress.repayBorrowBehalf(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd10b416Address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > sub_b76c4437:
        revert with 0, 'SafeMath: subtraction overflow'
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
    require ext_code.size(targetTokenAddress)
    staticcall targetTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_b76c4437:
        revert with 0, 'transaction loses money, revert'
}



}
