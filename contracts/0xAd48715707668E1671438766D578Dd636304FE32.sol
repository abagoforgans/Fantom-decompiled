contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#
uint8 paused; offset 160
address owner;
address strategistAddress;
uint32 stor2;
address unirouterAddress;
uint256 stor2;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address sub_743b7c63Address;
mapping of uint8 stor5;
address wrappedAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
uint32 stor18;
address masterchefAddress;
uint256 stor18;
uint256 poolId;
array of address outputToWrappedRoute;
array of address outputToLp0Route;
array of address outputToLp1Route;

function FEE_BATCH() payable {
    return FEE_BATCH
}

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
    return address(unirouterAddress)
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
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

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
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

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function MAX_FEE() payable {
    return MAX_FEE
}

function output() payable {
    return outputAddress
}

function masterchef() payable {
    return address(masterchefAddress)
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

function setPid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    poolId = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_743b7c63Address = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!manager'
    stor5[address(arg1)] = uint8(arg2)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!manager'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfPool() payable {
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).balanceOf(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if address(vaultAddress) != msg.sender:
        if strategistAddress != msg.sender:
            revert with 0, '!authorized'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ext_call.return_data[0 len 28]
        mem[356 len 0] = 0
        call wantAddress with:
           funct uint32(stor18)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor18), uint32(stor18), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor18):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            44,
                            0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                            mem[272 len 20],
                            Mask(96, 0, ext_call.return_data[0 len 28])
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).0x5b47d053 with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).beforeWithdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, arg1 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] > arg1:
        mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
        call wantAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[420 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        44,
                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                        mem[336 len 20],
                        Mask(96, 32, arg1) >> 32
    else:
        mem[356 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
        mem[420 len 0] = 0
        call wantAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        44,
                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                        mem[336 len 20],
                        Mask(96, 0, ext_call.return_data[0 len 28])
    ('bool', 'ext_call.success')
    if return_data.size:
        require return_data.size >= 32
        if not mem[388]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 467 len 22]
}

function pause() payable {
    if msg.sender == owner:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
        mem[356 len 0] = 0
        call wantAddress with:
           funct uint32(stor18)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0) << 256, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
            if not ext_code.size(lpToken0Address):
                revert with 0, 'Address: call to non-contract'
            mem[488 len 64] = 0, address(unirouterAddress), 0
            call lpToken0Address with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[392 len 28], mem[552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                call lpToken1Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[664 len 20],
                                    Mask(96, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                44,
                                0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                mem[468 len 20],
                                Mask(96, 0, return_data.size)
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                mem[ceil32(return_data.size) + 749 len 0] = 0
                call lpToken1Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 665 len 20],
                                    Mask(96, 0, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0)
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            44,
                            0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                            mem[272 len 20],
                            Mask(96, 0, return_data.size)
            if not return_data.size:
                if not ext_code.size(lpToken0Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0
                call lpToken0Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[ceil32(return_data.size) + 665 len 20],
                                        0, address(unirouterAddress), 0 << 160,
                                        mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 469 len 20],
                                    return_data.size << 160,
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not return_data.size:
                        if not ext_code.size(lpToken1Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(unirouterAddress), 0
                        call lpToken1Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args 0, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            44,
                                            0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                            mem[(2 * ceil32(return_data.size)) + 666 len 20],
                                            Mask(96, 0, 0, address(unirouterAddress), 0)
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 718]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if not ext_code.size(lpToken1Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(unirouterAddress), 0
                        call lpToken1Address with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args 0, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            44,
                                            0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                            mem[(2 * ceil32(return_data.size)) + 666 len 20],
                                            0
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 718]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if not ext_code.size(lpToken0Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0
                call lpToken0Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[ceil32(return_data.size) + 665 len 20],
                                        0
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 469 len 20],
                                    return_data.size << 160,
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[(2 * ceil32(return_data.size)) + 666 len 20],
                                        Mask(96, 0, 0, address(unirouterAddress), 0)
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
    else:
        if strategistAddress != msg.sender:
            revert with 0, '!manager'
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
        mem[356 len 0] = 0
        call wantAddress with:
           funct uint32(stor18)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0) << 256, mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[402 len 22]
            if not ext_code.size(lpToken0Address):
                revert with 0, 'Address: call to non-contract'
            mem[488 len 64] = 0, address(unirouterAddress), 0
            call lpToken0Address with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, 0, mem[552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[684 len 64] = 0, address(unirouterAddress), 0
                call lpToken1Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, mem[588 len 28], mem[748 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
                else:
                    mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[664 len 20],
                                    0
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[716]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                44,
                                0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                mem[468 len 20],
                                Mask(96, 0, return_data.size)
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                if not ext_code.size(lpToken1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = 0, address(unirouterAddress), 0
                call lpToken1Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 665 len 20],
                                    0, address(unirouterAddress), 0 << 160,
                                    mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            44,
                            0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                            mem[272 len 20],
                            Mask(96, 0, return_data.size)
            if not return_data.size:
                if not ext_code.size(lpToken0Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0
                call lpToken0Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[ceil32(return_data.size) + 665 len 20],
                                        0, address(unirouterAddress), 0 << 160,
                                        mem[(2 * ceil32(return_data.size)) + 818 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 469 len 20],
                                    return_data.size << 160,
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[(2 * ceil32(return_data.size)) + 666 len 20],
                                        Mask(96, 0, 0, address(unirouterAddress), 0)
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if not ext_code.size(lpToken0Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(unirouterAddress), 0
                call lpToken0Address with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, 0, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 589 len 28], mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[ceil32(return_data.size) + 665 len 20],
                                        0
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    44,
                                    0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                    mem[ceil32(return_data.size) + 469 len 20],
                                    return_data.size << 160,
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if not ext_code.size(lpToken1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, address(unirouterAddress), 0
                    call lpToken1Address with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 590 len 28], mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        44,
                                        0xfe5361666545524332303a206c6f772d6c6576656c2063616c6c206661696c656420696e2073747261746567,
                                        mem[(2 * ceil32(return_data.size)) + 666 len 20],
                                        0
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
}



}
