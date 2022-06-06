contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
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
uint256 tokenCounter;
uint256 stor13;
uint256 mintFee;
uint256 maxMint;
uint256 stor15;
address stor16;
address stor17;
uint8 intEnableMinter;

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
    return uint256(mintFee)
}

function intTokenCounter() {
    return tokenCounter
}

function mintFee() {
    return uint256(mintFee)
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
    require msg.sender == stor17
    stor17 = 0
}

function OwnerNowDeveloper() {
    require msg.sender == stor17
    stor17 = owner
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
    require msg.sender == stor17
    stor17 = arg1
}

function _resetFeesAndRoyaltyAddress() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 0
    uint256(mintFee) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function resetMinter() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 0
    uint256(mintFee) = 0
    intEnableMinter = 0
}

function _setMaxMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMint = arg1
}

function _setRoyaltiesAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
}

function sweepEth() {
    require msg.sender == stor17
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    uint256(mintFee) = 10^18 * arg1
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
    require msg.sender == stor17
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
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sweepAnyTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor17
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
    require msg.sender == stor17
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

function sub_5616b8ec(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _70 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_70] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_70 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_70 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _70
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 == bool(intEnableMinter)
    if uint256(mintFee) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require msg.value == 2 * uint256(mintFee)
    if uint256(mintFee) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    call stor16 with:
       value 2 * uint256(mintFee) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor15 = 0
    # nil
}

function sub_cf7c3a28(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _70 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_70] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_70 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_70 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _70
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 1 == bool(intEnableMinter)
    if uint256(mintFee) > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    require msg.value == 3 * uint256(mintFee)
    if uint256(mintFee) > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    call stor16 with:
       value 3 * uint256(mintFee) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor15 = 0
    # nil
}

function sub_b3d7acf9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require 1 == bool(intEnableMinter)
    require msg.value == uint256(mintFee)
    require tokenCounter < maxMint
    call stor16 with:
       value uint256(mintFee) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = tokenCounter
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenCounter
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
    emit Transfer(0, msg.sender, tokenCounter);
    if not ownerOf[stor12]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor10[stor12].field_0:
        if stor10[stor12].field_0 == uint255(stor10[stor12].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10[stor12].field_0 = 0
            idx = 0
            while (uint255(stor10[stor12].field_0) * 0.5) + 31 / 32 > idx:
                stor10[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor10[stor12].field_0 == stor10[stor12].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[stor12][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10[stor12].field_0 = 0
            idx = 0
            while stor10[stor12].field_1 + 31 / 32 > idx:
                stor10[stor12][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenCounter == -1:
        revert with 0, 17
    tokenCounter++
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

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if intMintFee() <= uint32(call.func_hash) >> 224:
                if unknown_0x13966db5(?????) > uint32(call.func_hash) >> 224:
                    if intMintFee() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return uint256(mintFee)
                    if intTokenCounter() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenCounter
                    if uint32(call.func_hash) >> 224 != unknown_0x12065fe0(?????):
                    require not msg.value
                    return eth.balance(this.address)
                if unknown_0x13966db5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uint256(mintFee)
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenByIndex.length
                if unknown_0x208c95e3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require msg.sender == stor17
                    stor17 = 0
            else:
                if name() > uint32(call.func_hash) >> 224:
                    if intMaxMint() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return maxMint
                    if uint32(call.func_hash) >> 224 != supportsInterface(bytes4 arg1):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if name() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if bool(stor0.length):
                        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor0.length):
                            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor0.length):
                                if 31 < uint255(stor0.length) * 0.5:
                                    mem[160] = uint256(stor0.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor0.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor0[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                                mem[160] = 256 * stor0.length.field_8
                        else:
                            if bool(stor0.length) == stor0.length.field_1 < 32:
                                revert with 0, 34
                            if stor0.length.field_1:
                                if 31 < stor0.length.field_1:
                                    mem[160] = uint256(stor0.field_0)
                                    idx = 160
                                    s = 0
                                    while stor0.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor0[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                                mem[160] = 256 * stor0.length.field_8
                        mem[ceil32(uint255(stor0.length) * 0.5) + 224 len ceil32(uint255(stor0.length) * 0.5)] = mem[160 len ceil32(uint255(stor0.length) * 0.5)]
                        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
                            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
                    if bool(stor0.length) == stor0.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor0.length):
                        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor0.length):
                            if 31 < uint255(stor0.length) * 0.5:
                                mem[160] = uint256(stor0.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor0.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor0[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                            mem[160] = 256 * stor0.length.field_8
                    else:
                        if bool(stor0.length) == stor0.length.field_1 < 32:
                            revert with 0, 34
                        if stor0.length.field_1:
                            if 31 < stor0.length.field_1:
                                mem[160] = uint256(stor0.field_0)
                                idx = 160
                                s = 0
                                while stor0.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor0[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                            mem[160] = 256 * stor0.length.field_8
                    mem[ceil32(stor0.length.field_1) + 224 len ceil32(stor0.length.field_1)] = mem[160 len ceil32(stor0.length.field_1)]
                    if ceil32(stor0.length.field_1) > stor0.length.field_1:
                        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 224] = 0
                    return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 224 len 2 * ceil32(stor0.length.field_1)]), 
                if getApproved(uint256 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not ownerOf[cd[4]]:
                        revert with 0, 'ERC721: approved query for nonexistent token'
                    return approved[cd[4]]
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if address(cd[4]) == ownerOf[cd[36]]:
                        revert with 0, 'ERC721: approval to current owner'
                    if ownerOf[cd[36]] != msg.sender:
                        if not stor5[stor2[cd[36]]][address(msg.sender)]:
                            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                    approved[cd[36]] = address(cd[4])
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[36]], address(cd[4]), cd[36]);
        if unknown_0x4f6ccce7(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x5ff3e2a1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5ff3e2a1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor16 = 0
                    uint256(mintFee) = 0
                    intEnableMinter = 0
                if unknown_0x6352211e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not ownerOf[cd[4]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    return ownerOf[cd[4]]
                if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if not address(cd[4]):
                    revert with 0, 'ERC721: balance query for the zero address'
                return balanceOf[address(cd[4])]
            if unknown_0x4f6ccce7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if cd[4] >= tokenByIndex.length:
                    revert with 0, 'ERC721Enumerable: global index out of bounds'
                return tokenByIndex[cd[4]]
            if uint32(call.func_hash) >> 224 != unknown_0x5616b8ec(?????):
                if unknown_0x575428f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require msg.sender == stor17
                    call address(cd[4]) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 4).length) + 129
            require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
            idx = 0
            s = cd[4] + 36
            t = 160
            while idx < ('cd', 4).length:
                require cd[s] <= test266151307()
                require cd[4] + cd[s] + 67 < calldata.size
                if cd[(cd[4] + cd[s] + 36)] > test266151307():
                    revert with 0, 65
                _5974 = mem[64]
                if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
                mem[_5974] = cd[(cd[4] + cd[s] + 36)]
                require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
                mem[_5974 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
                mem[_5974 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
                mem[t] = _5974
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require 1 == bool(intEnableMinter)
            if uint256(mintFee) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require msg.value == 2 * uint256(mintFee)
            if uint256(mintFee) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            call stor16 with:
               value 2 * uint256(mintFee) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor15 = 0
            # nil
        else:
            if unknown_0x2f745c59(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    if unknown_0x286898d9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require msg.sender == stor17
                        stor17 = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: operator query for nonexistent token'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != msg.sender:
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        if approved[cd[68]] != msg.sender:
                            if not stor5[stor2[cd[68]]][address(msg.sender)]:
                                revert with 0, 'ERC721: transfer caller is not owner nor approved'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != address(cd[4]):
                        revert with 0, 'ERC721: transfer of token that is not own'
                    if not address(cd[36]):
                        revert with 0, 'ERC721: transfer to the zero address'
                    if not address(cd[4]):
                        stor9[cd[68]] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = cd[68]
                    else:
                        if address(cd[4]) != address(cd[36]):
                            if not address(cd[4]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            if balanceOf[address(cd[4])] < 1:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] - 1 != stor7[cd[68]]:
                                tokenOfOwnerByIndex[address(cd[4])][stor7[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1]
                                stor7[stor6[address(cd[4])][stor3[address(cd[4])] - 1]] = stor7[cd[68]]
                            stor7[cd[68]] = 0
                            tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1] = 0
                    if address(cd[36]):
                        if address(cd[36]) != address(cd[4]):
                            if not address(cd[36]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(cd[36])][stor3[address(cd[36])]] = cd[68]
                            stor7[cd[68]] = balanceOf[address(cd[36])]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[cd[68]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[cd[68]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[cd[68]]
                        stor9[cd[68]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    approved[cd[68]] = 0
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[68]], 0, cd[68]);
                    if balanceOf[address(cd[4])] < 1:
                        revert with 0, 17
                    balanceOf[address(cd[4])]--
                    if balanceOf[address(cd[36])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[36])]++
                    ownerOf[cd[68]] = address(cd[36])
                    emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
            else:
                if unknown_0x2f745c59(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if cd[36] >= balanceOf[address(cd[4])]:
                        revert with 0, 'ERC721Enumerable: owner index out of bounds'
                    return tokenOfOwnerByIndex[address(cd[4])][cd[36]]
                if unknown_0x3136fd10(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor16 = address(cd[4])
                else:
                    if unknown_0x42842e0e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        mem[128] = 0
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: operator query for nonexistent token'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != msg.sender:
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: approved query for nonexistent token'
                            if approved[cd[68]] != msg.sender:
                                if not stor5[stor2[cd[68]]][address(msg.sender)]:
                                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if ownerOf[cd[68]] != address(cd[4]):
                            revert with 0, 'ERC721: transfer of token that is not own'
                        if not address(cd[36]):
                            revert with 0, 'ERC721: transfer to the zero address'
                        if not address(cd[4]):
                            stor9[cd[68]] = tokenByIndex.length
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length] = cd[68]
                        else:
                            if address(cd[4]) != address(cd[36]):
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                if balanceOf[address(cd[4])] < 1:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] - 1 != stor7[cd[68]]:
                                    tokenOfOwnerByIndex[address(cd[4])][stor7[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1]
                                    stor7[stor6[address(cd[4])][stor3[address(cd[4])] - 1]] = stor7[cd[68]]
                                stor7[cd[68]] = 0
                                tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1] = 0
                        if address(cd[36]):
                            if address(cd[36]) != address(cd[4]):
                                if not address(cd[36]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[36])][stor3[address(cd[36])]] = cd[68]
                                stor7[cd[68]] = balanceOf[address(cd[36])]
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor9[cd[68]] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor9[cd[68]]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[cd[68]]
                            stor9[cd[68]] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                        approved[cd[68]] = 0
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[68]], 0, cd[68]);
                        if balanceOf[address(cd[4])] < 1:
                            revert with 0, 17
                        balanceOf[address(cd[4])]--
                        if balanceOf[address(cd[36])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[36])]++
                        ownerOf[cd[68]] = address(cd[36])
                        emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                        if ext_code.size(address(cd[36])):
                            mem[164] = msg.sender
                            mem[196] = address(cd[4])
                            mem[228] = cd[68]
                            mem[260] = 128
                            mem[292] = 0
                            mem[324 len 0] = None
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(cd[4]), cd[68], 128, 0
                            mem[160] = ext_call.return_data[0]
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
                            require return_data.size >= 32
                            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if unknown_0xa96d7cd3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x7e5cd5c1(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x7e5cd5c1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        intEnableMinter = 0
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0x90f2d79b(?????):
                    require not msg.value
                    return bool(intEnableMinter)
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x7501f741(?????):
                    require not msg.value
                    return maxMint
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x9f9d5082(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                        if unknown_0x967f44fa(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor16 = 0
                            uint256(mintFee) = 0
                        else:
                            if unknown_0x9ac84414(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require msg.sender == stor17
                                call owner with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    require not msg.value
                    if bool(stor1.length):
                        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor1.length):
                            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1.length):
                                if 31 < uint255(stor1.length) * 0.5:
                                    mem[160] = uint256(stor1.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor1.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor1[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                                mem[160] = 256 * stor1.length.field_8
                        else:
                            if bool(stor1.length) == stor1.length.field_1 < 32:
                                revert with 0, 34
                            if stor1.length.field_1:
                                if 31 < stor1.length.field_1:
                                    mem[160] = uint256(stor1.field_0)
                                    idx = 160
                                    s = 0
                                    while stor1.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor1[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                                mem[160] = 256 * stor1.length.field_8
                        mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor1.length):
                        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1.length):
                            if 31 < uint255(stor1.length) * 0.5:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor1.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                            mem[160] = 256 * stor1.length.field_8
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 0, 34
                        if stor1.length.field_1:
                            if 31 < stor1.length.field_1:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while stor1.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                            mem[160] = 256 * stor1.length.field_8
                    mem[ceil32(stor1.length.field_1) + 224 len ceil32(stor1.length.field_1)] = mem[160 len ceil32(stor1.length.field_1)]
                    if ceil32(stor1.length.field_1) > stor1.length.field_1:
                        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 224] = 0
                    return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 224 len 2 * ceil32(stor1.length.field_1)]), 
                if unknown_0x9f9d5082(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require msg.sender == stor17
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0xa22cb465(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if msg.sender == address(cd[4]):
                            revert with 0, 'ERC721: approve to caller'
                        stor5[msg.sender][address(cd[4])] = uint8(bool(cd[36]))
                        emit ApprovalForAll(bool(cd[36]), msg.sender, address(cd[4]));
                    else:
                        if unknown_0xa53d14b5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            require msg.sender == stor17
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0xd082e381(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe985e9c5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xd082e381(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return tokenCounter
                if unknown_0xd9716e13(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require msg.sender == stor17
                    stor17 = owner
                else:
                    if unknown_0xe797ec1b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        intEnableMinter = 1
            else:
                if unknown_0xe985e9c5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return bool(stor5[address(cd[4])][address(cd[36])])
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if unknown_0xf9ad86bf(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if cd[4] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        uint256(mintFee) = 10^18 * cd[4]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
        if unknown_0xb88d4fde(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xa96d7cd3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(intEnableMinter)
            if uint32(call.func_hash) >> 224 != unknown_0xb3d7acf9(?????):
                if unknown_0xb814baf1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    maxMint = cd[4]
            else:
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                    revert with 0, 65
                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                require 1 == bool(intEnableMinter)
                require msg.value == uint256(mintFee)
                require tokenCounter < maxMint
                call stor16 with:
                   value uint256(mintFee) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = tokenCounter
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = tokenCounter
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
                emit Transfer(0, msg.sender, tokenCounter);
                if not ownerOf[stor12]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[stor12].field_0:
                    if stor10[stor12].field_0 == uint255(stor10[stor12].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 4).length:
                        stor10[stor12][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    else:
                        stor10[stor12].field_0 = 0
                        idx = 0
                        while (uint255(stor10[stor12].field_0) * 0.5) + 31 / 32 > idx:
                            stor10[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor10[stor12].field_0 == stor10[stor12].field_1 < 32:
                        revert with 0, 34
                    if ('cd', 4).length:
                        stor10[stor12][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    else:
                        stor10[stor12].field_0 = 0
                        idx = 0
                        while stor10[stor12].field_1 + 31 / 32 > idx:
                            stor10[stor12][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                if tokenCounter == -1:
                    revert with 0, 17
                tokenCounter++
        if uint32(call.func_hash) >> 224 != unknown_0xb88d4fde(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xc87b56dd(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xcf7c3a28(?????):
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + 129
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                idx = 0
                s = cd[4] + 36
                t = 160
                while idx < ('cd', 4).length:
                    require cd[s] <= test266151307()
                    require cd[4] + cd[s] + 67 < calldata.size
                    if cd[(cd[4] + cd[s] + 36)] > test266151307():
                        revert with 0, 65
                    _6071 = mem[64]
                    if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
                    mem[_6071] = cd[(cd[4] + cd[s] + 36)]
                    require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
                    mem[_6071 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
                    mem[_6071 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
                    mem[t] = _6071
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require 1 == bool(intEnableMinter)
                if uint256(mintFee) > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                require msg.value == 3 * uint256(mintFee)
                if uint256(mintFee) > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call stor16 with:
                   value 3 * uint256(mintFee) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor15 = 0
                # nil
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                if not ownerOf[cd[4]]:
                    revert with 0, 'ERC721URIStorage: URI query for nonexistent token'
                if stor10[cd[4]].field_0:
                    if stor10[cd[4]].field_0 == uint255(stor10[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if stor10[cd[4]].field_0:
                        if stor10[cd[4]].field_0 == uint255(stor10[cd[4]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor10[cd[4]].field_0):
                            if 31 >= uint255(stor10[cd[4]].field_0) * 0.5:
                                mem[160] = 256 * stor10[cd[4]].field_8
                            else:
                                mem[160] = stor10[cd[4]].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor10[cd[4]].field_0) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor10[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor10[cd[4]].field_0 == stor10[cd[4]].field_1 < 32:
                            revert with 0, 34
                        if stor10[cd[4]].field_1:
                            if 31 >= stor10[cd[4]].field_1:
                                mem[160] = 256 * stor10[cd[4]].field_8
                            else:
                                mem[160] = stor10[cd[4]].field_0
                                idx = 160
                                s = 0
                                while stor10[cd[4]].field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    if Mask(256, -1, stor10[cd[4]].field_0):
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 256] = 'https://ipfs.io/ipfs/'
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 277] = 0
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 277 len ceil32(uint255(stor10[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor10[cd[4]].field_0) * 0.5)]
                        mem[(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 277] = 32
                        mem[(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 309] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224]
                        mem[(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 341 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224])] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224])]
                        if ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224]) > mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224]:
                            mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224] + (uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 341] = 0
                        return Array(len=mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224], data=mem[(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 341 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 224])]), 
                    if not ownerOf[cd[4]]:
                        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                    if not cd[4]:
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 384] = 'https://ipfs.io/ipfs/'
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 405] = '0'
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 406] = 32
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 438] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352]
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 470 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352])] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 384 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352])]
                        if ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352]) > mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352]:
                            mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 470] = 0
                        return Array(len=mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352], data=mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 470 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 352])]), 
                    s = 0
                    idx = cd[4]
                    while idx:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = idx / 10
                        continue 
                    if s > test266151307():
                        revert with 0, 65
                    mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] = s
                    if s:
                        mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 320 len s] = call.data[calldata.size len s]
                    t = s
                    idx = cd[4]
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 352] = 'https://ipfs.io/ipfs/'
                    mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 373] = 0
                    mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 373 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288])] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 320 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288])]
                    mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 373] = 32
                    mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 405] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320]
                    mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 437 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320])] = mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 352 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320])]
                    if ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320]) > mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320]:
                        mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320] + mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 437] = 0
                    return Array(len=mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320], data=mem[mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + 288] + ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 437 len ceil32(mem[ceil32(uint255(stor10[cd[4]].field_0) * 0.5) + ceil32(s) + 320])]), 
                if stor10[cd[4]].field_0 == stor10[cd[4]].field_1 < 32:
                    revert with 0, 34
                if stor10[cd[4]].field_0:
                    if stor10[cd[4]].field_0 == uint255(stor10[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor10[cd[4]].field_0):
                        if 31 >= uint255(stor10[cd[4]].field_0) * 0.5:
                            mem[160] = 256 * stor10[cd[4]].field_8
                        else:
                            mem[160] = stor10[cd[4]].field_0
                            idx = 160
                            s = 0
                            while (uint255(stor10[cd[4]].field_0) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor10[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor10[cd[4]].field_0 == stor10[cd[4]].field_1 < 32:
                        revert with 0, 34
                    if stor10[cd[4]].field_1:
                        if 31 >= stor10[cd[4]].field_1:
                            mem[160] = 256 * stor10[cd[4]].field_8
                        else:
                            mem[160] = stor10[cd[4]].field_0
                            idx = 160
                            s = 0
                            while stor10[cd[4]].field_1 + 128 > idx:
                                mem[idx + 32] = stor10[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                if stor10[cd[4]].field_1:
                    mem[ceil32(stor10[cd[4]].field_1) + 256] = 'https://ipfs.io/ipfs/'
                    mem[ceil32(stor10[cd[4]].field_1) + 277] = 0
                    mem[ceil32(stor10[cd[4]].field_1) + 277 len ceil32(stor10[cd[4]].field_1)] = mem[160 len ceil32(stor10[cd[4]].field_1)]
                    mem[stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 277] = 32
                    mem[stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 309] = mem[ceil32(stor10[cd[4]].field_1) + 224]
                    mem[stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 341 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 224])] = mem[ceil32(stor10[cd[4]].field_1) + 256 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 224])]
                    if ceil32(mem[ceil32(stor10[cd[4]].field_1) + 224]) <= mem[ceil32(stor10[cd[4]].field_1) + 224]:
                        return Array(len=mem[ceil32(stor10[cd[4]].field_1) + 224], data=mem[stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 341 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 224])]), 
                    mem[mem[ceil32(stor10[cd[4]].field_1) + 224] + stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 341] = 0
                    return 32, mem[stor10[cd[4]].field_1 + ceil32(stor10[cd[4]].field_1) + 309 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 224]) + 32], 
                if not ownerOf[cd[4]]:
                    revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                if not cd[4]:
                    mem[ceil32(stor10[cd[4]].field_1) + 384] = 'https://ipfs.io/ipfs/'
                    mem[ceil32(stor10[cd[4]].field_1) + 405] = '0'
                    mem[ceil32(stor10[cd[4]].field_1) + 406] = 32
                    mem[ceil32(stor10[cd[4]].field_1) + 438] = mem[ceil32(stor10[cd[4]].field_1) + 352]
                    mem[ceil32(stor10[cd[4]].field_1) + 470 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 352])] = mem[ceil32(stor10[cd[4]].field_1) + 384 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 352])]
                    if ceil32(mem[ceil32(stor10[cd[4]].field_1) + 352]) > mem[ceil32(stor10[cd[4]].field_1) + 352]:
                        mem[mem[ceil32(stor10[cd[4]].field_1) + 352] + ceil32(stor10[cd[4]].field_1) + 470] = 0
                    return Array(len=mem[ceil32(stor10[cd[4]].field_1) + 352], data=mem[ceil32(stor10[cd[4]].field_1) + 470 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 352])]), 
                s = 0
                idx = cd[4]
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(stor10[cd[4]].field_1) + 288] = s
                if s:
                    mem[ceil32(stor10[cd[4]].field_1) + 320 len s] = call.data[calldata.size len s]
                t = s
                idx = cd[4]
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor10[cd[4]].field_1) + 288]:
                        revert with 0, 50
                    mem[t + ceil32(stor10[cd[4]].field_1) + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 352] = 'https://ipfs.io/ipfs/'
                mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 373] = 0
                mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 373 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 288])] = mem[ceil32(stor10[cd[4]].field_1) + 320 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + 288])]
                mem[mem[ceil32(stor10[cd[4]].field_1) + 288] + ceil32(stor10[cd[4]].field_1) + ceil32(s) + 373] = 32
                mem[mem[ceil32(stor10[cd[4]].field_1) + 288] + ceil32(stor10[cd[4]].field_1) + ceil32(s) + 405] = mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320]
                mem[mem[ceil32(stor10[cd[4]].field_1) + 288] + ceil32(stor10[cd[4]].field_1) + ceil32(s) + 437 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320])] = mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 352 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320])]
                if ceil32(mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320]) > mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320]:
                    mem[mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320] + mem[ceil32(stor10[cd[4]].field_1) + 288] + ceil32(stor10[cd[4]].field_1) + ceil32(s) + 437] = 0
                return Array(len=mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320], data=mem[mem[ceil32(stor10[cd[4]].field_1) + 288] + ceil32(stor10[cd[4]].field_1) + ceil32(s) + 437 len ceil32(mem[ceil32(stor10[cd[4]].field_1) + ceil32(s) + 320])]), 
        else:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[100] <= test266151307()
            require calldata.size > cd[100] + 35
            if ('cd', 100).length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 100).length
            require cd[100] + ('cd', 100).length + 36 <= calldata.size
            mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
            if not ownerOf[cd[68]]:
                revert with 0, 'ERC721: operator query for nonexistent token'
            if not ownerOf[cd[68]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[cd[68]] != msg.sender:
                if not ownerOf[cd[68]]:
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[cd[68]] != msg.sender:
                    if not stor5[stor2[cd[68]]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
            if not ownerOf[cd[68]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[cd[68]] != address(cd[4]):
                revert with 0, 'ERC721: transfer of token that is not own'
            if not address(cd[36]):
                revert with 0, 'ERC721: transfer to the zero address'
            if not address(cd[4]):
                stor9[cd[68]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = cd[68]
            else:
                if address(cd[4]) != address(cd[36]):
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    if balanceOf[address(cd[4])] < 1:
                        revert with 0, 17
                    if balanceOf[address(cd[4])] - 1 != stor7[cd[68]]:
                        tokenOfOwnerByIndex[address(cd[4])][stor7[cd[68]]] = tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1]
                        stor7[stor6[address(cd[4])][stor3[address(cd[4])] - 1]] = stor7[cd[68]]
                    stor7[cd[68]] = 0
                    tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])] - 1] = 0
            if address(cd[36]):
                if address(cd[36]) != address(cd[4]):
                    if not address(cd[36]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[36])][stor3[address(cd[36])]] = cd[68]
                    stor7[cd[68]] = balanceOf[address(cd[36])]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[cd[68]] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[cd[68]]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[cd[68]]
                stor9[cd[68]] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            approved[cd[68]] = 0
            if not ownerOf[cd[68]]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[cd[68]], 0, cd[68]);
            if balanceOf[address(cd[4])] < 1:
                revert with 0, 17
            balanceOf[address(cd[4])]--
            if balanceOf[address(cd[36])] > -2:
                revert with 0, 17
            balanceOf[address(cd[36])]++
            ownerOf[cd[68]] = address(cd[36])
            emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
            if ext_code.size(address(cd[36])):
                mem[ceil32(ceil32(('cd', 100).length)) + 133] = msg.sender
                mem[ceil32(ceil32(('cd', 100).length)) + 165] = address(cd[4])
                mem[ceil32(ceil32(('cd', 100).length)) + 197] = cd[68]
                mem[ceil32(ceil32(('cd', 100).length)) + 229] = 128
                mem[ceil32(ceil32(('cd', 100).length)) + 261] = ('cd', 100).length
                mem[ceil32(ceil32(('cd', 100).length)) + 293 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
                if ceil32(('cd', 100).length) > ('cd', 100).length:
                    mem[('cd', 100).length + ceil32(ceil32(('cd', 100).length)) + 293] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, address(cd[4]), cd[68], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                mem[ceil32(ceil32(('cd', 100).length)) + 129] = ext_call.return_data[0]
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
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}



}
