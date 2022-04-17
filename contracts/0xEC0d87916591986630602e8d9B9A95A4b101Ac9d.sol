contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const sub_713fb541(?) = 9950

const buyBackAddress = 57005

const sub_7c717c09(?) = 9500

const withdrawFeeFactorLL = 9950

const sub_a613a28a(?) = 10000

const sub_a81370f4(?) = 10000

const sub_aeb15aef(?) = 10000

const buyBackRateUL = 800

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 paused;
uint8 sub_0ddea8c3; offset 8
uint8 isAutoComp; offset 16
uint32 stor2;
address farmContractAddress; offset 24
uint256 stor2;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
uint32 stor8;
address uniRouterAddress;
uint256 stor8;
address sub_cb971847Address;
uint256 sub_1b61e055;
address wbnbAddress;
uint32 stor12;
address sub_88f9e800Address;
uint256 stor12;
address sub_b3ed4599Address;
address govAddress;
uint256 lastEarnBlock;
uint256 stor16; offset 32
uint256 wantLockedTotal;
big480 stor16;
uint256 sharesTotal;
uint256 controllerFee;
uint256 sub_25c7ce6b;
uint256 withdrawFeeFactor;
uint256 buyBackRate;
uint256 entranceFeeFactor;
uint256 sub_159a1f80;
uint256 sub_89d20f1b;
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of struct token0ToEarnedPath;
array of struct token1ToEarnedPath;
array of address sub_38946a8c;
array of address sub_5d82e33a;
array of address sub_73c30886;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1].field_0
}

function sub_0ddea8c3(?) payable {
    return bool(sub_0ddea8c3)
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function sub_159a1f80(?) payable {
    return sub_159a1f80
}

function buyBackRate() payable {
    return buyBackRate
}

function sub_1b61e055(?) payable {
    return sub_1b61e055
}

function sub_25c7ce6b(?) payable {
    return sub_25c7ce6b
}

function sub_38946a8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_38946a8c.length
    return sub_38946a8c[arg1]
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

function paused() payable {
    return bool(paused)
}

function sub_5d82e33a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5d82e33a.length
    return sub_5d82e33a[arg1]
}

function wbnbAddress() payable {
    return wbnbAddress
}

function sub_67eed8e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_67eed8e0.length
    return sub_67eed8e0[arg1]
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return address(uniRouterAddress)
}

function sub_73c30886(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_73c30886.length
    return sub_73c30886[arg1]
}

function token0Address() payable {
    return token0Address
}

function controllerFee() payable {
    return controllerFee
}

function sub_88f9e800(?) payable {
    return address(sub_88f9e800Address)
}

function sub_89d20f1b(?) payable {
    return sub_89d20f1b
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function sub_cb971847(?) payable {
    return sub_cb971847Address
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(isAutoComp)
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
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
        revert with 0, 'Not authorised'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBuybackRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    sub_cb971847Address = arg1
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

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function setExitFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_159a1f80 = arg1
}

function setDepositFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9500:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_25c7ce6b = arg1
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
}

function setWithdrawFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    withdrawFeeFactor = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if earnedAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not isAutoComp:
        revert with 0, '!isAutoComp'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
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
    require ext_code.size(farmContractAddress)
    call farmContractAddress.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function convertDustToEarned() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if not isAutoComp:
        revert with 0, '!isAutoComp'
    if sub_0ddea8c3:
        revert with 0, 'isSingleVault'
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if earnedAddress == token0Address:
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if earnedAddress != token1Address:
            if ext_call.return_data[0] > 0:
                require ext_code.size(token1Address)
                staticcall token1Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(token1Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[324 len 0] = 0
                call token1Address with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not token1ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                    else:
                        mem[456] = address(token1ToEarnedPath.field_0)
                        idx = 456
                        s = 0
                        while (32 * token1ToEarnedPath.length) + 456 > idx + 32:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[456 len 32 * token1ToEarnedPath.length]
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
                    if not token1ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(token1ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 457 > idx + 32:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token1ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] <= 0:
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if earnedAddress != token1Address:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(token1Address)
                    staticcall token1Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(token1Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call token1Address with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                        else:
                            mem[456] = address(token1ToEarnedPath.field_0)
                            idx = 456
                            s = 0
                            while (32 * token1ToEarnedPath.length) + 456 > idx + 32:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[456 len 32 * token1ToEarnedPath.length]
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
                        if not token1ToEarnedPath.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                        else:
                            mem[ceil32(return_data.size) + 457] = address(token1ToEarnedPath.field_0)
                            idx = ceil32(return_data.size) + 457
                            s = 0
                            while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 457 > idx + 32:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token1ToEarnedPath.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(token0Address)
            staticcall token0Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(token0Address):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
            call token0Address with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not token0ToEarnedPath.length:
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length
                else:
                    mem[456] = address(token0ToEarnedPath.field_0)
                    idx = 456
                    s = 0
                    while (32 * token0ToEarnedPath.length) + 456 > idx + 32:
                        mem[idx + 32] = token0ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length, mem[456 len 32 * token0ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if earnedAddress != token1Address:
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(token1Address)
                        staticcall token1Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(uniRouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if not ext_code.size(token1Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call token1Address with:
                           funct token0ToEarnedPath.length.field_224
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                            else:
                                mem[620] = address(token1ToEarnedPath.field_0)
                                idx = 620
                                s = 0
                                while (32 * token1ToEarnedPath.length) + 620 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[620 len 32 * token1ToEarnedPath.length]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                            else:
                                mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                idx = ceil32(return_data.size) + 621
                                s = 0
                                while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not token0ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if earnedAddress != token1Address:
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(token1Address)
                                staticcall token1Address.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(uniRouterAddress)
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
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(token1Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                                call token1Address with:
                                   funct token0ToEarnedPath.length.field_224
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if not token1ToEarnedPath.length:
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                                    else:
                                        mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                        idx = ceil32(return_data.size) + 621
                                        s = 0
                                        while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not token1ToEarnedPath.length:
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 622] = address(token1ToEarnedPath.field_0)
                                        idx = (2 * ceil32(return_data.size)) + 622
                                        s = 0
                                        while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 622 > idx + 32:
                                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[ceil32(return_data.size) + 457] = address(token0ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 457 > idx + 32:
                            mem[idx + 32] = token0ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token0ToEarnedPath.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(token1Address)
                        staticcall token1Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if earnedAddress != token1Address:
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(token1Address)
                                staticcall token1Address.0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(uniRouterAddress)
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
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(token1Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                                mem[ceil32(return_data.size) + 489 len 0] = 0
                                call token1Address with:
                                   funct uint32(stor8)
                                     gas gas_remaining wei
                                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if not token1ToEarnedPath.length:
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                                    else:
                                        mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                        idx = ceil32(return_data.size) + 621
                                        s = 0
                                        while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    if not token1ToEarnedPath.length:
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 622] = address(token1ToEarnedPath.field_0)
                                        idx = (2 * ceil32(return_data.size)) + 622
                                        s = 0
                                        while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 622 > idx + 32:
                                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(uniRouterAddress))
                                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len 32 * token1ToEarnedPath.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if not token0ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(token0ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 457 > idx + 32:
                            mem[idx + 32] = token0ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token0ToEarnedPath.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(token1Address)
                    staticcall token1Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if earnedAddress != token1Address:
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(token1Address)
                            staticcall token1Address.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(uniRouterAddress)
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
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if not ext_code.size(token1Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 31, ext_call.return_data[0]) >> 31
                            call token1Address with:
                               funct token0ToEarnedPath.length.field_224
                                 gas gas_remaining wei
                                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor8), uint32(stor8), 2 * ext_call.return_data[0]
                                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor8):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                if not token1ToEarnedPath.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length
                                else:
                                    mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                    idx = ceil32(return_data.size) + 621
                                    s = 0
                                    while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not token1ToEarnedPath.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 622] = address(token1ToEarnedPath.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 622
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 622 > idx + 32:
                                        mem[idx + 32] = token1ToEarnedPath[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + sub_1b61e055, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if not isAutoComp:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal < arg2:
                if 10000 <= withdrawFeeFactor:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not wantLockedTotal:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            else:
                                if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 10000 <= sub_159a1f80:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                    else:
                        if not wantLockedTotal:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if wantLockedTotal:
                        if 10000 * wantLockedTotal / wantLockedTotal != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 10000 * wantLockedTotal / withdrawFeeFactor:
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / 10000 * wantLockedTotal / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if wantLockedTotal:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if 10000 <= withdrawFeeFactor:
                    if arg2:
                        if sharesTotal * arg2 / arg2 != sharesTotal:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if arg2:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not arg2:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                    else:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[580 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not arg2:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            else:
                                if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not arg2:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / withdrawFeeFactor:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if arg2:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * arg2 / arg2 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * arg2 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * arg2 / withdrawFeeFactor / 10000 * arg2 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal
                                if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
        else:
            if wantLockedTotal >= ext_call.return_data[0]:
                if 10000 <= withdrawFeeFactor:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[580 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if ext_call.return_data[0]:
                                if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if ext_call.return_data[0]:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not ext_call.return_data[0]:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if ext_call.return_data[0]:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if ext_call.return_data[0]:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * ext_call.return_data[0] / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / 10000 * ext_call.return_data[0] / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal
                                if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if 10000 <= withdrawFeeFactor:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not wantLockedTotal:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            else:
                                if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 10000 <= sub_159a1f80:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                    else:
                        if wantLockedTotal:
                            if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not wantLockedTotal:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / withdrawFeeFactor:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if wantLockedTotal:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * wantLockedTotal / wantLockedTotal != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * wantLockedTotal / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if wantLockedTotal:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / 10000 * wantLockedTotal / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
    else:
        require ext_code.size(farmContractAddress)
        call farmContractAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args pid, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal >= arg2:
                if 10000 <= withdrawFeeFactor:
                    if not arg2:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[580 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not arg2:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                    else:
                        if sharesTotal * arg2 / arg2 != sharesTotal:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * arg2 / wantLockedTotal
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[580 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (sharesTotal * arg2 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not arg2:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not arg2:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / withdrawFeeFactor:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if arg2:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * arg2 / arg2 != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * arg2 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * arg2 / withdrawFeeFactor / 10000 * arg2 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal
                                if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not arg2:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * arg2 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * arg2 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * arg2 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not arg2:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * arg2 / arg2 != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * arg2 / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * arg2 / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if 10000 <= withdrawFeeFactor:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not wantLockedTotal:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 10000 <= sub_159a1f80:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                    else:
                        if not wantLockedTotal:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not wantLockedTotal:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if wantLockedTotal:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * wantLockedTotal / wantLockedTotal != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * wantLockedTotal / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / 10000 * wantLockedTotal / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
        else:
            if wantLockedTotal < ext_call.return_data[0]:
                if 10000 <= withdrawFeeFactor:
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not wantLockedTotal:
                        revert with 0, 'SafeMath: division by zero'
                    if sharesTotal * wantLockedTotal / wantLockedTotal <= sharesTotal:
                        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if wantLockedTotal:
                                if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                        stor1 = 1
                        return (sharesTotal * wantLockedTotal / wantLockedTotal)
                    if sharesTotal > sharesTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sharesTotal = 0
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if 10000 <= sub_159a1f80:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 563 len 22]
                    else:
                        if wantLockedTotal:
                            if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[580 len 4]
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if wantLockedTotal:
                        if 10000 * wantLockedTotal / wantLockedTotal != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 10000 * wantLockedTotal / withdrawFeeFactor:
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / 10000 * wantLockedTotal / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * wantLockedTotal / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if wantLockedTotal:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if wantLockedTotal:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * wantLockedTotal / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * wantLockedTotal / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not wantLockedTotal:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not wantLockedTotal:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * wantLockedTotal / wantLockedTotal != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * wantLockedTotal / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if 10000 <= withdrawFeeFactor:
                    if not ext_call.return_data[0]:
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / wantLockedTotal <= sharesTotal:
                            sharesTotal -= 0 / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if ext_call.return_data[0]:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (0 / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not ext_call.return_data[0]:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                    else:
                        if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not wantLockedTotal:
                            revert with 0, 'SafeMath: division by zero'
                        if sharesTotal * ext_call.return_data[0] / wantLockedTotal <= sharesTotal:
                            sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
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
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 563 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            stor1 = 1
                            return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
                        if sharesTotal > sharesTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sharesTotal = 0
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if 10000 <= sub_159a1f80:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 563 len 22]
                        else:
                            if not ext_call.return_data[0]:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            else:
                                if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[580 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 627 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / withdrawFeeFactor:
                            if sharesTotal * 0 / withdrawFeeFactor / 0 / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 0 / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 0 / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 0 / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 0 / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 0 / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not withdrawFeeFactor:
                            revert with 0, 'SafeMath: division by zero'
                        if not 10000 * ext_call.return_data[0] / withdrawFeeFactor:
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / wantLockedTotal <= sharesTotal:
                                sharesTotal -= 0 / wantLockedTotal
                                if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args 0, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (0 / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args 0, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                        else:
                            if sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / 10000 * ext_call.return_data[0] / withdrawFeeFactor != sharesTotal:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not wantLockedTotal:
                                revert with 0, 'SafeMath: division by zero'
                            if sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal <= sharesTotal:
                                sharesTotal -= sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal
                                if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                                if 10000 <= sub_159a1f80:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[548]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 627 len 22]
                                else:
                                    if not ext_call.return_data[0]:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                    else:
                                        if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                        if not ext_code.size(wantAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                        mem[644 len 0] = 0
                                        call wantAddress with:
                                           funct uint32(stor12)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                stor1 = 1
                                return (sharesTotal * 10000 * ext_call.return_data[0] / withdrawFeeFactor / wantLockedTotal)
                            if sharesTotal > sharesTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sharesTotal = 0
                            if 10000 * ext_call.return_data[0] / withdrawFeeFactor > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= 10000 * ext_call.return_data[0] / withdrawFeeFactor
                            if 10000 <= sub_159a1f80:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[548]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 627 len 22]
                            else:
                                if not ext_call.return_data[0]:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[644 len 4]
                                else:
                                    if sub_159a1f80 * ext_call.return_data[0] / ext_call.return_data[0] != sub_159a1f80:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                                    if not ext_code.size(wantAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) >> 32
                                    mem[644 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor12)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_159a1f80 * ext_call.return_data[0] / 10000) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
    stor1 = 1
    return sharesTotal
}



}
