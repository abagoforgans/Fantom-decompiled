contract main {




// =====================  Runtime code  =====================


#
#  - name()
#  - estimatedTotalAssetsAfterBalance()
#  - prepareReturn(bool arg1)
#  - estimatedTotalAssetsInToken(address arg1)
#
address providerAAddress;
address providerBAddress;
address tokenAAddress;
address tokenBAddress;
address WETHAddress;
address rewardAddress;
address routerAddress;
uint256 pid;
address masterchefAddress;
address pairAddress;
uint256 stor10;
uint256 stor11;
uint8 sub_cce55f75; offset 160
uint128 stor12; offset 160
address sub_56b7888cAddress;
uint256 sub_401a5a8f;
uint256 hedgeBudget;
uint256 h;
uint256 period;

function tokenA() payable {
    return tokenAAddress
}

function reward() payable {
    return rewardAddress
}

function sub_401a5a8f(?) payable {
    return sub_401a5a8f
}

function sub_56b7888c(?) payable {
    return sub_56b7888cAddress
}

function providerB() payable {
    return providerBAddress
}

function tokenB() payable {
    return tokenBAddress
}

function providerA() payable {
    return providerAAddress
}

function hedgeBudget() payable {
    return hedgeBudget
}

function pair() payable {
    return pairAddress
}

function WETH() payable {
    return WETHAddress
}

function h() payable {
    return h
}

function sub_cce55f75(?) payable {
    return bool(sub_cce55f75)
}

function period() payable {
    return period
}

function pid() payable {
    return pid
}

function router() payable {
    return routerAddress
}

function masterchef() payable {
    return masterchefAddress
}

function _fallback() payable {
    revert
}

function balanceOfA() payable {
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfB() payable {
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfReward() payable {
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3a3d1be0(?) payable {
    require ext_code.size(sub_56b7888cAddress)
    staticcall sub_56b7888cAddress.0x135355cb with:
            gas gas_remaining wei
           args sub_401a5a8f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pendingReward() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xa279b07f with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfStake() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    return ext_call.return_data[0]
}

function sub_820b40bc(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg8 == address(arg8)
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8e659c08 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), arg7, address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
}

function getReserves() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[12 len 20] != tokenAAddress:
        return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}

function balanceOfPair() payable {
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setHedgingPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    period = arg1
}

function setProtectionRange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 10000
    h = arg1
}

function setHedgeBudget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 10000
    hedgeBudget = arg1
}

function sub_eabaaff4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    if arg2:
        stor12 = Mask(96, 0, bool(arg1))
    else:
        if not sub_401a5a8f:
            stor12 = Mask(96, 0, bool(arg1))
}

function sub_50e0f093(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_56b7888cAddress)
    if arg1:
        call sub_56b7888cAddress.0x60eb48b2 with:
             gas gas_remaining wei
            args arg1
    else:
        call sub_56b7888cAddress.0x60eb48b2 with:
             gas gas_remaining wei
            args sub_401a5a8f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function returnLooseToProviders() payable {
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenAAddress)
        call tokenAAddress.0xa9059cbb with:
             gas gas_remaining wei
            args providerAAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenBAddress)
        call tokenBAddress.0xa9059cbb with:
             gas gas_remaining wei
            args providerBAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8e659c08(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg8 == address(arg8)
    if providerAAddress:
        revert with 0, 'Joint already initialized'
    providerAAddress = address(arg1)
    providerBAddress = address(arg2)
    routerAddress = address(arg3)
    WETHAddress = address(arg4)
    masterchefAddress = address(arg5)
    rewardAddress = address(arg6)
    pid = arg7
    require ext_code.size(address(arg1))
    staticcall address(arg1).want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenAAddress = ext_call.return_data[12 len 20]
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenBAddress = ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    require ext_code.size(tokenAAddress)
    call tokenAAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenBAddress)
    call tokenBAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(rewardAddress)
    call rewardAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(pairAddress)
    call pairAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(pairAddress)
    call pairAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterchefAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg8):
        sub_56b7888cAddress = address(arg8)
        require ext_code.size(address(arg8))
        staticcall address(arg8).quoteToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenBAddress:
            revert with 0, '!hedgil setup'
        require ext_code.size(tokenBAddress)
        call tokenBAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_56b7888cAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        hedgeBudget = 35
        h = 1500
        period = 168 * 24 * 3600
        sub_cce55f75 = 1
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require tokenAAddress != arg1
        require tokenBAddress != arg1
        require ext_code.size(providerAAddress)
        staticcall providerAAddress.vault() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        require tokenAAddress != arg1
        require tokenBAddress != arg1
        require ext_code.size(providerAAddress)
        staticcall providerAAddress.vault() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = 68
        mem[(10 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
        mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(10 * ceil32(return_data.size)) + 196] = 32
        mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
        mem[(10 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                if not mem[(10 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function liquidatePosition() payable {
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
        if ext_call.return_data[0]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.0x93f1a40b with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((6 * ceil32(return_data.size)) + 224 <= test266151307())
            require ext_code.size(masterchefAddress)
            call masterchefAddress.0x441a3e70 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.0x93f1a40b with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
            if ext_call.return_data[0]:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.0x93f1a40b with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((8 * ceil32(return_data.size)) + 224 <= test266151307())
                require ext_code.size(masterchefAddress)
                call masterchefAddress.0x441a3e70 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.strategist() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if msg.sender == ext_call.return_data[12 len 20]:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.0x93f1a40b with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
                if ext_call.return_data[0]:
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x93f1a40b with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((10 * ceil32(return_data.size)) + 224 <= test266151307())
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.strategist() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.0x93f1a40b with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((10 * ceil32(return_data.size)) + 160 <= test266151307())
                if ext_call.return_data[0]:
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x93f1a40b with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((11 * ceil32(return_data.size)) + 224 <= test266151307())
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if sub_401a5a8f:
        if sub_cce55f75:
            require ext_code.size(sub_56b7888cAddress)
            call sub_56b7888cAddress.0x60eb48b2 with:
                 gas gas_remaining wei
                args sub_401a5a8f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_401a5a8f = 0
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(routerAddress)
        staticcall routerAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args tokenAAddress, tokenBAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(routerAddress)
        call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args tokenAAddress, tokenBAddress, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAAddress)
        staticcall tokenAAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function balanceOfTokensInLP() payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAAddress, tokenBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(pairAddress)
    staticcall pairAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != tokenAAddress:
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[32]):
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not Mask(112, 0, ext_call.return_data[0]):
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero', 0
                    return 0 / 10^uint8(ext_call.return_data[0]), 0 / 10^uint8(ext_call.return_data[0])
                if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 
                       0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
            if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[0]):
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]), 
                       0 / 10^uint8(ext_call.return_data[0])
            if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]), 
                   0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / 2 * ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[32]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[0]):
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 0 / 10^uint8(ext_call.return_data[0])
            if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[0]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^uint8(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]), 
               (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
    if not 2 * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[0]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(112, 0, ext_call.return_data[32]):
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return 0 / 10^uint8(ext_call.return_data[0]), 0 / 10^uint8(ext_call.return_data[0])
            if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 
                   0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0])
        if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[32]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]), 
                   0 / 10^uint8(ext_call.return_data[0])
        if 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]), 
               0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0])
    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / 2 * ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not Mask(112, 0, ext_call.return_data[0]):
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(112, 0, ext_call.return_data[32]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^uint8(ext_call.return_data[0]), 0 / 10^uint8(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / 10^uint8(ext_call.return_data[0]), 
               (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0])
    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    if not Mask(112, 0, ext_call.return_data[32]):
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]), 
               0 / 10^uint8(ext_call.return_data[0])
    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    return (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]), 
           (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) + (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0])
}

function adjustPosition() payable {
    if providerAAddress != msg.sender:
        require msg.sender == providerBAddress
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.0x93f1a40b with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
            require not ext_call.return_data[0]
            require ext_code.size(routerAddress)
            staticcall routerAddress.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args tokenAAddress, tokenBAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            require not stor10
            require not stor11
            require ext_code.size(tokenAAddress)
            staticcall tokenAAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if hedgeBudget > 10000:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(tokenBAddress)
            staticcall tokenBAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args tokenAAddress, tokenBAddress, ext_call.return_data[0], 0, 0, 0, address(this.address), block.timestamp
            else:
                if (10000 * ext_call.return_data[0]) - (hedgeBudget * ext_call.return_data[0]) / ext_call.return_data[0] != -hedgeBudget + 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args tokenAAddress, tokenBAddress, ext_call.return_data[0], (10000 * ext_call.return_data[0]) - (hedgeBudget * ext_call.return_data[0]) / 10000, 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            stor11 = ext_call.return_data[32]
            stor10 = ext_call.return_data[0]
            require ext_code.size(routerAddress)
            staticcall routerAddress.factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args tokenAAddress, tokenBAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not hedgeBudget:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x93f1a40b with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((16 * ceil32(return_data.size)) + 352 <= test266151307())
                else:
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args tokenAAddress, tokenBAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.0x93f1a40b with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((20 * ceil32(return_data.size)) + 352 <= test266151307())
            else:
                if not sub_cce55f75:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(masterchefAddress)
                        staticcall masterchefAddress.0x93f1a40b with:
                                gas gas_remaining wei
                               args pid, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((16 * ceil32(return_data.size)) + 352 <= test266151307())
                    else:
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args tokenAAddress, tokenBAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(masterchefAddress)
                        staticcall masterchefAddress.0x93f1a40b with:
                                gas gas_remaining wei
                               args pid, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((20 * ceil32(return_data.size)) + 352 <= test266151307())
                else:
                    require 0 == sub_401a5a8f
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_56b7888cAddress)
                    call sub_56b7888cAddress.0x8c7d4a58 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], h, period, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_401a5a8f = ext_call.return_data[0]
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args tokenAAddress, tokenBAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(masterchefAddress)
                        staticcall masterchefAddress.0x93f1a40b with:
                                gas gas_remaining wei
                               args pid, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((21 * ceil32(return_data.size)) + 352 <= test266151307())
                    else:
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args tokenAAddress, tokenBAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(masterchefAddress)
                        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(masterchefAddress)
                        staticcall masterchefAddress.0x93f1a40b with:
                                gas gas_remaining wei
                               args pid, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require bool((24 * ceil32(return_data.size)) + 352 <= test266151307())
            if ext_call.return_data[0]:
                require ext_code.size(tokenAAddress)
                staticcall tokenAAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(tokenAAddress)
                    call tokenAAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args providerAAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(tokenBAddress)
                staticcall tokenBAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(tokenBAddress)
                    call tokenBAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args providerBAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(routerAddress)
                staticcall routerAddress.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args tokenAAddress, tokenBAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(tokenAAddress)
                    staticcall tokenAAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(tokenAAddress)
                        call tokenAAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args providerAAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(tokenBAddress)
                    staticcall tokenBAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(tokenBAddress)
                        call tokenBAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args providerBAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swapTokenForToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.vault() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if tokenAAddress == arg2:
            if WETHAddress == arg1:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                require WETHAddress == arg1
                mem[(2 * ceil32(return_data.size)) + 160] = arg2
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg3
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _486 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _510 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = _510
                require return_data.size >= _486 + (32 * _510) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _510] = mem[(2 * ceil32(return_data.size)) + _486 + 224 len 32 * _510]
                require _510 - 1 < _510
                mem[mem[64]] = mem[(32 * _510 - 1) + (4 * ceil32(return_data.size)) + 224]
            else:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    require WETHAddress == arg2
                    mem[(2 * ceil32(return_data.size)) + 160] = arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _488 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _512 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _512
                    require return_data.size >= _488 + (32 * _512) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _512] = mem[(2 * ceil32(return_data.size)) + _488 + 224 len 32 * _512]
                    require _512 - 1 < _512
                    mem[mem[64]] = mem[(32 * _512 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    if WETHAddress == arg2:
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _490 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _514 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _514
                        require return_data.size >= _490 + (32 * _514) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _514] = mem[(2 * ceil32(return_data.size)) + _490 + 256 len 32 * _514]
                        require _514 - 1 < _514
                        mem[mem[64]] = mem[(32 * _514 - 1) + (4 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _489 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _513 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _513
                        require return_data.size >= _489 + (32 * _513) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _513] = mem[(2 * ceil32(return_data.size)) + _489 + 256 len 32 * _513]
                        require _513 - 1 < _513
                        mem[mem[64]] = mem[(32 * _513 - 1) + (4 * ceil32(return_data.size)) + 256]
        else:
            require tokenBAddress == arg2
            if WETHAddress == arg1:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                require WETHAddress == arg1
                mem[(2 * ceil32(return_data.size)) + 160] = arg2
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg3
                mem[(2 * ceil32(return_data.size)) + 228] = 0
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _492 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _516 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(4 * ceil32(return_data.size)) + 192] = _516
                require return_data.size >= _492 + (32 * _516) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _516] = mem[(2 * ceil32(return_data.size)) + _492 + 224 len 32 * _516]
                require _516 - 1 < _516
                mem[mem[64]] = mem[(32 * _516 - 1) + (4 * ceil32(return_data.size)) + 224]
            else:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    require WETHAddress == arg2
                    mem[(2 * ceil32(return_data.size)) + 160] = arg2
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg3
                    mem[(2 * ceil32(return_data.size)) + 228] = 0
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _494 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _518 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                    mem[(4 * ceil32(return_data.size)) + 192] = _518
                    require return_data.size >= _494 + (32 * _518) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _518] = mem[(2 * ceil32(return_data.size)) + _494 + 224 len 32 * _518]
                    require _518 - 1 < _518
                    mem[mem[64]] = mem[(32 * _518 - 1) + (4 * ceil32(return_data.size)) + 224]
                else:
                    mem[(2 * ceil32(return_data.size)) + 96] = 3
                    mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    if WETHAddress == arg2:
                        mem[(2 * ceil32(return_data.size)) + 160] = arg2
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _496 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _520 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _520
                        require return_data.size >= _496 + (32 * _520) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _520] = mem[(2 * ceil32(return_data.size)) + _496 + 256 len 32 * _520]
                        require _520 - 1 < _520
                        mem[mem[64]] = mem[(32 * _520 - 1) + (4 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 160] = WETHAddress
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2
                        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 160
                        mem[(2 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 128
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _495 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _519 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(4 * ceil32(return_data.size)) + 224] = _519
                        require return_data.size >= _495 + (32 * _519) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _519] = mem[(2 * ceil32(return_data.size)) + _495 + 256 len 32 * _519]
                        require _519 - 1 < _519
                        mem[mem[64]] = mem[(32 * _519 - 1) + (4 * ceil32(return_data.size)) + 256]
    else:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.vault() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x5aa6e675 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
        if tokenAAddress == arg2:
            if WETHAddress == arg1:
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = arg1
                require WETHAddress == arg1
                mem[(6 * ceil32(return_data.size)) + 160] = arg2
                mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _498 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _522 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _522
                require return_data.size >= _498 + (32 * _522) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _522] = mem[(6 * ceil32(return_data.size)) + _498 + 224 len 32 * _522]
                require _522 - 1 < _522
                mem[mem[64]] = mem[(32 * _522 - 1) + (7 * ceil32(return_data.size)) + 224]
            else:
                if WETHAddress == arg2:
                    mem[(6 * ceil32(return_data.size)) + 96] = 2
                    mem[(6 * ceil32(return_data.size)) + 128] = arg1
                    require WETHAddress == arg2
                    mem[(6 * ceil32(return_data.size)) + 160] = arg2
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = arg3
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _500 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _524 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                    mem[(7 * ceil32(return_data.size)) + 192] = _524
                    require return_data.size >= _500 + (32 * _524) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _524] = mem[(6 * ceil32(return_data.size)) + _500 + 224 len 32 * _524]
                    require _524 - 1 < _524
                    mem[mem[64]] = mem[(32 * _524 - 1) + (7 * ceil32(return_data.size)) + 224]
                else:
                    mem[(6 * ceil32(return_data.size)) + 96] = 3
                    mem[(6 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                    mem[(6 * ceil32(return_data.size)) + 128] = arg1
                    if WETHAddress == arg2:
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _502 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _526 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(7 * ceil32(return_data.size)) + 224] = _526
                        require return_data.size >= _502 + (32 * _526) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _526] = mem[(6 * ceil32(return_data.size)) + _502 + 256 len 32 * _526]
                        require _526 - 1 < _526
                        mem[mem[64]] = mem[(32 * _526 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 160] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 192] = arg2
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _501 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _525 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(7 * ceil32(return_data.size)) + 224] = _525
                        require return_data.size >= _501 + (32 * _525) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _525] = mem[(6 * ceil32(return_data.size)) + _501 + 256 len 32 * _525]
                        require _525 - 1 < _525
                        mem[mem[64]] = mem[(32 * _525 - 1) + (7 * ceil32(return_data.size)) + 256]
        else:
            require tokenBAddress == arg2
            if WETHAddress == arg1:
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = arg1
                require WETHAddress == arg1
                mem[(6 * ceil32(return_data.size)) + 160] = arg2
                mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = arg3
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _504 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _528 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[(7 * ceil32(return_data.size)) + 192] = _528
                require return_data.size >= _504 + (32 * _528) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _528] = mem[(6 * ceil32(return_data.size)) + _504 + 224 len 32 * _528]
                require _528 - 1 < _528
                mem[mem[64]] = mem[(32 * _528 - 1) + (7 * ceil32(return_data.size)) + 224]
            else:
                if WETHAddress == arg2:
                    mem[(6 * ceil32(return_data.size)) + 96] = 2
                    mem[(6 * ceil32(return_data.size)) + 128] = arg1
                    require WETHAddress == arg2
                    mem[(6 * ceil32(return_data.size)) + 160] = arg2
                    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 196] = arg3
                    mem[(6 * ceil32(return_data.size)) + 228] = 0
                    mem[(6 * ceil32(return_data.size)) + 260] = 160
                    mem[(6 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (6 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _506 = mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 192 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
                    _530 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                    mem[(7 * ceil32(return_data.size)) + 192] = _530
                    require return_data.size >= _506 + (32 * _530) + 32
                    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _530] = mem[(6 * ceil32(return_data.size)) + _506 + 224 len 32 * _530]
                    require _530 - 1 < _530
                    mem[mem[64]] = mem[(32 * _530 - 1) + (7 * ceil32(return_data.size)) + 224]
                else:
                    mem[(6 * ceil32(return_data.size)) + 96] = 3
                    mem[(6 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                    mem[(6 * ceil32(return_data.size)) + 128] = arg1
                    if WETHAddress == arg2:
                        mem[(6 * ceil32(return_data.size)) + 160] = arg2
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _508 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _532 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(7 * ceil32(return_data.size)) + 224] = _532
                        require return_data.size >= _508 + (32 * _532) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _532] = mem[(6 * ceil32(return_data.size)) + _508 + 256 len 32 * _532]
                        require _532 - 1 < _532
                        mem[mem[64]] = mem[(32 * _532 - 1) + (7 * ceil32(return_data.size)) + 256]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 160] = WETHAddress
                        mem[(6 * ceil32(return_data.size)) + 192] = arg2
                        mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                        mem[(6 * ceil32(return_data.size)) + 260] = 0
                        mem[(6 * ceil32(return_data.size)) + 292] = 160
                        mem[(6 * ceil32(return_data.size)) + 388] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 324] = this.address
                        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, 0, 160, address(this.address), block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _507 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 224 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                        _531 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                        mem[(7 * ceil32(return_data.size)) + 224] = _531
                        require return_data.size >= _507 + (32 * _531) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _531] = mem[(6 * ceil32(return_data.size)) + _507 + 256 len 32 * _531]
                        require _531 - 1 < _531
                        mem[mem[64]] = mem[(32 * _531 - 1) + (7 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
