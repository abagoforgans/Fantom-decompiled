contract main {




// =====================  Runtime code  =====================


#
#  - work(uint256 arg1, address arg2, uint256 arg3, bytes arg4)
#  - sub_ee148306(?)
#  - reinvest()
#
address owner;
uint8 stor151;
address masterChefAddress;
address factoryAddress;
address routerAddress;
address lpTokenAddress;
address wNativeAddress;
address baseTokenAddress;
address farmingTokenAddress;
address booAddress;
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
    return wNativeAddress
}

function boo() payable {
    return booAddress
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
    return lpTokenAddress
}

function liqStrat() payable {
    return liqStratAddress
}

function sub_76dcb435(?) payable {
    return sub_76dcb435
}

function owner() payable {
    return owner
}

function farmingToken() payable {
    return farmingTokenAddress
}

function factory() payable {
    return factoryAddress
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
        idx = idx + 1
        continue 
}

function setReinvestBountyBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > sub_76dcb435:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    89,
                    0x7253706f6f6b7973776170576f726b65723a3a7365745265696e76657374426f756e74794270733a3a205f7265696e76657374426f756e7479427073206578636565646564206d61785265696e76657374426f756e74794270,
                    mem[253 len 7]
    reinvestBountyBps = arg1
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
    sub_76dcb435 = arg1
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
                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (totalShare * arg1 / ext_call.return_data[0])
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
                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    0x7353706f6f6b7973776170576f726b65723a3a6f6e6c794f70657261746f723a3a206e6f74206f70657261746f,
                    mem[209 len 19]
    if not stor151:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 0
    if not shares[arg1]:
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.transfer(address arg1, uint256 arg2) with:
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
        staticcall baseTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
        call baseTokenAddress with:
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
            require ext_code.size(lpTokenAddress)
            staticcall lpTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpTokenAddress)
            call lpTokenAddress.transfer(address arg1, uint256 arg2) with:
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
            staticcall baseTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            call baseTokenAddress with:
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
                                0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
            require ext_code.size(lpTokenAddress)
            staticcall lpTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lpTokenAddress)
            call lpTokenAddress.transfer(address arg1, uint256 arg2) with:
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
            staticcall baseTokenAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
            call baseTokenAddress with:
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

function health(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalShare:
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == baseTokenAddress:
            if not shares[arg1]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not shares[arg1]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (0 / ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                    mem[475 len 9]
                    if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                    mem[475 len 9]
                    if not 0 / ext_call.return_data[0]:
                        require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                        if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                        if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                    if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not fee * 0 / ext_call.return_data[0]:
                        if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                            if fee * 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require fee * 0 / ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                        if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                        if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                    if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if not Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
                if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
                        if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not shares[arg1]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0]:
                    if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if not 0 / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not fee * 0 / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if not Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
            if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
        if not shares[arg1]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not shares[arg1]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[475 len 9]
                if not 0 / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not fee * 0 / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if not Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
            if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[32]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not shares[arg1]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[475 len 9]
            if not 0 / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not fee * 0 / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * 0 / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / shares[arg1] != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        if not Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
            if Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[475 len 9]
        if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[475 len 9]
        if not Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
            require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0])
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
        if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] != fee:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
        if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]):
            if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]
            if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * shares[arg1] / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * shares[arg1] / ext_call.return_data[0] * feeDenom)))
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not shares[arg1]:
        if not totalShare:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == baseTokenAddress:
            if not 0 / totalShare:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalShare:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (0 / ext_call.return_data[0])
                    if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                    mem[539 len 9]
                    if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                        revert with 0, 
                                    32,
                                    55,
                                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                    mem[539 len 9]
                    if not 0 / ext_call.return_data[0]:
                        require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                        if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                        if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                    if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not fee * 0 / ext_call.return_data[0]:
                        if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                            if fee * 0 / ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require fee * 0 / ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                        if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                        if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                    if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if not Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
                if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
                        if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalShare:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0]:
                    if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if not 0 / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not fee * 0 / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
            if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
        if not 0 / totalShare:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalShare:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if not 0 / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not fee * 0 / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
            if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalShare:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not 0 / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * 0 / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * 0 / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / 0 / totalShare != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        if not Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
            if Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if not Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
            require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0])
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
        if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] != fee:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
        if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]):
            if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]
            if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * 0 / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * 0 / totalShare / ext_call.return_data[0] * feeDenom)))
    if ext_call.return_data[0] * shares[arg1] / shares[arg1] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalShare:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == baseTokenAddress:
        if not ext_call.return_data[0] * shares[arg1] / totalShare:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] * shares[arg1] / totalShare:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (0 / ext_call.return_data[0])
                if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                    revert with 0, 
                                32,
                                55,
                                0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                                mem[539 len 9]
                if not 0 / ext_call.return_data[0]:
                    require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not fee * 0 / ext_call.return_data[0]:
                    if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                        if fee * 0 / ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require fee * 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                    if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                    if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
                if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
            if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
                    if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * shares[arg1] / totalShare:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0]:
                if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not 0 / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * 0 / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * 0 / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if not Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            require Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            require (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
        if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != fee:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
        if (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
            if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
            if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[0]) * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[32]) * feeDenom) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
    if not ext_call.return_data[0] * shares[arg1] / totalShare:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * shares[arg1] / totalShare:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: subtraction overflow'
            if not 0 / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / ext_call.return_data[0])
            if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
                revert with 0, 
                            32,
                            55,
                            0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                            mem[539 len 9]
            if not 0 / ext_call.return_data[0]:
                require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not fee * 0 / ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                    if fee * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require fee * 0 / ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
                if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                    revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
                if (0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
            if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * 0 / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
        if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != fee:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
                if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
            if (0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
        if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
            if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
        if (0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * shares[arg1] / totalShare:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / ext_call.return_data[0]:
            if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
        if Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
            revert with 0, 
                        32,
                        55,
                        0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                        mem[539 len 9]
        if not 0 / ext_call.return_data[0]:
            require Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0])
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if fee * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != fee:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not fee * 0 / ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
                if fee * 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require fee * 0 / ext_call.return_data[0]
                if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]) < 0 / fee * 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * 0 / ext_call.return_data[0]))
            if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
                revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < 0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
        if (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]):
            if fee * 0 / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * 0 / ext_call.return_data[0]
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / fee * 0 / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (0 / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if fee * 0 / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * 0 / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * 0 / ext_call.return_data[0]) / (fee * 0 / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (0 / ext_call.return_data[0] * feeDenom)))
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * shares[arg1] / totalShare != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
    if Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
        revert with 0, 
                    32,
                    55,
                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                    mem[539 len 9]
    if Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) <= 0:
        revert with 0, 
                    32,
                    55,
                    0x6453706f6f6b7973776170576f726b65723a3a6765744d6b7453656c6c416d6f756e743a3a2062616420726573657276652076616c7565,
                    mem[539 len 9]
    if not Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
        require Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0])
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        require (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
    if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != fee:
        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
            if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
            if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < 0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
        if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
            revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < 0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (0 / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
    if (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] != Mask(112, 0, ext_call.return_data[32]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]):
        if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        require fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]
        if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]))
    if (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom) / Mask(112, 0, ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) != feeDenom:
        revert with 0, 32, 33, 0x61536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    require (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)
    if (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)) < (Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom):
        revert with 0, 'SafeMath: addition overflow'
    return ((Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + ((Mask(112, 0, ext_call.return_data[32]) * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) / (fee * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0]) + (Mask(112, 0, ext_call.return_data[0]) * feeDenom) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] * shares[arg1] / totalShare / ext_call.return_data[0] * feeDenom)))
}



}
