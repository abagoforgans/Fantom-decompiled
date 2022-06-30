contract main {




// =====================  Runtime code  =====================


const sub_b6a41f65(?) = Array(len=3, data=mem[288 len 96])

const investToken = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const strategyName = 'FTM GEIST USDC'

const rewardToken = 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d


uint32 stor0;
address owner;
uint256 stor0;
address pendingOwner;
mapping of uint8 operators;
array of address sub_cb38f407;
mapping of uint8 sub_0f71019d;
array of address sub_5e9bd173;
address sub_5a451484Address;
address strategyAddress;

function sub_0f71019d(?) {
    require calldata.size - 4 >= 32
    return sub_0f71019d[arg1]
}

function operators(address arg1) {
    require calldata.size - 4 >= 32
    return operators[arg1]
}

function sub_4b18578a(?) {
    return sub_5e9bd173.length
}

function sub_5a451484(?) {
    return sub_5a451484Address
}

function sub_5e9bd173(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e9bd173.length
    return sub_5e9bd173[arg1]
}

function sub_78a19f7a(?) {
    return sub_cb38f407.length
}

function owner() {
    return address(owner)
}

function strategy() {
    return strategyAddress
}

function sub_cb38f407(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_cb38f407.length
    return sub_cb38f407[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (address(owner) == arg1)
}

function sub_24c373b6(?) {
    require calldata.size - 4 >= 32
    return (sub_0f71019d[address(arg1)] == 1)
}

function isOperator(address arg1) {
    require calldata.size - 4 >= 32
    return (operators[address(arg1)] == 1)
}

function sub_4506ab5e(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0f71019d[address(arg1)] = 2
    emit 0xbea7359b: address(owner), arg1
}

function delOperator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    operators[address(arg1)] = 2
    emit 0x34250d52: address(owner), arg1
}

function sub_a147d7d4(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_0f71019d[address(arg1)]:
        sub_5e9bd173.length++
        sub_5e9bd173[sub_5e9bd173.length] = arg1
    sub_0f71019d[address(arg1)] = 1
    emit 0x2f1b6435: address(owner), arg1
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not operators[address(arg1)]:
        sub_cb38f407.length++
        sub_cb38f407[sub_cb38f407.length] = arg1
    operators[address(arg1)] = 1
    emit 0x51778c51: address(owner), arg1
}

function acceptOwnership() {
    if pendingOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c4f776e61626c653a20796f75722061646472657373206973206e6f742070656e64696e674f776e65,
                    mem[205 len 23]
    emit OwnershipTransferred(address(owner), pendingOwner);
    address(owner) = pendingOwner
    pendingOwner = 0
}

function proposeOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipProposed(address(owner), arg1);
    pendingOwner = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function setStrategy(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5a451484Address)
    staticcall sub_5a451484Address.0x8498f50c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Vault: _strategy is not enable'
    strategyAddress = arg1
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_5a451484Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x726f6e6c79466163746f72793a2063616c6c6572206973206e6f742074686520666163746f72,
                    mem[202 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5a451484Address)
    staticcall sub_5a451484Address.0x8498f50c with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Vault: _strategy is not enable'
    strategyAddress = arg2
    address(owner) = arg1
}

function _fallback() payable {
    require ext_code.size(sub_5a451484Address)
    staticcall sub_5a451484Address.0x8498f50c with:
            gas gas_remaining wei
           args strategyAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x645661756c743a2064656c6567617465205f7374726174656779206973206e6f7420656e61626c,
                    mem[203 len 25]
    delegate strategyAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_15146d13(?) {
    require calldata.size - 4 >= 32
    if sub_0f71019d[address(msg.sender)] != 1:
        if operators[address(msg.sender)] != 1:
            if address(owner) != msg.sender:
                revert with 0, 'not-operator'
    require ext_code.size(this.address)
    staticcall this.address.0xbadf822b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[292 len 0] = None
    require ext_code.size(0x297fddc5c33ef988dd03bd13e162ae084ea1fe57)
    call 0x297fddc5c33ef988dd03bd13e162ae084ea1fe57.claim(address arg1, address[] arg2) with:
         gas gas_remaining wei
        args address(this.address), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x49c93a95dbcc9a6a4d8f77e59c038ce5020e82f8)
    call 0x49c93a95dbcc9a6a4d8f77e59c038ce5020e82f8.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if arg2 >= eth.balance(this.address):
            call address(owner) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogWithdraw(eth.balance(this.address), arg1, address(owner));
        else:
            call address(owner) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogWithdraw(arg2, arg1, address(owner));
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        if arg2 >= ext_call.return_data[0]:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit LogWithdraw(ext_call.return_data[0], arg1, address(owner));
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit LogWithdraw(arg2, arg1, address(owner));
}

function earn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operators[address(msg.sender)] != 1:
        if address(owner) != msg.sender:
            revert with 0, 'not-operator'
    if arg1 > 25:
        revert with 0, 'max times 20'
    require ext_code.size(this.address)
    staticcall this.address.0xbadf822b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not ext_call.return_data[160]:
        revert with 0, 'need check asset configuration'
    if not ext_call.return_data[192]:
        revert with 0, 'need check asset configuration'
    if not ext_call.return_data[256]:
        revert with 0, 'need check asset configuration'
    if ext_call.return_data[288]:
        revert with 0, 'need check asset configuration'
    if ext_call.return_data[32] - 10 >= ext_call.return_data[32]:
        revert with 0, 'illegal ltv'
    idx = 0
    while idx < arg1:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
        staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
        staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0], address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
        staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not idx:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).setUserUseReserveAsCollateral(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
        mem[100] = address(ext_call.return_data[0])
        mem[132] = (-10 * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
        mem[164] = 2
        mem[196] = 0
        mem[228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), (-10 * ext_call.return_data[0]) + (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, 2, 0, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function exit() {
    if sub_0f71019d[address(msg.sender)] == 1:
        require ext_code.size(this.address)
        staticcall this.address.0xbadf822b with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
            staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if ext_call.success:
                require return_data.size >= 96
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 320
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    s = 1
                    s = 0
                    while ext_call.success:
                        require return_data.size >= 32
                        _293 = mem[96]
                        if not mem[96]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xb5325fd0: s
                        if s > 25:
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit 0xb5325fd0: s
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                        staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[96] > ext_call.return_data[0]:
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[196] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                            mem[164] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                        else:
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), mem[96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[196] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), mem[96], 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                            mem[164] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = this.address
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = _293
                        s = s + 1
                        continue 
    else:
        if operators[address(msg.sender)] == 1:
            require ext_code.size(this.address)
            staticcall this.address.0xbadf822b with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 96
                    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if ext_call.success:
                        require return_data.size >= 320
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = 1
                        s = 0
                        while ext_call.success:
                            require return_data.size >= 32
                            _294 = mem[96]
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xb5325fd0: s
                            if s > 25:
                                if not mem[96]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0xb5325fd0: s
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if mem[96] > ext_call.return_data[0]:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                            else:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = this.address
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            s = _294
                            s = s + 1
                            continue 
        else:
            if address(owner) != msg.sender:
                revert with 0, 'not-operator'
            require ext_code.size(this.address)
            staticcall this.address.0xbadf822b with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 96
                    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if ext_call.success:
                        require return_data.size >= 320
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = 1
                        s = 0
                        while ext_call.success:
                            require return_data.size >= 32
                            _295 = mem[96]
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xb5325fd0: s
                            if s > 25:
                                if not mem[96]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0xb5325fd0: s
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if mem[96] > ext_call.return_data[0]:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                            else:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = this.address
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            s = _295
                            s = s + 1
                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function exit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_0f71019d[address(msg.sender)] == 1:
        require ext_code.size(this.address)
        staticcall this.address.0xbadf822b with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
            staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if ext_call.success:
                require return_data.size >= 96
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 320
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    s = 1
                    s = 0
                    while ext_call.success:
                        require return_data.size >= 32
                        _341 = mem[96]
                        if not mem[96]:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0xb5325fd0: s
                        if s > arg1:
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            emit 0xb5325fd0: s
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                        staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if mem[96] > ext_call.return_data[0]:
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[196] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                            mem[164] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                        else:
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), mem[96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[196] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), mem[96], 2, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                            mem[164] = this.address
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[100] = this.address
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = _341
                        s = s + 1
                        continue 
    else:
        if operators[address(msg.sender)] == 1:
            require ext_code.size(this.address)
            staticcall this.address.0xbadf822b with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 96
                    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if ext_call.success:
                        require return_data.size >= 320
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = 1
                        s = 0
                        while ext_call.success:
                            require return_data.size >= 32
                            _342 = mem[96]
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xb5325fd0: s
                            if s > arg1:
                                if not mem[96]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0xb5325fd0: s
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if mem[96] > ext_call.return_data[0]:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                            else:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = this.address
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            s = _342
                            s = s + 1
                            continue 
        else:
            if address(owner) != msg.sender:
                revert with 0, 'not-operator'
            require ext_code.size(this.address)
            staticcall this.address.0xbadf822b with:
                    gas gas_remaining wei
            if ext_call.success:
                require return_data.size >= 32
                require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if ext_call.success:
                    require return_data.size >= 96
                    require ext_code.size(0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3)
                    staticcall 0xf3b0611e2e4d2cd6ab4bb3e01ade211c3f42a8c3.getReserveConfigurationData(address arg1) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if ext_call.success:
                        require return_data.size >= 320
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[96] = ext_call.return_data[0]
                        s = 1
                        s = 0
                        while ext_call.success:
                            require return_data.size >= 32
                            _343 = mem[96]
                            if not mem[96]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit 0xb5325fd0: s
                            if s > arg1:
                                if not mem[96]:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                    staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ext_call.return_data[0], this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                emit 0xb5325fd0: s
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                            staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if mem[96] > ext_call.return_data[0]:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), ext_call.return_data[0], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * ext_call.return_data[0]) - (ext_call.return_data[32] * ext_call.return_data[0]) / 10000, this.address
                            else:
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[196] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), mem[96], 2, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b)
                                staticcall 0x6c793c628fe2b480c5e6fb7957dda4b9291f9c9b.getLendingPool() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[132] = (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000
                                mem[164] = this.address
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (20000 * mem[96]) - (ext_call.return_data[32] * mem[96]) / 10000, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[100] = this.address
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[96] = ext_call.return_data[0]
                            s = _343
                            s = s + 1
                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
