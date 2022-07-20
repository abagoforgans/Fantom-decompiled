contract main {




// =====================  Runtime code  =====================


address owner;
address payTokenAddress;
address receiveTokenAddress;
uint32 stor3;
address devaddr;
uint256 multiplier;
uint256 divider;
uint256 tokenPerBNB;
uint256 sub_f7ceac5a;
uint256 sub_f50f24ba;

function multiplier() {
    return multiplier
}

function divider() {
    return divider
}

function owner() {
    return owner
}

function payToken() {
    return payTokenAddress
}

function tokenPerBNB() {
    return tokenPerBNB
}

function devaddr() {
    return address(devaddr)
}

function receiveToken() {
    return receiveTokenAddress
}

function sub_f50f24ba(?) {
    return sub_f50f24ba
}

function sub_f7ceac5a(?) {
    return sub_f7ceac5a
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDivider(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    divider = arg1
    emit SetDivider(arg1, msg.sender);
}

function setTokenPerBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    tokenPerBNB = arg1
    emit 0x17489f65: arg1, msg.sender
}

function setSellStart(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    sub_f7ceac5a = arg1
    emit SetSellStart(arg1, msg.sender);
}

function setMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    multiplier = arg1
    emit SetMultiplier(arg1, msg.sender);
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    address(devaddr) = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setPayTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    payTokenAddress = arg1
    emit SetPayTokenAddress(msg.sender, arg1);
}

function setReceiveTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    receiveTokenAddress = arg1
    emit SetReceiveTokenAddress(msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawUnsoldTokens() {
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    require ext_code.size(receiveTokenAddress)
    staticcall receiveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No remained tokens'
    require ext_code.size(receiveTokenAddress)
    call receiveTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(devaddr), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2e612f26(?) {
    require calldata.size - 4 >= 64
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: you are not DEV?'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
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
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buyWithBNB() payable {
    if tokenPerBNB <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe73656c6c596f7572546f6b656e3a2053656c6c696e672064656163697476617465,
                    mem[198 len 30]
    if block.timestamp <= sub_f7ceac5a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c73656c6c596f7572546f6b656e3a2053656c6c696e67206e6f742073746172746564207965,
                    mem[202 len 26]
    if not tokenPerBNB:
        require ext_code.size(receiveTokenAddress)
        staticcall receiveTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x7773656c6c596f7572546f6b656e3a204e6f7420656e6f75676820546f6b656e206c65667420746f206275,
                        mem[207 len 21]
        call address(devaddr) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(receiveTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call receiveTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, 0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
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
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if sub_f50f24ba < sub_f50f24ba:
            revert with 0, 'SafeMath: addition overflow'
        emit 0xaae538d6: msg.value, 0, 96, 3, 'BNB', msg.sender
    else:
        require tokenPerBNB
        if tokenPerBNB * msg.value / tokenPerBNB != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(receiveTokenAddress)
        staticcall receiveTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < tokenPerBNB * msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x7773656c6c596f7572546f6b656e3a204e6f7420656e6f75676820546f6b656e206c65667420746f206275,
                        mem[207 len 21]
        call address(devaddr) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(receiveTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, tokenPerBNB * msg.value) >> 32
        mem[324 len 0] = 0
        call receiveTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, tokenPerBNB * msg.value) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, tokenPerBNB * msg.value
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if sub_f50f24ba + (tokenPerBNB * msg.value) < sub_f50f24ba:
                revert with 0, 'SafeMath: addition overflow'
            sub_f50f24ba += tokenPerBNB * msg.value
            emit 0xaae538d6: msg.value, tokenPerBNB * msg.value, 0, 96, 3, 'BNB', msg.sender
        else:
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
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if sub_f50f24ba + (tokenPerBNB * msg.value) < sub_f50f24ba:
                revert with 0, 'SafeMath: addition overflow'
            sub_f50f24ba += tokenPerBNB * msg.value
            emit 0xaae538d6: msg.value, tokenPerBNB * msg.value, Array(len=3, data='BNB'), msg.sender
}

function buyWithToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if multiplier <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe73656c6c596f7572546f6b656e3a2053656c6c696e672064656163697476617465,
                    mem[198 len 30]
    if block.timestamp <= sub_f7ceac5a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6c73656c6c596f7572546f6b656e3a2053656c6c696e67206e6f742073746172746564207965,
                    mem[202 len 26]
    if not arg1:
        if divider <= 0:
            revert with 0, 'SafeMath: division by zero'
        require divider
        require ext_code.size(receiveTokenAddress)
        staticcall receiveTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0 / divider:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x7773656c6c596f7572546f6b656e3a204e6f7420656e6f75676820546f6b656e206c65667420746f206275,
                        mem[207 len 21]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(payTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(devaddr), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call payTokenAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(receiveTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, Mask(224, 32, 0 / divider) >> 32
            call receiveTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0 / divider, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            if sub_f50f24ba + (0 / divider) < sub_f50f24ba:
                revert with 0, 'SafeMath: addition overflow'
            sub_f50f24ba += 0 / divider
            emit 0xfad2012a: arg1, 0 / divider, Array(len=5, data='TOKEN'), msg.sender
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(receiveTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, 0 / divider) >> 32
                call receiveTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0 / divider, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if sub_f50f24ba + (0 / divider) < sub_f50f24ba:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f50f24ba += 0 / divider
                    emit 0xfad2012a: arg1, 0 / divider, Array(len=5, data='TOKEN'), msg.sender
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if sub_f50f24ba + (0 / divider) < sub_f50f24ba:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    sub_f50f24ba += 0 / divider
                    emit 0xfad2012a: arg1, 0 / divider, Array(len=5, data='TOKEN', mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]), msg.sender
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(receiveTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, 0 / divider) >> 32
                call receiveTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0 / divider, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                if sub_f50f24ba + (0 / divider) < sub_f50f24ba:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f50f24ba += 0 / divider
                emit 0xfad2012a: arg1, 0 / divider, Array(len=5, data='TOKEN'), msg.sender
    else:
        require arg1
        if arg1 * multiplier / arg1 != multiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if divider <= 0:
            revert with 0, 'SafeMath: division by zero'
        require divider
        require ext_code.size(receiveTokenAddress)
        staticcall receiveTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1 * multiplier / divider:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x7773656c6c596f7572546f6b656e3a204e6f7420656e6f75676820546f6b656e206c65667420746f206275,
                        mem[207 len 21]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(payTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(devaddr), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call payTokenAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(receiveTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1 * multiplier / divider) >> 32
            call receiveTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args arg1 * multiplier / divider, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            if sub_f50f24ba + (arg1 * multiplier / divider) < sub_f50f24ba:
                revert with 0, 'SafeMath: addition overflow'
            sub_f50f24ba += arg1 * multiplier / divider
            emit 0xfad2012a: arg1, arg1 * multiplier / divider, Array(len=5, data='TOKEN'), msg.sender
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(receiveTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1 * multiplier / divider) >> 32
                call receiveTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg1 * multiplier / divider, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                if sub_f50f24ba + (arg1 * multiplier / divider) < sub_f50f24ba:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f50f24ba += arg1 * multiplier / divider
                emit 0xfad2012a: arg1, arg1 * multiplier / divider, Array(len=5, data='TOKEN'), msg.sender
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(receiveTokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1 * multiplier / divider) >> 32
                call receiveTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg1 * multiplier / divider, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(devaddr), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if sub_f50f24ba + (arg1 * multiplier / divider) < sub_f50f24ba:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f50f24ba += arg1 * multiplier / divider
                    emit 0xfad2012a: arg1, arg1 * multiplier / divider, Array(len=5, data='TOKEN'), msg.sender
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if sub_f50f24ba + (arg1 * multiplier / divider) < sub_f50f24ba:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    sub_f50f24ba += arg1 * multiplier / divider
                    emit 0xfad2012a: arg1, arg1 * multiplier / divider, Array(len=5, data='TOKEN', mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]), msg.sender
}



}
