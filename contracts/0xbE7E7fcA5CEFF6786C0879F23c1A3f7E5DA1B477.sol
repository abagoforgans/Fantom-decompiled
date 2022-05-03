contract main {




// =====================  Runtime code  =====================


#
#  - sub_9c6c8ab0(?)
#  - sub_cf29a21c(?)
#
address owner;
address sub_ba32e624Address;
address sub_b6a21b61Address;
address sub_a3bf202bAddress;
address sub_242c3c53Address;
address sub_077d66f3Address;
address sub_29dc484aAddress;
address sub_0eebd6a8Address;
address sub_1b85d6deAddress;
address sub_91996877Address;
address sub_7015a9c8Address;
address sub_c472e2c1Address;
address sub_23ba76faAddress;
array of address sub_a5218fd8;

function sub_077d66f3(?) {
    return sub_077d66f3Address
}

function sub_0eebd6a8(?) {
    return sub_0eebd6a8Address
}

function sub_1b85d6de(?) {
    return sub_1b85d6deAddress
}

function sub_23ba76fa(?) {
    return sub_23ba76faAddress
}

function sub_242c3c53(?) {
    return sub_242c3c53Address
}

function sub_29dc484a(?) {
    return sub_29dc484aAddress
}

function sub_7015a9c8(?) {
    return sub_7015a9c8Address
}

function getOwner() {
    return owner
}

function sub_91996877(?) {
    return sub_91996877Address
}

function sub_a3bf202b(?) {
    return sub_a3bf202bAddress
}

function sub_a5218fd8(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a5218fd8.length
    return sub_a5218fd8[arg1]
}

function sub_b6a21b61(?) {
    return sub_b6a21b61Address
}

function sub_ba32e624(?) {
    return sub_ba32e624Address
}

function sub_c472e2c1(?) {
    return sub_c472e2c1Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function _allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function _approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(this.address)
    staticcall this.address.0x893d20e8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == sub_ba32e624Address:
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
