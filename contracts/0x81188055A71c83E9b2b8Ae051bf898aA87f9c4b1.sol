contract main {




// =====================  Runtime code  =====================


address owner;
address sub_559bae6cAddress;
address sub_f9f01266Address;
array of uint256 sub_1779ba4d;
array of uint256 sub_be90c657;
uint8 sub_7592909d;

function sub_0ba83c6d(?) payable {
    return bool(sub_7592909d)
}

function sub_1779ba4d(?) payable {
    return sub_1779ba4d[0 len sub_1779ba4d.length]
}

function sub_559bae6c(?) payable {
    return sub_559bae6cAddress
}

function sub_7592909d(?) payable {
    return bool(sub_7592909d)
}

function owner() payable {
    return owner
}

function sub_be90c657(?) payable {
    return sub_be90c657[0 len sub_be90c657.length]
}

function sub_f9f01266(?) payable {
    return sub_f9f01266Address
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

function sub_42b026d9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_f9f01266Address = arg1
}

function sub_6ed383ed(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_559bae6cAddress = arg1
}

function sub_f9ed00be(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_7592909d = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_d122183b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_1779ba4d[] = Array(len=arg1.length, data=arg1[all])
    sub_be90c657[] = Array(len=arg2.length, data=arg2[all])
}

function sub_80c1367e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_559bae6cAddress)
    call sub_559bae6cAddress.0x21814f90 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f9f01266Address)
    call sub_f9f01266Address.0x21814f90 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7592909d = 1
    return 0
}



}
