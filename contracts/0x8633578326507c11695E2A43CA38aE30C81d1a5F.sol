contract main {




// =====================  Runtime code  =====================


address policyAddress;
address stor1;
array of address reserveTokens;
address treasuryAddress;

function policy() payable {
    return policyAddress
}

function treasury() payable {
    return treasuryAddress
}

function reserveTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveTokens.length
    return reserveTokens[arg1]
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipPushed(policyAddress, 0);
    policyAddress = 0
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    treasuryAddress = arg1
}

function sub_b8b6537a(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg1 < reserveTokens.length
    reserveTokens[arg1] = 0
}

function sub_29c41384(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require arg1
    reserveTokens.length++
    reserveTokens[reserveTokens.length] = arg1
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
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(policyAddress, arg1);
    stor1 = arg1
}

function sub_f01d110c(?) payable {
    idx = 0
    s = 0
    while idx < reserveTokens.length:
        mem[0] = 2
        if not reserveTokens[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < reserveTokens.length
        require ext_code.size(reserveTokens[idx])
        staticcall reserveTokens[idx].balanceOf(address arg1) with:
                gas gas_remaining wei
               args treasuryAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < reserveTokens.length
        mem[0] = 2
        mem[100] = reserveTokens[idx]
        mem[132] = ext_call.return_data[0]
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.valueOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args reserveTokens[idx], ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}



}
