contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 sub_ea220435;
uint256 sub_6359de27;
uint256 sub_242ae55c;
uint256 sub_3f0a93f2;
uint256 stakedSupply;
uint256 sub_146705b4;
address sub_b1b0c49eAddress;
address sub_499fbf43Address;
mapping of struct userInfo;

function sub_146705b4(?) payable {
    return sub_146705b4
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function sub_242ae55c(?) payable {
    return sub_242ae55c
}

function sub_3f0a93f2(?) payable {
    return sub_3f0a93f2
}

function sub_499fbf43(?) payable {
    return sub_499fbf43Address
}

function sub_6359de27(?) payable {
    return sub_6359de27
}

function owner() payable {
    return owner
}

function sub_b1b0c49e(?) payable {
    return sub_b1b0c49eAddress
}

function stakedSupply() payable {
    return stakedSupply
}

function sub_ea220435(?) payable {
    return sub_ea220435
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

function emergencyWithdraw() payable {
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_512 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0 > stakedSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    stakedSupply -= userInfo[msg.sender].field_0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(sub_499fbf43Address):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_32
    call sub_499fbf43Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[msg.sender].field_0, mem[388 len 4]
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
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256, -userInfo[address(arg1)].field_512
        if sub_6359de27 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_6359de27:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_512 > sub_6359de27 * userInfo[address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256, 
               (sub_6359de27 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
    if sub_ea220435 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_ea220435:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > sub_ea220435 * userInfo[address(arg1)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (sub_ea220435 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256, 
               -userInfo[address(arg1)].field_512
    if sub_6359de27 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != sub_6359de27:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if userInfo[address(arg1)].field_512 > sub_6359de27 * userInfo[address(arg1)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_ea220435 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_256, 
           (sub_6359de27 * userInfo[address(arg1)].field_0 / 10^12) - userInfo[address(arg1)].field_512
}

function sub_15f46d10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_499fbf43Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_499fbf43Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if arg1 + sub_146705b4 < sub_146705b4:
            revert with 0, 'SafeMath: addition overflow'
        sub_146705b4 += arg1
        sub_3f0a93f2 = arg1
        if stakedSupply:
            if not sub_3f0a93f2:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stakedSupply) + sub_ea220435 < sub_ea220435:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ea220435 += 0 / stakedSupply
            else:
                if 10^12 * sub_3f0a93f2 / sub_3f0a93f2 != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * sub_3f0a93f2 / stakedSupply) + sub_ea220435 < sub_ea220435:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ea220435 += 10^12 * sub_3f0a93f2 / stakedSupply
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg1 + sub_146705b4 < sub_146705b4:
            revert with 0, 'SafeMath: addition overflow'
        sub_146705b4 += arg1
        sub_3f0a93f2 = arg1
        if stakedSupply:
            if not sub_3f0a93f2:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stakedSupply) + sub_ea220435 < sub_ea220435:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ea220435 += 0 / stakedSupply
            else:
                if 10^12 * sub_3f0a93f2 / sub_3f0a93f2 != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * sub_3f0a93f2 / stakedSupply) + sub_ea220435 < sub_ea220435:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ea220435 += 10^12 * sub_3f0a93f2 / stakedSupply
}

function sub_db2b23ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_b1b0c49eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_b1b0c49eAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not arg1:
            sub_242ae55c = 0
        else:
            if 99 * arg1 / arg1 != 99:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            sub_242ae55c = 99 * arg1 / 100
        if stakedSupply:
            if not sub_242ae55c:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stakedSupply) + sub_6359de27 < sub_6359de27:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6359de27 += 0 / stakedSupply
            else:
                if 10^12 * sub_242ae55c / sub_242ae55c != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * sub_242ae55c / stakedSupply) + sub_6359de27 < sub_6359de27:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6359de27 += 10^12 * sub_242ae55c / stakedSupply
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not arg1:
            sub_242ae55c = 0
        else:
            if 99 * arg1 / arg1 != 99:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            sub_242ae55c = 99 * arg1 / 100
        if stakedSupply:
            if not sub_242ae55c:
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stakedSupply) + sub_6359de27 < sub_6359de27:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6359de27 += 0 / stakedSupply
            else:
                if 10^12 * sub_242ae55c / sub_242ae55c != 10^12:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 458 len 31]
                if not stakedSupply:
                    revert with 0, 'SafeMath: division by zero'
                if (10^12 * sub_242ae55c / stakedSupply) + sub_6359de27 < sub_6359de27:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6359de27 += 10^12 * sub_242ae55c / stakedSupply
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not userInfo[msg.sender].field_0:
        if userInfo[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[msg.sender].field_0:
            if userInfo[msg.sender].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + stakedSupply < stakedSupply:
                revert with 0, 'SafeMath: addition overflow'
            stakedSupply += arg1
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if not arg1 + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_256 = 0
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not -userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not -userInfo[msg.sender].field_256:
                        if -userInfo[msg.sender].field_512:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                        if not ext_code.size(sub_499fbf43Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
            else:
                if (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / arg1 + userInfo[msg.sender].field_0 != sub_ea220435:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                userInfo[msg.sender].field_256 = (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / 10^12
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not -userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not -userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
        else:
            if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[msg.sender].field_512 > sub_6359de27 * userInfo[msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + stakedSupply < stakedSupply:
                revert with 0, 'SafeMath: addition overflow'
            stakedSupply += arg1
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if not arg1 + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_256 = 0
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not -userInfo[msg.sender].field_256:
                        if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                        if not ext_code.size(sub_499fbf43Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not -userInfo[msg.sender].field_256:
                        if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                        if not ext_code.size(sub_499fbf43Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = 0
                        mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
            else:
                if (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / arg1 + userInfo[msg.sender].field_0 != sub_ea220435:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                userInfo[msg.sender].field_256 = (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / 10^12
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not -userInfo[msg.sender].field_256:
                        if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                        if not ext_code.size(sub_499fbf43Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = 0
                        mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not -userInfo[msg.sender].field_256:
                        if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if -userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
    else:
        if sub_ea220435 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_ea220435:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[msg.sender].field_256 > sub_ea220435 * userInfo[msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[msg.sender].field_0:
            if userInfo[msg.sender].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + stakedSupply < stakedSupply:
                revert with 0, 'SafeMath: addition overflow'
            stakedSupply += arg1
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if not arg1 + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_256 = 0
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
            else:
                if (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / arg1 + userInfo[msg.sender].field_0 != sub_ea220435:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                userInfo[msg.sender].field_256 = (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / 10^12
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not -userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if -userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if -userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
        else:
            if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[msg.sender].field_512 > sub_6359de27 * userInfo[msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + stakedSupply < stakedSupply:
                revert with 0, 'SafeMath: addition overflow'
            stakedSupply += arg1
            if arg1 + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[msg.sender].field_0 += arg1
            if not arg1 + userInfo[msg.sender].field_0:
                userInfo[msg.sender].field_256 = 0
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                        if not ext_code.size(sub_499fbf43Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[800 len 4] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
            else:
                if (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / arg1 + userInfo[msg.sender].field_0 != sub_ea220435:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                userInfo[msg.sender].field_256 = (arg1 * sub_ea220435) + (userInfo[msg.sender].field_0 * sub_ea220435) / 10^12
                if not userInfo[msg.sender].field_0:
                    userInfo[msg.sender].field_512 = 0
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                else:
                    if sub_6359de27 * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != sub_6359de27:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    userInfo[msg.sender].field_512 = sub_6359de27 * userInfo[msg.sender].field_0 / 10^12
                    if not (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256:
                        if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                            mem[772 len 0] = 0
                        else:
                            require ext_code.size(sub_b1b0c49eAddress)
                            staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b1b0c49eAddress)
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 > ext_call.return_data[0]:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                            else:
                                call sub_b1b0c49eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                    else:
                        require ext_code.size(sub_499fbf43Address)
                        staticcall sub_499fbf43Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_499fbf43Address)
                        if (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256 > ext_call.return_data[0]:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                            if not ext_code.size(sub_499fbf43Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[800 len 4] = 0
                        else:
                            call sub_499fbf43Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (sub_ea220435 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                if not ext_code.size(sub_499fbf43Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[800 len 4] = 0
                                mem[772 len 0] = 0
                            else:
                                require ext_code.size(sub_b1b0c49eAddress)
                                staticcall sub_b1b0c49eAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b1b0c49eAddress)
                                if (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512 <= ext_call.return_data[0]:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (sub_6359de27 * userInfo[msg.sender].field_0 / 10^12) - userInfo[msg.sender].field_512
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                else:
                                    call sub_b1b0c49eAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
                                    if not ext_code.size(sub_499fbf43Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[800 len 4] = 0
                                    mem[772 len 0] = 0
    call sub_499fbf43Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[772 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[708]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 787 len 22]
    emit Deposit(arg1, msg.sender);
}



}
