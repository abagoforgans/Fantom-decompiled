contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#
const FEE_BATCH = 300

const WITHDRAWAL_MAX = 100000

const STRATEGIST_FEE = 50

const CALL_FEE = 50

const WITHDRAW_FEE = 100

const MAX_FEE = 1000


uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address sub_743b7c63Address;
mapping of uint8 stor6;
address wrappedAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address masterchefAddress;
uint256 poolId;
array of address outputToWrappedRoute;
array of address outputToLp0Route;
array of address outputToLp1Route;

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1]
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function outputToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp0Route.length
    return outputToLp0Route[arg1]
}

function poolId() payable {
    return poolId
}

function wrapped() payable {
    return wrappedAddress
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function keeper() payable {
    return keeperAddress
}

function output() payable {
    return outputAddress
}

function masterchef() payable {
    return masterchefAddress
}

function vault() payable {
    return address(vaultAddress)
}

function outputToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp1Route.length
    return outputToLp1Route[arg1]
}

function beforeDeposit() payable {
  stop
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

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_743b7c63Address = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor6[address(arg1)] = uint8(arg2)
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] > arg1:
            if tx.origin == owner:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[452 len 4]
                    else:
                        if 100 * arg1 / arg1 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 100 * arg1 / 100000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (100 * arg1 / 100000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (100 * arg1 / 100000)) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
        else:
            if tx.origin == owner:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                    else:
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 100 * ext_call.return_data[0] / 100000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (100 * ext_call.return_data[0] / 100000)) >> 32
                        mem[452 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (100 * ext_call.return_data[0] / 100000)) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[388 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if paused:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    else:
                        if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 100 * ext_call.return_data[0] / 100000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (100 * ext_call.return_data[0] / 100000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (100 * ext_call.return_data[0] / 100000)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
        else:
            if tx.origin == owner:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[388 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if paused:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    mem[388 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[516 len 4]
                    else:
                        if 100 * arg1 / arg1 != 100:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 100 * arg1 / 100000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (100 * arg1 / 100000)) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (100 * arg1 / 100000)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
}



}
