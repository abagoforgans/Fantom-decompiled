contract main {




// =====================  Runtime code  =====================


address policyAddress;
address stor1;

function policy() payable {
    return policyAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(policyAddress, 0);
    policyAddress = 0
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(policyAddress, stor1);
    policyAddress = stor1
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(policyAddress, arg1);
    stor1 = arg1
}

function sub_6515a71f(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg3 / 10 * 10^6)
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg3 + (arg2 * arg1) < arg2 * arg1:
        revert with 0, 'SafeMath: addition overflow'
    return (arg3 + (arg2 * arg1) / 10 * 10^6)
}

function sub_e6c4a79e(?) payable {
    require calldata.size - 4 >= 160
    if not arg1:
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if arg5 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not arg5 / 10 * 10^6:
                return 0
            if 10^uint8(ext_call.return_data[0]) * arg5 / 10 * 10^6 / arg5 / 10 * 10^6 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return (10^uint8(ext_call.return_data[0]) * arg5 / 10 * 10^6 / 100)
        if arg4 * arg3 / arg3 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg5 + (arg4 * arg3) < arg4 * arg3:
            revert with 0, 'SafeMath: addition overflow'
        if not arg5 + (arg4 * arg3) / 10 * 10^6:
            return 0
        if 10^uint8(ext_call.return_data[0]) * arg5 + (arg4 * arg3) / 10 * 10^6 / arg5 + (arg4 * arg3) / 10 * 10^6 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (10^uint8(ext_call.return_data[0]) * arg5 + (arg4 * arg3) / 10 * 10^6 / 100)
    require ext_code.size(arg1)
    staticcall arg1.markdown(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if arg5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not arg5 / 10 * 10^6:
            return 0
        if ext_call.return_data[0] * arg5 / 10 * 10^6 / arg5 / 10 * 10^6 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * arg5 / 10 * 10^6 / 100)
    if arg4 * arg3 / arg3 != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg5 + (arg4 * arg3) < arg4 * arg3:
        revert with 0, 'SafeMath: addition overflow'
    if not arg5 + (arg4 * arg3) / 10 * 10^6:
        return 0
    if ext_call.return_data[0] * arg5 + (arg4 * arg3) / 10 * 10^6 / arg5 + (arg4 * arg3) / 10 * 10^6 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] * arg5 + (arg4 * arg3) / 10 * 10^6 / 100)
}



}
