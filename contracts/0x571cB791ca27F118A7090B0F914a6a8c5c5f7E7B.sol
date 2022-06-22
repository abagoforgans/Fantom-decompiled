contract main {




// =====================  Runtime code  =====================


#
#  - getSixth(uint256 arg1)
#  - initialize()
#  - tokenURI(uint256 arg1)
#
const MAX_PER_WALLET = 10

const MAX_SUPPLY = 10000

const PRICE = 10^18


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
address owner;
mapping of uint256 record;
array of uint256 stor252;
array of uint256 stor253;
array of uint256 stor254;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

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

function record(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return record[arg1]
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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
        call arg2.0x150b7a02 with:
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
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
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

function symbol() {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function mint() payable {
    mem[64] = 96
    if tx.origin != msg.sender:
        revert with 0, 'no contracts'
    if tokenByIndex.length >= 10000:
        revert with 0, 'sold out'
    mem[0] = msg.sender
    mem[32] = 251
    if record[address(msg.sender)] > !(msg.value / 10^18):
        revert with 0, 17
    if record[address(msg.sender)] + (msg.value / 10^18) >= 10:
        revert with 0, 'too greedy'
    idx = 0
    while idx < msg.value / 10^18:
        _129 = mem[64]
        mem[64] = mem[64] + 32
        mem[_129] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor153.length]:
            revert with 0, 'ERC721: token already minted'
        stor154[stor153.length] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = tokenByIndex.length
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 103
                ownerOf[stor153.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _129 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_259] == Mask(32, 224, mem[_259])
                    if Mask(32, 224, mem[_259]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length
                stor152[stor153.length] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length
                mem[32] = 103
                ownerOf[stor153.length] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _129 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length, 128, 0
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
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_261] == Mask(32, 224, mem[_261])
                    if Mask(32, 224, mem[_261]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor154[stor153.length] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor154[tokenByIndex.length]] = tokenByIndex[tokenByIndex.length]
            stor154[stor153[stor153.length]] = stor154[stor153.length]
            stor154[stor153.length] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenByIndex.length
            mem[32] = 103
            ownerOf[stor153.length] = msg.sender
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _129 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length, 128, 0
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
                _263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_263] == Mask(32, 224, mem[_263])
                if Mask(32, 224, mem[_263]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getFifth(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 5
    mem[128] = 0x4649465448000000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        idx = 192
        s = 0
        while (32 * stor254.length) + 160 > idx:
            mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x4649465448000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 293] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 6
        mem[(32 * stor254.length) + 326] = 0
        mem[(32 * stor254.length) + 332] = 0
        mem[(32 * stor254.length) + 294] = 6
        mem[64] = (32 * stor254.length) + 332
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 332
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x4649465448000000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 5
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len floor32(mem[(32 * stor254.length) + 192] + 36)] = 0, mem[(32 * stor254.length) + ceil32(s) + 261 len floor32(mem[(32 * stor254.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor254.length) + 192] + 36) > mem[(32 * stor254.length) + 192] + 5:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = mem[(32 * stor254.length) + 192] + 5
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
       len 32
}

function getFirst(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 5
    mem[128] = 0x4649525354000000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x4649525354000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 293] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 6
        mem[(32 * stor254.length) + 326] = 0
        mem[(32 * stor254.length) + 332] = 0
        mem[(32 * stor254.length) + 294] = 6
        mem[64] = (32 * stor254.length) + 332
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 332
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x4649525354000000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 5
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len floor32(mem[(32 * stor254.length) + 192] + 36)] = 0, mem[(32 * stor254.length) + ceil32(s) + 261 len floor32(mem[(32 * stor254.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor254.length) + 192] + 36) > mem[(32 * stor254.length) + 192] + 5:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = mem[(32 * stor254.length) + 192] + 5
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
       len 32
}

function getEight(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 5
    mem[128] = 0x4549474854000000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x4549474854000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 293] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 6
        mem[(32 * stor254.length) + 326] = 0
        mem[(32 * stor254.length) + 332] = 0
        mem[(32 * stor254.length) + 294] = 6
        mem[64] = (32 * stor254.length) + 332
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 332
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x4549474854000000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 5
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len floor32(mem[(32 * stor254.length) + 192] + 36)] = 0, mem[(32 * stor254.length) + ceil32(s) + 261 len floor32(mem[(32 * stor254.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor254.length) + 192] + 36) > mem[(32 * stor254.length) + 192] + 5:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = mem[(32 * stor254.length) + 192] + 5
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
       len 32
}

function getThird(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 5
    mem[128] = 0x5448495244000000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x5448495244000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 293] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 6
        mem[(32 * stor254.length) + 326] = 0
        mem[(32 * stor254.length) + 332] = 0
        mem[(32 * stor254.length) + 294] = 6
        mem[64] = (32 * stor254.length) + 332
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 332] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 332] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 332
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x5448495244000000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 261 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 5
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len floor32(mem[(32 * stor254.length) + 192] + 36)] = 0, mem[(32 * stor254.length) + ceil32(s) + 261 len floor32(mem[(32 * stor254.length) + 192] + 36) - 5]
    if floor32(mem[(32 * stor254.length) + 192] + 36) > mem[(32 * stor254.length) + 192] + 5:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 261] = mem[(32 * stor254.length) + 192] + 5
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 293, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 5, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 293 len mem[(32 * stor254.length) + 192] + 5]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 298
       len 32
}

function getSecond(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 6
    mem[128] = 0x5345434f4e440000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x5345434f4e440000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 294] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 7
        mem[(32 * stor254.length) + 327] = 0
        mem[(32 * stor254.length) + 334] = 0
        mem[(32 * stor254.length) + 295] = 7
        mem[64] = (32 * stor254.length) + 334
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 334
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x5345434f4e440000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 6
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len floor32(mem[(32 * stor254.length) + 192] + 37)] = 0, mem[(32 * stor254.length) + ceil32(s) + 262 len floor32(mem[(32 * stor254.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor254.length) + 192] + 37) > mem[(32 * stor254.length) + 192] + 6:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = mem[(32 * stor254.length) + 192] + 6
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
       len 32
}

function getFourth(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 6
    mem[128] = 0x464f555254480000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x464f555254480000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 294] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 7
        mem[(32 * stor254.length) + 327] = 0
        mem[(32 * stor254.length) + 334] = 0
        mem[(32 * stor254.length) + 295] = 7
        mem[64] = (32 * stor254.length) + 334
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 334
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x464f555254480000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 6
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len floor32(mem[(32 * stor254.length) + 192] + 37)] = 0, mem[(32 * stor254.length) + ceil32(s) + 262 len floor32(mem[(32 * stor254.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor254.length) + 192] + 37) > mem[(32 * stor254.length) + 192] + 6:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = mem[(32 * stor254.length) + 192] + 6
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
       len 32
}

function getSeventh(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 6
    mem[128] = 0x534556454e540000000000000000000000000000000000000000000000000000
    mem[160] = stor254.length
    if stor254.length:
        mem[0] = 254
        mem[192] = uint8(stor254.field_0)
        if (32 * stor254.length) + 32 > 64:
            mem[224] = uint8(stor254.field_8)
            idx = 224
            s = 1
            while (32 * stor254.length) + 160 > idx:
                mem[idx + 32] = stor('name', 'stor254', 254)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    if not arg1:
        mem[(32 * stor254.length) + 192] = 1
        mem[(32 * stor254.length) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 288] = 0x534556454e540000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 294] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[(32 * stor254.length) + 256] = 7
        mem[(32 * stor254.length) + 327] = 0
        mem[(32 * stor254.length) + 334] = 0
        mem[(32 * stor254.length) + 295] = 7
        mem[64] = (32 * stor254.length) + 334
        if not stor254.length:
            revert with 0, 18
        if sha3(0) % stor254.length >= stor254.length:
            revert with 0, 50
        if sha3(0) % 21 <= 14:
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1]:
                        revert with 0, 17
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        else:
            if not stor252.length:
                revert with 0, 18
            if sha3(0) % stor252.length >= stor252.length:
                revert with 0, 50
            if mem[(32 * sha3(0) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                revert with 0, 17
            if sha3(0) % 21 < 19:
                mem[(32 * stor254.length) + 334] = mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
            else:
                if sha3(0) % 21 != 19:
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)])
                else:
                    if not stor252.length:
                        revert with 0, 18
                    if sha3(0) % stor252.length >= stor252.length:
                        revert with 0, 50
                    if not stor253.length:
                        revert with 0, 18
                    if sha3(0) % stor253.length >= stor253.length:
                        revert with 0, 50
                    if mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)] > -1 / mem[(32 * sha3(0) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    if (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]:
                        revert with 0, 17
                    mem[(32 * stor254.length) + 334] = (mem[(32 * sha3(0) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(0) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('name', 'stor0', 0), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(0) % stor252.length)]
        return memory
          from (32 * stor254.length) + 334
           len 32
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
    mem[(32 * stor254.length) + 192] = s
    if s:
        mem[(32 * stor254.length) + 224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[(32 * stor254.length) + 192]:
            revert with 0, 50
        mem[t + (32 * stor254.length) + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[(32 * stor254.length) + ceil32(s) + 256] = 0x534556454e540000000000000000000000000000000000000000000000000000
    mem[(32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 262 len ceil32(mem[(32 * stor254.length) + 192])] = mem[(32 * stor254.length) + 224 len ceil32(mem[(32 * stor254.length) + 192])]
    if ceil32(mem[(32 * stor254.length) + 192]) > mem[(32 * stor254.length) + 192]:
        mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = 0
    mem[(32 * stor254.length) + ceil32(s) + 224] = mem[(32 * stor254.length) + 192] + 6
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len floor32(mem[(32 * stor254.length) + 192] + 37)] = 0, mem[(32 * stor254.length) + ceil32(s) + 262 len floor32(mem[(32 * stor254.length) + 192] + 37) - 6]
    if floor32(mem[(32 * stor254.length) + 192] + 37) > mem[(32 * stor254.length) + 192] + 6:
        mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = 0
    mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 262] = mem[(32 * stor254.length) + 192] + 6
    mem[64] = (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
    if not stor254.length:
        revert with 0, 18
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length >= stor254.length:
        revert with 0, 50
    if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 <= 14:
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1]:
                    revert with 0, 17
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    else:
        if not stor252.length:
            revert with 0, 18
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
            revert with 0, 50
        if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
            revert with 0, 17
        if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 < 19:
            mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
        else:
            if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % 21 != 19:
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)])
            else:
                if not stor252.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length >= stor252.length:
                    revert with 0, 50
                if not stor253.length:
                    revert with 0, 18
                if sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length >= stor253.length:
                    revert with 0, 50
                if mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] and stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)] > -1 / mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                if (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) > !stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]:
                    revert with 0, 17
                mem[(2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300] = (mem[(32 * sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor254.length) + 223 len 1] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + (stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)] * stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor253', 253))))), ('name', 'stor253', 253))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor253.length)]) + stor('array', ('div', 0.03125, ('mod', ('sha3', ('mem', ('range', ('add', 294, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)), ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254)))), ('mask_shl', 251, 5, 0, ('add', 31, ('var', 1)))), ('add', 6, ('mem', ('range', ('add', 192, ('mul', 32, ('stor', 256, 0, ('length', ('name', 'stor254', 254))))), 32)))))), ('stor', 256, 0, ('length', ('name', 'stor252', 252))))), ('name', 'stor252', 252))[uint8(sha3(mem[mem[(32 * stor254.length) + 192] + (32 * stor254.length) + ceil32(s) + 294 len mem[(32 * stor254.length) + 192] + 6]) % stor252.length)]
    return memory
      from (2 * mem[(32 * stor254.length) + 192]) + (32 * stor254.length) + ceil32(s) + 300
       len 32
}



}
