contract main {




// =====================  Runtime code  =====================


const sub_965e76fd(?) = 1000000 * 10^18


uint256 stor0;
mapping of uint256 sub_1d524d4c;
mapping of uint256 sub_fe9fc291;
address sub_c946d766Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address USDCAddress;
uint256 sub_004d4d2c;
uint256 sub_025d6acb;
uint256 sub_de284b3a;
address stor8;

function sub_004d4d2c(?) payable {
    return sub_004d4d2c
}

function sub_025d6acb(?) payable {
    return sub_025d6acb
}

function sub_1d524d4c(?) payable {
    require calldata.size - 4 >= 32
    return sub_1d524d4c[arg1]
}

function isSaleActive() payable {
    return bool(uint8(stor4.field_160))
}

function USDC() payable {
    return USDCAddress
}

function sub_c946d766(?) payable {
    return sub_c946d766Address
}

function sub_de284b3a(?) payable {
    return sub_de284b3a
}

function sub_fe9fc291(?) payable {
    require calldata.size - 4 >= 32
    return sub_fe9fc291[arg1]
}

function _fallback() payable {
    revert
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function sub_f505d3f0(?) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    if arg1 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    78,
                    0x7250414e544845523a3a7570646174654d6178427579506572557365723a206d6178427579506572557365722063616e206e6f7420657863656564207468652070726573616c6520616d6f756e74,
                    mem[242 len 18]
    emit 0xd44f1e9d: msg.sender, sub_de284b3a, arg1
    sub_de284b3a = arg1
}

function withdrawFunds() payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(USDCAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call USDCAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function emergencyWithdraw() payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(sub_c946d766Address)
    staticcall sub_c946d766Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_c946d766Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call sub_c946d766Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_e99c2480(?) payable {
    if stor8 != msg.sender:
        revert with 0, 'You're not the owner'
    if not sub_025d6acb:
        require ext_code.size(sub_c946d766Address)
        staticcall sub_c946d766Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(sub_c946d766Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call sub_c946d766Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        require sub_025d6acb
        if 10^12 * sub_025d6acb / sub_025d6acb != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_c946d766Address)
        staticcall sub_c946d766Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(sub_c946d766Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - (10^12 * sub_025d6acb)) >> 32
        mem[324 len 0] = 0
        call sub_c946d766Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - (10^12 * sub_025d6acb)) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - (10^12 * sub_025d6acb)
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor4.field_160):
        revert with 0, 'Presale has not started'
    if block.timestamp < sub_004d4d2c:
        revert with 0, 'Presale has not started'
    if not arg1 / 10:
        if sub_025d6acb > 1000000 * 10^18:
            revert with 0, 'Panther presale sold out'
        if sub_1d524d4c[address(arg2)] > sub_de284b3a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x77596f757220616d6f756e74206578636565647320746865206d617820627579206e756d6265,
                        mem[202 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(USDCAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call USDCAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
            if not unknown_0x23b872dd(?????), address(arg2) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if sub_1d524d4c[address(arg2)] < sub_1d524d4c[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if sub_025d6acb < sub_025d6acb:
                revert with 0, 'SafeMath: addition overflow'
            emit TokenBuy(address(arg2), 0);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(sub_c946d766Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, 0
            call sub_c946d766Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
                if not unknown_0x23b872dd(?????), address(arg2) << 64:
                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size <= 0:
                if sub_1d524d4c[address(arg2)] < sub_1d524d4c[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_025d6acb < sub_025d6acb:
                    revert with 0, 'SafeMath: addition overflow'
                emit TokenBuy(address(arg2), 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(sub_c946d766Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, 0
                call sub_c946d766Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if sub_1d524d4c[address(arg2)] < sub_1d524d4c[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_025d6acb < sub_025d6acb:
                    revert with 0, 'SafeMath: addition overflow'
                emit TokenBuy(address(arg2), 0);
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(sub_c946d766Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, 0
                call sub_c946d766Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), address(arg2) << 64:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeBEP20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require arg1 / 10
        if 100 * arg1 / 10 / arg1 / 10 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_025d6acb + (100 * arg1 / 10) > 1000000 * 10^18:
            revert with 0, 'Panther presale sold out'
        if sub_1d524d4c[address(arg2)] + (100 * arg1 / 10) > sub_de284b3a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x77596f757220616d6f756e74206578636565647320746865206d617820627579206e756d6265,
                        mem[202 len 26]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(USDCAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call USDCAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
            if not unknown_0x23b872dd(?????), address(arg2) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if sub_1d524d4c[address(arg2)] + (100 * arg1 / 10) < sub_1d524d4c[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_1d524d4c[address(arg2)] += 100 * arg1 / 10
            if sub_025d6acb + (100 * arg1 / 10) < sub_025d6acb:
                revert with 0, 'SafeMath: addition overflow'
            sub_025d6acb += 100 * arg1 / 10
            emit TokenBuy(address(arg2), 100 * arg1 / 10);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(sub_c946d766Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 100 * arg1 / 10) >> 32
            call sub_c946d766Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 100 * arg1 / 10) << 224, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
                if not unknown_0x23b872dd(?????), address(arg2) << 64:
                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if sub_1d524d4c[address(arg2)] + (100 * arg1 / 10) < sub_1d524d4c[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_1d524d4c[address(arg2)] += 100 * arg1 / 10
            if sub_025d6acb + (100 * arg1 / 10) < sub_025d6acb:
                revert with 0, 'SafeMath: addition overflow'
            sub_025d6acb += 100 * arg1 / 10
            emit TokenBuy(address(arg2), 100 * arg1 / 10);
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if ext_code.size(sub_c946d766Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 100 * arg1 / 10) >> 32
            call sub_c946d766Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 100 * arg1 / 10) << 224, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(this.address), arg1
                if not unknown_0x23b872dd(?????), address(arg2) << 64:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor0 = 1
}



}
