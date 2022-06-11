contract main {




// =====================  Runtime code  =====================


address adminAddress;
address oracleAddress;
address feeToAddress;
mapping of address pair;
array of address allPairs;

function feeTo() payable {
    return feeToAddress
}

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
        revert with 0, 'SingularityFactory: FORBIDDEN'
    adminAddress = arg1
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    feeToAddress = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    oracleAddress = arg1
}

function setA(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    require ext_code.size(arg1)
    call arg1.setA(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    require ext_code.size(arg1)
    call arg1.setFee(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collectFees(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    if not feeToAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularityFactory: FEES_NOT_ENABLED'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = 0xc879657200000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).collectFees() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function createPair(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'SingularityFactory: FORBIDDEN'
    if arg3 <= 0:
        revert with 0, 'SingularityFactory: A_IS_0'
    if arg4 >= 10^18:
        revert with 0, 'SingularityFactory: FEE_GT_ONE'
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SingularityFactory: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'SingularityFactory: ZERO_ADDRESS'
        if pair[address(arg1)][address(arg2)]:
            revert with 0, 'SingularityFactory: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg1, arg2)
                        code: code.data[3440 len 11481]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit 0x65d56253: arg4, address(create2.new_address), allPairs.length, arg1, arg2, arg3
    else:
        if not arg2:
            revert with 0, 'SingularityFactory: ZERO_ADDRESS'
        if pair[address(arg2)][address(arg1)]:
            revert with 0, 'SingularityFactory: PAIR_EXISTS'
        create2 contract with 0 wei
                        salt: sha3(arg2, arg1)
                        code: code.data[3440 len 11481]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        pair[address(arg2)][address(arg1)] = address(create2.new_address)
        pair[address(arg1)][address(arg2)] = address(create2.new_address)
        allPairs.length++
        allPairs[allPairs.length] = address(create2.new_address)
        emit 0x65d56253: arg4, address(create2.new_address), allPairs.length, arg2, arg1, arg3
    return address(create2.new_address)
}



}
