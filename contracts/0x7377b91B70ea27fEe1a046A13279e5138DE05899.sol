contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
mapping of bool tokenURI;
mapping of uint8 stor12;
address owner;
uint256 sub_786f94c6;
uint256 progressiveId;
uint256 maxSupply;
mapping of struct stor17;

function supportsInterface(bytes4 arg1) {
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_786f94c6(?) {
    return sub_786f94c6
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor12[address(arg1)])
}

function progressiveId() {
    return progressiveId
}

function tokenURI(uint256 arg1) {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function maxSupply() {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isVisible(uint256 arg1) {
    if not ownerOf[arg1]:
        return 0
    return stor17[arg1].field_768 <= block.timestamp, stor17[arg1].field_768
}

function renounceMinter() {
    require msg.sender
    require stor12[address(msg.sender)]
    stor12[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_4d7ab293(?) {
    require msg.sender
    require stor12[address(msg.sender)]
    if arg1 <= sub_786f94c6:
        revert with 0, 'Styles cannot be decreased'
    sub_786f94c6 = arg1
}

function addMinter(address arg1) {
    require msg.sender
    require stor12[address(msg.sender)]
    require arg1
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor4[stor1[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function recoverERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getGift(uint256 arg1) {
    if not ownerOf[arg1]:
        revert with 0, 'Token must exists'
    if block.timestamp < stor17[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Now should be greater than gift date'
    require ownerOf[arg1]
    mem[128] = stor17[arg1][2].field_0
    idx = 128
    s = 0
    while stor17[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor17[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor17[arg1].field_0, 
           stor17[arg1].field_256,
           ownerOf[arg1],
           Array(len=stor17[arg1][2].length, data=mem[128 len stor17[arg1][2].length]),
           stor17[arg1].field_768,
           stor17[arg1].field_1024
}

function sub_568d67e3(?) {
    if progressiveId >= maxSupply:
        revert with 0, 'Max token supply reached'
    require msg.sender
    require stor12[address(msg.sender)]
    if arg5 <= 0:
        revert with 0, 'Date must be greater than zero'
    if arg6 > sub_786f94c6:
        revert with 0, 'Style is not available'
    require progressiveId + 1 >= progressiveId
    require arg3
    require not ownerOf[stor15 + 1]
    ownerOf[stor15 + 1] = arg3
    require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)]++
    tokenOfOwnerByIndex[address(arg3)][tokenOfOwnerByIndex[address(arg3)]] = progressiveId + 1
    stor6[stor15 + 1] = tokenOfOwnerByIndex[address(arg3)]
    emit Transfer(0, arg3, progressiveId + 1);
    stor8[stor15 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = progressiveId + 1
    stor17[stor15 + 1].field_0 = arg1
    stor17[stor15 + 1].field_256 = arg2
    stor17[stor15 + 1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor17[stor15 + 1].field_768 = arg5
    stor17[stor15 + 1].field_1024 = arg6
    progressiveId++
    return (progressiveId + 1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        require ownerOf[arg3]
        if approved[arg3] != msg.sender:
            require stor4[stor1[arg3]][address(msg.sender)]
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = 0
    stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function burn(uint256 arg1) {
    require ownerOf[arg1]
    if owner != msg.sender:
        require ownerOf[arg1] == msg.sender
        if approved[arg1]:
            approved[arg1] = 0
        require ownerOf[arg1]
        require ownerOf[arg1] == msg.sender
        require 1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require stor6[arg1] < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][stor6[arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)]--
        if tokenOfOwnerByIndex[address(msg.sender)] > tokenOfOwnerByIndex[address(msg.sender)] - 1:
            idx = tokenOfOwnerByIndex[address(msg.sender)] - 1
            while tokenOfOwnerByIndex[address(msg.sender)] > idx:
                tokenOfOwnerByIndex[address(msg.sender)][idx] = 0
                idx = idx + 1
                continue 
        stor6[arg1] = 0
        stor6[stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor6[arg1]
        emit Transfer(msg.sender, 0, arg1);
    else:
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        if approved[arg1]:
            approved[arg1] = 0
        require ownerOf[arg1]
        require ownerOf[arg1] == ownerOf[arg1]
        require 1 <= balanceOf[stor1[arg1]]
        balanceOf[stor1[arg1]]--
        ownerOf[arg1] = 0
        require 1 <= tokenOfOwnerByIndex[stor1[arg1]]
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        tokenOfOwnerByIndex[stor1[arg1]]--
        if tokenOfOwnerByIndex[stor1[arg1]] > tokenOfOwnerByIndex[stor1[arg1]] - 1:
            idx = tokenOfOwnerByIndex[stor1[arg1]] - 1
            while tokenOfOwnerByIndex[stor1[arg1]] > idx:
                tokenOfOwnerByIndex[stor1[arg1]][idx] = 0
                idx = idx + 1
                continue 
        stor6[arg1] = 0
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]]]] = stor6[arg1]
        emit Transfer(ownerOf[arg1], 0, arg1);
    require 1 <= tokenByIndex.length
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length - 1 < tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor7.length]] = stor8[arg1]
    if not Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        stor17[arg1].field_0 = 0
        stor17[arg1].field_256 = 0
        stor17[arg1].field_512 = 0
        if 31 < stor17[arg1][2].length:
            idx = 0
            while stor17[arg1][2].length + 31 / 32 > idx:
                stor17[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
        stor17[arg1].field_0 = 0
        stor17[arg1].field_256 = 0
        stor17[arg1].field_512 = 0
        if 31 < stor17[arg1][2].length:
            idx = 0
            while stor17[arg1][2].length + 31 / 32 > idx:
                stor17[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor17[arg1].field_768 = 0
    stor17[arg1].field_1024 = 0
}



}
