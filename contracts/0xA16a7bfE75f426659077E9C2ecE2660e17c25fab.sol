contract main {




// =====================  Runtime code  =====================


const sub_8a7054ca(?) = sha3(403437891716322060690802)


address adminAddress;
address pendingAdminAddress;
address registryAddress;
uint128 stor3; offset 160
address implementationAddress;
uint256 stor3;

function pendingAdmin() {
    return pendingAdminAddress
}

function implementation() {
    return implementationAddress
}

function registry() {
    return registryAddress
}

function admin() {
    return adminAddress
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 14, 0);
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
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

function _acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        emit Failure(1, 0, 0);
        return 1
    if not msg.sender:
        emit Failure(1, 0, 0);
        return 1
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, pendingAdminAddress);
    return 0
}

function initialize() {
    if adminAddress != msg.sender:
        revert with 0, 'Not Admin'
    if implementationAddress:
        revert with 0, 'Already initialized'
    require ext_code.size(registryAddress)
    call registryAddress.getImplementationForLn(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args this.address, sha3(403437891716322060690802)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3.field_0))
}

function sub_319c0c04(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        emit Failure(1, 31, 0);
        return 1
    require ext_code.size(registryAddress)
    call registryAddress.updateLnVersion(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Version update failed'
    require ext_code.size(registryAddress)
    call registryAddress.getImplementationForLn(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args this.address, sha3(403437891716322060690802)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if implementationAddress == ext_call.return_data[12 len 20]:
        emit ImplementationDidNotChange(implementationAddress);
        mem[132] = 32
        mem[164] = arg2.length
        mem[196 len arg2.length] = arg2[all]
        mem[arg2.length + 196] = 0
        mem[132 len 28] = 0
        mem[128 len 4] = 1291651414
        mem[ceil32(arg2.length) + 196 len floor32(ceil32(arg2.length) + 68)] = 1291651414, 0, 0, mem[164 len floor32(ceil32(arg2.length) + 68) - 36]
        mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 228 len ceil32(arg2.length) + 68 % 32] = mem[(3 * floor32(ceil32(arg2.length) + 68)) + (-2 * ceil32(arg2.length)) - 8 len ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 68) + 68]
        delegate implementationAddress with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args Mask(8 * floor32(ceil32(arg2.length) + 68) - 4, -(8 * floor32(ceil32(arg2.length) + 68)) + 256, mem[164 len floor32(ceil32(arg2.length) + 68) - 36]) << (8 * floor32(ceil32(arg2.length) + 68)) - 256, mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + 196 len ceil32(arg2.length) + -floor32(ceil32(arg2.length) + 68) + 68]
        if return_data.size:
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        mem[ceil32(arg2.length) + 196] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 228 len -arg2.length + ceil32(arg2.length)]
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
    emit NewImplementation(implementationAddress, ext_call.return_data[12 len 20]);
    mem[132] = 32
    mem[164] = arg2.length
    mem[196 len arg2.length] = arg2[all]
    mem[arg2.length + 196] = 0
    mem[132 len 28] = 0
    mem[128 len 4] = 1291651414
    mem[ceil32(arg2.length) + 196 len floor32(ceil32(arg2.length) + 68)] = 1291651414, 0, 0, mem[164 len floor32(ceil32(arg2.length) + 68) - 36]
    mem[ceil32(arg2.length) + floor32(ceil32(arg2.length) + 68) + -(ceil32(arg2.length) + 68 % 32) + 228 len ceil32(arg2.length) + 68 % 32] = mem[(2 * floor32(ceil32(arg2.length) + 68)) + -(ceil32(arg2.length) + 68 % 32) + -ceil32(arg2.length) + 60 len ceil32(arg2.length) + 68 % 32]
    delegate implementationAddress.mem[floor32(ceil32(arg2.length) + 68) + 96 len 4] with:
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg2.length) + arg2.length + 28, 0, 0), mem[arg2.length + 228 len (2 * ceil32(arg2.length)) + -arg2.length + 36]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
    else:
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'delegate.return_code')
    return 0
}



}
