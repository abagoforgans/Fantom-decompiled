contract main {




// =====================  Runtime code  =====================


const name = 'Project Wyvern Proxy Registry'


address owner;
address delegateProxyImplementationAddress;
mapping of address proxies;
mapping of uint256 pending;
mapping of uint8 stor4;
uint256 DELAY_PERIOD;
uint8 initialAddressSet;

function initialAddressSet() {
    return bool(initialAddressSet)
}

function pending(address arg1) {
    return pending[arg1]
}

function contracts(address arg1) {
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function delegateProxyImplementation() {
    return delegateProxyImplementationAddress
}

function proxies(address arg1) {
    return proxies[arg1]
}

function DELAY_PERIOD() {
    return DELAY_PERIOD
}

function _fallback() payable {
    revert
}

function revokeAuthentication(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function grantInitialAuthentication(address arg1) {
    require msg.sender == owner
    require not initialAddressSet
    initialAddressSet = 1
    stor4[address(arg1)] = 1
}

function startGrantAuthentication(address arg1) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    require not pending[address(arg1)]
    pending[address(arg1)] = block.timestamp
}

function endGrantAuthentication(address arg1) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    require pending[address(arg1)]
    require pending[address(arg1)] + DELAY_PERIOD < block.timestamp
    pending[address(arg1)] = 0
    stor4[address(arg1)] = 1
}

function registerProxy() {
    require not proxies[address(msg.sender)]
    create contract with 0 wei
                    code: code.data[4318 len 2423], msg.sender, delegateProxyImplementationAddress, 96, 68, this.address, code.data[4318 len 28] >> 256, Mask(32, -512, code.data[4318 len 28]) << 512
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxies[address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}



}
