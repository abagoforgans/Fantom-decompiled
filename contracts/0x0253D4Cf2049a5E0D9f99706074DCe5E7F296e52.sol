contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const getChainId = chainid

const ERC712_VERSION = '1', 0


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
uint256 domainSeperator;
address owner;
address stor14;
uint256 currentTokenId;
array of struct stor16;
uint256 MAX_SUPPLY;
uint256 basePrice;
mapping of uint8 stor19;

function currentTokenId() {
    return currentTokenId
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function minted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)].field_0
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function MAX_SUPPLY() {
    return MAX_SUPPLY
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function owner() {
    return owner
}

function basePrice() {
    return basePrice
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setProxyRegistry(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0, 'Ownable: new owner is the zero address'
    ('bool', ('param', 'arg1'))
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stor14)
    staticcall stor14.proxies(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor14:
        if ext_call.return_data[12 len 20] != arg2:
            return bool(stor5[address(arg1)][address(arg2)])
    else:
        if ext_call.return_data[12 len 20] != arg2:
            require ext_code.size(stor14)
            staticcall stor14.proxies(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != arg2:
                return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[ceil32(ceil32(arg1.length)) + calldata.size + 109 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mintTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if currentTokenId > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor15 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor15 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = currentTokenId + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = currentTokenId + 1
        stor7[stor15 + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor15 + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor15 + 1]
        stor9[stor15 + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor15 + 1] = arg1
    emit Transfer(0, arg1, currentTokenId + 1);
    if currentTokenId == -1:
        revert with 'NH{q', 17
    currentTokenId++
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if this.address != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC721: approve to caller'
        if this.address != msg.sender:
            stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor5[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], arg1);
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)].field_0, address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)].field_0 > -2:
        revert with 'NH{q', 17
    nonce[address(arg1)].field_0++
    mem[ceil32(ceil32(arg2.length)) + 675] = 96
    mem[ceil32(ceil32(arg2.length)) + 707] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + 739 len ceil32(arg2.length)] = arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 739] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 663 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask((8 * -ceil32(arg2.length) + arg2.length + 32) - 96, 0, arg1) << 96, mem[ceil32(ceil32(arg2.length)) + arg2.length + 675 len floor32(arg2.length + 51) + -arg2.length - 32]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[ceil32(ceil32(arg2.length)) + (2 * arg2.length) + 683] = 0
    call this.address.mem[ceil32(ceil32(arg2.length)) + arg2.length + 663 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + arg2.length + 667 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseTokenURI() {
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length.field_1), data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if this.address != msg.sender:
        if msg.sender == ownerOf[arg2]:
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if this.address != msg.sender:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if not stor5[stor2[arg2]][address(msg.sender)]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if not stor5[stor2[arg2]][address(msg.sender)]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                        if not stor5[stor2[arg2]][address(mem[calldata.size + 96])]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                            if not stor5[stor2[arg2]][address(mem[calldata.size + 96])]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] != ownerOf[arg2]:
            if this.address != msg.sender:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if not stor5[stor2[arg2]][address(msg.sender)]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            if not stor5[stor2[arg2]][address(msg.sender)]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg2]
                if not stor14:
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                        if not stor5[stor2[arg2]][address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                else:
                    mem[(2 * ceil32(calldata.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 164] = ownerOf[arg2]
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg2]
                        mem[(2 * ceil32(calldata.size)) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                            if not stor5[stor2[arg2]][address(mem[ceil32(calldata.size) + calldata.size + 128])]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
        approved[arg2] = arg1
        if not ownerOf[arg2]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if this.address != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[arg3]:
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
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == msg.sender:
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
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        if not stor5[stor2[arg3]][address(msg.sender)]:
                            revert with 0, 'ERC721: transfer caller is not owner nor approved'
                else:
                    if ext_call.return_data[12 len 20] != msg.sender:
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg3]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
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
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if mem[calldata.size + 108 len 20] != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != mem[calldata.size + 108 len 20]:
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                        if not stor5[stor2[arg3]][address(mem[calldata.size + 96])]:
                            revert with 0, 'ERC721: transfer caller is not owner nor approved'
                else:
                    if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg3]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != mem[calldata.size + 108 len 20]:
                            if not stor5[stor2[arg3]][address(mem[calldata.size + 96])]:
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
                    revert with 'NH{q', 17
                if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[arg3] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[arg3]
            stor9[arg3] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function mint() payable {
    if currentTokenId > -2:
        revert with 'NH{q', 17
    if basePrice != msg.value:
        revert with 0, 'Incorrect ETH Amount'
    if currentTokenId + 1 >= MAX_SUPPLY:
        revert with 0, 'Sold out'
    if this.address != msg.sender:
        if stor19[address(msg.sender)]:
            revert with 0, 'Already bought'
        if this.address != msg.sender:
            stor19[address(msg.sender)] = 1
            if currentTokenId == -1:
                revert with 'NH{q', 17
            currentTokenId++
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, currentTokenId + 1);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if not mem[calldata.size + 108 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if mem[calldata.size + 108 len 20]:
                    tokenOfOwnerByIndex[address(mem[calldata.size + 96])][stor3[address(mem[calldata.size + 96])]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(mem[calldata.size + 96])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[calldata.size + 96])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[calldata.size + 96])]++
                ownerOf[stor15 + 1] = mem[calldata.size + 108 len 20]
                emit Transfer(0, mem[calldata.size + 108 len 20], currentTokenId + 1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor19[mem[calldata.size + 108 len 20]] = 1
            if currentTokenId == -1:
                revert with 'NH{q', 17
            currentTokenId++
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, currentTokenId + 1);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(calldata.size) + calldata.size + 128])][stor3[address(mem[ceil32(calldata.size) + calldata.size + 128])]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]++
                ownerOf[stor15 + 1] = mem[ceil32(calldata.size) + calldata.size + 140 len 20]
                emit Transfer(0, mem[ceil32(calldata.size) + calldata.size + 140 len 20], currentTokenId + 1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if stor19[mem[calldata.size + 108 len 20]]:
            revert with 0, 'Already bought'
        if this.address != msg.sender:
            stor19[address(msg.sender)] = 1
            if currentTokenId == -1:
                revert with 'NH{q', 17
            currentTokenId++
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, currentTokenId + 1);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if mem[ceil32(calldata.size) + calldata.size + 140 len 20]:
                    tokenOfOwnerByIndex[address(mem[ceil32(calldata.size) + calldata.size + 128])][stor3[address(mem[ceil32(calldata.size) + calldata.size + 128])]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[ceil32(calldata.size) + calldata.size + 128])]++
                ownerOf[stor15 + 1] = mem[ceil32(calldata.size) + calldata.size + 140 len 20]
                emit Transfer(0, mem[ceil32(calldata.size) + calldata.size + 140 len 20], currentTokenId + 1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor19[mem[ceil32(calldata.size) + calldata.size + 140 len 20]] = 1
            if currentTokenId == -1:
                revert with 'NH{q', 17
            currentTokenId++
            if this.address != msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, currentTokenId + 1);
            else:
                mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                if not mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor15 + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor15 + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = currentTokenId + 1
                if mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]:
                    tokenOfOwnerByIndex[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])][stor3[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])]] = currentTokenId + 1
                    stor7[stor15 + 1] = balanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])]
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor15 + 1] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor15 + 1]
                    stor9[stor15 + 1] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if balanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(mem[(2 * ceil32(calldata.size)) + calldata.size + 160])]++
                ownerOf[stor15 + 1] = mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20]
                emit Transfer(0, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], currentTokenId + 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            else:
                if 31 >= stor16.length.field_1:
                    mem[128] = 256 * stor16.length.field_8
                else:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) > stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor16.length.field_1
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) > stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
        else:
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor16.length.field_1:
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    if 31 >= stor16.length.field_1:
        mem[128] = 256 * stor16.length.field_8
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) > stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    mem[128] = uint256(stor16.field_0)
    idx = 128
    s = 0
    while stor16.length.field_1 + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor16.length.field_1) + 128] = s
    if s:
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]:
        return Array(len=mem[ceil32(stor16.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160])]), 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + mem[ceil32(stor16.length.field_1) + ceil32(s) + 160] + 256] = 0
    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]) + 32], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if this.address != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[arg3]:
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
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg3], 0, arg3);
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2) > 0:
                if this.address != msg.sender:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                else:
                    mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                    mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
        else:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == msg.sender:
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
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
            else:
                mem[ceil32(ceil32(arg4.length)) + 101] = ownerOf[arg3]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != msg.sender:
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
                                revert with 'NH{q', 17
                            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[arg3] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[arg3]
                        stor9[arg3] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if this.address != msg.sender:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 97] = calldata.size
                            mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129 len calldata.size] = call.data[0 len calldata.size]
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                else:
                    if ext_call.return_data[12 len 20] == msg.sender:
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
                                    revert with 'NH{q', 17
                                if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[arg3] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[arg3]
                            stor9[arg3] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if this.address != msg.sender:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            else:
                                mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 97] = calldata.size
                                mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129 len calldata.size] = call.data[0 len calldata.size]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 101] = ownerOf[arg3]
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg3]
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
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
                                    revert with 'NH{q', 17
                                if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[arg3] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[arg3]
                            stor9[arg3] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if this.address != msg.sender:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            else:
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 97] = calldata.size
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 129 len calldata.size] = call.data[0 len calldata.size]
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + calldata.size + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
    else:
        mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20] == ownerOf[arg3]:
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
                        revert with 'NH{q', 17
                    if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[arg3] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[arg3]
                stor9[arg3] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg3], 0, arg3);
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]--
            if balanceOf[address(arg2)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2) > 0:
                if this.address != msg.sender:
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                else:
                    mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 129] = calldata.size
                    mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 197] = arg1
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 229] = arg3
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 261] = 128
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 293] = arg4.length
                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                    if ceil32(arg4.length) > arg4.length:
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + arg4.length + 325] = 0
                    require ext_code.size(arg2)
                    call arg2.0x150b7a02 with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
        else:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] == mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
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
                            revert with 'NH{q', 17
                        if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[arg3] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[arg3]
                    stor9[arg3] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if this.address != msg.sender:
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 129] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 197] = arg1
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 229] = arg3
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 261] = 128
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 293] = arg4.length
                        mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                        if ceil32(arg4.length) > arg4.length:
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + arg4.length + 325] = 0
                        require ext_code.size(arg2)
                        call arg2.0x150b7a02 with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
            else:
                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 133] = ownerOf[arg3]
                require ext_code.size(stor14)
                staticcall stor14.proxies(address arg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not stor14:
                    if ext_call.return_data[12 len 20] != mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
                        if not stor5[stor2[arg3]][address(mem[ceil32(ceil32(arg4.length)) + calldata.size + 97])]:
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
                                revert with 'NH{q', 17
                            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[arg3] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[arg3]
                        stor9[arg3] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    approved[arg3] = 0
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[arg3], 0, arg3);
                    if balanceOf[address(arg1)] < 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)]--
                    if balanceOf[address(arg2)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)]++
                    ownerOf[arg3] = arg2
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if this.address != msg.sender:
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                        else:
                            mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 129] = calldata.size
                            mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 197] = arg1
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 229] = arg3
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 261] = 128
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 293] = arg4.length
                            mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                            if ceil32(arg4.length) > arg4.length:
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + arg4.length + 325] = 0
                            require ext_code.size(arg2)
                            call arg2.0x150b7a02 with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                else:
                    if ext_call.return_data[12 len 20] == mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
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
                                    revert with 'NH{q', 17
                                if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[arg3] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[arg3]
                            stor9[arg3] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if this.address != msg.sender:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            else:
                                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 129] = calldata.size
                                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 197] = arg1
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 229] = arg3
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 261] = 128
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 293] = arg4.length
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                                if ceil32(arg4.length) > arg4.length:
                                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + arg4.length + 325] = 0
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 133] = ownerOf[arg3]
                        require ext_code.size(stor14)
                        staticcall stor14.proxies(address arg1) with:
                                gas gas_remaining wei
                               args ownerOf[arg3]
                        mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != mem[ceil32(ceil32(arg4.length)) + calldata.size + 109 len 20]:
                            if not stor5[stor2[arg3]][address(mem[ceil32(ceil32(arg4.length)) + calldata.size + 97])]:
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
                                    revert with 'NH{q', 17
                                if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor9[arg3] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[arg3]
                            stor9[arg3] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[arg3] = 0
                        if not ownerOf[arg3]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[arg3], 0, arg3);
                        if balanceOf[address(arg1)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)]--
                        if balanceOf[address(arg2)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)]++
                        ownerOf[arg3] = arg2
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if this.address != msg.sender:
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                            else:
                                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 129] = calldata.size
                                mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + 161 len calldata.size] = call.data[0 len calldata.size]
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 197] = arg1
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 229] = arg3
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 293] = arg4.length
                                mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + 325 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
                                if ceil32(arg4.length) > arg4.length:
                                    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + (2 * ceil32(return_data.size)) + arg4.length + 325] = 0
                                require ext_code.size(arg2)
                                call arg2.0x150b7a02 with:
                                     gas gas_remaining wei
                                    args mem[ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + (2 * ceil32(return_data.size)) + calldata.size + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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



}
