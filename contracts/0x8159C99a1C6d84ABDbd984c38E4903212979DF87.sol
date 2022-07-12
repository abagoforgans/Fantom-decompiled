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

function sub_3650b918(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 50
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

function sub_53de57e5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: contract has leftover MIM'
    require ext_code.size(sub_c06ec14fAddress)
    staticcall sub_c06ec14fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: contract has leftover mooScreamMIM'
    require ext_code.size(sub_c06ec14fAddress)
    staticcall sub_c06ec14fAddress.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_c72cadceAddress)
    staticcall sub_c72cadceAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2 / ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: not enough funds in vault'
    require ext_code.size(sub_c72cadceAddress)
    call sub_c72cadceAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2 / ext_call.return_data[0]
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

function sub_dce03fa6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10 * 10^18:
        revert with 0, 'dca: amount must be >= 10$'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: contract has leftover MIM'
    require ext_code.size(sub_c06ec14fAddress)
    staticcall sub_c06ec14fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: contract has leftover mooScreamMIM'
    require ext_code.size(sub_c06ec14fAddress)
    staticcall sub_c06ec14fAddress.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(sub_c72cadceAddress)
    staticcall sub_c72cadceAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1 / ext_call.return_data[0]:
        revert with 0, 'withdrawFromVault: not enough funds in vault'
    require ext_code.size(sub_c72cadceAddress)
    call sub_c72cadceAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1 / ext_call.return_data[0]
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 50
}



}
