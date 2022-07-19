contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
address controllerImplementationAddress;
address pendingControllerImplementationAddress;

function pendingAdmin() {
    return pendingAdminAddress
}

function controllerImplementation() {
    return controllerImplementationAddress
}

function pendingControllerImplementation() {
    return pendingControllerImplementationAddress
}

function admin() {
    return adminAddress
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Controller: !admin'
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
}

function _setPendingImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Controller: !admin'
    pendingControllerImplementationAddress = arg1
    emit NewPendingImplementation(pendingControllerImplementationAddress, arg1);
}

function _fallback() payable {
    delegate controllerImplementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _acceptAdmin() {
    if not pendingAdminAddress:
        revert with 0, 'Controller: no pending admin'
    if pendingAdminAddress != msg.sender:
        revert with 0, 'Controller: !pending admin'
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, pendingAdminAddress);
}

function _acceptImplementation() {
    if not pendingControllerImplementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: no pending implementation'
    if pendingControllerImplementationAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controller: !pending implementation'
    controllerImplementationAddress = pendingControllerImplementationAddress
    pendingControllerImplementationAddress = 0
    emit NewImplementation(controllerImplementationAddress, pendingControllerImplementationAddress);
    emit NewPendingImplementation(pendingControllerImplementationAddress, pendingControllerImplementationAddress);
}



}
