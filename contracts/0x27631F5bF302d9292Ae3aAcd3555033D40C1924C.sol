contract main {




// =====================  Runtime code  =====================


address routerAddress;
address masterChefAddress;
address rewardsTokenAddress;
uint256 sub_68f91a44;
mapping of address vaultToken;
array of address sub_a9a1e138;

function getVaultToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultToken[arg1]
}

function sub_29e15d0b(?) payable {
    return sub_a9a1e138.length
}

function masterChef() payable {
    return masterChefAddress
}

function sub_68f91a44(?) payable {
    return sub_68f91a44
}

function sub_a9a1e138(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a9a1e138.length
    return sub_a9a1e138[arg1]
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_b3ac2cbf(?) payable {
    require calldata.size - 4 >= 32
    if vaultToken[arg1]:
        revert with 0, 'VaultTokenFactory: PID_EXISTS'
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[1953 len 21021]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address)._initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args routerAddress, masterChefAddress, rewardsTokenAddress, sub_68f91a44, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    vaultToken[arg1] = address(create2.new_address)
    sub_a9a1e138.length++
    sub_a9a1e138[sub_a9a1e138.length] = address(create2.new_address)
    emit 0x42c2f0d6: address(create2.new_address), sub_a9a1e138.length, arg1
    return address(create2.new_address)
}



}
