contract main {




// =====================  Runtime code  =====================


const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '', 0

const NOT_CURRENT_OWNER = '', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
array of uint256 contractURI;
mapping of bool tokenURI;
mapping of bool tokenPayload;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor13;
address owner;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, '', 0
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0, '', 0
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, '', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '', 0
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function tokenPayload(uint256 arg1) payable {
    return uint256(tokenPayload[arg1][0 len tokenPayload[arg1].length])
}

function getOwnerNFTCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function tokenURI(uint256 arg1) payable {
    return uint256(tokenURI[arg1][0 len tokenURI[arg1].length])
}

function contractURI() payable {
    return contractURI[0 len contractURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][msg.sender]:
            revert with 0, '', 0
    if not ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2] == arg1:
        revert with 0, '', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function updateTokenUri(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if owner != msg.sender:
        revert with 0, '', 0
    uint256(tokenURI[arg1][]) = Array(len=arg2.length, data=arg2[all])
}

function changeName(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '', 0
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
}

function mint(address arg1, uint256 arg2, string arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    if ownerOf[arg2]:
        revert with 0, '', 0
    if ownerOf[arg2]:
        revert with 0, '', 0
    ownerOf[arg2] = arg1
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor13[arg2] = tokenOfOwnerByIndex[address(arg1)] - 1
    emit Transfer(0, arg1, arg2);
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    stor11[arg2] = tokenByIndex.length - 1
    if not ownerOf[arg2]:
        revert with 0, '', 0
    uint256(tokenURI[arg2][]) = Array(len=arg3.length, data=arg3[all])
    if not ownerOf[arg2]:
        revert with 0, '', 0
    uint256(tokenPayload[arg2][]) = Array(len=arg4.length, data=arg4[all])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = 0
    if stor13[arg3] != tokenOfOwnerByIndex[stor1[arg3]] - 1:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor13[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor13[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor13[stor12[stor1[arg3]][stor12[stor1[arg3]]]] = stor13[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function updateContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 6
    if owner != msg.sender:
        revert with 0, '', 0
    if not bool(contractURI.length):
        emit UpdatedContractURI(string rg1, string rg2):
                                64,
                                128,
                                contractURI.length % 128,
                                Mask(248, 8, contractURI.length),
                                arg1.length,
                                arg1[all],
                                mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length],
    else:
        if bool(contractURI.length) != 1:
            emit UpdatedContractURI(string rg1, string rg2):
                                    mem[ceil32(arg1.length) + 192 len -160],
        else:
            idx = 0
            s = 0
            while idx < contractURI.length.field_1:
                mem[idx + ceil32(arg1.length) + 288] = contractURI[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(arg1.length) + ceil32(contractURI.length.field_1) + 288] = arg1.length
            emit UpdatedContractURI(Array(len=2 * Mask(256, -1, contractURI.length.field_1), data=mem[ceil32(arg1.length) + 288 len ceil32(contractURI.length.field_1) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256), ceil32(contractURI.length.field_1) + 96);
    contractURI[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ownerOf[arg1] != msg.sender:
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg1]:
        revert with 0, '', 0
    if approved[arg1]:
        approved[arg1] = 0
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, '', 0
    ownerOf[arg1] = 0
    if stor13[arg1] != tokenOfOwnerByIndex[stor1[arg1]] - 1:
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor13[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor13[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        stor13[stor12[stor1[arg1]][stor12[stor1[arg1]]]] = stor13[arg1]
    require tokenOfOwnerByIndex[stor1[arg1]]
    tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]] = 0
    tokenOfOwnerByIndex[stor1[arg1]]--
    emit Transfer(ownerOf[arg1], 0, arg1);
    if Mask(255, 1, uint256(tokenURI[arg1]) and (256 * not bool(tokenURI[arg1])) - 1):
        uint256(tokenURI[arg1]) = 0
        if 31 < tokenURI[arg1].length:
            idx = 0
            while tokenURI[arg1].length + 31 / 32 > idx:
                uint256(tokenURI[arg1][idx]) = 0
                idx = idx + 1
                continue 
    if Mask(255, 1, uint256(tokenPayload[arg1]) and (256 * not bool(tokenPayload[arg1])) - 1):
        uint256(tokenPayload[arg1]) = 0
        if 31 < tokenPayload[arg1].length:
            idx = 0
            while tokenPayload[arg1].length + 31 / 32 > idx:
                uint256(tokenPayload[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor11[arg1] < tokenByIndex.length
    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
    require tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    stor11[stor10[stor10.length]] = stor11[arg1]
    stor11[arg1] = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = 0
    if stor13[arg3] != tokenOfOwnerByIndex[stor1[arg3]] - 1:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor13[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor13[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor13[stor12[stor1[arg3]][stor12[stor1[arg3]]]] = stor13[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][msg.sender]:
                revert with 0, '', 0
    if not ownerOf[arg3]:
        revert with 0, '', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '', 0
    if not arg2:
        revert with 0, '', 0
    if approved[arg3]:
        approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = 0
    if stor13[arg3] != tokenOfOwnerByIndex[stor1[arg3]] - 1:
        require tokenOfOwnerByIndex[stor1[arg3]] - 1 < tokenOfOwnerByIndex[stor1[arg3]]
        require stor13[arg3] < tokenOfOwnerByIndex[stor1[arg3]]
        tokenOfOwnerByIndex[stor1[arg3]][stor13[arg3]] = tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]]
        stor13[stor12[stor1[arg3]][stor12[stor1[arg3]]]] = stor13[arg3]
    require tokenOfOwnerByIndex[stor1[arg3]]
    tokenOfOwnerByIndex[stor1[arg3]][tokenOfOwnerByIndex[stor1[arg3]]] = 0
    tokenOfOwnerByIndex[stor1[arg3]]--
    if ownerOf[arg3]:
        revert with 0, '', 0
    ownerOf[arg3] = arg2
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)] - 1
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '', 0
}



}
