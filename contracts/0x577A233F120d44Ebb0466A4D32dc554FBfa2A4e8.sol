contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_e267f927;

function allVaultLength() payable {
    return sub_e267f927.length
}

function owner() payable {
    return owner
}

function sub_e267f927(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e267f927.length
    return sub_e267f927[arg1]
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17295 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ea60701d(?) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_code.size(arg2)
    staticcall arg2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    create2 contract with 0 wei
                    salt: sha3(arg1, arg2, arg3, arg6)
                    code: code.data[2186 len 15109]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe6ac878a with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, address(arg6), address(arg7), address(arg8), arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e267f927.length++
    sub_e267f927[sub_e267f927.length] = address(create2.new_address)
    emit NewVaultContract(address(create2.new_address));
}



}
