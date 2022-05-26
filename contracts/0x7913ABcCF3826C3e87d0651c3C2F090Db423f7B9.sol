contract main {




// =====================  Runtime code  =====================


#
#  - name()
#  - estimatedTotalAssetsInToken(address arg1)
#  - prepareReturn()
#
address providerAAddress;
address providerBAddress;
address tokenAAddress;
uint8 reinvest; offset 160
uint128 stor3; offset 160
address tokenBAddress;
address WETHAddress;
address rewardAddress;
address routerAddress;
uint256 pid;
address masterchefAddress;
address pairAddress;
uint256 stor10;
uint256 stor11;

function tokenA() payable {
    return tokenAAddress
}

function reward() payable {
    return rewardAddress
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

function pair() payable {
    return pairAddress
}

function WETH() payable {
    return WETHAddress
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

function reinvest() payable {
    return bool(reinvest)
}

function _fallback() payable {
    revert
}

function balanceOfA() payable {
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfB() payable {
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
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

function balanceOfReward() payable {
    require ext_code.size(rewardAddress)
    staticcall rewardAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfStake() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    return ext_call.return_data[0]
}

function cloneJoint(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x1460e390 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg5, address(arg4), address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setReinvest(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.0x1fe4a686 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.0x1fe4a686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    stor3 = Mask(96, 0, arg1)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if providerAAddress:
        revert with 0, 'Joint already initialized'
    providerAAddress = arg1
    providerBAddress = arg2
    routerAddress = arg3
    WETHAddress = arg4
    masterchefAddress = arg5
    rewardAddress = arg6
    pid = arg7
    require ext_code.size(arg1)
    staticcall arg1.0x1f1fcd51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenAAddress = ext_call.return_data[12 len 20]
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.0x1f1fcd51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tokenBAddress = ext_call.return_data[12 len 20]
    reinvest = 1
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
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterchefAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
}

function returnLooseToProviders() payable {
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.0x1fe4a686 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.0x1fe4a686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenAAddress)
        call tokenAAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args providerAAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenBAddress)
    staticcall tokenBAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenBAddress)
        call tokenBAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args providerBAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function adjustPosition() payable {
    if providerAAddress != msg.sender:
        require msg.sender == providerBAddress
    require ext_code.size(tokenAAddress)
    staticcall tokenAAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(tokenBAddress)
        staticcall tokenBAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if reinvest:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
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
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
                require not stor10
                require not stor11
                require ext_code.size(tokenAAddress)
                staticcall tokenAAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenBAddress)
                staticcall tokenBAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args tokenAAddress, tokenBAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
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
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
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
                    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
}

function liquidatePosition() payable {
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.0xfbfa77cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args pid, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require bool((4 * ceil32(return_data.size)) + 160 <= test266151307())
        if ext_call.return_data[0]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((6 * ceil32(return_data.size)) + 224 <= test266151307())
            require ext_code.size(masterchefAddress)
            call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(providerBAddress)
        staticcall providerBAddress.0xfbfa77cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require bool((7 * ceil32(return_data.size)) + 160 <= test266151307())
            if ext_call.return_data[0]:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((8 * ceil32(return_data.size)) + 224 <= test266151307())
                require ext_code.size(masterchefAddress)
                call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(providerAAddress)
            staticcall providerAAddress.0x1fe4a686 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if msg.sender == ext_call.return_data[12 len 20]:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
                if ext_call.return_data[0]:
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((10 * ceil32(return_data.size)) + 224 <= test266151307())
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(providerBAddress)
                staticcall providerBAddress.0x1fe4a686 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args pid, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require bool((10 * ceil32(return_data.size)) + 160 <= test266151307())
                if ext_call.return_data[0]:
                    require ext_code.size(masterchefAddress)
                    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args pid, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require bool((11 * ceil32(return_data.size)) + 224 <= test266151307())
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
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
}

function sub_e1c727a2(?) payable {
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(pairAddress)
    staticcall pairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(pairAddress)
    staticcall pairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not Mask(112, 0, ext_call.return_data[0]):
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / Mask(112, 0, ext_call.return_data[0]):
                    require ext_code.size(pairAddress)
                    staticcall pairAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    return 0
                if 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 997:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(pairAddress)
                staticcall pairAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != tokenAAddress:
                    return 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000, 0
                return 0, 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000
            if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(pairAddress)
                staticcall pairAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return 0
            if 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != tokenAAddress:
                return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 
                       0
            return 0, 
                   997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
        if 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 0 / Mask(112, 0, ext_call.return_data[32]) != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(pairAddress)
                staticcall pairAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != tokenAAddress:
                    return 0, 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000
                return 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000, 0
            if 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != tokenAAddress:
                return 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000, 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000
            return 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000, 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000
        if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != tokenAAddress:
                return 0, 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000
            return 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000, 0
        if 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(pairAddress)
        staticcall pairAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenAAddress:
            return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 
                   997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000
        return 997 * 0 / Mask(112, 0, ext_call.return_data[32]) / 1000, 
               997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
    if 10^ext_call.return_data[31 len 1] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
        if not Mask(112, 0, ext_call.return_data[32]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / Mask(112, 0, ext_call.return_data[0]):
                require ext_code.size(pairAddress)
                staticcall pairAddress.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return 0
            if 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 997:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != tokenAAddress:
                return 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000, 0
            return 0, 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000
        if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 0
        if 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(pairAddress)
        staticcall pairAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenAAddress:
            return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 
                   0
        return 0, 
               997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
    if 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / Mask(112, 0, ext_call.return_data[0]):
            require ext_code.size(pairAddress)
            staticcall pairAddress.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != tokenAAddress:
                return 0, 
                       997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
            return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 
                   0
        if 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 0 / Mask(112, 0, ext_call.return_data[0]) != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(pairAddress)
        staticcall pairAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenAAddress:
            return 997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000, 
                   997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
        return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 
               997 * 0 / Mask(112, 0, ext_call.return_data[0]) / 1000
    if 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
        require ext_code.size(pairAddress)
        staticcall pairAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != tokenAAddress:
            return 0, 
                   997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
        return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 
               0
    if 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(pairAddress)
    staticcall pairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != tokenAAddress:
        return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000, 
               997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000
    return 997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 1000, 
           997 * 10^uint8(ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / 1000
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
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((8 * ceil32(return_data.size)) + 160 <= test266151307())
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(pairAddress)
    staticcall pairAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pairAddress)
    staticcall pairAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[12 len 20] != tokenAAddress:
        if not 2 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(pairAddress)
            staticcall pairAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not Mask(112, 0, ext_call.return_data[32]):
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(pairAddress)
                staticcall pairAddress.decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
            require ext_code.size(pairAddress)
            staticcall pairAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
        if (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1]) / 2 * ext_call.return_data[0] != 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(pairAddress)
        staticcall pairAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not Mask(112, 0, ext_call.return_data[32]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(pairAddress)
            staticcall pairAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
        require ext_code.size(pairAddress)
        staticcall pairAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
        require ext_code.size(pairAddress)
        staticcall pairAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not Mask(112, 0, ext_call.return_data[0]):
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(pairAddress)
            staticcall pairAddress.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
        require ext_code.size(pairAddress)
        staticcall pairAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
    if (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1]) + (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1]) / 2 * ext_call.return_data[0] != 10^ext_call.return_data[31 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(pairAddress)
    staticcall pairAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not Mask(112, 0, ext_call.return_data[0]):
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(pairAddress)
        staticcall pairAddress.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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
    require ext_code.size(pairAddress)
    staticcall pairAddress.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
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

function swapTokenForToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(providerAAddress)
    staticcall providerAAddress.0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if tokenAAddress == arg2:
            if WETHAddress == arg1:
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                if WETHAddress == arg1:
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
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _486 + (32 * _510) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _510] = mem[(2 * ceil32(return_data.size)) + _486 + 224 len 32 * _510]
                    if _510 - 1 < _510:
                        return memory
                          from (32 * _510 - 1) + (4 * ceil32(return_data.size)) + 224
                           len 32
            else:
                if WETHAddress == arg2:
                    mem[(2 * ceil32(return_data.size)) + 96] = 2
                    mem[(2 * ceil32(return_data.size)) + 128] = arg1
                    if WETHAddress == arg2:
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
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require return_data.size >= _488 + (32 * _512) + 32
                        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _512] = mem[(2 * ceil32(return_data.size)) + _488 + 224 len 32 * _512]
                        if _512 - 1 < _512:
                            return memory
                              from (32 * _512 - 1) + (4 * ceil32(return_data.size)) + 224
                               len 32
                else:
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
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _490 + (32 * _514) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _514] = mem[(2 * ceil32(return_data.size)) + _490 + 256 len 32 * _514]
                        if _514 - 1 < _514:
                            return memory
                              from (32 * _514 - 1) + (4 * ceil32(return_data.size)) + 256
                               len 32
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
                        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                        require return_data.size >= _489 + (32 * _513) + 32
                        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _513] = mem[(2 * ceil32(return_data.size)) + _489 + 256 len 32 * _513]
                        if _513 - 1 < _513:
                            return memory
                              from (32 * _513 - 1) + (4 * ceil32(return_data.size)) + 256
                               len 32
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
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _492 + (32 * _516) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _516] = mem[(2 * ceil32(return_data.size)) + _492 + 224 len 32 * _516]
                require _516 - 1 < _516
                mem[mem[64]] = mem[(32 * _516 - 1) + (4 * ceil32(return_data.size)) + 224]
                return memory
                  from mem[64]
                   len 32
            if WETHAddress == arg2:
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                if WETHAddress == arg2:
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
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require return_data.size >= _494 + (32 * _518) + 32
                    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _518] = mem[(2 * ceil32(return_data.size)) + _494 + 224 len 32 * _518]
                    if _518 - 1 < _518:
                        return memory
                          from (32 * _518 - 1) + (4 * ceil32(return_data.size)) + 224
                           len 32
            else:
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
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    require return_data.size >= _496 + (32 * _520) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _520] = mem[(2 * ceil32(return_data.size)) + _496 + 256 len 32 * _520]
                    if _520 - 1 < _520:
                        return memory
                          from (32 * _520 - 1) + (4 * ceil32(return_data.size)) + 256
                           len 32
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
                    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                    require return_data.size >= _495 + (32 * _519) + 32
                    mem[(4 * ceil32(return_data.size)) + 256 len 32 * _519] = mem[(2 * ceil32(return_data.size)) + _495 + 256 len 32 * _519]
                    if _519 - 1 < _519:
                        return memory
                          from (32 * _519 - 1) + (4 * ceil32(return_data.size)) + 256
                           len 32
        revert
    require ext_code.size(providerBAddress)
    staticcall providerBAddress.0xfbfa77cf with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).governance() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    if tokenAAddress == arg2:
        if WETHAddress == arg1:
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
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _498 + (32 * _522) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _522] = mem[(6 * ceil32(return_data.size)) + _498 + 224 len 32 * _522]
            if _522 - 1 < _522:
                return memory
                  from (32 * _522 - 1) + (7 * ceil32(return_data.size)) + 224
                   len 32
            revert
        if WETHAddress == arg2:
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
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _500 + (32 * _524) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _524] = mem[(6 * ceil32(return_data.size)) + _500 + 224 len 32 * _524]
            if _524 - 1 < _524:
                return memory
                  from (32 * _524 - 1) + (7 * ceil32(return_data.size)) + 224
                   len 32
            revert
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
            mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _502 + (32 * _526) + 32
            mem[(7 * ceil32(return_data.size)) + 256 len 32 * _526] = mem[(6 * ceil32(return_data.size)) + _502 + 256 len 32 * _526]
            if _526 - 1 < _526:
                return memory
                  from (32 * _526 - 1) + (7 * ceil32(return_data.size)) + 256
                   len 32
            revert
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
        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        require return_data.size >= _501 + (32 * _525) + 32
        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _525] = mem[(6 * ceil32(return_data.size)) + _501 + 256 len 32 * _525]
        require _525 - 1 < _525
        mem[mem[64]] = mem[(32 * _525 - 1) + (7 * ceil32(return_data.size)) + 256]
    else:
        require tokenBAddress == arg2
        if WETHAddress == arg1:
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
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _504 + (32 * _528) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _528] = mem[(6 * ceil32(return_data.size)) + _504 + 224 len 32 * _528]
            if _528 - 1 < _528:
                return memory
                  from (32 * _528 - 1) + (7 * ceil32(return_data.size)) + 224
                   len 32
            revert
        if WETHAddress == arg2:
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
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _506 + (32 * _530) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _530] = mem[(6 * ceil32(return_data.size)) + _506 + 224 len 32 * _530]
            if _530 - 1 < _530:
                return memory
                  from (32 * _530 - 1) + (7 * ceil32(return_data.size)) + 224
                   len 32
            revert
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
            mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _508 + (32 * _532) + 32
            mem[(7 * ceil32(return_data.size)) + 256 len 32 * _532] = mem[(6 * ceil32(return_data.size)) + _508 + 256 len 32 * _532]
            if _532 - 1 < _532:
                return memory
                  from (32 * _532 - 1) + (7 * ceil32(return_data.size)) + 256
                   len 32
            revert
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
        mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        require return_data.size >= _507 + (32 * _531) + 32
        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _531] = mem[(6 * ceil32(return_data.size)) + _507 + 256 len 32 * _531]
        require _531 - 1 < _531
        mem[mem[64]] = mem[(32 * _531 - 1) + (7 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
