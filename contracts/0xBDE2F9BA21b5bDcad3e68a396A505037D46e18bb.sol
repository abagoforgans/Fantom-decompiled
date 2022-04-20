contract main {




// =====================  Runtime code  =====================


#
#  - earn()
#
address owner;
uint256 stor1;
uint8 paused;
uint32 stor2;
address stor2;
address sub_e8e761d6Address; offset 8
uint256 stor2;
address sub_50d7d613Address;
address sub_ee7a9559Address;
uint32 stor5;
address sub_d631eff9Address;
uint256 stor5;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address uniRouterAddress;
address wethAddress;
uint8 stor12; offset 160
uint128 stor12; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor14; offset 32
uint256 wantLockedTotal;
big480 stor14;
uint256 sharesTotal;
array of address earnedToToken0Path;
array of address earnedToToken1Path;

function onlyGov() payable {
    return bool(uint8(stor12.field_160))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function wethAddress() payable {
    return wethAddress
}

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function paused() payable {
    return bool(paused)
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function token0Address() payable {
    return token0Address
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function sub_d631eff9(?) payable {
    return address(sub_d631eff9Address)
}

function token1Address() payable {
    return token1Address
}

function wantAddress() payable {
    return wantAddress
}

function sub_e8e761d6(?) payable {
    return sub_e8e761d6Address
}

function sub_ee7a9559(?) payable {
    return sub_ee7a9559Address
}

function pid() payable {
    return pid
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_ee7a9559Address == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg2
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), sub_e8e761d6Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor2.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2.field_0):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(sub_e8e761d6Address)
    call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    require ext_code.size(sub_e8e761d6Address)
    call sub_e8e761d6Address.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if wantLockedTotal >= arg2:
            if arg2:
                if sharesTotal * arg2 / arg2 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), arg2
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (sharesTotal * arg2 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
            else:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), arg2
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (0 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), arg2
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not wantLockedTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (0 / wantLockedTotal)
            else:
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (sharesTotal * wantLockedTotal / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if wantLockedTotal > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, 0, stor14.field_0), mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if wantLockedTotal < ext_call.return_data[0]:
            if wantLockedTotal:
                if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (sharesTotal * wantLockedTotal / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
            else:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (0 / wantLockedTotal)
                if sharesTotal > sharesTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                sharesTotal = 0
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 0, stor14.field_32)
                mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, 0, stor14.field_0), mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), wantLockedTotal
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not ext_call.return_data[0]:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (0 / wantLockedTotal)
            else:
                if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                    sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    stor1 = 1
                    return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
            if sharesTotal > sharesTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            sharesTotal = 0
            if ext_call.return_data[0] > wantLockedTotal:
                revert with 0, 'SafeMath: subtraction overflow'
            wantLockedTotal -= ext_call.return_data[0]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), ext_call.return_data[0]
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor5):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    stor1 = 1
    return sharesTotal
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not wantLockedTotal:
            if arg2 + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_e8e761d6Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(sub_e8e761d6Address)
            call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return arg2
        if not arg2:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_e8e761d6Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(sub_e8e761d6Address)
            call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal)
        if sharesTotal * arg2 / arg2 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        if (sharesTotal * arg2 / wantLockedTotal) + sharesTotal < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += sharesTotal * arg2 / wantLockedTotal
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), sub_e8e761d6Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args 2 * ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        require ext_code.size(sub_e8e761d6Address)
        call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not wantLockedTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), sub_e8e761d6Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(sub_e8e761d6Address)
                    call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(sub_e8e761d6Address)
                    call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), sub_e8e761d6Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(sub_e8e761d6Address)
                call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (0 / wantLockedTotal)
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if (sharesTotal * arg2 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += sharesTotal * arg2 / wantLockedTotal
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_e8e761d6Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(sub_e8e761d6Address)
                call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(sub_e8e761d6Address)
                call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if not wantLockedTotal:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), sub_e8e761d6Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(sub_e8e761d6Address)
                    call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(sub_e8e761d6Address)
                    call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), sub_e8e761d6Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(sub_e8e761d6Address)
                call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (0 / wantLockedTotal)
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if (sharesTotal * arg2 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += sharesTotal * arg2 / wantLockedTotal
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), sub_e8e761d6Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, address(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
            require ext_code.size(sub_e8e761d6Address)
            call sub_e8e761d6Address.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (sharesTotal * arg2 / wantLockedTotal)
}



}
