contract main {




// =====================  Runtime code  =====================


const sub_bf4b5ecc(?) = 860

const TREASURY_FEE = 140

const MAX_FEE = 1000


address owner;
address wNativeAddress;
address bifiAddress;
uint32 stor3;
address treasuryAddress;
uint256 stor3;
uint32 stor4;
address rewardPoolAddress;
uint256 stor4;
uint32 stor5;
address unirouterAddress;
array of struct wNativeToBifiRoute;

function unirouter() payable {
    return address(unirouterAddress)
}

function wNative() payable {
    return wNativeAddress
}

function bifi() payable {
    return bifiAddress
}

function treasury() payable {
    return address(treasuryAddress)
}

function rewardPool() payable {
    return address(rewardPoolAddress)
}

function owner() payable {
    return owner
}

function wNativeToBifiRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wNativeToBifiRoute.length
    return wNativeToBifiRoute[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit NewTreasury(address(treasuryAddress), arg1);
    address(treasuryAddress) = arg1
}

function setRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit NewRewardPool(address(rewardPoolAddress), arg1);
    address(rewardPoolAddress) = arg1
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

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if wNativeAddress == arg1:
        revert with 0, '!safe'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
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

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit NewUnirouter(address(unirouterAddress), arg1);
    require ext_code.size(wNativeAddress)
    staticcall wNativeAddress.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call wNativeAddress with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, -1
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call wNativeAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, -1
            if not approve(address rg1, uint256 rg2), address(arg1) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
        call wNativeAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, -1
            if not approve(address rg1, uint256 rg2), address(arg1) << 64:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
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
    address(unirouterAddress) = arg1
}

function harvest() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    require ext_code.size(wNativeAddress)
    staticcall wNativeAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if 140 * ext_call.return_data[0] / ext_call.return_data[0] != 140:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[132] = address(treasuryAddress)
        mem[164] = 140 * ext_call.return_data[0] / 1000 / 2
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor3)
        mem[128 len 4] = transfer(address rg1, uint256 rg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
        mem[352 len 4] = 0
        call wNativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, 140 * ext_call.return_data[0] / 1000) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[264] = 140 * ext_call.return_data[0] / 1000 / 2
            mem[296] = 0
            mem[360] = address(treasuryAddress)
            mem[392] = block.timestamp
            mem[328] = 160
            mem[424] = wNativeToBifiRoute.length
            if not wNativeToBifiRoute.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 260
                require return_data.size >= 32
                _978 = mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
                require mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260] <= 4294967296 and mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260]
                _998 = mem[_978 + 260]
                mem[ceil32(return_data.size) + 292 len floor32(mem[_978 + 260])] = mem[_978 + 292 len floor32(mem[_978 + 260])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _998) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _998) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args 0, mem[(32 * _998) + ceil32(return_data.size) + 520 len 4]
                else:
                    if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _998) + ceil32(return_data.size) + 393 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _998) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _998) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _998) + ceil32(return_data.size) + 520 len 0] = 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _998) + ceil32(return_data.size) + 520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _998) + ceil32(return_data.size) + 566 len 22]
                else:
                    mem[(32 * _998) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _998) + ceil32(return_data.size) + 488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[0] = 6
                mem[456] = address(wNativeToBifiRoute.field_0)
                idx = 456
                s = 0
                while (32 * wNativeToBifiRoute.length) + 456 > idx + 32:
                    mem[idx + 32] = wNativeToBifiRoute[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[456 len 32 * wNativeToBifiRoute.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 260
                require return_data.size >= 32
                _2539 = mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
                require mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260] <= 4294967296 and mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 260]
                _2626 = mem[_2539 + 260]
                mem[ceil32(return_data.size) + 292 len floor32(mem[_2539 + 260])] = mem[_2539 + 292 len floor32(mem[_2539 + 260])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2626) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2626) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                    mem[(32 * _2626) + ceil32(return_data.size) + 520 len 0] = 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[(32 * _2626) + ceil32(return_data.size) + 520 len 4]
                else:
                    if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2626) + ceil32(return_data.size) + 393 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2626) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2626) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _2626) + ceil32(return_data.size) + 520 len 0] = 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2626) + ceil32(return_data.size) + 520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2626) + ceil32(return_data.size) + 566 len 22]
                else:
                    mem[(32 * _2626) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2626) + ceil32(return_data.size) + 488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2626) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[260] = return_data.size
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 265] = 140 * ext_call.return_data[0] / 1000 / 2
            mem[ceil32(return_data.size) + 297] = 0
            mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 393] = block.timestamp
            mem[ceil32(return_data.size) + 329] = 160
            mem[ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
            if not wNativeToBifiRoute.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _967 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
                require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]
                _990 = mem[ceil32(return_data.size) + _967 + 261]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _967 + 261])] = mem[ceil32(return_data.size) + _967 + 293 len floor32(mem[ceil32(return_data.size) + _967 + 261])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                else:
                    if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(wNativeAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                    call wNativeAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                else:
                    mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _990) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _990) + (4 * ceil32(return_data.size)) + 568 len 22]
            mem[0] = 6
            mem[ceil32(return_data.size) + 457] = address(wNativeToBifiRoute.field_0)
            idx = ceil32(return_data.size) + 457
            s = 0
            while ceil32(return_data.size) + (32 * wNativeToBifiRoute.length) + 457 > idx + 32:
                mem[idx + 32] = wNativeToBifiRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _2541 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]
            _2643 = mem[ceil32(return_data.size) + _2541 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2541 + 261])] = mem[ceil32(return_data.size) + _2541 + 293 len floor32(mem[ceil32(return_data.size) + _2541 + 261])]
            if ext_call.return_data[0]:
                if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                else:
                    mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2643) + (4 * ceil32(return_data.size)) + 568 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
            mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call wNativeAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0, mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
            require return_data.size >= 32
            if mem[(32 * _2643) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
            mem[(32 * _2643) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2643) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * _2643) + (4 * ceil32(return_data.size)) + 494] = 42
            mem[(32 * _2643) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _2643) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
        mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 265] = 140 * ext_call.return_data[0] / 1000 / 2
        mem[ceil32(return_data.size) + 297] = 0
        mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 393] = block.timestamp
        mem[ceil32(return_data.size) + 329] = 160
        mem[ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
        if not wNativeToBifiRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _981 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]
            _1000 = mem[ceil32(return_data.size) + _981 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _981 + 261])] = mem[ceil32(return_data.size) + _981 + 293 len floor32(mem[ceil32(return_data.size) + _981 + 261])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            else:
                if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
            require return_data.size >= 32
            if mem[(32 * _1000) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
            mem[(32 * _1000) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _1000) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * _1000) + (4 * ceil32(return_data.size)) + 494] = 42
            mem[(32 * _1000) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _1000) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[0] = 6
        mem[ceil32(return_data.size) + 457] = address(wNativeToBifiRoute.field_0)
        idx = ceil32(return_data.size) + 457
        s = 0
        while ceil32(return_data.size) + (32 * wNativeToBifiRoute.length) + 457 > idx + 32:
            mem[idx + 32] = wNativeToBifiRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args Mask(255, 1, 140 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _2543 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32
        require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 140 * ext_call.return_data[0] / 1000) >> 32 + 261]
        _2660 = mem[ceil32(return_data.size) + _2543 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2543 + 261])] = mem[ceil32(return_data.size) + _2543 + 293 len floor32(mem[ceil32(return_data.size) + _2543 + 261])]
        if ext_call.return_data[0]:
            if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
            call wNativeAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2660) + (4 * ceil32(return_data.size)) + 568 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call wNativeAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 140 * ext_call.return_data[0] / 1000 / 2
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _2660) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        mem[(32 * _2660) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2660) + (4 * ceil32(return_data.size)) + 462] = 32
        mem[(32 * _2660) + (4 * ceil32(return_data.size)) + 494] = 42
        mem[(32 * _2660) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _2660) + (4 * ceil32(return_data.size)) + 458
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[132] = address(treasuryAddress)
    mem[164] = 0
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor3)
    mem[128 len 4] = transfer(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[352 len 4] = 0
    call wNativeAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[264] = 0
        mem[296] = 0
        mem[360] = address(treasuryAddress)
        mem[392] = block.timestamp
        mem[328] = 160
        mem[424] = wNativeToBifiRoute.length
        if not wNativeToBifiRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            _984 = mem[260 len 4], 0
            require mem[260 len 4], 0 <= 4294967296
            require mem[260 len 4], 0 + 32 <= return_data.size
            require mem[mem[260 len 4], 0 + 260] <= 4294967296 and mem[260 len 4], 0 + (32 * mem[mem[260 len 4], 0 + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], 0 + 260]
            _1002 = mem[_984 + 260]
            mem[ceil32(return_data.size) + 292 len floor32(mem[_984 + 260])] = mem[_984 + 292 len floor32(mem[_984 + 260])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1002) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1002) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[(32 * _1002) + ceil32(return_data.size) + 520 len 0] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[(32 * _1002) + ceil32(return_data.size) + 520 len 4]
            else:
                if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1002) + ceil32(return_data.size) + 393 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1002) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1002) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _1002) + ceil32(return_data.size) + 520 len 0] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1002) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1002) + ceil32(return_data.size) + 566 len 22]
            else:
                mem[(32 * _1002) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1002) + ceil32(return_data.size) + 488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1002) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        else:
            mem[0] = 6
            mem[456] = address(wNativeToBifiRoute.field_0)
            idx = 456
            s = 0
            while (32 * wNativeToBifiRoute.length) + 456 > idx + 32:
                mem[idx + 32] = wNativeToBifiRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[456 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            _2547 = mem[260 len 4], 0
            require mem[260 len 4], 0 <= 4294967296
            require mem[260 len 4], 0 + 32 <= return_data.size
            require mem[mem[260 len 4], 0 + 260] <= 4294967296 and mem[260 len 4], 0 + (32 * mem[mem[260 len 4], 0 + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], 0 + 260]
            _2694 = mem[_2547 + 260]
            mem[ceil32(return_data.size) + 292 len floor32(mem[_2547 + 260])] = mem[_2547 + 292 len floor32(mem[_2547 + 260])]
            if ext_call.return_data[0]:
                if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2694) + ceil32(return_data.size) + 393 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2694) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2694) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2694) + ceil32(return_data.size) + 520 len 4]
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2694) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2694) + ceil32(return_data.size) + 456 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[(32 * _2694) + ceil32(return_data.size) + 520 len 0] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[(32 * _2694) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2694) + ceil32(return_data.size) + 566 len 22]
            else:
                mem[(32 * _2694) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2694) + ceil32(return_data.size) + 488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2694) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
    mem[260] = return_data.size
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 265] = 0
        mem[ceil32(return_data.size) + 297] = 0
        mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 393] = block.timestamp
        mem[ceil32(return_data.size) + 329] = 160
        mem[ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
        if not wNativeToBifiRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _971 = mem[ceil32(return_data.size) + 261 len 4], 0
            require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
            _992 = mem[ceil32(return_data.size) + _971 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _971 + 261])] = mem[ceil32(return_data.size) + _971 + 293 len floor32(mem[ceil32(return_data.size) + _971 + 261])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            else:
                if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wNativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call wNativeAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
            require return_data.size >= 32
            if mem[(32 * _992) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
            mem[(32 * _992) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _992) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * _992) + (4 * ceil32(return_data.size)) + 494] = 42
            mem[(32 * _992) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _992) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[0] = 6
        mem[ceil32(return_data.size) + 457] = address(wNativeToBifiRoute.field_0)
        idx = ceil32(return_data.size) + 457
        s = 0
        while ceil32(return_data.size) + (32 * wNativeToBifiRoute.length) + 457 > idx + 32:
            mem[idx + 32] = wNativeToBifiRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _2549 = mem[ceil32(return_data.size) + 261 len 4], 0
        require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
        _2711 = mem[ceil32(return_data.size) + _2549 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2549 + 261])] = mem[ceil32(return_data.size) + _2549 + 293 len floor32(mem[ceil32(return_data.size) + _2549 + 261])]
        if ext_call.return_data[0]:
            if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
            call wNativeAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2711) + (4 * ceil32(return_data.size)) + 568 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call wNativeAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _2711) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        mem[(32 * _2711) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2711) + (4 * ceil32(return_data.size)) + 462] = 32
        mem[(32 * _2711) + (4 * ceil32(return_data.size)) + 494] = 42
        mem[(32 * _2711) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _2711) + (4 * ceil32(return_data.size)) + 458
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[292]:
        revert with 0, 
                    32,
                    42,
                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 371 len 22]
    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 265] = 0
    mem[ceil32(return_data.size) + 297] = 0
    mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
    mem[ceil32(return_data.size) + 393] = block.timestamp
    mem[ceil32(return_data.size) + 329] = 160
    mem[ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
    if not wNativeToBifiRoute.length:
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _987 = mem[ceil32(return_data.size) + 261 len 4], 0
        require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
        _1004 = mem[ceil32(return_data.size) + _987 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _987 + 261])] = mem[ceil32(return_data.size) + _987 + 293 len floor32(mem[ceil32(return_data.size) + _987 + 261])]
        if not ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call wNativeAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0, mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        else:
            if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call wNativeAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        mem[(32 * _1004) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _1004) + (4 * ceil32(return_data.size)) + 462] = 32
        mem[(32 * _1004) + (4 * ceil32(return_data.size)) + 494] = 42
        mem[(32 * _1004) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _1004) + (4 * ceil32(return_data.size)) + 458
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[0] = 6
    mem[ceil32(return_data.size) + 457] = address(wNativeToBifiRoute.field_0)
    idx = ceil32(return_data.size) + 457
    s = 0
    while ceil32(return_data.size) + (32 * wNativeToBifiRoute.length) + 457 > idx + 32:
        mem[idx + 32] = wNativeToBifiRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(unirouterAddress))
    call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
    require return_data.size >= 32
    _2551 = mem[ceil32(return_data.size) + 261 len 4], 0
    require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
    require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
    _2728 = mem[ceil32(return_data.size) + _2551 + 261]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2551 + 261])] = mem[ceil32(return_data.size) + _2551 + 293 len floor32(mem[ceil32(return_data.size) + _2551 + 261])]
    if not ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call wNativeAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    else:
        if 860 * ext_call.return_data[0] / ext_call.return_data[0] != 860:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 860 * ext_call.return_data[0] / 1000) >> 32
        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call wNativeAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, 860 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
    mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
    mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
    require return_data.size >= 32
    if mem[(32 * _2728) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
    mem[(32 * _2728) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _2728) + (4 * ceil32(return_data.size)) + 462] = 32
    mem[(32 * _2728) + (4 * ceil32(return_data.size)) + 494] = 42
    mem[(32 * _2728) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _2728) + (4 * ceil32(return_data.size)) + 458
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
