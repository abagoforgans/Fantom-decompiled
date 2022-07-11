contract main {




// =====================  Runtime code  =====================


#
#  - work(uint256 arg1, address arg2, uint256 arg3, bytes arg4)
#  - health(uint256 arg1)
#  - reinvest()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor151;
address masterChefAddress;
address factoryAddress;
uint256 stor202;
address routerAddress;
address lpTokenAddress;
uint256 stor204;
address wNativeAddress;
uint256 stor205;
address baseTokenAddress;
address farmingTokenAddress;
uint256 stor207;
address booAddress;
uint256 stor208;
address operatorAddress;
uint256 pid;
mapping of uint256 shares;
mapping of uint8 stor212;
uint256 totalShare;
address addStratAddress;
address liqStratAddress;
uint256 reinvestBountyBps;
uint256 sub_76dcb435;
mapping of uint8 stor218;
uint256 fee;
uint256 feeDenom;
address oracleAddress;
uint256 slippage;

function totalShare() payable {
    return totalShare
}

function feeDenom() payable {
    return feeDenom
}

function sub_22058619(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor218[arg1])
}

function wNative() payable {
    return address(wNativeAddress)
}

function slippage() payable {
    return slippage
}

function boo() payable {
    return address(booAddress)
}

function operator() payable {
    return operatorAddress
}

function masterChef() payable {
    return masterChefAddress
}

function addStrat() payable {
    return addStratAddress
}

function shares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return shares[arg1]
}

function lpToken() payable {
    return address(lpTokenAddress)
}

function liqStrat() payable {
    return liqStratAddress
}

function sub_76dcb435(?) payable {
    return sub_76dcb435
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function farmingToken() payable {
    return address(farmingTokenAddress)
}

function factory() payable {
    return address(factoryAddress)
}

function baseToken() payable {
    return baseTokenAddress
}

function reinvestBountyBps() payable {
    return reinvestBountyBps
}

function fee() payable {
    return fee
}

function pid() payable {
    return pid
}

function okStrats(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor212[arg1])
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setCriticalStrategies(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    addStratAddress = arg1
    liqStratAddress = arg2
    emit 0x69d0c1af: msg.sender, arg1, arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function sub_132ff6ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6153706f6f6b7973776170576f726b65723a3a73657453706f6f6b794665653a3a20616d6f756e7420657863656564656420313030,
                    mem[217 len 11]
    fee = arg1
    emit 0x8db1706d: msg.sender, arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2553706f6f6b7973776170576f726b65723a3a7365744f7261636c653a3a206e6f74205a45524f2061646472657373,
                    mem[211 len 17]
    oracleAddress = arg1
    emit SetOracle(msg.sender, arg1);
}

function setSlippage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 2000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x2553706f6f6b7973776170576f726b65723a3a736574536c6970706167653a3a20736c697070616765206578636565646564203230,
                    mem[217 len 11]
    slippage = arg1
    emit 0xd60712da: msg.sender, arg1
}

function setReinvestBountyBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > sub_76dcb435:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    89,
                    0x2553706f6f6b7973776170576f726b65723a3a7365745265696e76657374426f756e74794270733a3a205f7265696e76657374426f756e7479427073206578636565646564206d61785265696e76657374426f756e74794270,
                    mem[253 len 7]
    reinvestBountyBps = arg1
    emit 0x64eeda49: msg.sender, arg1
}

function setStrategyOk(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 212
        stor212[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        emit SetStrategyOK(msg.sender, address(cd[((32 * idx) + arg1 + 36)]), arg2);
        idx = idx + 1
        continue 
}

function sub_239e050f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 218
        stor218[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        emit SetReinvestorOK(msg.sender, address(cd[((32 * idx) + cd[4] + 36)]), bool(cd[36]));
        idx = idx + 1
        continue 
}

function setMaxReinvestBountyBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < reinvestBountyBps:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    94,
                    0x6e53706f6f6b7973776170576f726b65723a3a7365744d61785265696e76657374426f756e74794270733a3a205f6d61785265696e76657374426f756e7479427073206c6f776572207468616e207265696e76657374426f756e74794270,
                    mem[258 len 2]
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    77,
                    0x7253706f6f6b7973776170576f726b65723a3a7365744d61785265696e76657374426f756e74794270733a3a205f6d61785265696e76657374426f756e74794270732065786365656465642035,
                    mem[241 len 19]
    sub_76dcb435 = arg1
    emit SetMaxReinvestBountyBps(msg.sender, arg1);
}

function shareToBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalShare:
        return arg1
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if not totalShare:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalShare)
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalShare:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * arg1 / totalShare)
}

function balanceToShare(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalShare:
        return arg1
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if totalShare * arg1 / arg1 != totalShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (totalShare * arg1 / ext_call.return_data[0])
}

function sub_48334429(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if arg2.length < 2:
        revert with 0, 
                    32,
                    47,
                    0x7353706f6f6b7973776170576f726b65723a3a676574416d6f756e744f75744d696e3a3a20626164206c656e677468,
                    mem[(32 * arg2.length) + 243 len 17]
    idx = 0
    s = 0
    s = arg1
    while idx < arg2.length - 1:
        require idx < arg2.length
        _17 = mem[(32 * idx) + 128]
        require idx + 1 < arg2.length
        _19 = mem[(32 * idx + 1) + 128]
        mem[(32 * arg2.length) + 132] = address(factoryAddress)
        mem[(32 * arg2.length) + 164] = address(_17)
        mem[(32 * arg2.length) + 196] = s
        mem[(32 * arg2.length) + 228] = address(_19)
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.0xf4d69640 with:
                gas gas_remaining wei
               args address(factoryAddress), address(_17), s, address(_19)
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        continue 
    if not -_26 + (arg2.length * _26):
        return 0
    if (-1 * _26 * slippage) + (arg2.length * _26 * slippage) / -_26 + (arg2.length * _26) != slippage:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
    return ((-1 * _26 * slippage) + (arg2.length * _26 * slippage) / 10000)
}

function getMktSellAmount(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                    mem[219 len 9]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                    mem[219 len 9]
    if not arg1:
        if arg2:
            if feeDenom * arg2 / arg2 != feeDenom:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if feeDenom * arg2 < feeDenom * arg2:
                revert with 0, 'SafeMath: addition overflow'
            if feeDenom * arg2:
                return (0 / feeDenom * arg2)
    else:
        if fee * arg1 / arg1 != fee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not fee * arg1:
            if not arg2:
                if fee * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if fee * arg1:
                    return (0 / fee * arg1)
            else:
                if feeDenom * arg2 / arg2 != feeDenom:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (fee * arg1) + (feeDenom * arg2) < feeDenom * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (fee * arg1) + (feeDenom * arg2):
                    return (0 / (fee * arg1) + (feeDenom * arg2))
        else:
            if arg3 * fee * arg1 / fee * arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2:
                if fee * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if fee * arg1:
                    return (arg3 * fee * arg1 / fee * arg1)
            else:
                if feeDenom * arg2 / arg2 != feeDenom:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (fee * arg1) + (feeDenom * arg2) < feeDenom * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (fee * arg1) + (feeDenom * arg2):
                    return (arg3 * fee * arg1 / (fee * arg1) + (feeDenom * arg2))
    revert
}

function liquidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e53706f6f6b7973776170576f726b65723a3a6f6e6c794f70657261746f723a3a206e6f74206f70657261746f,
                    mem[209 len 19]
    if not stor151:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 0
    if not shares[arg1]:
        require ext_code.size(address(lpTokenAddress))
        staticcall address(lpTokenAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(lpTokenAddress))
        call address(lpTokenAddress).0xa9059cbb with:
             gas gas_remaining wei
            args liqStratAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(liqStratAddress)
        call liqStratAddress.execute(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, 0, 96, ''
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(baseTokenAddress)
        staticcall baseTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call baseTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            revert with 0, '!safeTransfer'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, '!safeTransfer'
    else:
        require ext_code.size(masterChefAddress)
        if 0 == totalShare:
            call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, shares[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if shares[arg1] > totalShare:
                revert with 0, 'SafeMath: subtraction overflow'
            totalShare -= shares[arg1]
            shares[arg1] = 0
            emit RemoveShare(shares[arg1], arg1);
            require ext_code.size(address(lpTokenAddress))
            staticcall address(lpTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(lpTokenAddress))
            call address(lpTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args liqStratAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(liqStratAddress)
            call liqStratAddress.execute(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args 0, 0, 96, ''
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(baseTokenAddress)
            staticcall baseTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call baseTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, '!safeTransfer'
        else:
            staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args pid, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not shares[arg1]:
                if not totalShare:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, 0 / totalShare
            else:
                if ext_call.return_data[0] * shares[arg1] / shares[arg1] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not totalShare:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0] * shares[arg1] / totalShare
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if shares[arg1] > totalShare:
                revert with 0, 'SafeMath: subtraction overflow'
            totalShare -= shares[arg1]
            shares[arg1] = 0
            emit RemoveShare(shares[arg1], arg1);
            require ext_code.size(address(lpTokenAddress))
            staticcall address(lpTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(lpTokenAddress))
            call address(lpTokenAddress).0xa9059cbb with:
                 gas gas_remaining wei
                args liqStratAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(liqStratAddress)
            call liqStratAddress.execute(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args 0, 0, 96, ''
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(baseTokenAddress)
            staticcall baseTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call baseTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[420]:
                    revert with 0, '!safeTransfer'
    emit Liquidate(ext_call.return_data[0], arg1);
    stor151 = 1
}

function sub_ea4e6553(?) payable {
    require calldata.size - 4 >= 288
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor151 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    operatorAddress = arg1
    baseTokenAddress = arg2
    require ext_code.size(arg4)
    staticcall arg4.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor205) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor205))
    masterChefAddress = arg3
    routerAddress = arg4
    require ext_code.size(arg4)
    staticcall arg4.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor202) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor202))
    pid = arg5
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    uint256(stor204) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor204))
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(lpTokenAddress))
    staticcall address(lpTokenAddress).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if baseTokenAddress == address(ext_call.return_data[0]):
        uint256(stor207) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor207))
    else:
        address(farmingTokenAddress) = address(ext_call.return_data[0])
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.0x4b3df200 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor208) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor208))
    addStratAddress = arg6
    liqStratAddress = arg7
    stor212[address(arg6)] = 1
    stor212[stor215] = 1
    reinvestBountyBps = arg8
    sub_76dcb435 = 500
    oracleAddress = arg9
    fee = 9980
    feeDenom = 10000
    slippage = 500
    if arg8 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    78,
                    0x7353706f6f6b7973776170576f726b65723a3a696e697469616c697a653a3a207265696e76657374426f756e7479427073206578636565646564206d61785265696e76657374426f756e74794270,
                    mem[242 len 18]
    require ext_code.size(address(lpTokenAddress))
    staticcall address(lpTokenAddress).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(lpTokenAddress))
    if ext_call.return_data[12 len 20] != address(farmingTokenAddress):
        staticcall address(lpTokenAddress).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != address(farmingTokenAddress):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        77,
                        0x7953706f6f6b7973776170576f726b65723a3a696e697469616c697a653a3a204c5020756e6465726c79696e67206e6f74206d617463682077697468206661726d2026206261736520746f6b65,
                        mem[241 len 19]
    staticcall address(lpTokenAddress).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != baseTokenAddress:
        require ext_code.size(address(lpTokenAddress))
        staticcall address(lpTokenAddress).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != baseTokenAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        77,
                        0x7953706f6f6b7973776170576f726b65723a3a696e697469616c697a653a3a204c5020756e6465726c79696e67206e6f74206d617463682077697468206661726d2026206261736520746f6b65,
                        mem[241 len 19]
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
