contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_2d2e3a93Address;
address sub_ec4a61b2Address;
address sub_275b0504Address;
mapping of uint256 sub_4bf6f9e7;
mapping of uint256 userAmount;
uint256 accRewardPerShare;
uint256 sub_b15d1723;
uint256 sub_cf8867df;

function sub_275b0504(?) payable {
    return sub_275b0504Address
}

function sub_2d2e3a93(?) payable {
    return sub_2d2e3a93Address
}

function sub_4bf6f9e7(?) payable {
    require calldata.size - 4 >= 32
    return sub_4bf6f9e7[arg1]
}

function owner() payable {
    return owner
}

function accRewardPerShare() payable {
    return accRewardPerShare
}

function sub_b15d1723(?) payable {
    return sub_b15d1723
}

function sub_cf8867df(?) payable {
    return sub_cf8867df
}

function userAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return userAmount[arg1]
}

function sub_ec4a61b2(?) payable {
    return sub_ec4a61b2Address
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

function sub_2060e1d7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ec4a61b2Address = arg1
}

function pendingReward() payable {
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
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

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        sub_2d2e3a93Address = arg1
        sub_275b0504Address = arg2
        sub_ec4a61b2Address = arg3
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_2d2e3a93Address = arg1
            sub_275b0504Address = arg2
            sub_ec4a61b2Address = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_2d2e3a93Address = arg1
            sub_275b0504Address = arg2
            sub_ec4a61b2Address = arg3
            uint8(stor0.field_8) = 0
}

function pendingRewardOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_275b0504Address)
    staticcall sub_275b0504Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_b15d1723:
        return 0
    if sub_b15d1723 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_b15d1723:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userAmount[address(arg1)]:
            if sub_4bf6f9e7[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_4bf6f9e7[address(arg1)]
        if (0 / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / userAmount[address(arg1)] != (0 / ext_call.return_data[0]) + accRewardPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_4bf6f9e7[address(arg1)] > (0 / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(arg1)])
    if (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0] - sub_b15d1723 != 1000000000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userAmount[address(arg1)]:
        if sub_4bf6f9e7[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_4bf6f9e7[address(arg1)]
    if ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / userAmount[address(arg1)] != ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]) + accRewardPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_4bf6f9e7[address(arg1)] > ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0] * userAmount[address(arg1)]) + (accRewardPerShare * userAmount[address(arg1)]) / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(arg1)])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2d2e3a93Address)
    staticcall sub_2d2e3a93Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_cf8867df = ext_call.return_data[0]
    require ext_code.size(sub_275b0504Address)
    staticcall sub_275b0504Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_b15d1723:
        if not ext_call.return_data[0]:
            accRewardPerShare = 0
            if userAmount[address(msg.sender)]:
                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_2d2e3a93Address):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
            else:
                if sub_4bf6f9e7[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_2d2e3a93Address):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args arg1, mem[392 len 60], mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
        else:
            if sub_b15d1723 > sub_cf8867df:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_cf8867df - sub_b15d1723:
                if (1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / sub_cf8867df - sub_b15d1723 != 1000000000000000000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if ((1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                accRewardPerShare += (1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]
                if not userAmount[address(msg.sender)]:
                    if sub_4bf6f9e7[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                mem[552 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
                    revert with 0, 'SafeMath: addition overflow'
                accRewardPerShare += 0 / ext_call.return_data[0]
                if not userAmount[address(msg.sender)]:
                    if sub_4bf6f9e7[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                mem[552 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                mem[552 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
    else:
        if sub_cf8867df < sub_b15d1723:
            sub_cf8867df = 0
            sub_b15d1723 = 0
            accRewardPerShare = 0
            sub_4bf6f9e7[address(msg.sender)] = 0
            if not userAmount[address(msg.sender)]:
                if sub_4bf6f9e7[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_2d2e3a93Address):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
            else:
                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_2d2e3a93Address)
                staticcall sub_2d2e3a93Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_2d2e3a93Address):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call sub_2d2e3a93Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0] > sub_cf8867df:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                        if not arg1:
                            if not userAmount[address(msg.sender)]:
                                sub_4bf6f9e7[address(msg.sender)] = 0
                            else:
                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(sub_275b0504Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            mem[552 len 0] = 0
                            call sub_275b0504Address with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
        else:
            if not ext_call.return_data[0]:
                accRewardPerShare = 0
                if not userAmount[address(msg.sender)]:
                    if sub_4bf6f9e7[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_2d2e3a93Address)
                    staticcall sub_2d2e3a93Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_2d2e3a93Address):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                        call sub_2d2e3a93Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_cf8867df:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                            if not arg1:
                                if not userAmount[address(msg.sender)]:
                                    sub_4bf6f9e7[address(msg.sender)] = 0
                                else:
                                    if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 362 len 31]
                                    sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 563 len 26]
                                if not ext_code.size(sub_275b0504Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                call sub_275b0504Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
            else:
                if sub_b15d1723 > sub_cf8867df:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_cf8867df - sub_b15d1723:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accRewardPerShare += 0 / ext_call.return_data[0]
                    if not userAmount[address(msg.sender)]:
                        if sub_4bf6f9e7[address(msg.sender)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_2d2e3a93Address)
                        staticcall sub_2d2e3a93Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_2d2e3a93Address):
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_2d2e3a93Address)
                        staticcall sub_2d2e3a93Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_2d2e3a93Address):
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    mem[552 len 0] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                else:
                    if (1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / sub_cf8867df - sub_b15d1723 != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if ((1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]) + accRewardPerShare < accRewardPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accRewardPerShare += (1000000000000000000 * 10^18 * sub_cf8867df) - (1000000000000000000 * 10^18 * sub_b15d1723) / ext_call.return_data[0]
                    if userAmount[address(msg.sender)]:
                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_4bf6f9e7[address(msg.sender)] > accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_2d2e3a93Address)
                        staticcall sub_2d2e3a93Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_2d2e3a93Address):
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) >> 32
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18) - sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                    else:
                        if sub_4bf6f9e7[address(msg.sender)] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(sub_2d2e3a93Address)
                        staticcall sub_2d2e3a93Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(sub_2d2e3a93Address):
                            revert with 0, 'Address: call to non-contract'
                        if ext_call.return_data[0] >= -sub_4bf6f9e7[address(msg.sender)]:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) >> 32
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, -sub_4bf6f9e7[address(msg.sender)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                                    if not arg1:
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(sub_275b0504Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        mem[ceil32(return_data.size) + 553 len 0] = 0
                                        call sub_275b0504Address with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    if -sub_4bf6f9e7[address(msg.sender)] > sub_cf8867df:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_b15d1723 = sub_cf8867df + sub_4bf6f9e7[address(msg.sender)]
                                    if not arg1:
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(sub_275b0504Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call sub_275b0504Address with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, -sub_4bf6f9e7[address(msg.sender)]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                        else:
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                            call sub_2d2e3a93Address with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if ext_call.return_data[0] > sub_cf8867df:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                if not arg1:
                                    if not userAmount[address(msg.sender)]:
                                        sub_4bf6f9e7[address(msg.sender)] = 0
                                    else:
                                        if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                        sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                    if not ext_code.size(sub_275b0504Address):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[580 len 4] = 0
                                    call sub_275b0504Address with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[566 len 14],
                                                        0,
                                                        mem[584 len 4]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if ext_call.return_data[0] > sub_cf8867df:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                    if not arg1:
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(sub_275b0504Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call sub_275b0504Address with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                else:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                    if ext_call.return_data[0] > sub_cf8867df:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    sub_b15d1723 = sub_cf8867df - ext_call.return_data[0]
                                    if not arg1:
                                        if not userAmount[address(msg.sender)]:
                                            sub_4bf6f9e7[address(msg.sender)] = 0
                                        else:
                                            if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(sub_275b0504Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        mem[ceil32(return_data.size) + 553 len 0] = 0
                                        call sub_275b0504Address with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                            if not userAmount[address(msg.sender)]:
                                                sub_4bf6f9e7[address(msg.sender)] = 0
                                            else:
                                                if accRewardPerShare * userAmount[address(msg.sender)] / userAmount[address(msg.sender)] != accRewardPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                sub_4bf6f9e7[address(msg.sender)] = accRewardPerShare * userAmount[address(msg.sender)] / 1000000000000000000 * 10^18
}



}
