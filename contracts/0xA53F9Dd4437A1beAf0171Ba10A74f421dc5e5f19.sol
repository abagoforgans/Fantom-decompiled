contract main {




// =====================  Runtime code  =====================


address implementationAddress;

function implementation() {
    return implementationAddress
}

function _fallback() payable {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgrade() {
    require ext_code.size(this.address)
    staticcall this.address.0x9d16acfd with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if not ext_call.return_data[0]:
        revert with 0, 'Vault Proxy: Upgrade not scheduled'
    if not ext_code.size(ext_call.return_data[32]):
        revert with 0, 'Cannot set a proxy implementation to a non-contract address'
    implementationAddress = ext_call.return_data[44 len 20]
    emit Upgraded(ext_call.return_data[44 len 20]);
    mem[ceil32(return_data.size) + 132] = 0, mem[ceil32(return_data.size) + 132 len 28]
    delegate this.address.mem[ceil32(return_data.size) + 132 len 4] with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with 0, 'Vault Proxy: Issue when finalizing the upgrade'
}



}
