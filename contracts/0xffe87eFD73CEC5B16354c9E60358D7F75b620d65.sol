contract main {




// =====================  Runtime code  =====================


#
#  - sub_18f138d2(?)
#  - sub_35e8b7d5(?)
#  - sub_79ebf646(?)
#  - sub_cee6202c(?)
#
address owner;
address sub_c4cf0995Address;
address sub_2d2e3a93Address;
address sub_6f190315Address;
address sub_76b8fcfcAddress;
address sub_ed371d17Address;
address sub_462b61e8Address;

function sub_2d2e3a93(?) {
    return sub_2d2e3a93Address
}

function sub_462b61e8(?) {
    return sub_462b61e8Address
}

function sub_6f190315(?) {
    return sub_6f190315Address
}

function sub_76b8fcfc(?) {
    return sub_76b8fcfcAddress
}

function owner() {
    return owner
}

function sub_c4cf0995(?) {
    return sub_c4cf0995Address
}

function sub_ed371d17(?) {
    return sub_ed371d17Address
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
