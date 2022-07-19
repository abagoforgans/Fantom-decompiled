contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const getChainId = chainid

const baseTokenURI = 'https://ipfs.io/ipfs/', 0

const contractURI = 32, 59, 0xfe68747470733a2f2f6372656174757265732d6170692e6f70656e7365612e696f2f636f6e74726163742f6f70656e7365612d6372656174757265, mem[187 len 5] >> 216, 0

const ERC712_VERSION = '', 0


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
uint256 stor15;
mapping of struct stor16;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if msg.sender != this.address:
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
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        if msg.sender == arg1:
            revert with 0, 'ERC721: approve to caller'
        stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 'ERC721: approve to caller'
        stor5[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, mem[calldata.size + 108 len 20], arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 21
    mem[128] = 'https://ipfs.io/ipfs/' << 88
    mem[192] = 'https://ipfs.io/ipfs/' << 88
    mem[213] = 0
    if stor16[arg1].field_0:
        if stor16[arg1].field_0 == uint255(stor16[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not stor16[arg1].field_0:
            mem[213] = Mask(248, 8, stor16[arg1].field_0)
        else:
            if stor16[arg1].field_0 != 1:
                mem[64] = 0
                _112 = mem[160]
                mem[64 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_112) > _112:
                    mem[_112 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_112) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < uint255(stor16[arg1].field_0) * 0.5:
                mem[idx + 213] = stor16[arg1][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[(uint255(stor16[arg1].field_0) * 0.5) + 213] = 32
        mem[(uint255(stor16[arg1].field_0) * 0.5) + 245] = mem[160]
        mem[(uint255(stor16[arg1].field_0) * 0.5) + 277 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + (uint255(stor16[arg1].field_0) * 0.5) + 277] = 0
        return Array(len=mem[160], data=mem[(uint255(stor16[arg1].field_0) * 0.5) + 277 len ceil32(mem[160])])
    if stor16[arg1].field_0 == stor16[arg1].field_1 < 32:
        revert with 0, 34
    if not stor16[arg1].field_0:
        mem[213] = Mask(248, 8, stor16[arg1].field_0)
    else:
        if stor16[arg1].field_0 != 1:
            mem[64] = 0
            _118 = mem[160]
            mem[64 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_118) > _118:
                mem[_118 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_118) + -mem[64] + 64
        idx = 0
        s = 0
        while idx < stor16[arg1].field_1:
            mem[idx + 213] = stor16[arg1][s].field_0
            idx = idx + 32
            s = s + 1
            continue 
    mem[stor16[arg1].field_1 + 213] = 32
    mem[stor16[arg1].field_1 + 245] = mem[160]
    mem[stor16[arg1].field_1 + 277 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(mem[160]) > mem[160]:
        mem[mem[160] + stor16[arg1].field_1 + 277] = 0
    return Array(len=mem[160], data=mem[stor16[arg1].field_1 + 277 len ceil32(mem[160])])
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg5 == arg5
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0x734d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)].field_0, address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)].field_0 > -2:
        revert with 0, 17
    nonce[address(arg1)].field_0++
    mem[ceil32(ceil32(arg2.length)) + 675] = 96
    mem[ceil32(ceil32(arg2.length)) + 707] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + 739 len ceil32(arg2.length)] = arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 739] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 663 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask((8 * -ceil32(arg2.length) + arg2.length + 32) - 96, 0, arg1) << 96, mem[ceil32(ceil32(arg2.length)) + arg2.length + 675 len floor32(arg2.length + 51) + -arg2.length - 32]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + 683] = 0
    call this.address.mem[arg2.length + ceil32(ceil32(arg2.length)) + 663 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(ceil32(arg2.length)) + 667 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function mintTo(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[ceil32(ceil32(arg2.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg2.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + ceil32(ceil32(arg2.length)) + 109 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if stor15 > -2:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor15 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor15 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor15 + 1
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor15 + 1
            stor7[stor15 + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor15 + 1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor15 + 1]
        stor9[stor15 + 1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor15 + 1] = arg1
    emit Transfer(0, arg1, stor15 + 1);
    if stor16[stor15 + 1].field_0:
        if stor16[stor15 + 1].field_0 == uint255(stor16[stor15 + 1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor16[stor15 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor16[stor15 + 1].field_0 = 0
            idx = 0
            while (uint255(stor16[stor15 + 1].field_0) * 0.5) + 31 / 32 > idx:
                stor16[stor15 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor16[stor15 + 1].field_0 == stor16[stor15 + 1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor16[stor15 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor16[stor15 + 1].field_0 = 0
            idx = 0
            while stor16[stor15 + 1].field_1 + 31 / 32 > idx:
                stor16[stor15 + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor15 == -1:
        revert with 0, 17
    stor15++
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if msg.sender != this.address:
        if msg.sender == ownerOf[arg2]:
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if msg.sender != this.address:
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
            if msg.sender != this.address:
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                    if not stor5[stor2[arg2]][address(mem[calldata.size + ceil32(calldata.size) + 128])]:
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
    if msg.sender != this.address:
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
            else:
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
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 2))))
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if msg.sender != this.address:
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
                if msg.sender != this.address:
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                else:
                    mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                    mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(ceil32(arg4.length)) + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + 97] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg4.length)) + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                    else:
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 97] = calldata.size
                        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129 len calldata.size] = call.data[0 len calldata.size]
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 109 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
        if mem[calldata.size + ceil32(ceil32(arg4.length)) + 109 len 20] == ownerOf[arg3]:
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
                if msg.sender != this.address:
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                        mem[arg4.length + ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325] = 0
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
            if approved[arg3] == mem[calldata.size + ceil32(ceil32(arg4.length)) + 109 len 20]:
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
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                            mem[arg4.length + ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + 325] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
                if ext_call.return_data[12 len 20] != mem[calldata.size + ceil32(ceil32(arg4.length)) + 109 len 20]:
                    if not stor5[stor2[arg3]][address(mem[calldata.size + ceil32(ceil32(arg4.length)) + 97])]:
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
                    if msg.sender != this.address:
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                            mem[arg4.length + ceil32(ceil32(arg4.length)) + (2 * ceil32(calldata.size)) + ceil32(return_data.size) + 325] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg4.length)) + ceil32(calldata.size) + ceil32(return_data.size) + 141 len 20], address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
