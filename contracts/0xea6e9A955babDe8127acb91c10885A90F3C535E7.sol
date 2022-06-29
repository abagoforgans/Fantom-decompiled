contract main {




// =====================  Runtime code  =====================


address owner;
address ownableAddress;
address creameryAddress;
address bridgeTrollAddress;
address iceCreamManAddress;
address flavorsTokenAddress;
address stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
address stor7;
uint256 stor8;

function initialized() {
    return bool(uint8(stor7.field_160))
}

function flavorsToken() {
    return flavorsTokenAddress
}

function bridgePaused() {
    return bool(uint8(stor7.field_168))
}

function owner() {
    return owner
}

function ownable() {
    return ownableAddress
}

function creamery() {
    return creameryAddress
}

function iceCreamMan() {
    return iceCreamManAddress
}

function bridgeTroll() {
    return bridgeTrollAddress
}

function burnItAllDown_OICM() {
    selfdestruct(iceCreamManAddress)
}

function pauseBridge_OAD() {
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    uint8(stor7.field_168) = 1
}

function unPauseBridge_OAD() {
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    uint8(stor7.field_168) = 0
}

function updateOwner_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRIDGE: onlyOwnable => caller not ownableFlavors'
    emit OwnerUpdated(Array(len=21, data='BRIDGE: Owner Updated'), owner, arg1);
    owner = arg1
}

function updateCreamery_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRIDGE: onlyOwnable => caller not ownableFlavors'
    creameryAddress = arg1
    emit CreameryUpdated(Array(len=24, data='BRIDGE: Creamery Updated'), creameryAddress, arg1);
    return 1
}

function updateIceCreamMan_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRIDGE: onlyOwnable => caller not ownableFlavors'
    emit IceCreamManUpdated(Array(len=27, data='BRIDGE: IceCreamMan Updated'), iceCreamManAddress, arg1);
    iceCreamManAddress = arg1
}

function updateOwnable_OAD(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    emit OwnableFlavorsUpdated(Array(len=31, data='BRIDGE: Ownable Flavors Updated'), stor6, arg1);
    stor6 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xe4d5fc2c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != iceCreamManAddress:
        revert with 0, 'BRIDGE: _updateOwnable => new ownableFlavors must have the same iceCreamMan.'
    require ext_code.size(stor6)
    staticcall stor6.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != owner:
        revert with 0, 'BRIDGE: _updateOwnable => new ownableFlavors must have the same owner.'
}

function _fallback() payable {
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x6ca7c216 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    if ext_call.return_data[124 len 4] > 2147483647:
        revert with 0, 17
    call creameryAddress with:
       value msg.value wei
         gas 2 * ext_call.return_data[96] % 2147483648 wei
    if not ext_call.success:
        revert with 0, 'BRIDGE: sendDepositToCreamery => fail'
    emit DepositTransferred(address arg1, uint256 arg2, string arg3, string arg4):
                            msg.sender,
                            msg.value,
                            128,
                            224,
                            39,
                            'BRIDGE: External Payment Receive',
                            0x642046726f6d3a00000000000000000000000000000000000000000000000000,
                            20,
                            'Sent to the Creamery',
}

function sendDepositToCreamery(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x6ca7c216 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    if ext_call.return_data[124 len 4] > 2147483647:
        revert with 0, 17
    call creameryAddress with:
       value arg1 wei
         gas 2 * ext_call.return_data[96] % 2147483648 wei
    if not ext_call.success:
        revert with 0, 'BRIDGE: sendDepositToCreamery => fail'
    emit DepositTransferred(address arg1, uint256 arg2, string arg3, string arg4):
                            msg.sender,
                            msg.value,
                            128,
                            224,
                            39,
                            'BRIDGE: External Payment Receive',
                            0x642046726f6d3a00000000000000000000000000000000000000000000000000,
                            20,
                            'Sent to the Creamery',
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    bridgeTrollAddress = arg2
    ownableAddress = arg1
    stor6 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x6493c41d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    flavorsTokenAddress = ext_call.return_data[12 len 20]
    address(stor7.field_0) = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0xe1fe7d4c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    creameryAddress = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0xe4d5fc2c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    iceCreamManAddress = ext_call.return_data[12 len 20]
    uint8(stor7.field_160) = 1
}

function waitToCross(uint32 arg1, uint32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor7.field_176):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BRIDGE: waitToCross => bridge queue full'
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'BRIDGE: waitToCross => insufficient balance'
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).0x728639a1 with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).0x1b1b1a0e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(stor7.field_0))
    staticcall address(stor7.field_0).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    stor8 = 0
    uint8(stor7.field_176) = 1
    emit WaitingToCross(stor8, 0, msg.sender, arg1, arg2);
}



}
