contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - retireStrat()
#
const unirouter = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const sub_339ac486(?) = 0x83789ac2d728f3aec4f266b7f423a0ac78e50217

const treasury = 0xd54307a8edfa93b1794861f091c714d752400d13

const sub_7ef58404(?) = 0xbc184ef7434ce9ed34f9c16d758cc2f5d0dff3a9

const shareRewardPool = 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const WITHDRAWAL_MAX = 10000

const WITHDRAWAL_FEE = 10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 gasPermitido;
address lpPairAddress;
address lpToken0Address;
uint8 stor5;
uint8 poolId; offset 160
address lpToken1Address;
uint32 stor6;
address vaultAddress;
uint256 stor6;
uint256 totalFee;
uint256 _callFee;
uint256 _treasurySup;
uint256 flpToHarvest;
array of address sub_78e842d5;
array of address sub_c160a733;
array of address sub_2bcd836b;
array of struct lp0ToLp1Route;
array of struct lp1ToLp0Route;

function _callFee() payable {
    return _callFee
}

function totalFee() payable {
    return totalFee
}

function sub_2bcd836b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2bcd836b.length
    return sub_2bcd836b[arg1]
}

function odioList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function flpToHarvest() payable {
    return flpToHarvest
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function Lp0ToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lp0ToLp1Route.length
    return lp0ToLp1Route[arg1].field_0
}

function lpToken0() payable {
    return lpToken0Address
}

function sub_78e842d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_78e842d5.length
    return sub_78e842d5[arg1]
}

function gasPermitido() payable {
    return gasPermitido
}

function Lp1ToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lp1ToLp0Route.length
    return lp1ToLp0Route[arg1].field_0
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function sub_c160a733(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c160a733.length
    return sub_c160a733[arg1]
}

function _treasurySup() payable {
    return _treasurySup
}

function vault() payable {
    return address(vaultAddress)
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

function setflpToHarvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    flpToHarvest = arg1
}

function teOdio(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
    staticcall 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setperfomFee(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg3 != 100:
        revert with 0, '!100%'
    if arg2 <= 0:
        revert with 0, 'must be > 0'
    if arg3 <= 0:
        revert with 0, 'must be > 0'
    totalFee = arg1
    _callFee = arg2
    _treasurySup = arg3
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
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
    staticcall 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function rebalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 != lpToken0Address:
        if not lp1ToLp0Route.length:
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp1ToLp0Route.length
        else:
            mem[356] = address(lp1ToLp0Route.field_0)
            idx = 356
            s = 0
            while (32 * lp1ToLp0Route.length) + 356 > idx + 32:
                mem[idx + 32] = lp1ToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp1ToLp0Route.length, mem[356 len 32 * lp1ToLp0Route.length]
    else:
        if not lp0ToLp1Route.length:
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp0ToLp1Route.length
        else:
            mem[356] = address(lp0ToLp1Route.field_0)
            idx = 356
            s = 0
            while (32 * lp0ToLp1Route.length) + 356 > idx + 32:
                mem[idx + 32] = lp0ToLp1Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
            call 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 600, lp0ToLp1Route.length, mem[356 len 32 * lp0ToLp1Route.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(lpPairAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
            call lpPairAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
        else:
            require arg1
            if 10 * arg1 / arg1 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(lpPairAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            call lpPairAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
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
        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor5, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(lpPairAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
            call lpPairAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
        else:
            require ext_call.return_data[0]
            if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(lpPairAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) >> 32
            call lpPairAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) << 224, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(lpPairAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
    call lpPairAddress.0xd7e749eb with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x83789ac2d728f3aec4f266b7f423a0ac78e50217) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        call 0x83789ac2d728f3aec4f266b7f423a0ac78e50217.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                call lpToken0Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[916 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[980 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1026 len 22]
                    else:
                        mem[948 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[948]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1027 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                mem[ceil32(return_data.size) + 845 len 4] = 0
                call lpToken0Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call lpToken1Address with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[456]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            mem[ceil32(return_data.size) + 845 len 4] = 0
            call lpToken0Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                call lpToken1Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 981 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1027 len 22]
                else:
                    mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 949]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call lpToken1Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 621]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
        call lpToken0Address with:
           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    if ext_code.size(0x83789ac2d728f3aec4f266b7f423a0ac78e50217) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call 0x83789ac2d728f3aec4f266b7f423a0ac78e50217.0xdc33ae52 with:
         gas gas_remaining wei
        args 0, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            mem[ceil32(return_data.size) + 845 len 4] = 0
            call lpToken0Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                call lpToken1Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 981 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1027 len 22]
                else:
                    mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 949]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call lpToken1Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 621]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
        call lpToken0Address with:
           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
         gas gas_remaining wei
        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        call lpToken0Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    if ext_code.size(lpToken0Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    call lpToken0Address.0xdc33ae52 with:
         gas gas_remaining wei
        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 42
            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(4 * ceil32(return_data.size)) + 824] = 0
    mem[(4 * ceil32(return_data.size)) + 856] = 32
    mem[(4 * ceil32(return_data.size)) + 888] = 'SafeERC20: low-level call failed'
    if ext_code.size(lpToken1Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 920 len floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, mem[(4 * ceil32(return_data.size)) + 824 len floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
    mem[(4 * ceil32(return_data.size)) + floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 952 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(4 * ceil32(return_data.size)) + -((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 820 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
    call lpToken1Address.mem[(4 * ceil32(return_data.size)) + 920 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(4 * ceil32(return_data.size)) + 1030 len 22]
    else:
        mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(4 * ceil32(return_data.size)) + 952]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(lpPairAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
    call lpPairAddress.0xd7e749eb with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x83789ac2d728f3aec4f266b7f423a0ac78e50217) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        call 0x83789ac2d728f3aec4f266b7f423a0ac78e50217.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                call lpToken0Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[916 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[980 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1026 len 22]
                    else:
                        mem[948 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[948]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1027 len 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    mem[ceil32(return_data.size) + 1009 len 4] = 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor5, mem[(2 * ceil32(return_data.size)) + 954 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                mem[ceil32(return_data.size) + 845 len 4] = 0
                call lpToken0Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                    mem[ceil32(return_data.size) + 1009 len 4] = 0
                    call lpToken1Address.0xdc33ae52 with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                        call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor5, mem[(2 * ceil32(return_data.size)) + 954 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call lpToken1Address with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[456]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            mem[ceil32(return_data.size) + 845 len 4] = 0
            call lpToken0Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                mem[ceil32(return_data.size) + 1009 len 4] = 0
                call lpToken1Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 981 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1027 len 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 949]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args stor5, mem[(2 * ceil32(return_data.size)) + 954 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call lpToken1Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 621]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
        call lpToken0Address with:
           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    if ext_code.size(0x83789ac2d728f3aec4f266b7f423a0ac78e50217) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
    mem[ceil32(return_data.size) + 517 len 4] = 0
    call 0x83789ac2d728f3aec4f266b7f423a0ac78e50217.0xdc33ae52 with:
         gas gas_remaining wei
        args 0, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[ceil32(return_data.size) + 681 len 4] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            mem[ceil32(return_data.size) + 845 len 4] = 0
            call lpToken0Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
                mem[ceil32(return_data.size) + 1009 len 4] = 0
                call lpToken1Address.0xdc33ae52 with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 981 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1027 len 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 949]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args stor5, mem[(2 * ceil32(return_data.size)) + 954 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call lpToken1Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 822 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 918 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
                call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 621]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
        call lpToken0Address with:
           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 224, 3694374482) >> 224, mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
         gas gas_remaining wei
        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        call lpToken0Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
            call lpToken1Address.0xdc33ae52 with:
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
                if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    if ext_code.size(lpToken0Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    call lpToken0Address.0xdc33ae52 with:
         gas gas_remaining wei
        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address.0xdc33ae52 with:
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
            if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
            mem[(4 * ceil32(return_data.size)) + 924] = poolId
            require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
            call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 42
            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[(4 * ceil32(return_data.size)) + 824] = 0
    mem[(4 * ceil32(return_data.size)) + 856] = 32
    mem[(4 * ceil32(return_data.size)) + 888] = 'SafeERC20: low-level call failed'
    if ext_code.size(lpToken1Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 920 len floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address rg1, uint256 rg2), 0x16327e3fbdaca3bcf7e38f5a, 0, mem[(4 * ceil32(return_data.size)) + 824 len floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
    mem[(4 * ceil32(return_data.size)) + floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + -((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + 952 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32] = mem[(4 * ceil32(return_data.size)) + -((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32) + floor32((6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 820 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68 % 32]
    call lpToken1Address.mem[(4 * ceil32(return_data.size)) + 920 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 924 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d, 0, 0
        if not approve(address rg1, uint256 rg2), 0x11bb95fab7c8a5ff1cfdd77d:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(4 * ceil32(return_data.size)) + 1030 len 22]
    else:
        mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(4 * ceil32(return_data.size)) + 952]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
    require ext_code.size(0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb)
    call 0x11bb95fab7c8a5ff1cfdd77d1aaab35dd7e749eb.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
