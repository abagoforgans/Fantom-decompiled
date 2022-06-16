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
uint8 intEnableMinter; offset 160
address devAddress;
array of uint256 stor19;

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

function OwnerNowDeveloper() {
    require msg.sender == devAddress
    devAddress = owner
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
    if arg2 / 100 and royaltyFee > -1 / arg2 / 100:
        revert with 0, 17
    return royaltyAddress, arg2 / 100 * royaltyFee
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
    call arg1.transfer(address arg1, uint256 arg2) with:
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
    call arg1.transfer(address arg1, uint256 arg2) with:
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
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
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
    call royaltyAddress with:
       value mintFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                    _710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_710] = 5
                    mem[_710 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _711 = mem[64]
                    _722 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_711 + _722 + 37] = 0
                        _1551 = mem[64]
                        mem[mem[64]] = _711 + _722 + -mem[64] + 5
                        mem[64] = _711 + _722 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1602 = mem[_1551]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1602:
                                stor10[stor13][].field_0 = Array(len=_1602, data=mem[_1551 + 32 len _1602])
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
                            if _1602:
                                stor10[stor13][].field_0 = Array(len=_1602, data=mem[_1551 + 32 len _1602])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[mem[96] + mem[64] + 32] = 0
                        mem[_711 + _722 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_711 + _722 + 37] = 0
                        _1553 = mem[64]
                        mem[mem[64]] = _711 + _722 + -mem[64] + 5
                        mem[64] = _711 + _722 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1608 = mem[_1553]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1608:
                                stor10[stor13][].field_0 = Array(len=_1608, data=mem[_1553 + 32 len _1608])
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
                            if _1608:
                                stor10[stor13][].field_0 = Array(len=_1608, data=mem[_1553 + 32 len _1608])
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
                    _712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_712] = 5
                    mem[_712 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _713 = mem[64]
                    _723 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_713 + _723 + 37] = 0
                        _1555 = mem[64]
                        mem[mem[64]] = _713 + _723 + -mem[64] + 5
                        mem[64] = _713 + _723 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1614 = mem[_1555]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1614:
                                stor10[stor13][].field_0 = Array(len=_1614, data=mem[_1555 + 32 len _1614])
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
                            if _1614:
                                stor10[stor13][].field_0 = Array(len=_1614, data=mem[_1555 + 32 len _1614])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[mem[96] + mem[64] + 32] = 0
                        mem[_713 + _723 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_713 + _723 + 37] = 0
                        _1557 = mem[64]
                        mem[mem[64]] = _713 + _723 + -mem[64] + 5
                        mem[64] = _713 + _723 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1620 = mem[_1557]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1620:
                                stor10[stor13][].field_0 = Array(len=_1620, data=mem[_1557 + 32 len _1620])
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
                            if _1620:
                                stor10[stor13][].field_0 = Array(len=_1620, data=mem[_1557 + 32 len _1620])
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
                    _714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_714] = 5
                    mem[_714 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _715 = mem[64]
                    _724 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_715 + _724 + 37] = 0
                        _1559 = mem[64]
                        mem[mem[64]] = _715 + _724 + -mem[64] + 5
                        mem[64] = _715 + _724 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1626 = mem[_1559]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1626:
                                stor10[stor13][].field_0 = Array(len=_1626, data=mem[_1559 + 32 len _1626])
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
                            if _1626:
                                stor10[stor13][].field_0 = Array(len=_1626, data=mem[_1559 + 32 len _1626])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[mem[96] + mem[64] + 32] = 0
                        mem[_715 + _724 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_715 + _724 + 37] = 0
                        _1561 = mem[64]
                        mem[mem[64]] = _715 + _724 + -mem[64] + 5
                        mem[64] = _715 + _724 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1632 = mem[_1561]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1632:
                                stor10[stor13][].field_0 = Array(len=_1632, data=mem[_1561 + 32 len _1632])
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
                            if _1632:
                                stor10[stor13][].field_0 = Array(len=_1632, data=mem[_1561 + 32 len _1632])
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
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 5
                    mem[_716 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _717 = mem[64]
                    _725 = mem[96]
                    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    if ceil32(mem[96]) <= mem[96]:
                        mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_717 + _725 + 37] = 0
                        _1563 = mem[64]
                        mem[mem[64]] = _717 + _725 + -mem[64] + 5
                        mem[64] = _717 + _725 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1638 = mem[_1563]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1638:
                                stor10[stor13][].field_0 = Array(len=_1638, data=mem[_1563 + 32 len _1638])
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
                            if _1638:
                                stor10[stor13][].field_0 = Array(len=_1638, data=mem[_1563 + 32 len _1638])
                            else:
                                stor10[stor13].field_0 = 0
                                idx = 0
                                while stor10[stor13].field_1 + 31 / 32 > idx:
                                    stor10[stor13][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[mem[96] + mem[64] + 32] = 0
                        mem[_717 + _725 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        mem[_717 + _725 + 37] = 0
                        _1565 = mem[64]
                        mem[mem[64]] = _717 + _725 + -mem[64] + 5
                        mem[64] = _717 + _725 + 37
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _1644 = mem[_1565]
                        if stor10[stor13].field_0:
                            if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _1644:
                                stor10[stor13][].field_0 = Array(len=_1644, data=mem[_1565 + 32 len _1644])
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
                            if _1644:
                                stor10[stor13][].field_0 = Array(len=_1644, data=mem[_1565 + 32 len _1644])
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
                _718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_718] = 5
                mem[_718 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                _719 = mem[64]
                _726 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[_719 + _726 + 37] = 0
                    _1567 = mem[64]
                    mem[mem[64]] = _719 + _726 + -mem[64] + 5
                    mem[64] = _719 + _726 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1650 = mem[_1567]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1650:
                            stor10[stor13][].field_0 = Array(len=_1650, data=mem[_1567 + 32 len _1650])
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
                        if _1650:
                            stor10[stor13][].field_0 = Array(len=_1650, data=mem[_1567 + 32 len _1650])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    mem[mem[96] + mem[64] + 32] = 0
                    mem[_719 + _726 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[_719 + _726 + 37] = 0
                    _1569 = mem[64]
                    mem[mem[64]] = _719 + _726 + -mem[64] + 5
                    mem[64] = _719 + _726 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1656 = mem[_1569]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1656:
                            stor10[stor13][].field_0 = Array(len=_1656, data=mem[_1569 + 32 len _1656])
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
                        if _1656:
                            stor10[stor13][].field_0 = Array(len=_1656, data=mem[_1569 + 32 len _1656])
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
                _720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_720] = 5
                mem[_720 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                _721 = mem[64]
                _727 = mem[96]
                mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    mem[mem[64] + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[_721 + _727 + 37] = 0
                    _1571 = mem[64]
                    mem[mem[64]] = _721 + _727 + -mem[64] + 5
                    mem[64] = _721 + _727 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1662 = mem[_1571]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1662:
                            stor10[stor13][].field_0 = Array(len=_1662, data=mem[_1571 + 32 len _1662])
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
                        if _1662:
                            stor10[stor13][].field_0 = Array(len=_1662, data=mem[_1571 + 32 len _1662])
                        else:
                            stor10[stor13].field_0 = 0
                            idx = 0
                            while stor10[stor13].field_1 + 31 / 32 > idx:
                                stor10[stor13][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    mem[mem[96] + mem[64] + 32] = 0
                    mem[_721 + _727 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    mem[_721 + _727 + 37] = 0
                    _1573 = mem[64]
                    mem[mem[64]] = _721 + _727 + -mem[64] + 5
                    mem[64] = _721 + _727 + 37
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1668 = mem[_1573]
                    if stor10[stor13].field_0:
                        if stor10[stor13].field_0 == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if _1668:
                            stor10[stor13][].field_0 = Array(len=_1668, data=mem[_1573 + 32 len _1668])
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
                        if _1668:
                            stor10[stor13][].field_0 = Array(len=_1668, data=mem[_1573 + 32 len _1668])
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
