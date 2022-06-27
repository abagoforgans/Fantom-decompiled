contract main {




// =====================  Runtime code  =====================


#
#  - getBoxes()
#  - getBoxById(uint256 arg1)
#  - getBoxByCoordinates(uint16 arg1, uint16 arg2)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint8 stor10; offset 160
address owner;
uint256 stor11;
uint256 stor12;
uint256 currentLockPrice;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address currentAdminAddress;
address currentFundDAOAddress;
address stor19;
array of uint256 stor20;
uint256 stor21;
array of uint256 stor22;
mapping of struct stor23;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;
array of struct stor97789825912453899259273410636466998099043528421815129078110847000656284369546;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369579;
array of struct stor97789825912453899259273410636466998099043528421815129078110847000656284369580;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getCurrentLockPrice() {
    return currentLockPrice
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor10)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function getCurrentAdmin() {
    return currentAdminAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getCurrentFundDAO() {
    return currentFundDAOAddress
}

function owner() {
    return owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
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

function getCurrentPrice() {
    if stor21 and stor12 > -1 / stor21:
        revert with 0, 17
    if stor11 > !(stor21 * stor12):
        revert with 0, 17
    return (stor11 + (stor21 * stor12))
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor10 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10:
        revert with 0, 'Pausable: not paused'
    revert with 0, 'Pausable: paused'
}

function updateMaxY(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor16 = arg1
}

function updateMaxX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor15 = arg1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function updateIncreasePriceFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor12 = arg1
}

function updateLockPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    currentLockPrice = arg1
}

function updatePreviousVersion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor19 = arg1
}

function sub_a6cc1441(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    currentFundDAOAddress = address(arg1)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function updateAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    currentAdminAddress = arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function lockBox(uint16 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor10:
        revert with 0, 'Pausable: paused'
    if not ownerOf[stor23[arg1 << 240][arg2 << 240].field_0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[stor23[arg1 << 240][arg2 << 240].field_0] != msg.sender:
        revert with 0, 'Must own the Box'
    if currentLockPrice != msg.value:
        revert with 0, 'Must match the price'
    if uint8(stor23[arg1 << 240][arg2 << 240].field_256):
        revert with 0, 'The box is already locked'
    uint8(stor23[arg1 << 240][arg2 << 240].field_256) = 1
    call currentAdminAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call currentFundDAOAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit BoxLocked(msg.sender, arg1, arg2);
    return bool(uint8(stor23[arg1 << 240][arg2 << 240].field_256))
}

function updateBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    if bool(stor20.length):
        if bool(stor20.length) == uint255(stor20.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while (uint255(stor20.length) * 0.5) + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20.length) == stor20.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor20[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor20.length = 0
            idx = 0
            while stor20.length.field_1 % 128 + 31 / 32 > idx:
                stor20[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_03c65c4f(?) {
    require calldata.size - 4 >= 8256
    require cd[4] == uint16(cd[4])
    require cd[36] == uint16(cd[36])
    require calldata.size > 99
    mem[64] = 608
    require 8260 <= calldata.size
    idx = 68
    s = 96
    while idx < 8260:
        require idx + 31 < calldata.size
        _3 = mem[64]
        if mem[64] + 512 < mem[64] or mem[64] + 512 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 512
        require idx + 512 <= calldata.size
        t = idx
        u = _3
        while t < idx + 512:
            require cd[t] == uint32(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _3
        idx = idx + 512
        s = s + 32
        continue 
    if stor10:
        revert with 0, 'Pausable: paused'
    if not ownerOf[stor23[cd[4] << 240][cd[36] << 240].field_0]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[stor23[cd[4] << 240][cd[36] << 240].field_0] != msg.sender:
        revert with 0, 'Must own the Box'
    if uint8(stor23[cd[4] << 240][cd[36] << 240].field_256):
        revert with 0, 'The box cannot be updated anymore'
    mem[0] = uint16(cd[36])
    mem[32] = sha3(cd[4] << 240, 23)
    s = 2
    idx = 96
    while 608 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 512 > u:
            stor23[cd[4] << 240][cd[36] << 240][s].field_0 = mem[u + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor23[cd[4] << 240][cd[36] << 240][s].field_0
            t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
            u = u + 32
            continue 
        u = t
        v = s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23))
        while u:
            stor[v] = !(test266151307() * 256^u) and stor[v]
            u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
            v = (u + 7 / 32) + v
            continue 
        u = s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + (t + Mask(252, 2, None + -t + 5) + 7 / 32 * Mask(254, 0, None + -t + 5) >> 2)
        while s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + 2 > u:
            stor[u] = 0
            u = u + 1
            continue 
        s = s + 2
        idx = idx + 32
        continue 
    idx = s
    while sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + 34 > idx:
        stor[idx] = 0
        stor1[idx].field_0 = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx <= stor22.length:
        mem[32] = sha3(cd[4] << 240, 23)
        if idx >= stor22.length:
            revert with 0, 50
        mem[0] = 22
        if stor22[idx] != stor23[cd[4] << 240][cd[36] << 240].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor22.length:
            revert with 0, 50
        mem[0] = 22
        t = (36 * idx) + sha3(22) + 2
        s = 96
        while 608 > s:
            u = 0
            v = mem[s]
            while mem[s] + 512 > v:
                stor[t] = mem[v + 28 len 4] * 256^u or !(test266151307() * 256^u) and stor[t]
                u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
                v = v + 32
                continue 
            idx = u
            v = t
            while idx:
                stor[v] = !(test266151307() * 256^idx) and stor[v]
                idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
                v = (idx + 7 / 32) + v
                continue 
            v = t + (u + Mask(252, 2, None + -u + 5) + 7 / 32 * Mask(254, 0, None + -u + 5) >> 2)
            while t + 2 > v:
                stor[v] = 0
                v = v + 1
                continue 
            t = t + 2
            s = s + 32
            continue 
        s = t
        while (36 * idx) + sha3(22) + 34 > s:
            stor[s] = 0
            stor1[s].field_0 = 0
            s = s + 2
            continue 
        emit BoxUpdated(msg.sender, uint16(cd[4]), uint16(cd[36]));
    emit BoxUpdated(msg.sender, uint16(cd[4]), uint16(cd[36]));
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_4d33b456(?) payable {
    require calldata.size - 4 >= 8256
    require cd[4] == uint16(cd[4])
    require cd[36] == uint16(cd[36])
    require calldata.size > 99
    mem[64] = 608
    require 8260 <= calldata.size
    idx = 68
    s = 96
    while idx < 8260:
        require idx + 31 < calldata.size
        _3 = mem[64]
        if mem[64] + 512 < mem[64] or mem[64] + 512 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 512
        require idx + 512 <= calldata.size
        t = idx
        u = _3
        while t < idx + 512:
            require cd[t] == uint32(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _3
        idx = idx + 512
        s = s + 32
        continue 
    if stor10:
        revert with 0, 'Pausable: paused'
    if stor21 and stor12 > -1 / stor21:
        revert with 0, 17
    if stor11 > !(stor21 * stor12):
        revert with 0, 17
    if msg.value < stor11 + (stor21 * stor12):
        revert with 0, 'Value not matched'
    if uint16(cd[4]) > 27:
        revert with 0, 'There is no room for more boxes'
    if uint16(cd[36]) > 27:
        revert with 0, 'There is no room for more boxes'
    mem[0] = uint16(cd[36])
    mem[32] = sha3(cd[4] << 240, 23)
    if address(stor23[cd[4] << 240][cd[36] << 240].field_8704):
        revert with 0, 'The box already exists'
    _14 = mem[64]
    mem[64] = mem[64] + 224
    mem[_14] = stor21
    mem[_14 + 32] = 0
    mem[_14 + 64] = uint16(cd[4])
    mem[_14 + 96] = uint16(cd[36])
    mem[_14 + 128] = 96
    mem[_14 + 160] = msg.sender
    mem[_14 + 192] = 0
    mem[0] = uint16(cd[36])
    mem[32] = sha3(cd[4] << 240, 23)
    stor23[cd[4] << 240][cd[36] << 240].field_0 = stor21
    uint8(stor23[cd[4] << 240][cd[36] << 240].field_256) = 0
    uint16(stor23[cd[4] << 240][cd[36] << 240].field_264) = uint16(cd[4])
    uint16(stor23[cd[4] << 240][cd[36] << 240].field_280) = uint16(cd[36])
    Mask(216, 0, stor23[cd[4] << 240][cd[36] << 240].field_296) = 0
    s = 2
    idx = 96
    while 608 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 512 > u:
            stor23[cd[4] << 240][cd[36] << 240][s].field_0 = mem[u + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor23[cd[4] << 240][cd[36] << 240][s].field_0
            t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
            u = u + 32
            continue 
        u = t
        v = s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23))
        while u:
            stor[v] = !(test266151307() * 256^u) and stor[v]
            u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
            v = (u + 7 / 32) + v
            continue 
        u = s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + (t + Mask(252, 2, None + -t + 5) + 7 / 32 * Mask(254, 0, None + -t + 5) >> 2)
        while s + sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + 2 > u:
            stor[u] = 0
            u = u + 1
            continue 
        s = s + 2
        idx = idx + 32
        continue 
    idx = s
    while sha3(cd[36] << 240, sha3(cd[4] << 240, 23)) + 34 > idx:
        stor[idx] = 0
        stor1[idx].field_0 = 0
        idx = idx + 2
        continue 
    address(stor23[cd[4] << 240][cd[36] << 240].field_8704) = msg.sender
    address(stor23[cd[4] << 240][cd[36] << 240].field_8960) = 0
    stor23[cd[4] << 240][cd[36] << 240].field_9216 % 1 = 0
    stor22.length++
    mem[0] = 22
    storD833[stor22.length] = stor21
    uint8(storD833[stor22.length].field_0) = 0
    uint16(storD833[stor22.length].field_8) = uint16(cd[4])
    uint16(storD833[stor22.length].field_24) = uint16(cd[36])
    Mask(216, 0, storD833[stor22.length].field_40) = 0
    s = (36 * stor22.length) - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd75
    idx = 96
    while 608 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 512 > u:
            stor[s] = mem[u + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor[s]
            t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
            u = u + 32
            continue 
        u = t
        v = s
        while u:
            stor[v] = !(test266151307() * 256^u) and stor[v]
            u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
            v = (u + 7 / 32) + v
            continue 
        u = s + (t + Mask(252, 2, None + -t + 5) + 7 / 32 * Mask(254, 0, None + -t + 5) >> 2)
        while s + 2 > u:
            stor[u] = 0
            u = u + 1
            continue 
        s = s + 2
        idx = idx + 32
        continue 
    idx = s
    while (36 * stor22.length) - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd55 > idx:
        stor[idx] = 0
        stor1[idx].field_0 = 0
        idx = idx + 2
        continue 
    storD833[stor22.length] = msg.sender
    address(storD833[stor22.length].field_0) = 0
    storD833[stor22.length].field_256 % 1 = 0
    if stor21 >= stor14:
        revert with 0, 'There is no room for more boxes'
    stor21++
    _742 = mem[64]
    mem[64] = mem[64] + 32
    mem[_742] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor21]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor21] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor21
    if msg.sender:
        if not msg.sender:
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor21
            mem[32] = 2
            ownerOf[stor21] = msg.sender
            emit Transfer(0, msg.sender, stor21);
            if ext_code.size(msg.sender):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor21
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor21, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_918] == Mask(32, 224, mem[_918])
                if Mask(32, 224, mem[_918]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor21
            stor7[stor21] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor21
            mem[32] = 2
            ownerOf[stor21] = msg.sender
            emit Transfer(0, msg.sender, stor21);
            if ext_code.size(msg.sender):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor21
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor21, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _920 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_920] == Mask(32, 224, mem[_920])
                if Mask(32, 224, mem[_920]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor21] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor21]
        stor9[stor21] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor21
        mem[32] = 2
        ownerOf[stor21] = msg.sender
        emit Transfer(0, msg.sender, stor21);
        if ext_code.size(msg.sender):
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor21
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor21, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_922] == Mask(32, 224, mem[_922])
            if Mask(32, 224, mem[_922]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    call currentAdminAddress with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call currentFundDAOAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit BoxCreated(msg.sender, stor21);
    return stor21
}

function migrateBox(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10:
        revert with 0, 'Pausable: paused'
    if arg1 > 27:
        revert with 0, 'There is no room for more boxes'
    if arg2 > 27:
        revert with 0, 'There is no room for more boxes'
    mem[0] = arg2
    mem[32] = sha3(arg1 << 240, 23)
    if address(stor23[arg1 << 240][arg2 << 240].field_8704):
        revert with 0, 'The box already exists'
    require ext_code.size(stor19)
    staticcall stor19.0xa8d35632 with:
            gas gas_remaining wei
           args arg1 << 240, arg2
    mem[96 len 8384] = ext_call.return_data[0 len 8384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 8384
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[94 len 2]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    require 255 < return_data.size + 96
    if not bool(ceil32(return_data.size) + 832 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 832
    require 8320 <= return_data.size
    idx = 224
    s = ceil32(return_data.size) + 320
    while idx < 8416:
        require idx + 31 < return_data.size + 96
        _197 = mem[64]
        if mem[64] + 512 < mem[64] or mem[64] + 512 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 512
        require idx + 512 <= return_data.size + 96
        t = idx
        u = _197
        while t < idx + 512:
            require mem[t] == mem[t + 28 len 4]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _197
        idx = idx + 512
        s = s + 32
        continue 
    mem[ceil32(return_data.size) + 224] = ceil32(return_data.size) + 320
    require mem[8416] == mem[8428 len 20]
    mem[ceil32(return_data.size) + 256] = mem[8416]
    require mem[8448] == mem[8460 len 20]
    mem[ceil32(return_data.size) + 288] = mem[8448]
    _200 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 4] = mem[ceil32(return_data.size) + 96]
    require ext_code.size(stor19)
    staticcall stor19.0x6352211e with:
            gas gas_remaining wei
           args _200
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _203 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _204 = mem[_203]
    require mem[_203] == mem[_203 + 12 len 20]
    _205 = mem[64]
    mem[64] = mem[64] + 224
    mem[_205] = stor21
    mem[_205 + 32] = 0
    mem[_205 + 64] = arg1
    mem[_205 + 96] = arg2
    mem[_205 + 128] = ceil32(return_data.size) + 320
    mem[_205 + 160] = mem[ceil32(return_data.size) + 268 len 20]
    mem[_205 + 192] = mem[ceil32(return_data.size) + 300 len 20]
    mem[0] = arg2
    mem[32] = sha3(arg1 << 240, 23)
    stor23[arg1 << 240][arg2 << 240].field_0 = stor21
    uint8(stor23[arg1 << 240][arg2 << 240].field_256) = 0
    uint16(stor23[arg1 << 240][arg2 << 240].field_264) = arg1
    uint16(stor23[arg1 << 240][arg2 << 240].field_280) = arg2
    s = 2
    idx = ceil32(return_data.size) + 320
    while ceil32(return_data.size) + 832 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 512 > u:
            stor23[arg1 << 240][arg2 << 240][s].field_0 = mem[u + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor23[arg1 << 240][arg2 << 240][s].field_0
            t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
            u = u + 32
            continue 
        u = t
        v = s + sha3(arg2 << 240, sha3(arg1 << 240, 23))
        while u:
            stor[v] = !(test266151307() * 256^u) and stor[v]
            u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
            v = (u + 7 / 32) + v
            continue 
        u = s + sha3(arg2 << 240, sha3(arg1 << 240, 23)) + (t + Mask(252, 2, None + -t + 5) + 7 / 32 * Mask(254, 0, None + -t + 5) >> 2)
        while s + sha3(arg2 << 240, sha3(arg1 << 240, 23)) + 2 > u:
            stor[u] = 0
            u = u + 1
            continue 
        s = s + 2
        idx = idx + 32
        continue 
    idx = s
    while sha3(arg2 << 240, sha3(arg1 << 240, 23)) + 34 > idx:
        stor[idx] = 0
        stor1[idx].field_0 = 0
        idx = idx + 2
        continue 
    address(stor23[arg1 << 240][arg2 << 240].field_8704) = mem[_205 + 172 len 20]
    address(stor23[arg1 << 240][arg2 << 240].field_8960) = mem[_205 + 204 len 20]
    stor22.length++
    mem[0] = 22
    storD833[stor22.length] = stor21
    uint8(storD833[stor22.length].field_0) = 0
    uint16(storD833[stor22.length].field_8) = arg1
    uint16(storD833[stor22.length].field_24) = arg2
    Mask(216, 0, storD833[stor22.length].field_40) = 0
    s = (36 * stor22.length) - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd75
    idx = ceil32(return_data.size) + 320
    while ceil32(return_data.size) + 832 > idx:
        t = 0
        u = mem[idx]
        while mem[idx] + 512 > u:
            stor[s] = mem[u + 28 len 4] * 256^t or !(test266151307() * 256^t) and stor[s]
            t = t + (4 * -t + 7 / 32) + (-1 * t * t + 7 / 32) + 4
            u = u + 32
            continue 
        u = t
        v = s
        while u:
            stor[v] = !(test266151307() * 256^u) and stor[v]
            u = u + (4 * -u + 7 / 32) + (-1 * u * u + 7 / 32) + 4
            v = (u + 7 / 32) + v
            continue 
        u = s + (t + Mask(252, 2, None + -t + 5) + 7 / 32 * Mask(254, 0, None + -t + 5) >> 2)
        while s + 2 > u:
            stor[u] = 0
            u = u + 1
            continue 
        s = s + 2
        idx = idx + 32
        continue 
    idx = s
    while (36 * stor22.length) - 0x27cceb82823caa45ba60387709961a73050623da2232f8fd178296384aedbd55 > idx:
        stor[idx] = 0
        stor1[idx].field_0 = 0
        idx = idx + 2
        continue 
    storD833[stor22.length] = mem[_205 + 172 len 20]
    address(storD833[stor22.length].field_0) = mem[_205 + 204 len 20]
    if stor21 >= stor14:
        revert with 0, 'There is no room for more boxes'
    stor21++
    _827 = mem[64]
    mem[64] = mem[64] + 32
    mem[_827] = 0
    if not address(_204):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor21]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor21] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor21
    if address(_204):
        if not address(_204):
            if balanceOf[address(_204)] > -2:
                revert with 0, 17
            balanceOf[address(_204)]++
            mem[0] = stor21
            mem[32] = 2
            ownerOf[stor21] = address(_204)
            emit Transfer(0, address(_204), stor21);
            if ext_code.size(address(_204)):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor21
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164 len 0] = None
                require ext_code.size(address(_204))
                call address(_204).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor21, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_976] == Mask(32, 224, mem[_976])
                if Mask(32, 224, mem[_976]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not address(_204):
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(_204)][stor3[address(_204)]] = stor21
            stor7[stor21] = balanceOf[address(_204)]
            if balanceOf[address(_204)] > -2:
                revert with 0, 17
            balanceOf[address(_204)]++
            mem[0] = stor21
            mem[32] = 2
            ownerOf[stor21] = address(_204)
            emit Transfer(0, address(_204), stor21);
            if ext_code.size(address(_204)):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor21
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164 len 0] = None
                require ext_code.size(address(_204))
                call address(_204).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor21, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _978 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_978] == Mask(32, 224, mem[_978])
                if Mask(32, 224, mem[_978]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor21] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor21]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor21]
        stor9[stor21] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        if balanceOf[address(_204)] > -2:
            revert with 0, 17
        balanceOf[address(_204)]++
        mem[0] = stor21
        mem[32] = 2
        ownerOf[stor21] = address(_204)
        emit Transfer(0, address(_204), stor21);
        if ext_code.size(address(_204)):
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor21
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164 len 0] = None
            require ext_code.size(address(_204))
            call address(_204).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor21, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _980 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_980] == Mask(32, 224, mem[_980])
            if Mask(32, 224, mem[_980]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    emit BoxMigrated(address(_204), msg.sender, arg1, arg2);
}



}
