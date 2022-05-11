contract main {




// =====================  Runtime code  =====================


const sub_bf4b5ecc(?) = 800

const TREASURY_FEE = 200

const MAX_FEE = 1000


address owner;
address gaspriceAddress;
address sub_9935d7beAddress;
address sub_68f997b6Address;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
uint32 stor5;
address rewardPoolAddress;
uint256 stor5;
uint32 stor6;
address unirouterAddress;
array of struct sub_ad381466;

function unirouter() payable {
    return address(unirouterAddress)
}

function treasury() payable {
    return address(treasuryAddress)
}

function rewardPool() payable {
    return address(rewardPoolAddress)
}

function sub_68f997b6(?) payable {
    return sub_68f997b6Address
}

function gasprice() payable {
    return gaspriceAddress
}

function owner() payable {
    return owner
}

function sub_9935d7be(?) payable {
    return sub_9935d7beAddress
}

function sub_ad381466(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ad381466.length
    return sub_ad381466[arg1].field_0
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
    if sub_9935d7beAddress == arg1:
        revert with 0, '!safe'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
    require ext_code.size(sub_9935d7beAddress)
    staticcall sub_9935d7beAddress.allowance(address arg1, address arg2) with:
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
    if not ext_code.size(sub_9935d7beAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call sub_9935d7beAddress with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(sub_9935d7beAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call sub_9935d7beAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
            if not approve(address arg1, uint256 arg2), address(arg1) << 64:
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
        if not return_data.size:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call sub_9935d7beAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
                if not approve(address arg1, uint256 arg2), address(arg1) << 64:
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
        else:
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
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call sub_9935d7beAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
                if not approve(address arg1, uint256 arg2), address(arg1) << 64:
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
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
    address(unirouterAddress) = arg1
}

function harvest() payable {
    if msg.sender != tx.origin:
        revert with 0, '!EOA'
    require ext_code.size(gaspriceAddress)
    call gaspriceAddress.maxGasPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.gasprice > ext_call.return_data[0]:
        revert with 0, 'gas is too high!'
    require ext_code.size(sub_9935d7beAddress)
    staticcall sub_9935d7beAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if 200 * ext_call.return_data[0] / ext_call.return_data[0] != 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[132] = address(treasuryAddress)
        mem[164] = 200 * ext_call.return_data[0] / 1000 / 2
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor4)
        mem[128 len 4] = transfer(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_9935d7beAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
        mem[352 len 4] = 0
        call sub_9935d7beAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, 200 * ext_call.return_data[0] / 1000) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[264] = 200 * ext_call.return_data[0] / 1000 / 2
            mem[296] = 0
            mem[360] = address(treasuryAddress)
            mem[392] = block.timestamp
            mem[328] = 160
            mem[424] = sub_ad381466.length
            if not sub_ad381466.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 260
                require return_data.size >= 32
                _984 = mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
                require mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260] <= 4294967296 and mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260]
                _1004 = mem[_984 + 260]
                mem[ceil32(return_data.size) + 292 len floor32(mem[_984 + 260])] = mem[_984 + 292 len floor32(mem[_984 + 260])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1004) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1004) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                    mem[(32 * _1004) + ceil32(return_data.size) + 520 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _1004) + ceil32(return_data.size) + 520 len 4]
                else:
                    if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _1004) + ceil32(return_data.size) + 393 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1004) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1004) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _1004) + ceil32(return_data.size) + 520 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1004) + ceil32(return_data.size) + 520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1004) + ceil32(return_data.size) + 566 len 22]
                else:
                    mem[(32 * _1004) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1004) + ceil32(return_data.size) + 488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1004) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[0] = 7
                mem[456] = address(sub_ad381466.field_0)
                idx = 456
                s = 0
                while (32 * sub_ad381466.length) + 456 > idx + 32:
                    mem[idx + 32] = sub_ad381466[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[456 len 32 * sub_ad381466.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 260
                require return_data.size >= 32
                _2545 = mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
                require mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260] <= 4294967296 and mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 260]
                _2632 = mem[_2545 + 260]
                mem[ceil32(return_data.size) + 292 len floor32(mem[_2545 + 260])] = mem[_2545 + 292 len floor32(mem[_2545 + 260])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2632) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2632) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                    mem[(32 * _2632) + ceil32(return_data.size) + 520 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _2632) + ceil32(return_data.size) + 520 len 4]
                else:
                    if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _2632) + ceil32(return_data.size) + 393 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2632) + ceil32(return_data.size) + 562 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2632) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _2632) + ceil32(return_data.size) + 520 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2632) + ceil32(return_data.size) + 520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2632) + ceil32(return_data.size) + 566 len 22]
                else:
                    mem[(32 * _2632) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2632) + ceil32(return_data.size) + 488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2632) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[260] = return_data.size
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 265] = 200 * ext_call.return_data[0] / 1000 / 2
            mem[ceil32(return_data.size) + 297] = 0
            mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 393] = block.timestamp
            mem[ceil32(return_data.size) + 329] = 160
            mem[ceil32(return_data.size) + 425] = sub_ad381466.length
            if not sub_ad381466.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                require return_data.size >= 32
                _973 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
                require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]
                _996 = mem[ceil32(return_data.size) + _973 + 261]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _973 + 261])] = mem[ceil32(return_data.size) + _973 + 293 len floor32(mem[ceil32(return_data.size) + _973 + 261])]
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                else:
                    if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(sub_9935d7beAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                    call sub_9935d7beAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                else:
                    mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _996) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _996) + (4 * ceil32(return_data.size)) + 568 len 22]
            mem[0] = 7
            mem[ceil32(return_data.size) + 457] = address(sub_ad381466.field_0)
            idx = ceil32(return_data.size) + 457
            s = 0
            while ceil32(return_data.size) + (32 * sub_ad381466.length) + 457 > idx + 32:
                mem[idx + 32] = sub_ad381466[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[ceil32(return_data.size) + 457 len 32 * sub_ad381466.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _2547 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]
            _2649 = mem[ceil32(return_data.size) + _2547 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2547 + 261])] = mem[ceil32(return_data.size) + _2547 + 293 len floor32(mem[ceil32(return_data.size) + _2547 + 261])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0, mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            else:
                if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
            require return_data.size >= 32
            if mem[(32 * _2649) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
            mem[(32 * _2649) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2649) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * _2649) + (4 * ceil32(return_data.size)) + 494] = 42
            mem[(32 * _2649) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _2649) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
        mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 265] = 200 * ext_call.return_data[0] / 1000 / 2
        mem[ceil32(return_data.size) + 297] = 0
        mem[ceil32(return_data.size) + 361] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 393] = block.timestamp
        mem[ceil32(return_data.size) + 329] = 160
        mem[ceil32(return_data.size) + 425] = sub_ad381466.length
        if not sub_ad381466.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _987 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]
            _1006 = mem[ceil32(return_data.size) + _987 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _987 + 261])] = mem[ceil32(return_data.size) + _987 + 293 len floor32(mem[ceil32(return_data.size) + _987 + 261])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                    if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
                else:
                    mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1006) + (4 * ceil32(return_data.size)) + 568 len 22]
            if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
            mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
            require return_data.size >= 32
            if mem[(32 * _1006) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
            mem[(32 * _1006) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _1006) + (4 * ceil32(return_data.size)) + 462] = 32
            mem[(32 * _1006) + (4 * ceil32(return_data.size)) + 494] = 42
            mem[(32 * _1006) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _1006) + (4 * ceil32(return_data.size)) + 458
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[0] = 7
        mem[ceil32(return_data.size) + 457] = address(sub_ad381466.field_0)
        idx = ceil32(return_data.size) + 457
        s = 0
        while ceil32(return_data.size) + (32 * sub_ad381466.length) + 457 > idx + 32:
            mem[idx + 32] = sub_ad381466[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, 200 * ext_call.return_data[0] / 1000), 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[ceil32(return_data.size) + 457 len 32 * sub_ad381466.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _2549 = mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32
        require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], Mask(224, 32, 200 * ext_call.return_data[0] / 1000) >> 32 + 261]
        _2666 = mem[ceil32(return_data.size) + _2549 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2549 + 261])] = mem[ceil32(return_data.size) + _2549 + 293 len floor32(mem[ceil32(return_data.size) + _2549 + 261])]
        if ext_call.return_data[0]:
            if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2666) + (4 * ceil32(return_data.size)) + 568 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(sub_9935d7beAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call sub_9935d7beAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 200 * ext_call.return_data[0] / 1000 / 2
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _2666) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        mem[(32 * _2666) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2666) + (4 * ceil32(return_data.size)) + 462] = 32
        mem[(32 * _2666) + (4 * ceil32(return_data.size)) + 494] = 42
        mem[(32 * _2666) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _2666) + (4 * ceil32(return_data.size)) + 458
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[132] = address(treasuryAddress)
    mem[164] = 0
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor4)
    mem[128 len 4] = transfer(address arg1, uint256 arg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_9935d7beAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
    mem[352 len 4] = 0
    call sub_9935d7beAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[264] = 0
        mem[296] = 0
        mem[360] = address(treasuryAddress)
        mem[392] = block.timestamp
        mem[328] = 160
        mem[424] = sub_ad381466.length
        if not sub_ad381466.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            _990 = mem[260 len 4], 0
            require mem[260 len 4], 0 <= 4294967296
            require mem[260 len 4], 0 + 32 <= return_data.size
            require mem[mem[260 len 4], 0 + 260] <= 4294967296 and mem[260 len 4], 0 + (32 * mem[mem[260 len 4], 0 + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], 0 + 260]
            _1008 = mem[_990 + 260]
            mem[ceil32(return_data.size) + 292 len floor32(mem[_990 + 260])] = mem[_990 + 292 len floor32(mem[_990 + 260])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1008) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1008) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                mem[(32 * _1008) + ceil32(return_data.size) + 520 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _1008) + ceil32(return_data.size) + 520 len 4]
            else:
                if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _1008) + ceil32(return_data.size) + 393 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1008) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1008) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _1008) + ceil32(return_data.size) + 520 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1008) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1008) + ceil32(return_data.size) + 566 len 22]
            else:
                mem[(32 * _1008) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1008) + ceil32(return_data.size) + 488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1008) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        else:
            mem[0] = 7
            mem[456] = address(sub_ad381466.field_0)
            idx = 456
            s = 0
            while (32 * sub_ad381466.length) + 456 > idx + 32:
                mem[idx + 32] = sub_ad381466[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[456 len 32 * sub_ad381466.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 260
            require return_data.size >= 32
            _2553 = mem[260 len 4], 0
            require mem[260 len 4], 0 <= 4294967296
            require mem[260 len 4], 0 + 32 <= return_data.size
            require mem[mem[260 len 4], 0 + 260] <= 4294967296 and mem[260 len 4], 0 + (32 * mem[mem[260 len 4], 0 + 260]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], 0 + 260]
            _2700 = mem[_2553 + 260]
            mem[ceil32(return_data.size) + 292 len floor32(mem[_2553 + 260])] = mem[_2553 + 292 len floor32(mem[_2553 + 260])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2700) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2700) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                mem[(32 * _2700) + ceil32(return_data.size) + 520 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _2700) + ceil32(return_data.size) + 520 len 4]
            else:
                if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _2700) + ceil32(return_data.size) + 393 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2700) + ceil32(return_data.size) + 562 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2700) + ceil32(return_data.size) + 456 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _2700) + ceil32(return_data.size) + 520 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2700) + ceil32(return_data.size) + 520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _2700) + ceil32(return_data.size) + 566 len 22]
            else:
                mem[(32 * _2700) + ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2700) + ceil32(return_data.size) + 488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2700) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
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
        mem[ceil32(return_data.size) + 425] = sub_ad381466.length
        if not sub_ad381466.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _977 = mem[ceil32(return_data.size) + 261 len 4], 0
            require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
            require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
            _998 = mem[ceil32(return_data.size) + _977 + 261]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _977 + 261])] = mem[ceil32(return_data.size) + _977 + 293 len floor32(mem[ceil32(return_data.size) + _977 + 261])]
            if not ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            else:
                if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(sub_9935d7beAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
                call sub_9935d7beAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
            else:
                mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _998) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _998) + (4 * ceil32(return_data.size)) + 568 len 22]
        mem[0] = 7
        mem[ceil32(return_data.size) + 457] = address(sub_ad381466.field_0)
        idx = ceil32(return_data.size) + 457
        s = 0
        while ceil32(return_data.size) + (32 * sub_ad381466.length) + 457 > idx + 32:
            mem[idx + 32] = sub_ad381466[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[ceil32(return_data.size) + 457 len 32 * sub_ad381466.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _2555 = mem[ceil32(return_data.size) + 261 len 4], 0
        require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
        _2717 = mem[ceil32(return_data.size) + _2555 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2555 + 261])] = mem[ceil32(return_data.size) + _2555 + 293 len floor32(mem[ceil32(return_data.size) + _2555 + 261])]
        if not ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        else:
            if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
        mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
        require return_data.size >= 32
        if mem[(32 * _2717) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
        mem[(32 * _2717) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2717) + (4 * ceil32(return_data.size)) + 462] = 32
        mem[(32 * _2717) + (4 * ceil32(return_data.size)) + 494] = 42
        mem[(32 * _2717) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _2717) + (4 * ceil32(return_data.size)) + 458
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
    mem[ceil32(return_data.size) + 425] = sub_ad381466.length
    if not sub_ad381466.length:
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        _993 = mem[ceil32(return_data.size) + 261 len 4], 0
        require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
        _1010 = mem[ceil32(return_data.size) + _993 + 261]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _993 + 261])] = mem[ceil32(return_data.size) + _993 + 293 len floor32(mem[ceil32(return_data.size) + _993 + 261])]
        if not ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        else:
            if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
            if not ext_code.size(sub_9935d7beAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 0] = 0
            call sub_9935d7beAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
        else:
            mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1010) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _1010) + (4 * ceil32(return_data.size)) + 568 len 22]
    mem[0] = 7
    mem[ceil32(return_data.size) + 457] = address(sub_ad381466.field_0)
    idx = ceil32(return_data.size) + 457
    s = 0
    while ceil32(return_data.size) + (32 * sub_ad381466.length) + 457 > idx + 32:
        mem[idx + 32] = sub_ad381466[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(unirouterAddress))
    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(treasuryAddress), block.timestamp, sub_ad381466.length, mem[ceil32(return_data.size) + 457 len 32 * sub_ad381466.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
    require return_data.size >= 32
    _2557 = mem[ceil32(return_data.size) + 261 len 4], 0
    require mem[ceil32(return_data.size) + 261 len 4], 0 <= 4294967296
    require mem[ceil32(return_data.size) + 261 len 4], 0 + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], 0 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 261 len 4], 0 + 261]
    _2734 = mem[ceil32(return_data.size) + _2557 + 261]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + _2557 + 261])] = mem[ceil32(return_data.size) + _2557 + 293 len floor32(mem[ceil32(return_data.size) + _2557 + 261])]
    if not ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(sub_9935d7beAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call sub_9935d7beAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    else:
        if 800 * ext_call.return_data[0] / ext_call.return_data[0] != 800:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(sub_9935d7beAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, 800 * ext_call.return_data[0] / 1000) >> 32
        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 549 len 4] = 0
        call sub_9935d7beAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(224, 32, 800 * ext_call.return_data[0] / 1000) << 224, mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 567 len 22]
    mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
    mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
    require return_data.size >= 32
    if mem[(32 * _2734) + ceil32(return_data.size) + ceil32(return_data.size) + 489]:
    mem[(32 * _2734) + (4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _2734) + (4 * ceil32(return_data.size)) + 462] = 32
    mem[(32 * _2734) + (4 * ceil32(return_data.size)) + 494] = 42
    mem[(32 * _2734) + (4 * ceil32(return_data.size)) + 526 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _2734) + (4 * ceil32(return_data.size)) + 458
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
