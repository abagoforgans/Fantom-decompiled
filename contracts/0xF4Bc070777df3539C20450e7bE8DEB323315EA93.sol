contract main {




// =====================  Runtime code  =====================


address owner;
address wrappedAddress;
array of address strategies;

function wrapped() payable {
    return wrappedAddress
}

function owner() payable {
    return owner
}

function strategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return strategies[arg1]
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

function addStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    strategies.length++
    strategies[strategies.length] = arg1
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

function harvest() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < strategies.length:
        mem[0] = 2
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(strategies[idx])
        call strategies[idx].0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(wrappedAddress)
    staticcall wrappedAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wrappedAddress)
    call wrappedAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Cosmo: ETH transfer failed'
}



}
