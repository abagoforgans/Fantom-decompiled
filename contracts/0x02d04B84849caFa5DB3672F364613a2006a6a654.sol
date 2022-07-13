contract main {




// =====================  Runtime code  =====================


const contractURI = 32, 80, 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d5a6b755675327a37717a615233697646624d55467144574e3178414846437a415579684779474743773639, mem[208 len 16] >> 384, 0


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
address adminAddress;
uint256 nextCollectionId;
uint256 nextTokenId;
mapping of struct stor13;
mapping of struct stor14;
mapping of uint256 sub_75c10ffa;
array of struct sub_94244890;
mapping of address sub_21494e22;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_21494e22(?) {
    require calldata.size - 4 >= 32
    return sub_21494e22[arg1]
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function nextTokenId() {
    return nextTokenId
}

function sub_75c10ffa(?) {
    require calldata.size - 4 >= 32
    return sub_75c10ffa[arg1]
}

function sub_94244890(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_94244890[arg1].field_0
    return sub_94244890[arg1][arg2].field_0
}

function nextCollectionId() {
    return nextCollectionId
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function pauseCollection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    stor14[arg1].field_1024 = not stor14[arg1].field_1024 or Mask(248, 8, stor14[arg1].field_1024)
}

function lockCollection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    if stor14[arg1].field_1032:
        revert with 0, 'Only unlocked collections'
    stor14[arg1].field_1032 = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function viewAllCollectionTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_94244890[arg1].field_0:
        mem[128] = sub_94244890[arg1].field_0
        idx = 128
        s = 0
        while (32 * sub_94244890[arg1].field_0) + 96 > idx:
            mem[idx + 32] = sub_94244890[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_94244890[arg1].field_0, data=mem[128 len 32 * sub_94244890[arg1].field_0])
    mem[(32 * sub_94244890[arg1].field_0) + 128] = 32
    mem[(32 * sub_94244890[arg1].field_0) + 160] = sub_94244890[arg1].field_0
    mem[(32 * sub_94244890[arg1].field_0) + 192 len 32 * sub_94244890[arg1].field_0] = mem[128 len 32 * sub_94244890[arg1].field_0]
    return memory
      from (32 * sub_94244890[arg1].field_0) + 128
       len (96 * sub_94244890[arg1].field_0) + 64
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

function sub_fc23d74f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if stor14[arg2].field_1032:
        revert with 0, 'Only unlocked collections'
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    if stor13[arg2].field_0:
        if stor13[arg2].field_0 == stor13[arg2].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13[arg2].field_0 = 0
            idx = 0
            while stor13[arg2].field_1 + 31 / 32 > idx:
                stor13[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor13[arg2].field_0 == stor13[arg2].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13[arg2].field_0 = 0
            idx = 0
            while stor13[arg2].field_1 + 31 / 32 > idx:
                stor13[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_468e50e9(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if adminAddress != msg.sender:
        revert with 0, 'Only admin'
    if stor14[stor11].field_0:
        if stor14[stor11].field_0 == stor14[stor11].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor11].field_0 = 0
            idx = 0
            while stor14[stor11].field_1 + 31 / 32 > idx:
                stor14[stor11][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor14[stor11].field_0 == stor14[stor11].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14[stor11].field_0 = 0
            idx = 0
            while stor14[stor11].field_1 + 31 / 32 > idx:
                stor14[stor11][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor14[stor11].field_256 = arg2
    stor14[stor11].field_768 = arg3
    stor14[stor11].field_1024 = 1
    if 1 > !nextCollectionId:
        revert with 0, 17
    nextCollectionId++
}

function purchaseTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.value < stor14[arg2].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must send at least current price for token'
    if 1 > !stor14[arg2].field_512:
        revert with 0, 17
    if stor14[arg2].field_512 + 1 > stor14[arg2].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must not exceed maximum invocations'
    if stor14[arg2].field_1024:
        if adminAddress != msg.sender:
            revert with 0, 'Purchases must not be paused'
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if 1 > !stor14[arg2].field_512:
        revert with 0, 17
    stor14[arg2].field_512++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = nextTokenId
            stor7[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor12] = arg1
    emit Transfer(0, arg1, nextTokenId);
    sub_75c10ffa[stor12] = arg2
    sub_94244890[arg2].field_0++
    sub_94244890[arg2][sub_94244890[arg2].field_0].field_0 = nextTokenId
    sub_21494e22[stor12] = arg1
    emit Mint(stor14[arg2].field_512, stor14[arg2].field_256, arg1, nextTokenId, arg2);
    if msg.value:
        if msg.value < stor14[arg2].field_256:
            revert with 0, 17
        if not msg.value - stor14[arg2].field_256:
            call adminAddress with:
               value stor14[arg2].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - stor14[arg2].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call adminAddress with:
               value stor14[arg2].field_256 wei
                 gas 2300 * is_zero(value) wei
    return nextTokenId
}

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < stor14[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must send at least current price for token'
    if 1 > !stor14[arg1].field_512:
        revert with 0, 17
    if stor14[arg1].field_512 + 1 > stor14[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must not exceed maximum invocations'
    if stor14[arg1].field_1024:
        if adminAddress != msg.sender:
            revert with 0, 'Purchases must not be paused'
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if 1 > !stor14[arg1].field_512:
        revert with 0, 17
    stor14[arg1].field_512++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId
            stor7[stor12] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12]
        stor9[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor12] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId);
    sub_75c10ffa[stor12] = arg1
    sub_94244890[arg1].field_0++
    sub_94244890[arg1][sub_94244890[arg1].field_0].field_0 = nextTokenId
    sub_21494e22[stor12] = msg.sender
    emit Mint(stor14[arg1].field_512, stor14[arg1].field_256, msg.sender, nextTokenId, arg1);
    if msg.value:
        if msg.value < stor14[arg1].field_256:
            revert with 0, 17
        if not msg.value - stor14[arg1].field_256:
            call adminAddress with:
               value stor14[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - stor14[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call adminAddress with:
               value stor14[arg1].field_256 wei
                 gas 2300 * is_zero(value) wei
    return nextTokenId
}

function viewCollectionDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 0, 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 0, 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_1), data=mem[128 len ceil32(stor14[arg1].field_1)]), 
               stor14[arg1].field_256,
               stor14[arg1].field_512,
               stor14[arg1].field_768,
               bool(stor14[arg1].field_1024),
               bool(stor14[arg1].field_1032)
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 0, 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)]), 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           bool(stor14[arg1].field_1024),
           bool(stor14[arg1].field_1032)
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0, 'Token ID does not exist'
    mem[0] = sub_75c10ffa[arg1]
    mem[32] = 13
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if stor13[stor15[arg1]].field_0:
            if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
                revert with 0, 34
            if not stor13[stor15[arg1]].field_0:
                mem[192] = Mask(248, 8, stor13[stor15[arg1]].field_0)
            else:
                if stor13[stor15[arg1]].field_0 != 1:
                    mem[64] = 7
                    _124 = mem[160]
                    mem[39] = mem[160]
                    mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_124) > _124:
                        mem[_124 + 71] = 0
                    return memory
                      from mem[64]
                       len ceil32(_124) + -mem[64] + 71
                idx = 0
                s = 0
                while idx < stor13[stor15[arg1]].field_1:
                    mem[idx + 192] = stor13[stor15[arg1]][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor13[stor15[arg1]].field_1 + 192] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            mem[stor13[stor15[arg1]].field_1 + 198] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor13[stor15[arg1]].field_1 + 199] = 32
            mem[stor13[stor15[arg1]].field_1 + 231] = mem[160]
            mem[stor13[stor15[arg1]].field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor13[stor15[arg1]].field_1 + 263] = 0
            return Array(len=mem[160], data=mem[stor13[stor15[arg1]].field_1 + 263 len ceil32(mem[160])])
        if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
            revert with 0, 34
        if not stor13[stor15[arg1]].field_0:
            mem[192] = Mask(248, 8, stor13[stor15[arg1]].field_0)
        else:
            if stor13[stor15[arg1]].field_0 != 1:
                mem[64] = 7
                _128 = mem[160]
                mem[39] = mem[160]
                mem[71 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_128) > _128:
                    mem[_128 + 71] = 0
                return memory
                  from mem[64]
                   len ceil32(_128) + -mem[64] + 71
            idx = 0
            s = 0
            while idx < stor13[stor15[arg1]].field_1:
                mem[idx + 192] = stor13[stor15[arg1]][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor13[stor15[arg1]].field_1 + 192] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        mem[stor13[stor15[arg1]].field_1 + 198] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor13[stor15[arg1]].field_1 + 199] = 32
        mem[stor13[stor15[arg1]].field_1 + 231] = mem[160]
        mem[stor13[stor15[arg1]].field_1 + 263 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor13[stor15[arg1]].field_1 + 263] = 0
        return Array(len=mem[160], data=mem[stor13[stor15[arg1]].field_1 + 263 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _361 = mem[64]
        if stor13[stor15[arg1]].field_0:
            if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
                revert with 0, 34
            if not stor13[stor15[arg1]].field_0:
                mem[mem[64] + 32] = Mask(248, 8, stor13[stor15[arg1]].field_0)
                mem[mem[64] + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
                _395 = mem[96]
                mem[_361 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_395) <= _395:
                    _589 = mem[64]
                    mem[64] = _395 + _361 + stor13[stor15[arg1]].field_1 + 38
                    mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
                    _637 = mem[_589]
                    mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_589]
                    mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_637)] = mem[_589 + 32 len ceil32(_637)]
                    if ceil32(_637) > _637:
                        mem[_637 + _395 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
                    return 32, mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_637) + 32]
                mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 38] = 0
                _590 = mem[64]
                mem[64] = _395 + _361 + stor13[stor15[arg1]].field_1 + 38
                mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
                _638 = mem[_590]
                mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_590]
                mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_638)] = mem[_590 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _395 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
                return 32, mem[_395 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_638) + 32]
            if stor13[stor15[arg1]].field_0 != 1:
                mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
                _399 = mem[96]
                mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_399) <= _399:
                    _592 = mem[64]
                    mem[64] = _399 + 6
                    mem[_399 + 6] = 32
                    _639 = mem[_592]
                    mem[_399 + 38] = mem[_592]
                    mem[_399 + 70 len ceil32(_639)] = mem[_592 + 32 len ceil32(_639)]
                    if ceil32(_639) > _639:
                        mem[_639 + _399 + 70] = 0
                    return 32, mem[_399 + 38 len ceil32(_639) + 32]
                mem[_399 + 6] = 0
                _593 = mem[64]
                mem[64] = _399 + 6
                mem[_399 + 6] = 32
                _640 = mem[_593]
                mem[_399 + 38] = mem[_593]
                mem[_399 + 70 len ceil32(_640)] = mem[_593 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _399 + 70] = 0
                return 32, mem[_399 + 38 len ceil32(_640) + 32]
            mem[0] = sha3(sub_75c10ffa[arg1], 13)
            idx = 0
            s = 0
            while idx < stor13[stor15[arg1]].field_1:
                mem[idx + _361 + 32] = stor13[stor15[arg1]][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[_361 + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _591 = mem[96]
            mem[_361 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_591) <= _591:
                _773 = mem[64]
                mem[64] = _591 + _361 + stor13[stor15[arg1]].field_1 + 38
                mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
                _817 = mem[_773]
                mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_773]
                mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_817)] = mem[_773 + 32 len ceil32(_817)]
                if ceil32(_817) > _817:
                    mem[_817 + _591 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
                return 32, mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_817) + 32]
            mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 38] = 0
            _774 = mem[64]
            mem[64] = _591 + _361 + stor13[stor15[arg1]].field_1 + 38
            mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
            _818 = mem[_774]
            mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_774]
            mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_818)] = mem[_774 + 32 len ceil32(_818)]
            if ceil32(_818) > _818:
                mem[_818 + _591 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_591 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_818) + 32]
        if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
            revert with 0, 34
        if not stor13[stor15[arg1]].field_0:
            mem[mem[64] + 32] = Mask(248, 8, stor13[stor15[arg1]].field_0)
            mem[mem[64] + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _400 = mem[96]
            mem[_361 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_400) <= _400:
                _594 = mem[64]
                mem[64] = _400 + _361 + stor13[stor15[arg1]].field_1 + 38
                mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
                _641 = mem[_594]
                mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_594]
                mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_641)] = mem[_594 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_641 + _400 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
                return 32, mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_641) + 32]
            mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 38] = 0
            _595 = mem[64]
            mem[64] = _400 + _361 + stor13[stor15[arg1]].field_1 + 38
            mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
            _642 = mem[_595]
            mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_595]
            mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_642)] = mem[_595 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _400 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_400 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_642) + 32]
        if stor13[stor15[arg1]].field_0 != 1:
            mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _403 = mem[96]
            mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_403) <= _403:
                _597 = mem[64]
                mem[64] = _403 + 6
                mem[_403 + 6] = 32
                _643 = mem[_597]
                mem[_403 + 38] = mem[_597]
                mem[_403 + 70 len ceil32(_643)] = mem[_597 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_643 + _403 + 70] = 0
                return 32, mem[_403 + 38 len ceil32(_643) + 32]
            mem[_403 + 6] = 0
            _598 = mem[64]
            mem[64] = _403 + 6
            mem[_403 + 6] = 32
            _644 = mem[_598]
            mem[_403 + 38] = mem[_598]
            mem[_403 + 70 len ceil32(_644)] = mem[_598 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _403 + 70] = 0
            return 32, mem[_403 + 38 len ceil32(_644) + 32]
        mem[0] = sha3(sub_75c10ffa[arg1], 13)
        idx = 0
        s = 0
        while idx < stor13[stor15[arg1]].field_1:
            mem[idx + _361 + 32] = stor13[stor15[arg1]][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_361 + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _596 = mem[96]
        mem[_361 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_596) <= _596:
            _783 = mem[64]
            mem[64] = _596 + _361 + stor13[stor15[arg1]].field_1 + 38
            mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
            _819 = mem[_783]
            mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_783]
            mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_819)] = mem[_783 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + _596 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_819) + 32]
        mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 38] = 0
        _784 = mem[64]
        mem[64] = _596 + _361 + stor13[stor15[arg1]].field_1 + 38
        mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 38] = 32
        _820 = mem[_784]
        mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 70] = mem[_784]
        mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_820)] = mem[_784 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _596 + _361 + stor13[stor15[arg1]].field_1 + 102] = 0
        return 32, mem[_596 + _361 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_820) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _362 = mem[64]
    if stor13[stor15[arg1]].field_0:
        if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
            revert with 0, 34
        if not stor13[stor15[arg1]].field_0:
            mem[mem[64] + 32] = Mask(248, 8, stor13[stor15[arg1]].field_0)
            mem[mem[64] + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _397 = mem[96]
            mem[_362 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_397) <= _397:
                _599 = mem[64]
                mem[64] = _397 + _362 + stor13[stor15[arg1]].field_1 + 38
                mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
                _645 = mem[_599]
                mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_599]
                mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_645)] = mem[_599 + 32 len ceil32(_645)]
                if ceil32(_645) > _645:
                    mem[_645 + _397 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
                return 32, mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_645) + 32]
            mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 38] = 0
            _600 = mem[64]
            mem[64] = _397 + _362 + stor13[stor15[arg1]].field_1 + 38
            mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
            _646 = mem[_600]
            mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_600]
            mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_646)] = mem[_600 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _397 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_397 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_646) + 32]
        if stor13[stor15[arg1]].field_0 != 1:
            mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
            _401 = mem[96]
            mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_401) <= _401:
                _602 = mem[64]
                mem[64] = _401 + 6
                mem[_401 + 6] = 32
                _647 = mem[_602]
                mem[_401 + 38] = mem[_602]
                mem[_401 + 70 len ceil32(_647)] = mem[_602 + 32 len ceil32(_647)]
                if ceil32(_647) > _647:
                    mem[_647 + _401 + 70] = 0
                return 32, mem[_401 + 38 len ceil32(_647) + 32]
            mem[_401 + 6] = 0
            _603 = mem[64]
            mem[64] = _401 + 6
            mem[_401 + 6] = 32
            _648 = mem[_603]
            mem[_401 + 38] = mem[_603]
            mem[_401 + 70 len ceil32(_648)] = mem[_603 + 32 len ceil32(_648)]
            if ceil32(_648) > _648:
                mem[_648 + _401 + 70] = 0
            return 32, mem[_401 + 38 len ceil32(_648) + 32]
        mem[0] = sha3(sub_75c10ffa[arg1], 13)
        idx = 0
        s = 0
        while idx < stor13[stor15[arg1]].field_1:
            mem[idx + _362 + 32] = stor13[stor15[arg1]][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_362 + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _601 = mem[96]
        mem[_362 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_601) <= _601:
            _793 = mem[64]
            mem[64] = _601 + _362 + stor13[stor15[arg1]].field_1 + 38
            mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
            _821 = mem[_793]
            mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_793]
            mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_821)] = mem[_793 + 32 len ceil32(_821)]
            if ceil32(_821) > _821:
                mem[_821 + _601 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_821) + 32]
        mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 38] = 0
        _794 = mem[64]
        mem[64] = _601 + _362 + stor13[stor15[arg1]].field_1 + 38
        mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
        _822 = mem[_794]
        mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_794]
        mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_822)] = mem[_794 + 32 len ceil32(_822)]
        if ceil32(_822) > _822:
            mem[_822 + _601 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
        return 32, mem[_601 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_822) + 32]
    if stor13[stor15[arg1]].field_0 == stor13[stor15[arg1]].field_1 < 32:
        revert with 0, 34
    if not stor13[stor15[arg1]].field_0:
        mem[mem[64] + 32] = Mask(248, 8, stor13[stor15[arg1]].field_0)
        mem[mem[64] + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _402 = mem[96]
        mem[_362 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_402) <= _402:
            _604 = mem[64]
            mem[64] = _402 + _362 + stor13[stor15[arg1]].field_1 + 38
            mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
            _649 = mem[_604]
            mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_604]
            mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_649)] = mem[_604 + 32 len ceil32(_649)]
            if ceil32(_649) > _649:
                mem[_649 + _402 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
            return 32, mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_649) + 32]
        mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 38] = 0
        _605 = mem[64]
        mem[64] = _402 + _362 + stor13[stor15[arg1]].field_1 + 38
        mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
        _650 = mem[_605]
        mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_605]
        mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_650)] = mem[_605 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _402 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
        return 32, mem[_402 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_650) + 32]
    if stor13[stor15[arg1]].field_0 != 1:
        mem[0] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
        _404 = mem[96]
        mem[6 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_404) <= _404:
            _607 = mem[64]
            mem[64] = _404 + 6
            mem[_404 + 6] = 32
            _651 = mem[_607]
            mem[_404 + 38] = mem[_607]
            mem[_404 + 70 len ceil32(_651)] = mem[_607 + 32 len ceil32(_651)]
            if ceil32(_651) > _651:
                mem[_651 + _404 + 70] = 0
            return 32, mem[_404 + 38 len ceil32(_651) + 32]
        mem[_404 + 6] = 0
        _608 = mem[64]
        mem[64] = _404 + 6
        mem[_404 + 6] = 32
        _652 = mem[_608]
        mem[_404 + 38] = mem[_608]
        mem[_404 + 70 len ceil32(_652)] = mem[_608 + 32 len ceil32(_652)]
        if ceil32(_652) > _652:
            mem[_652 + _404 + 70] = 0
        return 32, mem[_404 + 38 len ceil32(_652) + 32]
    mem[0] = sha3(sub_75c10ffa[arg1], 13)
    idx = 0
    s = 0
    while idx < stor13[stor15[arg1]].field_1:
        mem[idx + _362 + 32] = stor13[stor15[arg1]][s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    mem[_362 + stor13[stor15[arg1]].field_1 + 32] = 0x2f6e6674732f0000000000000000000000000000000000000000000000000000
    _606 = mem[96]
    mem[_362 + stor13[stor15[arg1]].field_1 + 38 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_606) <= _606:
        _803 = mem[64]
        mem[64] = _606 + _362 + stor13[stor15[arg1]].field_1 + 38
        mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
        _823 = mem[_803]
        mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_803]
        mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_823)] = mem[_803 + 32 len ceil32(_823)]
        if ceil32(_823) > _823:
            mem[_823 + _606 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
        return 32, mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_823) + 32]
    mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 38] = 0
    _804 = mem[64]
    mem[64] = _606 + _362 + stor13[stor15[arg1]].field_1 + 38
    mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 38] = 32
    _824 = mem[_804]
    mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 70] = mem[_804]
    mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 102 len ceil32(_824)] = mem[_804 + 32 len ceil32(_824)]
    if ceil32(_824) > _824:
        mem[_824 + _606 + _362 + stor13[stor15[arg1]].field_1 + 102] = 0
    return 32, mem[_606 + _362 + stor13[stor15[arg1]].field_1 + 70 len ceil32(_824) + 32]
}



}
