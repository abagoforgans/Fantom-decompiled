contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address controllerAddress;

function governance() payable {
    return governanceAddress
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == controllerAddress)
}

function isGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == governanceAddress)
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'Storage: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Storage: New controller shouldn't be empty'
    controllerAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'Storage: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Storage: New governance shouldn't be empty'
    governanceAddress = arg1
}



}
