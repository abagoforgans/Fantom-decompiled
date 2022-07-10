contract main {




// =====================  Runtime code  =====================


#
#  - retire(address arg1, address arg2)
#  - withdraw(uint256 arg1, address arg2, address arg3)
#
uint32 stor0;
address sub_647aba30Address;
uint256 stor0;
address vaultAddress;
address tokenAddress;
uint256 balance;

function sub_647aba30(?) payable {
    return address(sub_647aba30Address)
}

function sub_8648686a(?) payable {
    return tokenAddress
}

function balance() payable {
    return balance
}

function vault() payable {
    return vaultAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function vaultBalance() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function enact() payable {
    if address(sub_647aba30Address) != msg.sender:
        revert with 0, 'Only cartographer'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(sub_647aba30Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(vaultAddress)
    call vaultAddress.depositAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance = ext_call.return_data[0]
}

function deposit(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if address(sub_647aba30Address) != msg.sender:
        revert with 0, 'Only cartographer'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(sub_647aba30Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(vaultAddress)
            call vaultAddress.depositAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getPricePerFullShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 <= arg1:
                    if balance < balance:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        return 0
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1:
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        require ext_code.size(vaultAddress)
        call vaultAddress.depositAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1:
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance -= ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            return -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(vaultAddress)
            call vaultAddress.depositAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.getPricePerFullShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if 0 <= arg1:
                    if balance < balance:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        return 0
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if 0 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1:
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        require ext_code.size(vaultAddress)
        call vaultAddress.depositAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > arg1:
                if arg1 + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += arg1
                return arg1
            if -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance -= ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            return -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
    ('eq', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32))
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 <= arg1:
        if balance < balance:
            revert with 0, 'SafeMath: addition overflow'
        else:
            return 0
    if arg1 + balance < balance:
        revert with 0, 'SafeMath: addition overflow'
    balance += arg1
    return arg1
}



}
