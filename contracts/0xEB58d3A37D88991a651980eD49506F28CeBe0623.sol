contract main {




// =====================  Runtime code  =====================


address loadImplementationAddress;

function a() {
    return loadImplementationAddress
}

function loadImplementation() {
    return loadImplementationAddress
}

function updateImplementation(address arg1) {
    require calldata.size - 4 >= 32
    loadImplementationAddress = arg1
}

function _fallback() payable {
    delegate loadImplementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining - 10000 wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
