contract main {




// =====================  Runtime code  =====================


address owner;
address sub_35e34c48Address;
address sub_3ec315e4Address;
address sub_ff13dd93Address;
uint256 sub_9abf3e6c;
uint256 sub_dcc44dac;

function sub_35e34c48(?) payable {
    return sub_35e34c48Address
}

function sub_3ec315e4(?) payable {
    return sub_3ec315e4Address
}

function owner() payable {
    return owner
}

function sub_9abf3e6c(?) payable {
    return sub_9abf3e6c
}

function sub_dcc44dac(?) payable {
    return sub_dcc44dac
}

function sub_ff13dd93(?) payable {
    return sub_ff13dd93Address
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

function sub_88c24eb3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_35e34c48Address)
    call sub_35e34c48Address.0x2b8b3475 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ff13dd93Address)
    call sub_ff13dd93Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg1 * sub_dcc44dac
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4f0a501(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_35e34c48Address)
    call sub_35e34c48Address.0x2b8b3475 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_3ec315e4Address)
    call sub_3ec315e4Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg1 * sub_9abf3e6c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
