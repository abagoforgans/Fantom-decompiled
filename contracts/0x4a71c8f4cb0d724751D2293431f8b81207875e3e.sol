contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#  - _fallback()
#
const getBalance = eth.balance(this.address)


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
mapping of struct stor10;
address owner;
mapping of uint8 stor12;
uint256 tokenCounter;
uint256 mintFee;
uint256 maxMint;
uint256 royaltyFee;
address royaltyAddress;
address devAddress;
address stor19;
address stor20;
address stor21;
uint8 intEnableMinter; offset 160
address stor22;
array of uint256 stor23;

function intMaxMint() {
    return maxMint
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function intMintFee() {
    return mintFee
}

function intTokenCounter() {
    return tokenCounter
}

function mintFee() {
    return mintFee
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

function devAddress() {
    return devAddress
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

function maxMint() {
    return maxMint
}

function owner() {
    return owner
}

function enableMinter() {
    return bool(intEnableMinter)
}

function intEnableMinter() {
    return bool(intEnableMinter)
}

function royaltyAddress() {
    return royaltyAddress
}

function royaltyFee() {
    return royaltyFee
}

function tokenCounter() {
    return tokenCounter
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function RenounceDeveloper() {
    require msg.sender == devAddress
    devAddress = 0
}

function enableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    intEnableMinter = 1
}

function disableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    intEnableMinter = 0
}

function TransferDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == devAddress
    devAddress = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMint = arg1
}

function setRoyaltyPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyFee = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and royaltyFee > -1 / arg2:
        revert with 0, 17
    return royaltyAddress, arg2 * royaltyFee / 100
}

function setPaymentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyAddress = arg1
}

function sweepEth() {
    require msg.sender == devAddress
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function devSetPayments(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == devAddress
    stor20 = arg1
    stor21 = arg2
    stor22 = arg3
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    mintFee = 10^18 * arg1
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

function sweepEthToAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == devAddress
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor12[Mask(32, 224, arg1)])
}

function sweepAnyTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == devAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sweepAnyTokensToAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == devAddress
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function devSetDirectory(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == devAddress
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while (uint255(stor23.length) * 0.5) + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor23.length) == stor23.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 + 31 / 32 > idx:
                stor23[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function devSetTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == devAddress
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
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

function publicMint() payable {
    require 1 == bool(intEnableMinter)
    require msg.value == mintFee
    require tokenCounter < maxMint
    if mintFee > 0x1111111111111111111111111111111111111111111111111111111111111111:
        revert with 0, 17
    if mintFee < 15 * mintFee / 100:
        revert with 0, 17
    call stor19 with:
       value mintFee - (15 * mintFee / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor20 with:
       value 15 * mintFee / 100 / 2 wei
         gas 2300 * is_zero(value) wei
    call stor21 with:
       value 15 * mintFee / 100 / 4 wei
         gas 2300 * is_zero(value) wei
    call stor22 with:
       value 15 * mintFee / 100 / 4 wei
         gas 2300 * is_zero(value) wei
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor13]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor13] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenCounter
    if msg.sender:
        if not msg.sender:
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenCounter
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, tokenCounter);
            if not tokenCounter:
                if not ownerOf[stor13]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[stor13].field_0:
                    if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor10[stor13].field_0 = 0
                    stor10[stor13].field_1 = 6
                    stor10[stor13].field_8 = 0
                    idx = 0
                    while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[stor13][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                        revert with 0, 34
                    stor10[stor13].field_0 = 0
                    stor10[stor13].field_1 = 6
                    stor10[stor13].field_8 = 0
                    idx = 0
                    while stor10[stor13].field_1 + 31 / 32 > idx:
                        stor10[stor13][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = tokenCounter
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
                    idx = tokenCounter
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[96]:
                            revert with 0, 50
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _713 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_713] = 5
                    mem[_713 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _725 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + mem[96] + 37] = 0
                    if ceil32(mem[96]) <= mem[96]:
                        _1554 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _725 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1605 = mem[_1554]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1605:
                                stor10[stor13][].field_0 = Array(len=_1605, data=mem[_1554 + 32 len _1605])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1605:
                                stor10[stor13][].field_0 = Array(len=_1605, data=mem[_1554 + 32 len _1605])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        _1556 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _725 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1611 = mem[_1556]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1611:
                                stor10[stor13][].field_0 = Array(len=_1611, data=mem[_1556 + 32 len _1611])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1611:
                                stor10[stor13][].field_0 = Array(len=_1611, data=mem[_1556 + 32 len _1611])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[128 len s] = call.data[calldata.size len s]
                    t = s
                    idx = tokenCounter
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[96]:
                            revert with 0, 50
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_715] = 5
                    mem[_715 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _726 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + mem[96] + 37] = 0
                    if ceil32(mem[96]) <= mem[96]:
                        _1558 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _726 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1617 = mem[_1558]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1617:
                                stor10[stor13][].field_0 = Array(len=_1617, data=mem[_1558 + 32 len _1617])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1617:
                                stor10[stor13][].field_0 = Array(len=_1617, data=mem[_1558 + 32 len _1617])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        _1560 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _726 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1623 = mem[_1560]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1623:
                                stor10[stor13][].field_0 = Array(len=_1623, data=mem[_1560 + 32 len _1623])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1623:
                                stor10[stor13][].field_0 = Array(len=_1623, data=mem[_1560 + 32 len _1623])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        else:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenCounter
            stor7[stor13] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = tokenCounter
            mem[32] = 2
            ownerOf[stor13] = msg.sender
            emit Transfer(0, msg.sender, tokenCounter);
            if not tokenCounter:
                if not ownerOf[stor13]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[stor13].field_0:
                    if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                        revert with 0, 34
                    stor10[stor13].field_0 = 0
                    stor10[stor13].field_1 = 6
                    stor10[stor13].field_8 = 0
                    idx = 0
                    while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[stor13][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                        revert with 0, 34
                    stor10[stor13].field_0 = 0
                    stor10[stor13].field_1 = 6
                    stor10[stor13].field_8 = 0
                    idx = 0
                    while stor10[stor13].field_1 + 31 / 32 > idx:
                        stor10[stor13][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                s = 0
                idx = tokenCounter
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
                    idx = tokenCounter
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[96]:
                            revert with 0, 50
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_717] = 5
                    mem[_717 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _727 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + mem[96] + 37] = 0
                    if ceil32(mem[96]) <= mem[96]:
                        _1562 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _727 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1629 = mem[_1562]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1629:
                                stor10[stor13][].field_0 = Array(len=_1629, data=mem[_1562 + 32 len _1629])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1629:
                                stor10[stor13][].field_0 = Array(len=_1629, data=mem[_1562 + 32 len _1629])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        _1564 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _727 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1635 = mem[_1564]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1635:
                                stor10[stor13][].field_0 = Array(len=_1635, data=mem[_1564 + 32 len _1635])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1635:
                                stor10[stor13][].field_0 = Array(len=_1635, data=mem[_1564 + 32 len _1635])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[128 len s] = call.data[calldata.size len s]
                    t = s
                    idx = tokenCounter
                    while idx:
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if not t:
                            revert with 0, 17
                        if t - 1 >= mem[96]:
                            revert with 0, 50
                        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = 5
                    mem[_719 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _728 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + mem[96] + 37] = 0
                    if ceil32(mem[96]) <= mem[96]:
                        _1566 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _728 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1641 = mem[_1566]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1641:
                                stor10[stor13][].field_0 = Array(len=_1641, data=mem[_1566 + 32 len _1641])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1641:
                                stor10[stor13][].field_0 = Array(len=_1641, data=mem[_1566 + 32 len _1641])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        _1568 = mem[64]
                        mem[mem[64]] = mem[96] + 5
                        mem[64] = mem[64] + _728 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1647 = mem[_1568]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1647:
                                stor10[stor13][].field_0 = Array(len=_1647, data=mem[_1568 + 32 len _1647])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                                revert with 0, 34
                            if _1647:
                                stor10[stor13][].field_0 = Array(len=_1647, data=mem[_1568 + 32 len _1647])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor13] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor13]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor13]
        stor9[stor13] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = tokenCounter
        mem[32] = 2
        ownerOf[stor13] = msg.sender
        emit Transfer(0, msg.sender, tokenCounter);
        if not tokenCounter:
            if not ownerOf[stor13]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            if stor10[stor13].field_0:
                if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[stor13].field_0 = 0
                stor10[stor13].field_1 = 6
                stor10[stor13].field_8 = 0
                idx = 0
                while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                    stor10[stor13][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                    revert with 0, 34
                stor10[stor13].field_0 = 0
                stor10[stor13].field_1 = 6
                stor10[stor13].field_8 = 0
                idx = 0
                while stor10[stor13].field_1 + 31 / 32 > idx:
                    stor10[stor13][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            s = 0
            idx = tokenCounter
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
                idx = tokenCounter
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_721] = 5
                mem[_721 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                _729 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[mem[64] + mem[96] + 37] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _1570 = mem[64]
                    mem[mem[64]] = mem[96] + 5
                    mem[64] = mem[64] + _729 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1653 = mem[_1570]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1653:
                            stor10[stor13][].field_0 = Array(len=_1653, data=mem[_1570 + 32 len _1653])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                            revert with 0, 34
                        if _1653:
                            stor10[stor13][].field_0 = Array(len=_1653, data=mem[_1570 + 32 len _1653])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    _1572 = mem[64]
                    mem[mem[64]] = mem[96] + 5
                    mem[64] = mem[64] + _729 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1659 = mem[_1572]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1659:
                            stor10[stor13][].field_0 = Array(len=_1659, data=mem[_1572 + 32 len _1659])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                            revert with 0, 34
                        if _1659:
                            stor10[stor13][].field_0 = Array(len=_1659, data=mem[_1572 + 32 len _1659])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                mem[128 len s] = call.data[calldata.size len s]
                t = s
                idx = tokenCounter
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _723 = mem[64]
                mem[64] = mem[64] + 64
                mem[_723] = 5
                mem[_723 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                _730 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[mem[64] + mem[96] + 37] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _1574 = mem[64]
                    mem[mem[64]] = mem[96] + 5
                    mem[64] = mem[64] + _730 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1665 = mem[_1574]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1665:
                            stor10[stor13][].field_0 = Array(len=_1665, data=mem[_1574 + 32 len _1665])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                            revert with 0, 34
                        if _1665:
                            stor10[stor13][].field_0 = Array(len=_1665, data=mem[_1574 + 32 len _1665])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    _1576 = mem[64]
                    mem[mem[64]] = mem[96] + 5
                    mem[64] = mem[64] + _730 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1671 = mem[_1576]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1671:
                            stor10[stor13][].field_0 = Array(len=_1671, data=mem[_1576 + 32 len _1671])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while (uint255(stor10[stor13].field_0) * 0.5) + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor10[stor13].field_0 == stor10[stor13].field_1 < 32:
                            revert with 0, 34
                        if _1671:
                            stor10[stor13][].field_0 = Array(len=_1671, data=mem[_1576 + 32 len _1671])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
    if tokenCounter == -1:
        revert with 0, 17
    tokenCounter++
}



}
