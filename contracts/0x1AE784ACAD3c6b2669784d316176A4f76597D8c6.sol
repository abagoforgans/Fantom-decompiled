contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_159bab6e;

function sub_159bab6e(?) payable {
    return sub_159bab6e[0x4c49515549444154494f4e5f4d414e4147455200000000000000000000000000]
}

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_159bab6e[arg1]
}

function sub_27fae013(?) payable {
    return sub_159bab6e[0x504152414d45544552535f50524f564944455200000000000000000000000000]
}

function sub_295c2263(?) payable {
    return sub_159bab6e[0x4d454e53415f434f4e464947555241544f520000000000000000000000000000]
}

function sub_7078304e(?) payable {
    return sub_159bab6e[0x444154415f50524f564944455200000000000000000000000000000000000000]
}

function sub_7e701e73(?) payable {
    return sub_159bab6e['MENSA_CORE']
}

function sub_853a238b(?) payable {
    return sub_159bab6e[0x4d454e53415f4d414e4147455200000000000000000000000000000000000000]
}

function owner() payable {
    return owner
}

function sub_9964fdb6(?) payable {
    return sub_159bab6e['INTEREST_RATE_ORACLE']
}

function getTokenDistributor() payable {
    return sub_159bab6e[0x544f4b454e5f4449535452494255544f52000000000000000000000000000000]
}

function sub_ef57ac50(?) payable {
    return sub_159bab6e[0x4d454e5341000000000000000000000000000000000000000000000000000000]
}

function sub_fbbc6f03(?) payable {
    return sub_159bab6e[0x4d454e53415f4d494e5445522000000000000000000000000000000000000000]
}

function getFeeProvider() payable {
    return sub_159bab6e[0x4645455f50524f56494445520000000000000000000000000000000000000000]
}

function getPriceOracle() payable {
    return sub_159bab6e['PRICE_ORACLE']
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    emit code.data[6915 len 32]: owner, 0
    owner = 0
}

function sub_59fa9442(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e['INTEREST_RATE_ORACLE'] = arg1
    emit 0xaf2085cd: arg1
}

function setPriceOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e['PRICE_ORACLE'] = arg1
    emit PriceOracleUpdated(arg1);
}

function sub_3b41bddc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e[0x4d454e53415f4d414e4147455200000000000000000000000000000000000000] = arg1
    emit 0xf4a0c8ff: arg1
}

function sub_4fd130e7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e[0x4d454e53415f4d494e5445522000000000000000000000000000000000000000] = arg1
    emit 0x230a1d51: arg1
}

function sub_da45df2d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e[0x4c49515549444154494f4e5f4d414e4147455200000000000000000000000000] = arg1
    emit 0x93412038: arg1
}

function setTokenDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    sub_159bab6e[0x544f4b454e5f4449535452494255544f52000000000000000000000000000000] = arg1
    emit TokenDistributorUpdated(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[6845 len 38], mem[202 len 26]
    emit code.data[6915 len 32]: owner, arg1
    owner = arg1
}

function sub_e89e8d89(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e['MENSA_CORE']:
        require ext_code.size(sub_159bab6e['MENSA_CORE'])
        call sub_159bab6e['MENSA_CORE'].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e['MENSA_CORE'] = address(create.new_address)
        emit ProxyCreated(('MENSA_CORE' << 176), address(create.new_address));
    emit 0x95224777: arg1
}

function sub_58c9d79c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e[0x444154415f50524f564944455200000000000000000000000000000000000000]:
        require ext_code.size(sub_159bab6e[0x444154415f50524f564944455200000000000000000000000000000000000000])
        call sub_159bab6e[0x444154415f50524f564944455200000000000000000000000000000000000000].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e[0x444154415f50524f564944455200000000000000000000000000000000000000] = address(create.new_address)
        emit ProxyCreated(0x444154415f50524f564944455200000000000000000000000000000000000000, address(create.new_address));
    emit 0x77f9ffe4: arg1
}

function sub_5feb8781(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e[0x4d454e5341000000000000000000000000000000000000000000000000000000]:
        require ext_code.size(sub_159bab6e[0x4d454e5341000000000000000000000000000000000000000000000000000000])
        call sub_159bab6e[0x4d454e5341000000000000000000000000000000000000000000000000000000].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e[0x4d454e5341000000000000000000000000000000000000000000000000000000] = address(create.new_address)
        emit ProxyCreated(0x4d454e5341000000000000000000000000000000000000000000000000000000, address(create.new_address));
    emit 0x73b77c25: arg1
}

function sub_98c34fe8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e[0x504152414d45544552535f50524f564944455200000000000000000000000000]:
        require ext_code.size(sub_159bab6e[0x504152414d45544552535f50524f564944455200000000000000000000000000])
        call sub_159bab6e[0x504152414d45544552535f50524f564944455200000000000000000000000000].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e[0x504152414d45544552535f50524f564944455200000000000000000000000000] = address(create.new_address)
        emit ProxyCreated(0x504152414d45544552535f50524f564944455200000000000000000000000000, address(create.new_address));
    emit 0x675ed2e0: arg1
}

function sub_9f49e588(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e[0x4d454e53415f434f4e464947555241544f520000000000000000000000000000]:
        require ext_code.size(sub_159bab6e[0x4d454e53415f434f4e464947555241544f520000000000000000000000000000])
        call sub_159bab6e[0x4d454e53415f434f4e464947555241544f520000000000000000000000000000].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e[0x4d454e53415f434f4e464947555241544f520000000000000000000000000000] = address(create.new_address)
        emit ProxyCreated(0x4d454e53415f434f4e464947555241544f520000000000000000000000000000, address(create.new_address));
    emit 0x1d22aac2: arg1
}

function setFeeProviderImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6883 len 32]
    if sub_159bab6e[0x4645455f50524f56494445520000000000000000000000000000000000000000]:
        require ext_code.size(sub_159bab6e[0x4645455f50524f56494445520000000000000000000000000000000000000000])
        call sub_159bab6e[0x4645455f50524f56494445520000000000000000000000000000000000000000].upgradeToAndCall(address arg1, bytes arg2) with:
             gas gas_remaining wei
            args address(arg1), 64, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        create contract with 0 wei
                        code: code.data[4398 len 2447]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, address arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), address(this.address), 96, 36, initialize(address arg1), this.address, 0, address(arg1) << 32, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_159bab6e[0x4645455f50524f56494445520000000000000000000000000000000000000000] = address(create.new_address)
        emit ProxyCreated(0x4645455f50524f56494445520000000000000000000000000000000000000000, address(create.new_address));
    emit FeeProviderUpdated(arg1);
}



}
