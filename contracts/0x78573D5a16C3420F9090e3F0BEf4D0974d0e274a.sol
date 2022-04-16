contract main {




// =====================  Runtime code  =====================


#
#  - newConverter(uint16 arg1, string arg2, string arg3, uint8 arg4, uint32 arg5, address[] arg6, uint32[] arg7)
#
address owner;
address newOwner;
address registryAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address prevRegistryAddress;

function onlyOwnerCanUpdateRegistry() {
    return bool(uint8(stor3.field_160))
}

function prevRegistry() {
    return prevRegistryAddress
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function restoreRegistry() {
    if owner != msg.sender:
        revert with 0, 'ERR_ACCESS_DENIED'
    registryAddress = prevRegistryAddress
}

function restrictRegistryUpdate(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'ERR_ACCESS_DENIED'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'ERR_ACCESS_DENIED'
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ERR_ACCESS_DENIED'
    if owner == arg1:
        revert with 0, 'ERR_SAME_OWNER'
    newOwner = arg1
}

function safeApprove(address arg1, address arg2, uint256 arg3) {
    call arg1 with:
       funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
         gas gas_remaining wei
        args address(arg2) << 64, 0, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
}

function safeTransfer(address arg1, address arg2, uint256 arg3) {
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args address(arg2) << 64, 0, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
}

function safeTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    call arg1 with:
       funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
         gas gas_remaining wei
        args address(arg2) << 64, 0, address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        revert with 0, 'ERR_TRANSFER_FAILED'
}

function isConverterValid(address arg1) {
    require ext_code.size(arg1)
    call arg1.token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == arg1)
}

function getAnchorCount() {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe571049b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getSmartTokenCount() {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe571049b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLiquidityPoolCount() {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7a5f0ffd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getConvertibleTokenCount() {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x69be4784 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isAnchor(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4123ef60 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getAnchor(uint256 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa109d214 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isSmartToken(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4123ef60 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getSmartToken(uint256 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa109d214 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isLiquidityPool(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe85455d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isConvertibleToken(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3ab8857c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getLiquidityPool(uint256 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa74498aa with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getConvertibleToken(uint256 arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x865cf194 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getConvertibleTokenAnchorCount(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa43d5e94 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getConvertibleTokenSmartTokenCount(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa43d5e94 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isConvertibleTokenAnchor(address arg1, address arg2) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x725b8786 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getConvertibleTokenAnchor(address arg1, uint256 arg2) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd6c4b5b2 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function isConvertibleTokenSmartToken(address arg1, address arg2) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x725b8786 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getConvertibleTokenSmartToken(address arg1, uint256 arg2) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd6c4b5b2 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function updateRegistry() {
    if owner != msg.sender:
        if uint8(stor3.field_160):
            revert with 0, 'ERR_ACCESS_DENIED'
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 'ContractRegistry'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if registryAddress == ext_call.return_data[12 len 20]:
        revert with 0, 'ERR_INVALID_REGISTRY'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ERR_INVALID_REGISTRY'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 'ContractRegistry'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ERR_INVALID_REGISTRY'
    prevRegistryAddress = registryAddress
    registryAddress = address(ext_call.return_data[0])
}

function getConvertersBySmartTokens(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
             gas gas_remaining wei
        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * idx) + 160] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    s = 0
    while arg1.length < 32 * mem[(32 * arg1.length) + 128]:
        mem[(66 * arg1.length) + 224] = mem[(34 * arg1.length) + 160]
        s = arg1.length + 32
        continue 
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function getConvertersByAnchors(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[13825 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x8da5cb5b with:
             gas gas_remaining wei
        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * arg1.length) + (32 * idx) + 160] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function getAnchors() {
    mem[100] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x4ceaf4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getSmartTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function getLiquidityPools() {
    mem[100] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x7f45c4c300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x7f45c4c3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function getSmartTokens() {
    mem[100] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x4ceaf4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getSmartTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function getConvertibleTokens() {
    mem[100] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x5f1b50fe00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5f1b50fe with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function getConvertibleTokenAnchors(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf4fb86c0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function getConvertibleTokenSmartTokens(address arg1) {
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf4fb86c0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_10 + 96]
    _14 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _14) + 32]
}

function addConverter(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ERR_ACCESS_DENIED'
    require ext_code.size(arg1)
    call arg1.token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        revert with 0, 'ERR_INVALID_CONVERTER'
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.connectorTokenCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addSmartToken(address rg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc0a6d303: address(ext_call.return_data[0])
    emit 0x88881fee: address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    if uint16(ext_call.return_data[0]) <= 1:
        call address(ext_call.return_data[0]).addConvertibleToken(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xf2e7cf6d: address(ext_call.return_data[0]), address(ext_call.return_data[0])
    else:
        call address(ext_call.return_data[0]).addLiquidityPool(address rg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LiquidityPoolAdded(address(ext_call.return_data[0]));
    idx = 0
    while idx < uint16(ext_call.return_data[0]):
        require ext_code.size(arg1)
        call arg1.connectorTokens(uint256 rg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x36900c1100000000000000000000000000000000000000000000000000000000
        mem[100] = address(ext_call.return_data[0])
        mem[132] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).addConvertibleToken(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xf2e7cf6d: address(ext_call.return_data[0]), address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function removeConverter(address arg1) {
    if owner != msg.sender:
        require ext_code.size(arg1)
        call arg1.token() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == arg1:
            revert with 0, 'ERR_ACCESS_DENIED'
    require ext_code.size(registryAddress)
    call registryAddress.addressOf(bytes32 rg1) with:
         gas gas_remaining wei
        args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.connectorTokenCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).removeSmartToken(address rg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbfdf1baa: address(ext_call.return_data[0])
    emit 0x2aff6379: address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    if uint16(ext_call.return_data[0]) <= 1:
        call address(ext_call.return_data[0]).removeConvertibleToken(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9430ad6f: address(ext_call.return_data[0]), address(ext_call.return_data[0])
    else:
        call address(ext_call.return_data[0]).removeLiquidityPool(address rg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LiquidityPoolRemoved(address(ext_call.return_data[0]));
    idx = 0
    while idx < uint16(ext_call.return_data[0]):
        require ext_code.size(arg1)
        call arg1.connectorTokens(uint256 rg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xfba8f03100000000000000000000000000000000000000000000000000000000
        mem[100] = address(ext_call.return_data[0])
        mem[132] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).removeConvertibleToken(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9430ad6f: address(ext_call.return_data[0]), address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function getLiquidityPoolByReserveConfig(address[] arg1, uint32[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length == arg2.length:
        if arg1.length > 1:
            require ext_code.size(registryAddress)
            call registryAddress.addressOf(bytes32 rg1) with:
                 gas gas_remaining wei
                args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < arg1.length
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa43d5e94 with:
                 gas gas_remaining wei
                args mem[140 len 20]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = 0
            idx = 1
            s = 0
            t = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            while idx < arg1.length:
                require idx < arg1.length
                _75 = mem[(32 * idx) + 128]
                mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa43d5e94 with:
                     gas gas_remaining wei
                    args address(_75)
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if t <= ext_call.return_data[0]:
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = ext_call.return_data[0]
                idx = idx + 1
                s = idx
                t = ext_call.return_data[0]
                continue 
            require s < arg1.length
            _72 = mem[(32 * s) + 128]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_72)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xf4fb86c0 with:
                 gas gas_remaining wei
                args address(_72)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _80 = mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64
            require mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 <= 4294967296
            require mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 + 32 <= return_data.size
            require mem[(32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 + 160] <= 4294967296 and mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 + (32 * mem[(32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 + 160]) + 32 <= return_data.size
            _116 = mem[(32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 4], address(_72) << 64 + 160]
            s = 0
            s = 0
            idx = 0
            while idx < _116:
                require idx < mem[(32 * arg2.length) + (32 * arg1.length) + _80 + 160]
                _118 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + _80 + 192]
                require ext_code.size(mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + _80 + 204 len 20])
                call mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + _80 + 204 len 20].0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).converterType() with:
                     gas gas_remaining wei
                mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] != 1:
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).connectorTokenCount() with:
                     gas gas_remaining wei
                mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] != arg1.length:
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                s = 0
                while s < arg1.length:
                    require s < mem[96]
                    _151 = mem[(32 * s) + 128]
                    _152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_152 len 64] = code.data[13825 len 64]
                    mem[mem[64] + 36] = address(_151)
                    _156 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_156 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_156 + 36 len 28]
                    staticcall ext_call.return_data[0].mem[_156 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_156 + 36 len mem[_156] - 4]
                    mem[_152 len 64] = ext_call.return_data[0 len 64]
                    require ext_call.success
                    require s < mem[(32 * arg1.length) + 128]
                    if mem[(32 * arg1.length) + (32 * s) + 188 len 4] == uint32(ext_call.return_data[32]):
                        s = s + 1
                        continue 
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                return address(_118)
            return 0
        else:
            return 0
    else:
        return 0
}

function getLiquidityPoolByConfig(uint16 arg1, address[] arg2, uint32[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg2.length == arg3.length:
        if arg2.length > 1:
            require ext_code.size(registryAddress)
            call registryAddress.addressOf(bytes32 rg1) with:
                 gas gas_remaining wei
                args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < arg2.length
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[140 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa43d5e94 with:
                 gas gas_remaining wei
                args mem[140 len 20]
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = 0
            idx = 1
            s = 0
            t = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
            while idx < arg2.length:
                require idx < arg2.length
                _75 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa43d5e94 with:
                     gas gas_remaining wei
                    args address(_75)
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if t <= ext_call.return_data[0]:
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = ext_call.return_data[0]
                idx = idx + 1
                s = idx
                t = ext_call.return_data[0]
                continue 
            require s < arg2.length
            _72 = mem[(32 * s) + 128]
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = address(_72)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xf4fb86c0 with:
                 gas gas_remaining wei
                args address(_72)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg3.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _80 = mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64
            require mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 <= 4294967296
            require mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 + 32 <= return_data.size
            require mem[(32 * arg3.length) + (32 * arg2.length) + mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 + 160] <= 4294967296 and mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 + (32 * mem[(32 * arg3.length) + (32 * arg2.length) + mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 + 160]) + 32 <= return_data.size
            _116 = mem[(32 * arg3.length) + (32 * arg2.length) + mem[(32 * arg3.length) + (32 * arg2.length) + 160 len 4], address(_72) << 64 + 160]
            s = 0
            s = 0
            idx = 0
            while idx < _116:
                require idx < mem[(32 * arg3.length) + (32 * arg2.length) + _80 + 160]
                _118 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + _80 + 192]
                require ext_code.size(mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + _80 + 204 len 20])
                call mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + _80 + 204 len 20].0x8da5cb5b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).converterType() with:
                     gas gas_remaining wei
                mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] != arg1:
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).connectorTokenCount() with:
                     gas gas_remaining wei
                mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] != arg2.length:
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                s = 0
                while s < arg2.length:
                    require s < mem[96]
                    _151 = mem[(32 * s) + 128]
                    _152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_152 len 64] = code.data[13825 len 64]
                    mem[mem[64] + 36] = address(_151)
                    _156 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_156 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_156 + 36 len 28]
                    staticcall ext_call.return_data[0].mem[_156 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_156 + 36 len mem[_156] - 4]
                    mem[_152 len 64] = ext_call.return_data[0 len 64]
                    require ext_call.success
                    require s < mem[(32 * arg2.length) + 128]
                    if mem[(32 * arg2.length) + (32 * s) + 188 len 4] == uint32(ext_call.return_data[32]):
                        s = s + 1
                        continue 
                    s = ext_call.return_data[0]
                    s = _118
                    idx = idx + 1
                    continue 
                return address(_118)
            return 0
        else:
            return 0
    else:
        return 0
}

function isSimilarLiquidityPoolRegistered(address arg1) {
    require ext_code.size(arg1)
    call arg1.connectorTokenCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[30 len 2]
    if not uint16(ext_call.return_data[0]):
        mem[(32 * uint16(ext_call.return_data[0])) + 128] = uint16(ext_call.return_data[0])
        mem[64] = (64 * uint16(ext_call.return_data[0])) + 160
        s = 0
        idx = 0
        while idx < uint16(ext_call.return_data[0]):
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.connectorTokens(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            _200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_200 len 64] = code.data[13825 len 64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            _205 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_205 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_205 + 36 len 28]
            staticcall arg1.mem[_205 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_205 + 36 len mem[_205] - 4]
            mem[_200 len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            require idx < mem[(32 * uint16(ext_call.return_data[0])) + 128]
            mem[(32 * uint16(ext_call.return_data[0])) + (32 * idx) + 160] = uint32(ext_call.return_data[32])
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        call arg1.converterType() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[96] == mem[(32 * uint16(ext_call.return_data[0])) + 128]:
            if mem[96] > 1:
                mem[mem[64] + 4] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
                require ext_code.size(registryAddress)
                call registryAddress.addressOf(bytes32 rg1) with:
                     gas gas_remaining wei
                    args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < mem[96]
                _240 = mem[128]
                mem[mem[64] + 4] = mem[140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa43d5e94 with:
                     gas gas_remaining wei
                    args address(_240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _344 = mem[96]
                s = 0
                idx = 1
                s = 0
                t = mem[mem[64]]
                while idx < _344:
                    require idx < mem[96]
                    _353 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa43d5e94 with:
                         gas gas_remaining wei
                        args address(_353)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _344 = mem[96]
                    if t <= ext_call.return_data[0]:
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = idx
                    t = ext_call.return_data[0]
                    continue 
                require s < mem[96]
                _350 = mem[(32 * s) + 128]
                mem[mem[64]] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_350)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xf4fb86c0 with:
                     gas gas_remaining wei
                    args address(_350)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _362 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _366 = mem[_362]
                require mem[_362] <= 4294967296
                require mem[_362] + 32 <= return_data.size
                require mem[_362 + mem[_362]] <= 4294967296 and mem[_362] + (32 * mem[_362 + mem[_362]]) + 32 <= return_data.size
                _438 = mem[_362 + mem[_362]]
                s = 0
                s = 0
                idx = 0
                while idx < _438:
                    require idx < mem[_362 + _366]
                    _442 = mem[(32 * idx) + _362 + _366 + 32]
                    require ext_code.size(mem[(32 * idx) + _362 + _366 + 44 len 20])
                    call mem[(32 * idx) + _362 + _366 + 44 len 20].0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).converterType() with:
                         gas gas_remaining wei
                    mem[_362 + ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[30 len 2] != uint16(ext_call.return_data[0]):
                        _438 = mem[_362 + _366]
                        s = ext_call.return_data[0]
                        s = _442
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).connectorTokenCount() with:
                         gas gas_remaining wei
                    mem[_362 + ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[30 len 2] != mem[96]:
                        _438 = mem[_362 + _366]
                        s = ext_call.return_data[0]
                        s = _442
                        idx = idx + 1
                        continue 
                    _504 = mem[96]
                    s = 0
                    while s < _504:
                        require s < mem[96]
                        _508 = mem[(32 * s) + 128]
                        _510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_510 len 64] = code.data[13825 len 64]
                        mem[mem[64] + 36] = address(_508)
                        _515 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_515 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_515 + 36 len 28]
                        staticcall ext_call.return_data[0].mem[_515 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_515 + 36 len mem[_515] - 4]
                        mem[_510 len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        require s < mem[(32 * uint16(ext_call.return_data[0])) + 128]
                        _438 = mem[_362 + _366]
                        _504 = mem[96]
                        if mem[(32 * uint16(ext_call.return_data[0])) + (32 * s) + 188 len 4] == uint32(ext_call.return_data[32]):
                            s = s + 1
                            continue 
                        s = ext_call.return_data[0]
                        s = _442
                        idx = idx + 1
                        continue 
                    return not not address(_442)
    else:
        mem[128 len 32 * uint16(ext_call.return_data[0])] = code.data[13825 len 32 * uint16(ext_call.return_data[0])]
        mem[(32 * uint16(ext_call.return_data[0])) + 128] = uint16(ext_call.return_data[0])
        mem[64] = (64 * uint16(ext_call.return_data[0])) + 160
        mem[(32 * uint16(ext_call.return_data[0])) + 160 len 32 * uint16(ext_call.return_data[0])] = code.data[13825 len 32 * uint16(ext_call.return_data[0])]
        s = 0
        idx = 0
        while idx < uint16(ext_call.return_data[0]):
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            call arg1.connectorTokens(uint256 rg1) with:
                 gas gas_remaining wei
                args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(ext_call.return_data[0])
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201 len 64] = code.data[13825 len 64]
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            _211 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_211 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_211 + 36 len 28]
            staticcall arg1.mem[_211 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_211 + 36 len mem[_211] - 4]
            mem[_201 len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            require idx < mem[(32 * uint16(ext_call.return_data[0])) + 128]
            mem[(32 * uint16(ext_call.return_data[0])) + (32 * idx) + 160] = uint32(ext_call.return_data[32])
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        call arg1.converterType() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[96] == mem[(32 * uint16(ext_call.return_data[0])) + 128]:
            if mem[96] > 1:
                mem[mem[64] + 4] = 0x42616e636f72436f6e76657274657252656769737472794461746100000000
                require ext_code.size(registryAddress)
                call registryAddress.addressOf(bytes32 rg1) with:
                     gas gas_remaining wei
                    args 0x42616e636f72436f6e76657274657252656769737472794461746100000000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < mem[96]
                _243 = mem[128]
                mem[mem[64] + 4] = mem[140 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa43d5e94 with:
                     gas gas_remaining wei
                    args address(_243)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _345 = mem[96]
                s = 0
                idx = 1
                s = 0
                t = mem[mem[64]]
                while idx < _345:
                    require idx < mem[96]
                    _359 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa43d5e94 with:
                         gas gas_remaining wei
                        args address(_359)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _345 = mem[96]
                    if t <= ext_call.return_data[0]:
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = idx
                    t = ext_call.return_data[0]
                    continue 
                require s < mem[96]
                _356 = mem[(32 * s) + 128]
                mem[mem[64]] = 0xf4fb86c000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_356)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xf4fb86c0 with:
                     gas gas_remaining wei
                    args address(_356)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _364 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _368 = mem[_364]
                require mem[_364] <= 4294967296
                require mem[_364] + 32 <= return_data.size
                require mem[_364 + mem[_364]] <= 4294967296 and mem[_364] + (32 * mem[_364 + mem[_364]]) + 32 <= return_data.size
                _439 = mem[_364 + mem[_364]]
                s = 0
                s = 0
                idx = 0
                while idx < _439:
                    require idx < mem[_364 + _368]
                    _445 = mem[(32 * idx) + _364 + _368 + 32]
                    require ext_code.size(mem[(32 * idx) + _364 + _368 + 44 len 20])
                    call mem[(32 * idx) + _364 + _368 + 44 len 20].0x8da5cb5b with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).converterType() with:
                         gas gas_remaining wei
                    mem[_364 + ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[30 len 2] != uint16(ext_call.return_data[0]):
                        _439 = mem[_364 + _368]
                        s = ext_call.return_data[0]
                        s = _445
                        idx = idx + 1
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).connectorTokenCount() with:
                         gas gas_remaining wei
                    mem[_364 + ceil32(return_data.size)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[30 len 2] != mem[96]:
                        _439 = mem[_364 + _368]
                        s = ext_call.return_data[0]
                        s = _445
                        idx = idx + 1
                        continue 
                    _505 = mem[96]
                    s = 0
                    while s < _505:
                        require s < mem[96]
                        _509 = mem[(32 * s) + 128]
                        _511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_511 len 64] = code.data[13825 len 64]
                        mem[mem[64] + 36] = address(_509)
                        _521 = mem[64]
                        mem[mem[64]] = 36
                        mem[64] = mem[64] + 68
                        mem[_521 + 32] = Mask(32, 224, sha3('connectors(address)')) or mem[_521 + 36 len 28]
                        staticcall ext_call.return_data[0].mem[_521 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_521 + 36 len mem[_521] - 4]
                        mem[_511 len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        require s < mem[(32 * uint16(ext_call.return_data[0])) + 128]
                        _439 = mem[_364 + _368]
                        _505 = mem[96]
                        if mem[(32 * uint16(ext_call.return_data[0])) + (32 * s) + 188 len 4] == uint32(ext_call.return_data[32]):
                            s = s + 1
                            continue 
                        s = ext_call.return_data[0]
                        s = _445
                        idx = idx + 1
                        continue 
                    return not not address(_445)
    return 0
}



}
