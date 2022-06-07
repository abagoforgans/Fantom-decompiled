contract main {




// =====================  Runtime code  =====================


address adminAddress;
address oracleAddress;
mapping of address pair;
array of address allPairs;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allPairs.length
    return allPairs[arg1]
}

function allPairsLength() payable {
    return allPairs.length
}

function oracle() payable {
    return oracleAddress
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return pair[arg1][arg2]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: FORBIDDEN'
    adminAddress = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: FORBIDDEN'
    oracleAddress = arg1
}

function createPair(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: FORBIDDEN'
    if arg3 <= 0:
        revert with 0, 'SingularitySwapFactory: A_IS_0'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[2073 len 7688]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit 0x569b30fc: address(create2.new_address), allPairs.length, arg1, arg2, arg3
    else:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularitySwapFactory: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[2073 len 7688]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit 0x569b30fc: address(create2.new_address), allPairs.length, arg2, arg1, arg3
    return address(create2.new_address)
}



}
