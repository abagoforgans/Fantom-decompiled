contract main {




// =====================  Runtime code  =====================


#
#  - publicMint(uint256 arg1)
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
uint256 whiteListEnd;
uint256 adminMint;
uint256 sub_efc6dbf2;
uint256 sub_fb11adc6;
address royaltyAddress;
address sub_12765d6fAddress;
address sub_a365a6f3Address;
address sub_4a1f33dbAddress;
address sub_1af395faAddress;
address sub_64585740Address;
address sub_f3beac73Address;
uint8 intEnableMinter; offset 160
uint8 enableWhiteList; offset 168
uint8 sub_6329d9ac; offset 176
address sub_847e9f8fAddress;
array of struct stor29;
mapping of uint8 stor30;

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

function sub_12765d6f(?) {
    return sub_12765d6fAddress
}

function mintFee() {
    return mintFee
}

function totalSupply() {
    return tokenByIndex.length
}

function whiteListEnd() {
    return whiteListEnd
}

function sub_1af395fa(?) {
    return sub_1af395faAddress
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

function sub_4a1f33db(?) {
    return sub_4a1f33dbAddress
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function enableWhiteList() {
    return bool(enableWhiteList)
}

function sub_6329d9ac(?) {
    return bool(sub_6329d9ac)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_64585740(?) {
    return sub_64585740Address
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

function sub_847e9f8f(?) {
    return sub_847e9f8fAddress
}

function adminMint() {
    return adminMint
}

function owner() {
    return owner
}

function enableMinter() {
    return bool(intEnableMinter)
}

function sub_a365a6f3(?) {
    return sub_a365a6f3Address
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

function sub_efc6dbf2(?) {
    return sub_efc6dbf2
}

function sub_f3beac73(?) {
    return sub_f3beac73Address
}

function isWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[arg1])
}

function sub_fb11adc6(?) {
    return sub_fb11adc6
}

function enableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    intEnableMinter = 1
    emit 0xf2df4f76: 1
}

function disableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    intEnableMinter = 0
    emit 0xf2df4f76: 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_cd944204(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb11adc6 = arg1
    emit 0x34cf83dd: maxMint
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and royaltyFee > -1 / arg2:
        revert with 0, 17
    return royaltyAddress, arg2 * royaltyFee / 100
}

function setMaxMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMint = arg1
    emit NewMaxMintCount(arg1);
}

function disableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    enableWhiteList = 0
    emit 0x17a2b403: 0
    whiteListEnd = 0
    emit NewWhitelistCount(0);
}

function setRoyaltyPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyFee = arg1
    emit NewRoyaltyFee(arg1);
}

function enableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    enableWhiteList = 1
    emit 0x17a2b403: 1
    whiteListEnd = 2300
    emit NewWhitelistCount(2300);
}

function addWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30[address(arg1)] = 1
    emit 0xfe3f50d0: address(arg1), 1
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30[address(arg1)] = 0
    emit 0xfe3f50d0: address(arg1), 0
}

function sweepEth() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
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
    emit 0x2543eb3d: (10^18 * arg1)
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

function sub_7fb173e3(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltyAddress = address(arg1)
    sub_12765d6fAddress = address(arg2)
    sub_a365a6f3Address = address(arg3)
    sub_4a1f33dbAddress = address(arg4)
    sub_1af395faAddress = address(arg5)
    sub_64585740Address = address(arg6)
    sub_f3beac73Address = address(arg7)
}

function sweepAnyTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
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

function addWhitelistBatch(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        stor30[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 30
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * arg1.length) + 129] = bool(stor30[mem[0]])
        emit 0xfe3f50d0: mem[ceil32(32 * arg1.length) + 97], bool(stor30[mem[0]])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeWhitelistBatch(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        stor30[mem[(32 * idx) + 140 len 20]] = 0
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 30
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * arg1.length) + 129] = bool(stor30[mem[0]])
        emit 0xfe3f50d0: mem[ceil32(32 * arg1.length) + 97], bool(stor30[mem[0]])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
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
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[arg1].field_0 = 0
            idx = 0
            while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                stor10[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit UpdateTokenURI(arg1, Array(len=arg2.length, data=arg2[all]));
}

function sub_21234c6c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor29[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor29.length = 0
            idx = 0
            while (uint255(stor29.length) * 0.5) + 31 / 32 > idx:
                stor29[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor29.length) == stor29.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor29[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor29.length = 0
            idx = 0
            while stor29.length.field_1 % 128 + 31 / 32 > idx:
                stor29[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor29.length):
            emit 0x2ddf447d: Array(len=2 * Mask(256, -1, stor29.length), data=Mask(248, 8, stor29.length))
        else:
            if bool(stor29.length) != 1:
                emit 0x2ddf447d: mem[ceil32(ceil32(arg1.length)) + 97 len -ceil32(ceil32(arg1.length)) - 97]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor29.length) * 0.5:
                    mem[idx + ceil32(ceil32(arg1.length)) + 161] = stor29[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x2ddf447d: Array(len=2 * Mask(256, -1, stor29.length), data=mem[ceil32(ceil32(arg1.length)) + 161 len ceil32(uint255(stor29.length) * 0.5)])
    else:
        if bool(stor29.length) == stor29.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor29.length):
            emit 0x2ddf447d: Array(len=stor29.length % 128, data=Mask(248, 8, stor29.length))
        else:
            if bool(stor29.length) != 1:
                emit 0x2ddf447d: mem[ceil32(ceil32(arg1.length)) + 97 len -ceil32(ceil32(arg1.length)) - 97]
            else:
                idx = 0
                s = 0
                while idx < stor29.length.field_1 % 128:
                    mem[idx + ceil32(ceil32(arg1.length)) + 161] = stor29[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x2ddf447d: Array(len=stor29.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 161 len ceil32(stor29.length.field_1 % 128)])
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
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
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
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function directory() {
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor29.length):
            if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor29.length):
                if 31 < uint255(stor29.length) * 0.5:
                    mem[128] = uint256(stor29.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor29.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor29[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor29.length.field_8)
        else:
            if bool(stor29.length) == stor29.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor29.length.field_1 % 128:
                if 31 < stor29.length.field_1 % 128:
                    mem[128] = uint256(stor29.field_0)
                    idx = 128
                    s = 0
                    while stor29.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor29[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor29.length.field_8)
        mem[ceil32(uint255(stor29.length) * 0.5) + 192 len ceil32(uint255(stor29.length) * 0.5)] = mem[128 len ceil32(uint255(stor29.length) * 0.5)]
        if ceil32(uint255(stor29.length) * 0.5) > uint255(stor29.length) * 0.5:
            mem[(uint255(stor29.length) * 0.5) + ceil32(uint255(stor29.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor29.length), data=mem[128 len ceil32(uint255(stor29.length) * 0.5)], mem[(2 * ceil32(uint255(stor29.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor29.length) * 0.5)]), 
    if bool(stor29.length) == stor29.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor29.length):
        if bool(stor29.length) == uint255(stor29.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor29.length):
            if 31 < uint255(stor29.length) * 0.5:
                mem[128] = uint256(stor29.field_0)
                idx = 128
                s = 0
                while (uint255(stor29.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor29[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor29.length.field_8)
    else:
        if bool(stor29.length) == stor29.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor29.length.field_1 % 128:
            if 31 < stor29.length.field_1 % 128:
                mem[128] = uint256(stor29.field_0)
                idx = 128
                s = 0
                while stor29.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor29[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor29.length.field_8)
    mem[ceil32(stor29.length.field_1 % 128) + 192 len ceil32(stor29.length.field_1 % 128)] = mem[128 len ceil32(stor29.length.field_1 % 128)]
    if ceil32(stor29.length.field_1 % 128) > stor29.length.field_1 % 128:
        mem[stor29.length.field_1 % 128 + ceil32(stor29.length.field_1 % 128) + 192] = 0
    return Array(len=stor29.length % 128, data=mem[128 len ceil32(stor29.length.field_1 % 128)], mem[(2 * ceil32(stor29.length.field_1 % 128)) + 192 len 2 * ceil32(stor29.length.field_1 % 128)]), 
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

function sub_5971a906(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require adminMint < sub_efc6dbf2
    idx = 0
    while idx < 50:
        if not sub_847e9f8fAddress:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenCounter
        if sub_847e9f8fAddress:
            if not sub_847e9f8fAddress:
                if balanceOf[stor28] > -2:
                    revert with 0, 17
                balanceOf[stor28]++
                mem[0] = tokenCounter
                mem[32] = 2
                ownerOf[stor13] = sub_847e9f8fAddress
                emit Transfer(0, sub_847e9f8fAddress, tokenCounter);
                if not tokenCounter:
                    _223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_223] = 1
                    mem[_223 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_225] = 5
                    mem[_225 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _226 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _226 + 32] = mem[s + _223 + 32]
                        s = s + 32
                        continue 
                    mem[_226 + 33] = 0
                    _406 = mem[_225]
                    s = 0
                    while s < _406:
                        mem[s + _226 + 33] = mem[s + _225 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_406) <= _406:
                        _929 = mem[64]
                        mem[mem[64]] = _406 + _226 + -mem[64] + 1
                        mem[64] = _406 + _226 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _976 = mem[_929]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _976:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _976) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _929 + 32
                                while _929 + _976 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _976 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _976:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _976) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _929 + 32
                                while _929 + _976 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _976 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_406 + _226 + 33] = 0
                        _930 = mem[64]
                        mem[mem[64]] = _406 + _226 + -mem[64] + 1
                        mem[64] = _406 + _226 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _979 = mem[_930]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _979:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _979) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _930 + 32
                                while _930 + _979 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _979 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _979:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _979) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _930 + 32
                                while _930 + _979 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _979 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    t = 0
                    s = tokenCounter
                    while s:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 0, 65
                    _402 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_402]:
                                revert with 0, 50
                            mem[u + _402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _909 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_909] = 5
                        mem[_909 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _910 = mem[64]
                        _921 = mem[_402]
                        s = 0
                        while s < _921:
                            mem[s + _910 + 32] = mem[s + _402 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_921) <= _921:
                            _1425 = mem[_909]
                            s = 0
                            while s < _1425:
                                mem[s + _910 + _921 + 32] = mem[s + _909 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1425) <= _1425:
                                _1749 = mem[64]
                                mem[mem[64]] = _1425 + _910 + _921 - mem[64]
                                mem[64] = _1425 + _910 + _921 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1798 = mem[_1749]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1798:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1798) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1749 + 32
                                        while _1749 + _1798 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1798 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1798:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1798) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1749 + 32
                                        while _1749 + _1798 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1798 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1425 + _910 + _921 + 32] = 0
                                _1750 = mem[64]
                                mem[mem[64]] = _1425 + _910 + _921 - mem[64]
                                mem[64] = _1425 + _910 + _921 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1801 = mem[_1750]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1801:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1801) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1750 + 32
                                        while _1750 + _1801 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1801 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1801:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1801) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1750 + 32
                                        while _1750 + _1801 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1801 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_921 + _910 + 32] = 0
                            _1426 = mem[_909]
                            s = 0
                            while s < _1426:
                                mem[s + _910 + _921 + 32] = mem[s + _909 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1426) <= _1426:
                                _1751 = mem[64]
                                mem[mem[64]] = _1426 + _910 + _921 - mem[64]
                                mem[64] = _1426 + _910 + _921 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1804 = mem[_1751]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1804:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1804) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1751 + 32
                                        while _1751 + _1804 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1804 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1804:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1804) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1751 + 32
                                        while _1751 + _1804 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1804 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1426 + _910 + _921 + 32] = 0
                                _1752 = mem[64]
                                mem[mem[64]] = _1426 + _910 + _921 - mem[64]
                                mem[64] = _1426 + _910 + _921 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1807 = mem[_1752]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1807:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1807) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1752 + 32
                                        while _1752 + _1807 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1807 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1807:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1807) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1752 + 32
                                        while _1752 + _1807 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1807 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_402 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_402]:
                                revert with 0, 50
                            mem[u + _402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _911 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_911] = 5
                        mem[_911 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _912 = mem[64]
                        _922 = mem[_402]
                        s = 0
                        while s < _922:
                            mem[s + _912 + 32] = mem[s + _402 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_922) <= _922:
                            _1427 = mem[_911]
                            s = 0
                            while s < _1427:
                                mem[s + _912 + _922 + 32] = mem[s + _911 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1427) <= _1427:
                                _1753 = mem[64]
                                mem[mem[64]] = _1427 + _912 + _922 - mem[64]
                                mem[64] = _1427 + _912 + _922 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1810 = mem[_1753]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1810:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1810) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1753 + 32
                                        while _1753 + _1810 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1810 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1810:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1810) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1753 + 32
                                        while _1753 + _1810 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1810 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1427 + _912 + _922 + 32] = 0
                                _1754 = mem[64]
                                mem[mem[64]] = _1427 + _912 + _922 - mem[64]
                                mem[64] = _1427 + _912 + _922 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1813 = mem[_1754]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1813:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1813) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1754 + 32
                                        while _1754 + _1813 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1813 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1813:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1813) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1754 + 32
                                        while _1754 + _1813 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1813 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_922 + _912 + 32] = 0
                            _1428 = mem[_911]
                            s = 0
                            while s < _1428:
                                mem[s + _912 + _922 + 32] = mem[s + _911 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1428) <= _1428:
                                _1755 = mem[64]
                                mem[mem[64]] = _1428 + _912 + _922 - mem[64]
                                mem[64] = _1428 + _912 + _922 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1816 = mem[_1755]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1816:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1816) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1755 + 32
                                        while _1755 + _1816 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1816 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1816:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1816) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1755 + 32
                                        while _1755 + _1816 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1816 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1428 + _912 + _922 + 32] = 0
                                _1756 = mem[64]
                                mem[mem[64]] = _1428 + _912 + _922 - mem[64]
                                mem[64] = _1428 + _912 + _922 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1819 = mem[_1756]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1819:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1819) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1756 + 32
                                        while _1756 + _1819 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1819 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1819:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1819) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1756 + 32
                                        while _1756 + _1819 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1819 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
            else:
                if not sub_847e9f8fAddress:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[stor28][stor3[stor28]] = tokenCounter
                stor7[stor13] = balanceOf[stor28]
                if balanceOf[stor28] > -2:
                    revert with 0, 17
                balanceOf[stor28]++
                mem[0] = tokenCounter
                mem[32] = 2
                ownerOf[stor13] = sub_847e9f8fAddress
                emit Transfer(0, sub_847e9f8fAddress, tokenCounter);
                if not tokenCounter:
                    _233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_233] = 1
                    mem[_233 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = 5
                    mem[_234 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _235 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _235 + 32] = mem[s + _233 + 32]
                        s = s + 32
                        continue 
                    mem[_235 + 33] = 0
                    _408 = mem[_234]
                    s = 0
                    while s < _408:
                        mem[s + _235 + 33] = mem[s + _234 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_408) <= _408:
                        _933 = mem[64]
                        mem[mem[64]] = _408 + _235 + -mem[64] + 1
                        mem[64] = _408 + _235 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _988 = mem[_933]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _988:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _988) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _933 + 32
                                while _933 + _988 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _988 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _988:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _988) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _933 + 32
                                while _933 + _988 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _988 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_408 + _235 + 33] = 0
                        _934 = mem[64]
                        mem[mem[64]] = _408 + _235 + -mem[64] + 1
                        mem[64] = _408 + _235 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _991 = mem[_934]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _991:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _991) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _934 + 32
                                while _934 + _991 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _991 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _991:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _991) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _934 + 32
                                while _934 + _991 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _991 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    t = 0
                    s = tokenCounter
                    while s:
                        if t == -1:
                            revert with 0, 17
                        t = t + 1
                        s = s / 10
                        continue 
                    if t > test266151307():
                        revert with 0, 65
                    _403 = mem[64]
                    mem[mem[64]] = t
                    mem[64] = mem[64] + ceil32(t) + 32
                    if not t:
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_403]:
                                revert with 0, 50
                            mem[u + _403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_913] = 5
                        mem[_913 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _914 = mem[64]
                        _923 = mem[_403]
                        s = 0
                        while s < _923:
                            mem[s + _914 + 32] = mem[s + _403 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_923) <= _923:
                            _1429 = mem[_913]
                            s = 0
                            while s < _1429:
                                mem[s + _914 + _923 + 32] = mem[s + _913 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1429) <= _1429:
                                _1757 = mem[64]
                                mem[mem[64]] = _1429 + _914 + _923 - mem[64]
                                mem[64] = _1429 + _914 + _923 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1822 = mem[_1757]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1822:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if adminMint == -1:
                                            revert with 0, 17
                                        adminMint++
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _1822) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1757 + 32
                                    while _1757 + _1822 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1822 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                    continue 
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1822:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1822) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1757 + 32
                                    while _1757 + _1822 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1822 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_1429 + _914 + _923 + 32] = 0
                                _1758 = mem[64]
                                mem[mem[64]] = _1429 + _914 + _923 - mem[64]
                                mem[64] = _1429 + _914 + _923 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1825 = mem[_1758]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1825:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if adminMint == -1:
                                            revert with 0, 17
                                        adminMint++
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _1825) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1758 + 32
                                    while _1758 + _1825 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1825 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                    continue 
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1825:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1825) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1758 + 32
                                    while _1758 + _1825 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1825 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_923 + _914 + 32] = 0
                            _1430 = mem[_913]
                            s = 0
                            while s < _1430:
                                mem[s + _914 + _923 + 32] = mem[s + _913 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1430) <= _1430:
                                _1759 = mem[64]
                                mem[mem[64]] = _1430 + _914 + _923 - mem[64]
                                mem[64] = _1430 + _914 + _923 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1828 = mem[_1759]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1828:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if adminMint == -1:
                                            revert with 0, 17
                                        adminMint++
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _1828) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1759 + 32
                                    while _1759 + _1828 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1828 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                    continue 
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1828:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1828) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1759 + 32
                                    while _1759 + _1828 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1828 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_1430 + _914 + _923 + 32] = 0
                                _1760 = mem[64]
                                mem[mem[64]] = _1430 + _914 + _923 - mem[64]
                                mem[64] = _1430 + _914 + _923 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1831 = mem[_1760]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1831:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if adminMint == -1:
                                            revert with 0, 17
                                        adminMint++
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _1831) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1760 + 32
                                    while _1760 + _1831 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1831 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                    continue 
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1831:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1831) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1760 + 32
                                    while _1760 + _1831 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1831 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_403 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_403]:
                                revert with 0, 50
                            mem[u + _403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _915 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_915] = 5
                        mem[_915 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _916 = mem[64]
                        _924 = mem[_403]
                        s = 0
                        while s < _924:
                            mem[s + _916 + 32] = mem[s + _403 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_924) <= _924:
                            _1431 = mem[_915]
                            s = 0
                            while s < _1431:
                                mem[s + _916 + _924 + 32] = mem[s + _915 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1431) <= _1431:
                                _1761 = mem[64]
                                mem[mem[64]] = _1431 + _916 + _924 - mem[64]
                                mem[64] = _1431 + _916 + _924 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1834 = mem[_1761]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1834:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1834) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1761 + 32
                                        while _1761 + _1834 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1834 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1834:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1834) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1761 + 32
                                        while _1761 + _1834 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1834 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1431 + _916 + _924 + 32] = 0
                                _1762 = mem[64]
                                mem[mem[64]] = _1431 + _916 + _924 - mem[64]
                                mem[64] = _1431 + _916 + _924 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1837 = mem[_1762]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1837:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1837) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1762 + 32
                                        while _1762 + _1837 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1837 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1837:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1837) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1762 + 32
                                        while _1762 + _1837 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1837 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_924 + _916 + 32] = 0
                            _1432 = mem[_915]
                            s = 0
                            while s < _1432:
                                mem[s + _916 + _924 + 32] = mem[s + _915 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1432) <= _1432:
                                _1763 = mem[64]
                                mem[mem[64]] = _1432 + _916 + _924 - mem[64]
                                mem[64] = _1432 + _916 + _924 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1840 = mem[_1763]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1840:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1840) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1763 + 32
                                        while _1763 + _1840 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1840 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1840:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1840) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1763 + 32
                                        while _1763 + _1840 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1840 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_1432 + _916 + _924 + 32] = 0
                                _1764 = mem[64]
                                mem[mem[64]] = _1432 + _916 + _924 - mem[64]
                                mem[64] = _1432 + _916 + _924 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _1843 = mem[_1764]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1843:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1843) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1764 + 32
                                        while _1764 + _1843 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1843 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _1843:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _1843) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _1764 + 32
                                        while _1764 + _1843 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1843 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
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
            if balanceOf[stor28] > -2:
                revert with 0, 17
            balanceOf[stor28]++
            mem[0] = tokenCounter
            mem[32] = 2
            ownerOf[stor13] = sub_847e9f8fAddress
            emit Transfer(0, sub_847e9f8fAddress, tokenCounter);
            if not tokenCounter:
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 1
                mem[_239 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _240 = mem[64]
                mem[64] = mem[64] + 64
                mem[_240] = 5
                mem[_240 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                _241 = mem[64]
                s = 0
                while s < 1:
                    mem[s + _241 + 32] = mem[s + _239 + 32]
                    s = s + 32
                    continue 
                mem[_241 + 33] = 0
                _410 = mem[_240]
                s = 0
                while s < _410:
                    mem[s + _241 + 33] = mem[s + _240 + 32]
                    s = s + 32
                    continue 
                if ceil32(_410) <= _410:
                    _937 = mem[64]
                    mem[mem[64]] = _410 + _241 + -mem[64] + 1
                    mem[64] = _410 + _241 + 33
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1000 = mem[_937]
                    if bool(stor10[stor13].field_0):
                        if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenCounter, 10)
                        if not _1000:
                            stor10[stor13].field_0 = 0
                            s = sha3(sha3(tokenCounter, 10))
                            while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor13].field_0 = (2 * _1000) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _937 + 32
                            while _937 + _1000 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1000 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenCounter, 10)
                        if not _1000:
                            stor10[stor13].field_0 = 0
                            s = sha3(sha3(tokenCounter, 10))
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor13].field_0 = (2 * _1000) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _937 + 32
                            while _937 + _1000 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1000 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[_410 + _241 + 33] = 0
                    _938 = mem[64]
                    mem[mem[64]] = _410 + _241 + -mem[64] + 1
                    mem[64] = _410 + _241 + 33
                    if not ownerOf[stor13]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = tokenCounter
                    mem[32] = 10
                    _1003 = mem[_938]
                    if bool(stor10[stor13].field_0):
                        if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenCounter, 10)
                        if not _1003:
                            stor10[stor13].field_0 = 0
                            s = sha3(sha3(tokenCounter, 10))
                            while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor13].field_0 = (2 * _1003) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _938 + 32
                            while _938 + _1003 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1003 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenCounter, 10)
                        if not _1003:
                            stor10[stor13].field_0 = 0
                            s = sha3(sha3(tokenCounter, 10))
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor13].field_0 = (2 * _1003) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _938 + 32
                            while _938 + _1003 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1003 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            else:
                t = 0
                s = tokenCounter
                while s:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    s = s / 10
                    continue 
                if t > test266151307():
                    revert with 0, 65
                _404 = mem[64]
                mem[mem[64]] = t
                mem[64] = mem[64] + ceil32(t) + 32
                if not t:
                    u = t
                    s = tokenCounter
                    while s:
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if not u:
                            revert with 0, 17
                        if u - 1 >= mem[_404]:
                            revert with 0, 50
                        mem[u + _404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _917 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_917] = 5
                    mem[_917 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _918 = mem[64]
                    _925 = mem[_404]
                    s = 0
                    while s < _925:
                        mem[s + _918 + 32] = mem[s + _404 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_925) <= _925:
                        _1433 = mem[_917]
                        s = 0
                        while s < _1433:
                            mem[s + _918 + _925 + 32] = mem[s + _917 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1433) <= _1433:
                            _1765 = mem[64]
                            mem[mem[64]] = _1433 + _918 + _925 - mem[64]
                            mem[64] = _1433 + _918 + _925 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1846 = mem[_1765]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1846:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1846) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1765 + 32
                                    while _1765 + _1846 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1846 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1846:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1846) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1765 + 32
                                    while _1765 + _1846 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1846 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_1433 + _918 + _925 + 32] = 0
                            _1766 = mem[64]
                            mem[mem[64]] = _1433 + _918 + _925 - mem[64]
                            mem[64] = _1433 + _918 + _925 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1849 = mem[_1766]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1849:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1849) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1766 + 32
                                    while _1766 + _1849 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1849 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1849:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1849) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1766 + 32
                                    while _1766 + _1849 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1849 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_925 + _918 + 32] = 0
                        _1434 = mem[_917]
                        s = 0
                        while s < _1434:
                            mem[s + _918 + _925 + 32] = mem[s + _917 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1434) <= _1434:
                            _1767 = mem[64]
                            mem[mem[64]] = _1434 + _918 + _925 - mem[64]
                            mem[64] = _1434 + _918 + _925 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1852 = mem[_1767]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1852:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1852) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1767 + 32
                                    while _1767 + _1852 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1852 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1852:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1852) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1767 + 32
                                    while _1767 + _1852 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1852 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_1434 + _918 + _925 + 32] = 0
                            _1768 = mem[64]
                            mem[mem[64]] = _1434 + _918 + _925 - mem[64]
                            mem[64] = _1434 + _918 + _925 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1855 = mem[_1768]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1855:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1855) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1768 + 32
                                    while _1768 + _1855 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1855 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1855:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1855) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1768 + 32
                                    while _1768 + _1855 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1855 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    mem[_404 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = tokenCounter
                    while s:
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if not u:
                            revert with 0, 17
                        if u - 1 >= mem[_404]:
                            revert with 0, 50
                        mem[u + _404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_919] = 5
                    mem[_919 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _920 = mem[64]
                    _926 = mem[_404]
                    s = 0
                    while s < _926:
                        mem[s + _920 + 32] = mem[s + _404 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_926) <= _926:
                        _1435 = mem[_919]
                        s = 0
                        while s < _1435:
                            mem[s + _920 + _926 + 32] = mem[s + _919 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1435) <= _1435:
                            _1769 = mem[64]
                            mem[mem[64]] = _1435 + _920 + _926 - mem[64]
                            mem[64] = _1435 + _920 + _926 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1858 = mem[_1769]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1858:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1858) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1769 + 32
                                    while _1769 + _1858 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1858 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1858:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                    continue 
                                stor10[stor13].field_0 = (2 * _1858) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _1769 + 32
                                while _1769 + _1858 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1858 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[_1435 + _920 + _926 + 32] = 0
                            _1770 = mem[64]
                            mem[mem[64]] = _1435 + _920 + _926 - mem[64]
                            mem[64] = _1435 + _920 + _926 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1861 = mem[_1770]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1861:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1861) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1770 + 32
                                    while _1770 + _1861 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1861 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1861:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                    continue 
                                stor10[stor13].field_0 = (2 * _1861) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _1770 + 32
                                while _1770 + _1861 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1861 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_926 + _920 + 32] = 0
                        _1436 = mem[_919]
                        s = 0
                        while s < _1436:
                            mem[s + _920 + _926 + 32] = mem[s + _919 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1436) <= _1436:
                            _1771 = mem[64]
                            mem[mem[64]] = _1436 + _920 + _926 - mem[64]
                            mem[64] = _1436 + _920 + _926 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1864 = mem[_1771]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1864:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1864) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1771 + 32
                                    while _1771 + _1864 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1864 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1864:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                    continue 
                                stor10[stor13].field_0 = (2 * _1864) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _1771 + 32
                                while _1771 + _1864 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1864 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[_1436 + _920 + _926 + 32] = 0
                            _1772 = mem[64]
                            mem[mem[64]] = _1436 + _920 + _926 - mem[64]
                            mem[64] = _1436 + _920 + _926 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _1867 = mem[_1772]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1867:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _1867) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _1772 + 32
                                    while _1772 + _1867 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1867 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _1867:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    if tokenCounter == -1:
                                        revert with 0, 17
                                    tokenCounter++
                                    if adminMint == -1:
                                        revert with 0, 17
                                    adminMint++
                                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                    continue 
                                stor10[stor13].field_0 = (2 * _1867) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _1772 + 32
                                while _1772 + _1867 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _1867 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
        if tokenCounter == -1:
            revert with 0, 17
        tokenCounter++
        if adminMint == -1:
            revert with 0, 17
        adminMint++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if 300 == adminMint:
        sub_6329d9ac = 1
}



}
