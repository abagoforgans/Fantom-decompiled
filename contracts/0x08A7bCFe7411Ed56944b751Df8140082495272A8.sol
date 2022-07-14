contract main {




// =====================  Runtime code  =====================


address owner;
address sub_60bc2266Address;
address stor3;
address sub_018d375eAddress;
address unlockQuantAddress;
address sub_b69c9638Address;
address zapperAddress;
uint256 stor8;
uint256 stor9;
uint8 createLP;
uint256 stor10;
mapping of uint256 listingFee;
mapping of uint256 buyingFee;
mapping of uint8 stor13;
array of struct stor14;
mapping of uint256 stor15;
array of struct stor16;
array of address stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of address stor12396694973890998440467380340983585058878106250672390494374587083972727727732;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727733;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727734;
array of uint256 stor12396694973890998440467380340983585058878106250672390494374587083972727727735;
array of struct stor12396694973890998440467380340983585058878106250672390494374587083972727727736;

function sub_018d375e(?) {
    return sub_018d375eAddress
}

function sub_60bc2266(?) {
    return sub_60bc2266Address
}

function getListingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return listingFee[arg1]
}

function unlockQuant() {
    return unlockQuantAddress
}

function owner() {
    return owner
}

function zapper() {
    return zapperAddress
}

function sub_b69c9638(?) {
    return sub_b69c9638Address
}

function createLP() {
    return bool(uint8(createLP))
}

function getBuyingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    return buyingFee[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleCreateLP() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor10) = not uint8(createLP) or Mask(248, 8, uint256(stor10))
}

function sub_a6aee2bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_60bc2266Address = address(arg1)
}

function setZapDest(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_018d375eAddress = arg1
    emit SetZapDest(arg1);
}

function setTargetZapLP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unlockQuantAddress = arg1
    emit SetTargetZapLP(arg1);
}

function sub_92473aad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b69c9638Address = address(arg1)
    emit 0x88d30443: address(arg1)
}

function setAllowedNFT(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
    emit SetAllowedNFT(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function setBuyingFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        buyingFee[arg2] = 0
    else:
        if arg1 and 10^18 > -1 / arg1:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        buyingFee[arg2] = 10^18 * arg1 / stor9
    emit SetBuyingFee(arg1, arg2);
}

function setListingFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        listingFee[arg1] = 0
    else:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if not stor9:
            revert with 0, 18
        listingFee[arg1] = 10^18 * arg2 / stor9
    emit SetListingFee(arg1, arg2);
}

function setZapAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    zapperAddress = arg1
    require ext_code.size(sub_60bc2266Address)
    call sub_60bc2266Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit SetZapAddress(arg1);
}

function sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sweep: Cannot sweep deposited NFTs'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAllListings() {
    mem[64] = (32 * stor16.length) + 128
    mem[96] = stor16.length
    s = 128
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        _16 = mem[64]
        mem[64] = mem[64] + 224
        mem[_16] = stor16[idx].field_0
        mem[_16 + 32] = stor16[idx].field_256
        mem[_16 + 64] = stor16[idx].field_512
        mem[_16 + 96] = stor16[idx].field_768
        mem[_16 + 128] = stor16[idx].field_1024
        mem[_16 + 160] = stor16[idx].field_1280
        if stor16[idx].field_1536 > 2:
            revert with 0, 33
        mem[_16 + 192] = stor16[idx].field_1536
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        _28 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_28 + 44 len 20]
        mem[t + 64] = mem[_28 + 76 len 20]
        mem[t + 96] = mem[_28 + 96]
        mem[t + 128] = mem[_28 + 128]
        mem[t + 160] = mem[_28 + 160]
        if mem[_28 + 192] >= 3:
            revert with 0, 33
        mem[t + 192] = mem[_28 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _17 + (224 * _18) + -mem[64] + 64
}

function getUserListings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 14
    mem[64] = (32 * stor14[address(arg1)].field_0) + 128
    mem[96] = stor14[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor14[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 14)
        _17 = mem[64]
        mem[64] = mem[64] + 224
        mem[_17] = stor14[address(arg1)][idx].field_0
        mem[_17 + 32] = stor14[address(arg1)][idx].field_256
        mem[_17 + 64] = stor14[address(arg1)][idx].field_512
        mem[_17 + 96] = stor14[address(arg1)][idx].field_768
        mem[_17 + 128] = stor14[address(arg1)][idx].field_1024
        mem[_17 + 160] = stor14[address(arg1)][idx].field_1280
        if stor14[address(arg1)][idx].field_1536 > 2:
            revert with 0, 33
        mem[_17 + 192] = stor14[address(arg1)][idx].field_1536
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    _18 = mem[64]
    mem[mem[64]] = 32
    _19 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _19:
        _29 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_29 + 44 len 20]
        mem[t + 64] = mem[_29 + 76 len 20]
        mem[t + 96] = mem[_29 + 96]
        mem[t + 128] = mem[_29 + 128]
        mem[t + 160] = mem[_29 + 160]
        if mem[_29 + 192] >= 3:
            revert with 0, 33
        mem[t + 192] = mem[_29 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _18 + (224 * _19) + -mem[64] + 64
}

function emergencyWithdrawNFT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'emergency: token not in contract'
    mem[0] = msg.sender
    mem[32] = 14
    mem[64] = ceil32(return_data.size) + (32 * stor14[msg.sender].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor14[msg.sender].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor14[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 14)
        _31 = mem[64]
        mem[64] = mem[64] + 224
        mem[_31] = stor14[msg.sender][idx].field_0
        mem[_31 + 32] = stor14[msg.sender][idx].field_256
        mem[_31 + 64] = stor14[msg.sender][idx].field_512
        mem[_31 + 96] = stor14[msg.sender][idx].field_768
        mem[_31 + 128] = stor14[msg.sender][idx].field_1024
        mem[_31 + 160] = stor14[msg.sender][idx].field_1280
        if stor14[msg.sender][idx].field_1536 > 2:
            revert with 0, 33
        mem[_31 + 192] = stor14[msg.sender][idx].field_1536
        mem[s] = _31
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx <= mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 192] > 2:
            revert with 0, 33
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 192]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 76 len 20] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit EmergencyWithdrawNFT(address(arg1), arg2);
    revert with 0, 'emergency: Not your token'
}

function delist(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'emergency: token not in contract'
    mem[0] = msg.sender
    mem[32] = 14
    mem[64] = ceil32(return_data.size) + (32 * stor14[msg.sender].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor14[msg.sender].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor14[msg.sender].field_0:
        mem[0] = sha3(msg.sender, 14)
        _32 = mem[64]
        mem[64] = mem[64] + 224
        mem[_32] = stor14[msg.sender][idx].field_0
        mem[_32 + 32] = stor14[msg.sender][idx].field_256
        mem[_32 + 64] = stor14[msg.sender][idx].field_512
        mem[_32 + 96] = stor14[msg.sender][idx].field_768
        mem[_32 + 128] = stor14[msg.sender][idx].field_1024
        mem[_32 + 160] = stor14[msg.sender][idx].field_1280
        if stor14[msg.sender][idx].field_1536 > 2:
            revert with 0, 33
        mem[_32 + 192] = stor14[msg.sender][idx].field_1536
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx <= mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20] != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 192] > 2:
            revert with 0, 33
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 192]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 76 len 20] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 < 1:
            revert with 0, 17
        if arg3 - 1 >= stor16.length:
            revert with 0, 50
        stor16[arg3].field_0 = 2
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DeList(address(arg1), arg2, arg3);
    revert with 0, 'delist: Not your token'
}

function addListing(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor13[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addListing: Invalid NFT specified'
    if msg.value < listingFee[arg4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addListing: Amount not provided for listing fee'
    if zapperAddress:
        require ext_code.size(zapperAddress)
        call zapperAddress.zapIn(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args sub_60bc2266Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_60bc2266Address)
        staticcall sub_60bc2266Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(createLP):
            require ext_code.size(zapperAddress)
            call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args sub_60bc2266Address, ext_call.return_data[0], unlockQuantAddress, sub_018d375eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_60bc2266Address)
            call sub_60bc2266Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_b69c9638Address, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor14[msg.sender].field_0++
    stor14[msg.sender][stor14[msg.sender].field_0].field_0 = msg.sender
    stor14[msg.sender][stor14[msg.sender].field_0].field_256 = stor3
    stor14[msg.sender][stor14[msg.sender].field_0].field_512 = arg1
    stor14[msg.sender][stor14[msg.sender].field_0].field_768 = arg2
    stor14[msg.sender][stor14[msg.sender].field_0].field_1024 = arg3
    stor14[msg.sender][stor14[msg.sender].field_0].field_1280 = stor8
    stor14[msg.sender][stor14[msg.sender].field_0].field_1536 = 0
    stor14[msg.sender][stor14[msg.sender].field_0].field_1792 = 0
    if stor14[msg.sender].field_0 < 1:
        revert with 0, 17
    stor15[stor8] = stor14[msg.sender].field_0 - 1
    stor16.length++
    stor16[stor16.length].field_0 = msg.sender
    stor1B68[stor16.length] = stor3
    stor1B68[stor16.length] = arg1
    stor1B68[stor16.length] = arg2
    stor1B68[stor16.length] = arg3
    stor1B68[stor16.length] = stor8
    stor1B68[stor16.length].field_0 = 0
    stor1B68[stor16.length].field_256 = 0
    if 1 > !stor8:
        revert with 0, 17
    stor8++
    emit AddListing(address(arg1), arg2, arg3);
}

function buyListing(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if arg3 < 1:
        revert with 0, 17
    if arg3 - 1 >= stor16.length:
        revert with 0, 50
    if stor16[arg3].field_0 > 2:
        revert with 0, 33
    if stor16[arg3].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buyListing: Listing ID not active sale'
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'buyListing: NFT not available in store'
    if arg3 < 1:
        revert with 0, 17
    if arg3 - 1 >= stor16.length:
        revert with 0, 50
    stor16[arg3].field_0 = 1
    stor16[arg3].field_0 = stor16[arg3].field_0
    if stor15[arg3] >= stor14[stor16[arg3].field_0].field_0:
        revert with 0, 50
    stor14[stor16[arg3].field_0][stor15[arg3]].field_0 = stor16[arg3].field_0
    stor14[stor16[arg3].field_0][stor15[arg3]].field_256 = stor16[arg3].field_0
    stor14[stor16[arg3].field_0][stor15[arg3]].field_512 = stor16[arg3].field_0
    stor14[stor16[arg3].field_0][stor15[arg3]].field_768 = stor16[arg3].field_0
    stor14[stor16[arg3].field_0][stor15[arg3]].field_1024 = stor16[arg3].field_0
    stor14[stor16[arg3].field_0][stor15[arg3]].field_1280 = stor16[arg3].field_0
    if stor16[arg3].field_0 > 2:
        revert with 0, 33
    stor14[stor16[arg3].field_0][stor15[arg3]].field_1536 = stor16[arg3].field_0
    if buyingFee[arg4] > !stor16[arg3].field_0:
        revert with 0, 17
    if msg.value < buyingFee[arg4] + stor16[arg3].field_0:
        revert with 0, 'buyListing: Amount not provided for listing fee'
    if not zapperAddress:
        call stor16[arg3].field_0 with:
           value stor16[arg3].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(zapperAddress)
        call zapperAddress.zapIn(address arg1) with:
           value buyingFee[arg4] wei
             gas gas_remaining wei
            args sub_60bc2266Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_60bc2266Address)
        staticcall sub_60bc2266Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(createLP):
            require ext_code.size(zapperAddress)
            call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                 gas gas_remaining wei
                args sub_60bc2266Address, ext_call.return_data[0], unlockQuantAddress, sub_018d375eAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor16[arg3].field_0 with:
               value stor16[arg3].field_0 wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(sub_60bc2266Address)
            call sub_60bc2266Address.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_b69c9638Address, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor16[arg3].field_0 with:
               value stor16[arg3].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BuyListing(address(arg1), arg2, arg3, arg4, buyingFee[arg4], stor16[arg3].field_0);
}

function sub_e36eb868(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if stor16.length > test266151307():
        revert with 0, 65
    mem[96] = stor16.length
    mem[64] = (32 * stor16.length) + 128
    if not stor16.length:
        idx = 0
        s = 0
        while idx < stor16.length:
            if arg1 > 2:
                revert with 0, 33
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = 16
            if stor16[idx].field_1536 > 2:
                revert with 0, 33
            if stor16[idx].field_1536 != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = 16
            _44 = mem[64]
            mem[64] = mem[64] + 224
            mem[_44] = stor16[idx].field_0
            mem[_44 + 32] = stor16[idx].field_256
            mem[_44 + 64] = stor16[idx].field_512
            mem[_44 + 96] = stor16[idx].field_768
            mem[_44 + 128] = stor16[idx].field_1024
            mem[_44 + 160] = stor16[idx].field_1280
            if stor16[idx].field_1536 > 2:
                revert with 0, 33
            mem[_44 + 192] = stor16[idx].field_1536
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _44
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _36 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[96]:
                    revert with 0, 50
                if t >= mem[_36]:
                    revert with 0, 50
                mem[(32 * t) + _36 + 32] = mem[(32 * t) + 128]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _89 = mem[64]
            mem[mem[64]] = 32
            _92 = mem[_36]
            mem[mem[64] + 32] = mem[_36]
            idx = 0
            s = _36 + 32
            t = mem[64] + 64
            while idx < _92:
                _133 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_133 + 44 len 20]
                mem[t + 64] = mem[_133 + 76 len 20]
                mem[t + 96] = mem[_133 + 96]
                mem[t + 128] = mem[_133 + 128]
                mem[t + 160] = mem[_133 + 160]
                if mem[_133 + 192] >= 3:
                    revert with 0, 33
                mem[t + 192] = mem[_133 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _89 + (224 * _92) + -mem[64] + 64
        mem[64] = _36 + (32 * s) + 256
        mem[_36 + (32 * s) + 32] = 0
        mem[_36 + (32 * s) + 64] = 0
        mem[_36 + (32 * s) + 96] = 0
        mem[_36 + (32 * s) + 128] = 0
        mem[_36 + (32 * s) + 160] = 0
        mem[_36 + (32 * s) + 192] = 0
        mem[_36 + (32 * s) + 224] = 0
        mem[var20001] = _36 + (32 * s) + 32
        t = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_36 + (32 * s) + 32] = 0
            mem[_36 + (32 * s) + 64] = 0
            mem[_36 + (32 * s) + 96] = 0
            mem[_36 + (32 * s) + 128] = 0
            mem[_36 + (32 * s) + 160] = 0
            mem[_36 + (32 * s) + 192] = 0
            mem[_36 + (32 * s) + 224] = 0
            mem[t + 32] = _36 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[96]:
                revert with 0, 50
            if t >= mem[_36]:
                revert with 0, 50
            mem[(32 * t) + _36 + 32] = mem[(32 * t) + 128]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _193 = mem[64]
        mem[mem[64]] = 32
        _199 = mem[_36]
        mem[mem[64] + 32] = mem[_36]
        idx = 0
        s = _36 + 32
        t = mem[64] + 64
        while idx < _199:
            _234 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_234 + 44 len 20]
            mem[t + 64] = mem[_234 + 76 len 20]
            mem[t + 96] = mem[_234 + 96]
            mem[t + 128] = mem[_234 + 128]
            mem[t + 160] = mem[_234 + 160]
            if mem[_234 + 192] >= 3:
                revert with 0, 33
            mem[t + 192] = mem[_234 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _193 + (224 * _199) + -mem[64] + 64
    mem[64] = (32 * stor16.length) + 352
    mem[(32 * stor16.length) + 128] = 0
    mem[(32 * stor16.length) + 160] = 0
    mem[(32 * stor16.length) + 192] = 0
    mem[(32 * stor16.length) + 224] = 0
    mem[(32 * stor16.length) + 256] = 0
    mem[(32 * stor16.length) + 288] = 0
    mem[(32 * stor16.length) + 320] = 0
    mem[var15001] = (32 * stor16.length) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * stor16.length) + 128] = 0
        mem[(32 * stor16.length) + 160] = 0
        mem[(32 * stor16.length) + 192] = 0
        mem[(32 * stor16.length) + 224] = 0
        mem[(32 * stor16.length) + 256] = 0
        mem[(32 * stor16.length) + 288] = 0
        mem[(32 * stor16.length) + 320] = 0
        mem[s + 32] = (32 * stor16.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor16.length:
        if arg1 > 2:
            revert with 0, 33
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        if stor16[idx].field_1536 > 2:
            revert with 0, 33
        if stor16[idx].field_1536 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        _154 = mem[64]
        mem[64] = mem[64] + 224
        mem[_154] = stor16[idx].field_0
        mem[_154 + 32] = stor16[idx].field_256
        mem[_154 + 64] = stor16[idx].field_512
        mem[_154 + 96] = stor16[idx].field_768
        mem[_154 + 128] = stor16[idx].field_1024
        mem[_154 + 160] = stor16[idx].field_1280
        if stor16[idx].field_1536 > 2:
            revert with 0, 33
        mem[_154 + 192] = stor16[idx].field_1536
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _154
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _142 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[96]:
                revert with 0, 50
            if t >= mem[_142]:
                revert with 0, 50
            mem[(32 * t) + _142 + 32] = mem[(32 * t) + 128]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _196 = mem[64]
        mem[mem[64]] = 32
        _200 = mem[_142]
        mem[mem[64] + 32] = mem[_142]
        idx = 0
        s = _142 + 32
        t = mem[64] + 64
        while idx < _200:
            _242 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_242 + 44 len 20]
            mem[t + 64] = mem[_242 + 76 len 20]
            mem[t + 96] = mem[_242 + 96]
            mem[t + 128] = mem[_242 + 128]
            mem[t + 160] = mem[_242 + 160]
            if mem[_242 + 192] >= 3:
                revert with 0, 33
            mem[t + 192] = mem[_242 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _196 + (224 * _200) + -mem[64] + 64
    mem[64] = _142 + (32 * s) + 256
    mem[_142 + (32 * s) + 32] = 0
    mem[_142 + (32 * s) + 64] = 0
    mem[_142 + (32 * s) + 96] = 0
    mem[_142 + (32 * s) + 128] = 0
    mem[_142 + (32 * s) + 160] = 0
    mem[_142 + (32 * s) + 192] = 0
    mem[_142 + (32 * s) + 224] = 0
    mem[var27001] = _142 + (32 * s) + 32
    t = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[_142 + (32 * s) + 32] = 0
        mem[_142 + (32 * s) + 64] = 0
        mem[_142 + (32 * s) + 96] = 0
        mem[_142 + (32 * s) + 128] = 0
        mem[_142 + (32 * s) + 160] = 0
        mem[_142 + (32 * s) + 192] = 0
        mem[_142 + (32 * s) + 224] = 0
        mem[t + 32] = _142 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[96]:
            revert with 0, 50
        if t >= mem[_142]:
            revert with 0, 50
        mem[(32 * t) + _142 + 32] = mem[(32 * t) + 128]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    _267 = mem[64]
    mem[mem[64]] = 32
    _270 = mem[_142]
    mem[mem[64] + 32] = mem[_142]
    idx = 0
    s = _142 + 32
    t = mem[64] + 64
    while idx < _270:
        _280 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_280 + 44 len 20]
        mem[t + 64] = mem[_280 + 76 len 20]
        mem[t + 96] = mem[_280 + 96]
        mem[t + 128] = mem[_280 + 128]
        mem[t + 160] = mem[_280 + 160]
        if mem[_280 + 192] >= 3:
            revert with 0, 33
        mem[t + 192] = mem[_280 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _267 + (224 * _270) + -mem[64] + 64
}

function sub_c504c835(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 3
    if stor16.length > test266151307():
        revert with 0, 65
    mem[96] = stor16.length
    mem[64] = (32 * stor16.length) + 128
    if not stor16.length:
        idx = 0
        s = 0
        while idx < stor16.length:
            if arg2 > 2:
                revert with 0, 33
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = 16
            if stor16[idx].field_1536 > 2:
                revert with 0, 33
            if stor16[idx].field_1536 != arg2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = 16
            if stor16[idx].field_512 != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = 16
            _58 = mem[64]
            mem[64] = mem[64] + 224
            mem[_58] = stor16[idx].field_0
            mem[_58 + 32] = stor16[idx].field_256
            mem[_58 + 64] = stor16[idx].field_512
            mem[_58 + 96] = stor16[idx].field_768
            mem[_58 + 128] = stor16[idx].field_1024
            mem[_58 + 160] = stor16[idx].field_1280
            if stor16[idx].field_1536 > 2:
                revert with 0, 33
            mem[_58 + 192] = stor16[idx].field_1536
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _58
            if 1 > !s:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 0, 65
        _38 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                if t >= mem[96]:
                    revert with 0, 50
                if t >= mem[_38]:
                    revert with 0, 50
                mem[(32 * t) + _38 + 32] = mem[(32 * t) + 128]
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _93 = mem[64]
            mem[mem[64]] = 32
            _96 = mem[_38]
            mem[mem[64] + 32] = mem[_38]
            idx = 0
            s = _38 + 32
            t = mem[64] + 64
            while idx < _96:
                _138 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_138 + 44 len 20]
                mem[t + 64] = mem[_138 + 76 len 20]
                mem[t + 96] = mem[_138 + 96]
                mem[t + 128] = mem[_138 + 128]
                mem[t + 160] = mem[_138 + 160]
                if mem[_138 + 192] >= 3:
                    revert with 0, 33
                mem[t + 192] = mem[_138 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _93 + (224 * _96) + -mem[64] + 64
        mem[64] = _38 + (32 * s) + 256
        mem[_38 + (32 * s) + 32] = 0
        mem[_38 + (32 * s) + 64] = 0
        mem[_38 + (32 * s) + 96] = 0
        mem[_38 + (32 * s) + 128] = 0
        mem[_38 + (32 * s) + 160] = 0
        mem[_38 + (32 * s) + 192] = 0
        mem[_38 + (32 * s) + 224] = 0
        mem[var23001] = _38 + (32 * s) + 32
        u = var23001
        t = var23002
        while t - 1:
            mem[64] = mem[64] + 224
            mem[_38 + (32 * s) + 32] = 0
            mem[_38 + (32 * s) + 64] = 0
            mem[_38 + (32 * s) + 96] = 0
            mem[_38 + (32 * s) + 128] = 0
            mem[_38 + (32 * s) + 160] = 0
            mem[_38 + (32 * s) + 192] = 0
            mem[_38 + (32 * s) + 224] = 0
            mem[u + 32] = _38 + (32 * s) + 32
            u = u + 32
            t = t - 1
            continue 
        t = 0
        while t < s:
            if t >= mem[96]:
                revert with 0, 50
            if t >= mem[_38]:
                revert with 0, 50
            mem[(32 * t) + _38 + 32] = mem[(32 * t) + 128]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _205 = mem[_38]
        mem[mem[64] + 32] = mem[_38]
        s = 0
        t = _38 + 32
        u = mem[64] + 64
        while s < _205:
            _240 = mem[t]
            mem[u] = mem[mem[t] + 12 len 20]
            mem[u + 32] = mem[_240 + 44 len 20]
            mem[u + 64] = mem[_240 + 76 len 20]
            mem[u + 96] = mem[_240 + 96]
            mem[u + 128] = mem[_240 + 128]
            mem[u + 160] = mem[_240 + 160]
            if mem[_240 + 192] >= 3:
                revert with 0, 33
            mem[u + 192] = mem[_240 + 192]
            s = s + 1
            t = t + 32
            u = u + 224
            continue 
        return memory
          from mem[64]
           len _199 + (224 * _205) + -mem[64] + 64
    mem[64] = (32 * stor16.length) + 352
    mem[(32 * stor16.length) + 128] = 0
    mem[(32 * stor16.length) + 160] = 0
    mem[(32 * stor16.length) + 192] = 0
    mem[(32 * stor16.length) + 224] = 0
    mem[(32 * stor16.length) + 256] = 0
    mem[(32 * stor16.length) + 288] = 0
    mem[(32 * stor16.length) + 320] = 0
    mem[var18001] = (32 * stor16.length) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * stor16.length) + 128] = 0
        mem[(32 * stor16.length) + 160] = 0
        mem[(32 * stor16.length) + 192] = 0
        mem[(32 * stor16.length) + 224] = 0
        mem[(32 * stor16.length) + 256] = 0
        mem[(32 * stor16.length) + 288] = 0
        mem[(32 * stor16.length) + 320] = 0
        mem[s + 32] = (32 * stor16.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < stor16.length:
        if arg2 > 2:
            revert with 0, 33
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        if stor16[idx].field_1536 > 2:
            revert with 0, 33
        if stor16[idx].field_1536 != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        if stor16[idx].field_512 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        _178 = mem[64]
        mem[64] = mem[64] + 224
        mem[_178] = stor16[idx].field_0
        mem[_178 + 32] = stor16[idx].field_256
        mem[_178 + 64] = stor16[idx].field_512
        mem[_178 + 96] = stor16[idx].field_768
        mem[_178 + 128] = stor16[idx].field_1024
        mem[_178 + 160] = stor16[idx].field_1280
        if stor16[idx].field_1536 > 2:
            revert with 0, 33
        mem[_178 + 192] = stor16[idx].field_1536
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _178
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _147 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            if t >= mem[96]:
                revert with 0, 50
            if t >= mem[_147]:
                revert with 0, 50
            mem[(32 * t) + _147 + 32] = mem[(32 * t) + 128]
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_147]
        mem[mem[64] + 32] = mem[_147]
        idx = 0
        s = _147 + 32
        t = mem[64] + 64
        while idx < _206:
            _248 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_248 + 44 len 20]
            mem[t + 64] = mem[_248 + 76 len 20]
            mem[t + 96] = mem[_248 + 96]
            mem[t + 128] = mem[_248 + 128]
            mem[t + 160] = mem[_248 + 160]
            if mem[_248 + 192] >= 3:
                revert with 0, 33
            mem[t + 192] = mem[_248 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _202 + (224 * _206) + -mem[64] + 64
    mem[64] = _147 + (32 * s) + 256
    mem[_147 + (32 * s) + 32] = 0
    mem[_147 + (32 * s) + 64] = 0
    mem[_147 + (32 * s) + 96] = 0
    mem[_147 + (32 * s) + 128] = 0
    mem[_147 + (32 * s) + 160] = 0
    mem[_147 + (32 * s) + 192] = 0
    mem[_147 + (32 * s) + 224] = 0
    mem[var30001] = _147 + (32 * s) + 32
    u = var30001
    t = var30002
    while t - 1:
        mem[64] = mem[64] + 224
        mem[_147 + (32 * s) + 32] = 0
        mem[_147 + (32 * s) + 64] = 0
        mem[_147 + (32 * s) + 96] = 0
        mem[_147 + (32 * s) + 128] = 0
        mem[_147 + (32 * s) + 160] = 0
        mem[_147 + (32 * s) + 192] = 0
        mem[_147 + (32 * s) + 224] = 0
        mem[u + 32] = _147 + (32 * s) + 32
        u = u + 32
        t = t - 1
        continue 
    t = 0
    while t < s:
        if t >= mem[96]:
            revert with 0, 50
        if t >= mem[_147]:
            revert with 0, 50
        mem[(32 * t) + _147 + 32] = mem[(32 * t) + 128]
        if t == -1:
            revert with 0, 17
        t = t + 1
        continue 
    _273 = mem[64]
    mem[mem[64]] = 32
    _276 = mem[_147]
    mem[mem[64] + 32] = mem[_147]
    s = 0
    t = _147 + 32
    u = mem[64] + 64
    while s < _276:
        _286 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        mem[u + 32] = mem[_286 + 44 len 20]
        mem[u + 64] = mem[_286 + 76 len 20]
        mem[u + 96] = mem[_286 + 96]
        mem[u + 128] = mem[_286 + 128]
        mem[u + 160] = mem[_286 + 160]
        if mem[_286 + 192] >= 3:
            revert with 0, 33
        mem[u + 192] = mem[_286 + 192]
        s = s + 1
        t = t + 32
        u = u + 224
        continue 
    return memory
      from mem[64]
       len _273 + (224 * _276) + -mem[64] + 64
}



}
