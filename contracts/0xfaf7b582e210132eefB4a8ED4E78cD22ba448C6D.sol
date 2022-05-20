contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
address tombAddress;
address sub_b981cdf3Address;
address sub_ee6822a7Address;
address sub_9e558707Address;
address sub_507d8f41Address;
address sub_7edd3da5Address;
uint32 stor8;
address daoAddress;

function daoAddress() payable {
    return address(daoAddress)
}

function sub_507d8f41(?) payable {
    return sub_507d8f41Address
}

function operator() payable {
    return operatorAddress
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
}

function owner() payable {
    return owner
}

function sub_9e558707(?) payable {
    return sub_9e558707Address
}

function sub_b981cdf3(?) payable {
    return sub_b981cdf3Address
}

function tomb() payable {
    return tombAddress
}

function sub_ee6822a7(?) payable {
    return sub_ee6822a7Address
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ccc35e72(?) payable {
    require ext_code.size(sub_ee6822a7Address)
    staticcall sub_ee6822a7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a599a868(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b981cdf3Address)
    staticcall sub_b981cdf3Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6c6f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function sub_09bb4f92(?) payable {
    require ext_code.size(tombAddress)
    staticcall tombAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_111abf39(?) payable {
    require ext_code.size(sub_ee6822a7Address)
    staticcall sub_ee6822a7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_507d8f41Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_507d8f41Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_58b9889c(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_ee6822a7Address)
    staticcall sub_ee6822a7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough TShare'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ee6822a7Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_ee6822a7Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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

function sub_bd0ef4ef(?) payable {
    require ext_code.size(tombAddress)
    staticcall tombAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(sub_ee6822a7Address)
            staticcall sub_ee6822a7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_507d8f41Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_507d8f41Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0]:
                            return (0 / 0 / ext_call.return_data[0])
                    else:
                        if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 0 / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0]:
                            return (10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0])
                    ('iszero', ('div', 0, ('ext_call.return_data', 0, 32)))
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            return (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    else:
                        if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            return (10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)))
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            require ext_code.size(sub_ee6822a7Address)
            staticcall sub_ee6822a7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_507d8f41Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_507d8f41Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0]:
                            return (0 / 0 / ext_call.return_data[0])
                    else:
                        if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 0 / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0]:
                            return (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0])
                    ('iszero', ('div', 0, ('ext_call.return_data', 0, 32)))
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            return (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    else:
                        if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                            return (10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                    ('iszero', ('div', ('mul', 1000000000000000000, ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)))
    revert
}

function sub_965d16ab(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b981cdf3Address)
    staticcall sub_b981cdf3Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough TBond in wallet'
    if not msg.sender:
        revert with 0, 'Invalid address'
    require ext_code.size(tombAddress)
    staticcall tombAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_9e558707Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(sub_ee6822a7Address)
        staticcall sub_ee6822a7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_507d8f41Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_507d8f41Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 0 / 0 / ext_call.return_data[0] * arg1 / arg1 != 0 / 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0 / 0 / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
            else:
                if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / arg1 != 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
            else:
                if 10^18 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 10^18 * 0 / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(sub_ee6822a7Address)
        staticcall sub_ee6822a7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_507d8f41Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_507d8f41Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 0 / 0 / ext_call.return_data[0] * arg1 / arg1 != 0 / 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0 / 0 / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0 / 0 / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
            else:
                if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 0 / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / arg1 != 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 0 / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
            else:
                if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                if not arg1:
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 0, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 0, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                else:
                    if 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / arg1 != 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18:
                        revert with 0, 'Not enough TShare.'
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 60 * 10^18:
                        revert with 0, 'Insufficient Tomb supply'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(sub_ee6822a7Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) >> 32
                    call sub_ee6822a7Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[580 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                        emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                        mem[ceil32(return_data.size) + 563 len 26]
                        if not ext_code.size(sub_b981cdf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(daoAddress), Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call sub_b981cdf3Address with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, msg.sender
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0x37e3bc3a: arg1, 10^18 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg1 / 10^18, mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
}



}
