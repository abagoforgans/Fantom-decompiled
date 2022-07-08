contract main {




// =====================  Runtime code  =====================


address owner;
address nativeAddress;
address wantAddress;
address sub_f945e300Address;
uint32 stor4;
address unirouterAddress;
array of struct nativeToWantRoute;
array of address sub_5e75b69e;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function nativeToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToWantRoute.length
    return nativeToWantRoute[arg1].field_0
}

function sub_5e75b69e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5e75b69e.length
    return sub_5e75b69e[arg1]
}

function owner() payable {
    return owner
}

function sub_f945e300(?) payable {
    return sub_f945e300Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0d00ac5d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    sub_5e75b69e.length++
    sub_5e75b69e[sub_5e75b69e.length] = arg1
    emit 0x9a53f778: arg1
}

function sub_3d2b18e5(?) payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.depositAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_641ada27(?) payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_534c7a79(?) payable {
    require ext_code.size(sub_f945e300Address)
    staticcall sub_f945e300Address.balanceOf(address arg1) with:
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
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6374646d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not sub_5e75b69e.length:
        revert with 0, 'No vaults are being tracked.'
    idx = 0
    while idx < sub_5e75b69e.length:
        mem[0] = 6
        if sub_5e75b69e[idx] != arg1:
            idx = idx + 1
            continue 
        require sub_5e75b69e.length - 1 < sub_5e75b69e.length
        require idx < sub_5e75b69e.length
        sub_5e75b69e[idx] = sub_5e75b69e[sub_5e75b69e.length]
        require sub_5e75b69e.length
        sub_5e75b69e[sub_5e75b69e.length] = 0
        sub_5e75b69e.length--
        emit 0x9202ca76: arg1
    revert with 0, 'Vault is not being tracked.'
}

function sub_72c4eec1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require 0 < arg1.length
    nativeAddress = mem[140 len 20]
    require arg1.length - 1 < arg1.length
    wantAddress = mem[(32 * arg1.length - 1) + 140 len 20]
    nativeToWantRoute.length = arg1.length
    if not arg1.length:
        idx = 0
        while nativeToWantRoute.length > idx:
            nativeToWantRoute[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            nativeToWantRoute[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while nativeToWantRoute.length > idx:
            nativeToWantRoute[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_0b3b08c6(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.strategy() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).strategist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x6c53747261746567697374206275796261636b206973206e6f7420746865207374726174656769737420666f722074686520746172676574207661756c,
                    mem[225 len 3]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setStrategist(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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
    emit WithdrawToken(ext_call.return_data[0], arg1);
}

function harvest() payable {
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    mem[196] = this.address
    mem[228] = block.timestamp
    mem[164] = 160
    mem[260] = nativeToWantRoute.length
    if not nativeToWantRoute.length:
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, nativeToWantRoute.length
    else:
        mem[0] = 5
        mem[292] = address(nativeToWantRoute.field_0)
        idx = 292
        s = 0
        while (32 * nativeToWantRoute.length) + 292 > idx + 32:
            mem[idx + 32] = nativeToWantRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(unirouterAddress))
        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, nativeToWantRoute.length, mem[292 len 32 * nativeToWantRoute.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f945e300Address)
    call sub_f945e300Address.depositAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f945e300Address)
    staticcall sub_f945e300Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit StratHarvest(ext_call.return_data[0], ext_call.return_data[0], msg.sender);
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.allowance(address arg1, address arg2) with:
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
    if not ext_code.size(nativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call nativeAddress with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call nativeAddress with:
           funct uint32(stor4)
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
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call nativeAddress with:
               funct uint32(stor4)
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
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
            call nativeAddress with:
               funct uint32(stor4)
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



}
