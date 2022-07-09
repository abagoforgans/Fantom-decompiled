contract main {




// =====================  Runtime code  =====================


const sub_0e83a5a7(?) = 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d

const isStrictOnSummonerClass = 1


uint256 stor0;
address owner;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint256 stor12;
address sub_4f33a4eaAddress;
uint256 price;
mapping of uint256 stor15;
mapping of uint256 class;

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

function class(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return class[arg1]
}

function sub_4f33a4ea(?) {
    return sub_4f33a4eaAddress
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

function price() {
    return price
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
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

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Withdrawal failed'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor7[stor4[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'tokenURI: nonexistent token'
    mem[0] = arg1
    mem[96] = 0x92cb829d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = stor15[arg1]
    require ext_code.size(sub_4f33a4eaAddress)
    staticcall sub_4f33a4eaAddress.tokenURI(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, stor15[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_8 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        _23 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _9
        mem[mem[64] + 64 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
        if ceil32(_9) <= _9:
            return Array(len=_9, data=mem[mem[64] + 64 len ceil32(_9)])
        mem[mem[64] + _9 + 64] = 0
        return memory
          from mem[64]
           len _23 + ceil32(_9) + -mem[64] + 64
    mem[ceil32(return_data.size) + _9 + 128] = 0
    _24 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    mem[mem[64] + 64 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        return Array(len=_9, data=mem[mem[64] + 64 len ceil32(_9)])
    mem[mem[64] + _9 + 64] = 0
    return memory
      from mem[64]
       len _24 + ceil32(_9) + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor7[stor4[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor9[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the FTM transfer amount is under the price'
    if block.number < 1:
        revert with 'NH{q', 17
    mem[128] = block.hash(block.number - 1)
    mem[160] = stor12
    mem[96] = 64
    mem[64] = 192
    idx = 0
    while idx < arg1:
        if sha3(block.hash(block.number - 1), stor12) % 11 > -idx - 1:
            revert with 'NH{q', 17
        if (sha3(block.hash(block.number - 1), stor12) % 11) + idx % 11 > -2:
            revert with 'NH{q', 17
        if block.number < 1:
            revert with 'NH{q', 17
        _106 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = stor12
        _107 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _109 = sha3(mem[_107 + 32 len mem[_107]])
        stor12++
        mem[64] = _106 + 128
        mem[_106 + 96] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor11[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor12
            stor9[stor12] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor11[stor12] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor11[stor12]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor12]
            stor11[stor12] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor12] = msg.sender
        emit Transfer(0, msg.sender, stor12);
        if ext_code.size(msg.sender) > 0:
            mem[_106 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[_106 + 132] = msg.sender
            mem[_106 + 164] = 0
            mem[_106 + 196] = stor12
            mem[_106 + 228] = 128
            mem[_106 + 260] = 0
            s = 0
            while s < 0:
                mem[_106 + s + 292] = mem[_106 + s + 128]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor12, 128, 0
            mem[_106 + 128] = ext_call.return_data[0]
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
            mem[64] = _106 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        stor15[stor12] = _109
        mem[0] = stor12
        mem[32] = 16
        class[stor12] = ((sha3(block.hash(block.number - 1), stor12) % 11) + idx % 11) + 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_f41327ca(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if price and ('cd', 4).length > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * ('cd', 4).length:
        revert with 0, 'the FTM transfer amount is under the price'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _522 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args _522
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _526 = mem[_525]
        require mem[_525] == mem[_525 + 12 len 20]
        if msg.sender == mem[_525 + 12 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _529 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x3613a9f4 with:
                 gas gas_remaining wei
                args _529
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _535 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _536 = mem[_535]
            require mem[_535] == mem[_535]
            if block.number < 1:
                revert with 'NH{q', 17
            _542 = mem[64]
            mem[mem[64] + 32] = block.hash(block.number - 1)
            mem[mem[64] + 64] = stor12
            _548 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _550 = sha3(mem[_548 + 32 len mem[_548]])
            stor12++
            mem[64] = _542 + 128
            mem[_542 + 96] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12]:
                revert with 0, 'ERC721: token already minted'
            stor11[stor12] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor12
                stor9[stor12] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, stor12);
                if ext_code.size(msg.sender) <= 0:
                    stor15[stor12] = _550
                    mem[0] = stor12
                    mem[32] = 16
                    class[stor12] = _536
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _618 = mem[(32 * idx) + 128]
                    mem[_542 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                    mem[_542 + 132] = stor12
                    mem[_542 + 164] = _618
                    require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                    call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor12, _618
                else:
                    mem[_542 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_542 + 132] = msg.sender
                    mem[_542 + 164] = 0
                    mem[_542 + 196] = stor12
                    mem[_542 + 228] = 128
                    mem[_542 + 260] = 0
                    s = 0
                    while s < 0:
                        mem[_542 + s + 292] = mem[_542 + s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
                    mem[_542 + 128] = ext_call.return_data[0]
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
                    mem[64] = _542 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor15[stor12] = _550
                    mem[0] = stor12
                    mem[32] = 16
                    class[stor12] = _536
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1077 = mem[(32 * idx) + 128]
                    mem[_542 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                    mem[_542 + ceil32(return_data.size) + 132] = stor12
                    mem[_542 + ceil32(return_data.size) + 164] = _1077
                    require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                    call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor12, _1077
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor11[stor12] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor11[stor12]] = tokenByIndex[tokenByIndex.length]
                stor11[stor10[stor10.length]] = stor11[stor12]
                stor11[stor12] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, stor12);
                if ext_code.size(msg.sender) <= 0:
                    stor15[stor12] = _550
                    mem[0] = stor12
                    mem[32] = 16
                    class[stor12] = _536
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _629 = mem[(32 * idx) + 128]
                    mem[_542 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                    mem[_542 + 132] = stor12
                    mem[_542 + 164] = _629
                    require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                    call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor12, _629
                else:
                    mem[_542 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[_542 + 132] = msg.sender
                    mem[_542 + 164] = 0
                    mem[_542 + 196] = stor12
                    mem[_542 + 228] = 128
                    mem[_542 + 260] = 0
                    s = 0
                    while s < 0:
                        mem[_542 + s + 292] = mem[_542 + s + 128]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
                    mem[_542 + 128] = ext_call.return_data[0]
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
                    mem[64] = _542 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    stor15[stor12] = _550
                    mem[0] = stor12
                    mem[32] = 16
                    class[stor12] = _536
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1080 = mem[(32 * idx) + 128]
                    mem[_542 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                    mem[_542 + ceil32(return_data.size) + 132] = stor12
                    mem[_542 + ceil32(return_data.size) + 164] = _1080
                    require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                    call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor12, _1080
        else:
            mem[mem[64] + 4] = _522
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args _522
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_532] == mem[_532 + 12 len 20]
            if mem[_532 + 12 len 20] == msg.sender:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _539 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x3613a9f4 with:
                     gas gas_remaining wei
                    args _539
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _544 = mem[_543]
                require mem[_543] == mem[_543]
                if block.number < 1:
                    revert with 'NH{q', 17
                _556 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = stor12
                _568 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _570 = sha3(mem[_568 + 32 len mem[_568]])
                stor12++
                mem[64] = _556 + 128
                mem[_556 + 96] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                stor11[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor12
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor12
                    stor9[stor12] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        stor15[stor12] = _570
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _544
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _657 = mem[(32 * idx) + 128]
                        mem[_556 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_556 + 132] = stor12
                        mem[_556 + 164] = _657
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _657
                    else:
                        mem[_556 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_556 + 132] = msg.sender
                        mem[_556 + 164] = 0
                        mem[_556 + 196] = stor12
                        mem[_556 + 228] = 128
                        mem[_556 + 260] = 0
                        s = 0
                        while s < 0:
                            mem[_556 + s + 292] = mem[_556 + s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
                        mem[_556 + 128] = ext_call.return_data[0]
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
                        mem[64] = _556 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor15[stor12] = _570
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _544
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1083 = mem[(32 * idx) + 128]
                        mem[_556 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_556 + ceil32(return_data.size) + 132] = stor12
                        mem[_556 + ceil32(return_data.size) + 164] = _1083
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _1083
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor11[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor11[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor11[stor10[stor10.length]] = stor11[stor12]
                    stor11[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        stor15[stor12] = _570
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _544
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _684 = mem[(32 * idx) + 128]
                        mem[_556 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_556 + 132] = stor12
                        mem[_556 + 164] = _684
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _684
                    else:
                        mem[_556 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_556 + 132] = msg.sender
                        mem[_556 + 164] = 0
                        mem[_556 + 196] = stor12
                        mem[_556 + 228] = 128
                        mem[_556 + 260] = 0
                        s = 0
                        while s < 0:
                            mem[_556 + s + 292] = mem[_556 + s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
                        mem[_556 + 128] = ext_call.return_data[0]
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
                        mem[64] = _556 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor15[stor12] = _570
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _544
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1086 = mem[(32 * idx) + 128]
                        mem[_556 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_556 + ceil32(return_data.size) + 132] = stor12
                        mem[_556 + ceil32(return_data.size) + 164] = _1086
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _1086
            else:
                mem[mem[64] + 4] = address(_526)
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                        gas gas_remaining wei
                       args address(_526), msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_546] == bool(mem[_546])
                if not mem[_546]:
                    revert with 0, 'You must be owner or approved for this summoner'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _553 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
                call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x3613a9f4 with:
                     gas gas_remaining wei
                    args _553
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _563 = mem[_562]
                require mem[_562] == mem[_562]
                if block.number < 1:
                    revert with 'NH{q', 17
                _587 = mem[64]
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = stor12
                _605 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _607 = sha3(mem[_605 + 32 len mem[_605]])
                stor12++
                mem[64] = _587 + 128
                mem[_587 + 96] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                stor11[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor12
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = stor12
                    stor9[stor12] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        stor15[stor12] = _607
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _563
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _777 = mem[(32 * idx) + 128]
                        mem[_587 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_587 + 132] = stor12
                        mem[_587 + 164] = _777
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _777
                    else:
                        mem[_587 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_587 + 132] = msg.sender
                        mem[_587 + 164] = 0
                        mem[_587 + 196] = stor12
                        mem[_587 + 228] = 128
                        mem[_587 + 260] = 0
                        s = 0
                        while s < 0:
                            mem[_587 + s + 292] = mem[_587 + s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
                        mem[_587 + 128] = ext_call.return_data[0]
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
                        mem[64] = _587 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor15[stor12] = _607
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _563
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1089 = mem[(32 * idx) + 128]
                        mem[_587 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_587 + ceil32(return_data.size) + 132] = stor12
                        mem[_587 + ceil32(return_data.size) + 164] = _1089
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _1089
                else:
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor11[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor11[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor11[stor10[stor10.length]] = stor11[stor12]
                    stor11[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        stor15[stor12] = _607
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _563
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _807 = mem[(32 * idx) + 128]
                        mem[_587 + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_587 + 132] = stor12
                        mem[_587 + 164] = _807
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _807
                    else:
                        mem[_587 + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[_587 + 132] = msg.sender
                        mem[_587 + 164] = 0
                        mem[_587 + 196] = stor12
                        mem[_587 + 228] = 128
                        mem[_587 + 260] = 0
                        s = 0
                        while s < 0:
                            mem[_587 + s + 292] = mem[_587 + s + 128]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
                        mem[_587 + 128] = ext_call.return_data[0]
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
                        mem[64] = _587 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        stor15[stor12] = _607
                        mem[0] = stor12
                        mem[32] = 16
                        class[stor12] = _563
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1092 = mem[(32 * idx) + 128]
                        mem[_587 + ceil32(return_data.size) + 128] = 0xa7c6ee00000000000000000000000000000000000000000000000000000000
                        mem[_587 + ceil32(return_data.size) + 132] = stor12
                        mem[_587 + ceil32(return_data.size) + 164] = _1092
                        require ext_code.size(0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d)
                        call 0xffdfc7286c2c8d0a94f99c5e00da1851564f8c1d.trustedAssignSkinToSummoner(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor12, _1092
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
}



}
