contract main {




// =====================  Runtime code  =====================


#
#  - sub_5971a906(?)
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

function publicMint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require intEnableMinter
    require sub_6329d9ac
    if not enableWhiteList:
        if mintFee and arg1 > -1 / mintFee:
            revert with 0, 17
        require msg.value == mintFee * arg1
        if tokenCounter > !arg1:
            revert with 0, 17
        require tokenCounter + arg1 < maxMint
        require arg1 <= sub_fb11adc6
        if not arg1:
            revert with 0, 18
        if msg.value / arg1 < 10 * 10^18:
            revert with 0, 17
        if (msg.value / arg1) - 10 * 10^18 > 0xc9a633fcd967300c9a633fcd967300c9a633fcd967300c9a633fcd967300c9:
            revert with 0, 17
        if (msg.value / arg1) - 10 * 10^18 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
            revert with 0, 17
        call sub_12765d6fAddress with:
           value 10 * 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (325 * msg.value / arg1) - 3250 * 10^18 / 1000 and arg1 > -1 / (325 * msg.value / arg1) - 3250 * 10^18 / 1000:
            revert with 0, 17
        call sub_a365a6f3Address with:
           value (325 * msg.value / arg1) - 3250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (325 * msg.value / arg1) - 3250 * 10^18 / 1000 and arg1 > -1 / (325 * msg.value / arg1) - 3250 * 10^18 / 1000:
            revert with 0, 17
        call sub_4a1f33dbAddress with:
           value (325 * msg.value / arg1) - 3250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (125 * msg.value / arg1) - 1250 * 10^18 / 1000 and arg1 > -1 / (125 * msg.value / arg1) - 1250 * 10^18 / 1000:
            revert with 0, 17
        call sub_1af395faAddress with:
           value (125 * msg.value / arg1) - 1250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (125 * msg.value / arg1) - 1250 * 10^18 / 1000 and arg1 > -1 / (125 * msg.value / arg1) - 1250 * 10^18 / 1000:
            revert with 0, 17
        call sub_64585740Address with:
           value (125 * msg.value / arg1) - 1250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (msg.value / arg1) - 10 * 10^18 / 10 and arg1 > -1 / (msg.value / arg1) - 10 * 10^18 / 10:
            revert with 0, 17
        call sub_f3beac73Address with:
           value (msg.value / arg1) - 10 * 10^18 / 10 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
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
                        _638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_638] = 1
                        mem[_638 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_642] = 5
                        mem[_642 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _643 = mem[64]
                        s = 0
                        while s < 1:
                            mem[s + _643 + 32] = mem[s + _638 + 32]
                            s = s + 32
                            continue 
                        mem[_643 + 33] = 0
                        _1003 = mem[_642]
                        s = 0
                        while s < _1003:
                            mem[s + _643 + 33] = mem[s + _642 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1003) <= _1003:
                            _2048 = mem[64]
                            mem[mem[64]] = _1003 + _643 + -mem[64] + 1
                            mem[64] = _1003 + _643 + 33
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _2137 = mem[_2048]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2137:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2137) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2048 + 32
                                    while _2048 + _2137 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2137 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2137:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2137) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2048 + 32
                                    while _2048 + _2137 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2137 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_1003 + _643 + 33] = 0
                            _2049 = mem[64]
                            mem[mem[64]] = _1003 + _643 + -mem[64] + 1
                            mem[64] = _1003 + _643 + 33
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _2140 = mem[_2049]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2140:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2140) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2049 + 32
                                    while _2049 + _2140 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2140 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2140:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2140) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2049 + 32
                                    while _2049 + _2140 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2140 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        if tokenCounter == -1:
                            revert with 0, 17
                        tokenCounter++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    _996 = mem[64]
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
                            if u - 1 >= mem[_996]:
                                revert with 0, 50
                            mem[u + _996 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2010] = 5
                        mem[_2010 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2011 = mem[64]
                        _2034 = mem[_996]
                        s = 0
                        while s < _2034:
                            mem[s + _2011 + 32] = mem[s + _996 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2034) <= _2034:
                            _3042 = mem[_2010]
                            s = 0
                            while s < _3042:
                                mem[s + _2011 + _2034 + 32] = mem[s + _2010 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3042) <= _3042:
                                _3690 = mem[64]
                                mem[mem[64]] = _3042 + _2011 + _2034 - mem[64]
                                mem[64] = _3042 + _2011 + _2034 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3787 = mem[_3690]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3787:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3787) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3690 + 32
                                        while _3690 + _3787 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3787 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3787:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3787) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3690 + 32
                                        while _3690 + _3787 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3787 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3042 + _2011 + _2034 + 32] = 0
                                _3691 = mem[64]
                                mem[mem[64]] = _3042 + _2011 + _2034 - mem[64]
                                mem[64] = _3042 + _2011 + _2034 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3790 = mem[_3691]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3790:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3790) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3691 + 32
                                        while _3691 + _3790 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3790 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3790:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3790) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3691 + 32
                                        while _3691 + _3790 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3790 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2034 + _2011 + 32] = 0
                            _3043 = mem[_2010]
                            s = 0
                            while s < _3043:
                                mem[s + _2011 + _2034 + 32] = mem[s + _2010 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3043) <= _3043:
                                _3692 = mem[64]
                                mem[mem[64]] = _3043 + _2011 + _2034 - mem[64]
                                mem[64] = _3043 + _2011 + _2034 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3793 = mem[_3692]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3793:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3793) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3692 + 32
                                        while _3692 + _3793 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3793 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3793:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3793) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3692 + 32
                                        while _3692 + _3793 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3793 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3043 + _2011 + _2034 + 32] = 0
                                _3693 = mem[64]
                                mem[mem[64]] = _3043 + _2011 + _2034 - mem[64]
                                mem[64] = _3043 + _2011 + _2034 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3796 = mem[_3693]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3796:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3796) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3693 + 32
                                        while _3693 + _3796 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3796 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3796:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3796) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3693 + 32
                                        while _3693 + _3796 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3796 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        if tokenCounter == -1:
                            revert with 0, 17
                        tokenCounter++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_996 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = tokenCounter
                    while s:
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if not u:
                            revert with 0, 17
                        if u - 1 >= mem[_996]:
                            revert with 0, 50
                        mem[u + _996 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _2012 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2012] = 5
                    mem[_2012 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _2013 = mem[64]
                    _2035 = mem[_996]
                    s = 0
                    while s < _2035:
                        mem[s + _2013 + 32] = mem[s + _996 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2035) <= _2035:
                        _3044 = mem[_2012]
                        s = 0
                        while s < _3044:
                            mem[s + _2013 + _2035 + 32] = mem[s + _2012 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3044) <= _3044:
                            _3694 = mem[64]
                            mem[mem[64]] = _3044 + _2013 + _2035 - mem[64]
                            mem[64] = _3044 + _2013 + _2035 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3799 = mem[_3694]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3799:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3799) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3694 + 32
                                    while _3694 + _3799 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3799 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3799:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3799) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3694 + 32
                            while _3694 + _3799 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3799 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            mem[_3044 + _2013 + _2035 + 32] = 0
                            _3695 = mem[64]
                            mem[mem[64]] = _3044 + _2013 + _2035 - mem[64]
                            mem[64] = _3044 + _2013 + _2035 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3802 = mem[_3695]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3802:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3802) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3695 + 32
                                    while _3695 + _3802 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3802 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3802:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3802) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3695 + 32
                            while _3695 + _3802 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3802 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[_2035 + _2013 + 32] = 0
                        _3045 = mem[_2012]
                        s = 0
                        while s < _3045:
                            mem[s + _2013 + _2035 + 32] = mem[s + _2012 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3045) <= _3045:
                            _3696 = mem[64]
                            mem[mem[64]] = _3045 + _2013 + _2035 - mem[64]
                            mem[64] = _3045 + _2013 + _2035 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3805 = mem[_3696]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3805:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3805) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3696 + 32
                                    while _3696 + _3805 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3805 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3805:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3805) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3696 + 32
                            while _3696 + _3805 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3805 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            mem[_3045 + _2013 + _2035 + 32] = 0
                            _3697 = mem[64]
                            mem[mem[64]] = _3045 + _2013 + _2035 - mem[64]
                            mem[64] = _3045 + _2013 + _2035 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3808 = mem[_3697]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3808:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3808) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3697 + 32
                                    while _3697 + _3808 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3808 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3808:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3808) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3697 + 32
                            while _3697 + _3808 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3808 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if tokenCounter == -1:
                        revert with 0, 17
                    tokenCounter++
                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
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
                    _657 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_657] = 1
                    mem[_657 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_660] = 5
                    mem[_660 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _661 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _661 + 32] = mem[s + _657 + 32]
                        s = s + 32
                        continue 
                    mem[_661 + 33] = 0
                    _1005 = mem[_660]
                    s = 0
                    while s < _1005:
                        mem[s + _661 + 33] = mem[s + _660 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1005) <= _1005:
                        _2052 = mem[64]
                        mem[mem[64]] = _1005 + _661 + -mem[64] + 1
                        mem[64] = _1005 + _661 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2149 = mem[_2052]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2149:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2149) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2052 + 32
                                while _2052 + _2149 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2149 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2149:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2149) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2052 + 32
                                while _2052 + _2149 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2149 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_1005 + _661 + 33] = 0
                        _2053 = mem[64]
                        mem[mem[64]] = _1005 + _661 + -mem[64] + 1
                        mem[64] = _1005 + _661 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2152 = mem[_2053]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2152:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2152) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2053 + 32
                                while _2053 + _2152 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2152 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2152:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2152) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2053 + 32
                                while _2053 + _2152 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2152 + 31) >> 5)
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
                    _997 = mem[64]
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
                            if u - 1 >= mem[_997]:
                                revert with 0, 50
                            mem[u + _997 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2014] = 5
                        mem[_2014 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2015 = mem[64]
                        _2036 = mem[_997]
                        s = 0
                        while s < _2036:
                            mem[s + _2015 + 32] = mem[s + _997 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2036) <= _2036:
                            _3046 = mem[_2014]
                            s = 0
                            while s < _3046:
                                mem[s + _2015 + _2036 + 32] = mem[s + _2014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3046) <= _3046:
                                _3698 = mem[64]
                                mem[mem[64]] = _3046 + _2015 + _2036 - mem[64]
                                mem[64] = _3046 + _2015 + _2036 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3811 = mem[_3698]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3811:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3811) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3698 + 32
                                        while _3698 + _3811 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3811 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3811:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3811) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3698 + 32
                                    while _3698 + _3811 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3811 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_3046 + _2015 + _2036 + 32] = 0
                                _3699 = mem[64]
                                mem[mem[64]] = _3046 + _2015 + _2036 - mem[64]
                                mem[64] = _3046 + _2015 + _2036 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3814 = mem[_3699]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3814:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3814) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3699 + 32
                                        while _3699 + _3814 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3814 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3814:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3814) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3699 + 32
                                    while _3699 + _3814 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3814 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_2036 + _2015 + 32] = 0
                            _3047 = mem[_2014]
                            s = 0
                            while s < _3047:
                                mem[s + _2015 + _2036 + 32] = mem[s + _2014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3047) <= _3047:
                                _3700 = mem[64]
                                mem[mem[64]] = _3047 + _2015 + _2036 - mem[64]
                                mem[64] = _3047 + _2015 + _2036 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3817 = mem[_3700]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3817:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3817) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3700 + 32
                                        while _3700 + _3817 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3817 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3817:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3817) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3700 + 32
                                    while _3700 + _3817 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3817 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_3047 + _2015 + _2036 + 32] = 0
                                _3701 = mem[64]
                                mem[mem[64]] = _3047 + _2015 + _2036 - mem[64]
                                mem[64] = _3047 + _2015 + _2036 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3820 = mem[_3701]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3820:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3820) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3701 + 32
                                        while _3701 + _3820 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3820 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3820:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3820) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3701 + 32
                                    while _3701 + _3820 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3820 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_997 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_997]:
                                revert with 0, 50
                            mem[u + _997 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2016] = 5
                        mem[_2016 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2017 = mem[64]
                        _2037 = mem[_997]
                        s = 0
                        while s < _2037:
                            mem[s + _2017 + 32] = mem[s + _997 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2037) <= _2037:
                            _3048 = mem[_2016]
                            s = 0
                            while s < _3048:
                                mem[s + _2017 + _2037 + 32] = mem[s + _2016 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3048) <= _3048:
                                _3702 = mem[64]
                                mem[mem[64]] = _3048 + _2017 + _2037 - mem[64]
                                mem[64] = _3048 + _2017 + _2037 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3823 = mem[_3702]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3823:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3823) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3702 + 32
                                    while _3702 + _3823 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3823 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3823:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3823) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3702 + 32
                                        while _3702 + _3823 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3823 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3048 + _2017 + _2037 + 32] = 0
                                _3703 = mem[64]
                                mem[mem[64]] = _3048 + _2017 + _2037 - mem[64]
                                mem[64] = _3048 + _2017 + _2037 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3826 = mem[_3703]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3826:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3826) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3703 + 32
                                    while _3703 + _3826 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3826 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3826:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3826) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3703 + 32
                                        while _3703 + _3826 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3826 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2037 + _2017 + 32] = 0
                            _3049 = mem[_2016]
                            s = 0
                            while s < _3049:
                                mem[s + _2017 + _2037 + 32] = mem[s + _2016 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3049) <= _3049:
                                _3704 = mem[64]
                                mem[mem[64]] = _3049 + _2017 + _2037 - mem[64]
                                mem[64] = _3049 + _2017 + _2037 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3829 = mem[_3704]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3829:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3829) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3704 + 32
                                    while _3704 + _3829 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3829 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3829:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3829) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3704 + 32
                                        while _3704 + _3829 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3829 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3049 + _2017 + _2037 + 32] = 0
                                _3705 = mem[64]
                                mem[mem[64]] = _3049 + _2017 + _2037 - mem[64]
                                mem[64] = _3049 + _2017 + _2037 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3832 = mem[_3705]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3832:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3832) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3705 + 32
                                    while _3705 + _3832 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3832 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3832:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3832) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3705 + 32
                                        while _3705 + _3832 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3832 + 31) >> 5)
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenCounter
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, tokenCounter);
                if not tokenCounter:
                    _667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_667] = 1
                    mem[_667 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_672] = 5
                    mem[_672 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _673 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _673 + 32] = mem[s + _667 + 32]
                        s = s + 32
                        continue 
                    mem[_673 + 33] = 0
                    _1007 = mem[_672]
                    s = 0
                    while s < _1007:
                        mem[s + _673 + 33] = mem[s + _672 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1007) <= _1007:
                        _2056 = mem[64]
                        mem[mem[64]] = _1007 + _673 + -mem[64] + 1
                        mem[64] = _1007 + _673 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2161 = mem[_2056]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2161:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2161) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2056 + 32
                                while _2056 + _2161 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2161 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2161:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2161) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2056 + 32
                                while _2056 + _2161 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2161 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_1007 + _673 + 33] = 0
                        _2057 = mem[64]
                        mem[mem[64]] = _1007 + _673 + -mem[64] + 1
                        mem[64] = _1007 + _673 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2164 = mem[_2057]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2164:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2164) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2057 + 32
                                while _2057 + _2164 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2164 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2164:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2164) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2057 + 32
                                while _2057 + _2164 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2164 + 31) >> 5)
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
                    _998 = mem[64]
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
                            if u - 1 >= mem[_998]:
                                revert with 0, 50
                            mem[u + _998 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2018] = 5
                        mem[_2018 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2019 = mem[64]
                        _2038 = mem[_998]
                        s = 0
                        while s < _2038:
                            mem[s + _2019 + 32] = mem[s + _998 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2038) <= _2038:
                            _3050 = mem[_2018]
                            s = 0
                            while s < _3050:
                                mem[s + _2019 + _2038 + 32] = mem[s + _2018 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3050) <= _3050:
                                _3706 = mem[64]
                                mem[mem[64]] = _3050 + _2019 + _2038 - mem[64]
                                mem[64] = _3050 + _2019 + _2038 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3835 = mem[_3706]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3835:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3835) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3706 + 32
                                        while _3706 + _3835 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3835 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3835:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3835) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3706 + 32
                                        while _3706 + _3835 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3835 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3050 + _2019 + _2038 + 32] = 0
                                _3707 = mem[64]
                                mem[mem[64]] = _3050 + _2019 + _2038 - mem[64]
                                mem[64] = _3050 + _2019 + _2038 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3838 = mem[_3707]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3838:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3838) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3707 + 32
                                        while _3707 + _3838 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3838 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3838:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3838) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3707 + 32
                                        while _3707 + _3838 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3838 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2038 + _2019 + 32] = 0
                            _3051 = mem[_2018]
                            s = 0
                            while s < _3051:
                                mem[s + _2019 + _2038 + 32] = mem[s + _2018 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3051) <= _3051:
                                _3708 = mem[64]
                                mem[mem[64]] = _3051 + _2019 + _2038 - mem[64]
                                mem[64] = _3051 + _2019 + _2038 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3841 = mem[_3708]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3841:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3841) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3708 + 32
                                        while _3708 + _3841 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3841 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3841:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3841) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3708 + 32
                                        while _3708 + _3841 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3841 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3051 + _2019 + _2038 + 32] = 0
                                _3709 = mem[64]
                                mem[mem[64]] = _3051 + _2019 + _2038 - mem[64]
                                mem[64] = _3051 + _2019 + _2038 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3844 = mem[_3709]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3844:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3844) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3709 + 32
                                        while _3709 + _3844 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3844 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3844:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3844) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3709 + 32
                                        while _3709 + _3844 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3844 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_998 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_998]:
                                revert with 0, 50
                            mem[u + _998 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2020 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2020] = 5
                        mem[_2020 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2021 = mem[64]
                        _2039 = mem[_998]
                        s = 0
                        while s < _2039:
                            mem[s + _2021 + 32] = mem[s + _998 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2039) <= _2039:
                            _3052 = mem[_2020]
                            s = 0
                            while s < _3052:
                                mem[s + _2021 + _2039 + 32] = mem[s + _2020 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3052) <= _3052:
                                _3710 = mem[64]
                                mem[mem[64]] = _3052 + _2021 + _2039 - mem[64]
                                mem[64] = _3052 + _2021 + _2039 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3847 = mem[_3710]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3847:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3847) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3710 + 32
                                        while _3710 + _3847 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3847 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3847:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3847) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3710 + 32
                                        while _3710 + _3847 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3847 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3052 + _2021 + _2039 + 32] = 0
                                _3711 = mem[64]
                                mem[mem[64]] = _3052 + _2021 + _2039 - mem[64]
                                mem[64] = _3052 + _2021 + _2039 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3850 = mem[_3711]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3850:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3850) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3711 + 32
                                        while _3711 + _3850 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3850 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3850:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3850) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3711 + 32
                                        while _3711 + _3850 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3850 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2039 + _2021 + 32] = 0
                            _3053 = mem[_2020]
                            s = 0
                            while s < _3053:
                                mem[s + _2021 + _2039 + 32] = mem[s + _2020 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3053) <= _3053:
                                _3712 = mem[64]
                                mem[mem[64]] = _3053 + _2021 + _2039 - mem[64]
                                mem[64] = _3053 + _2021 + _2039 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3853 = mem[_3712]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3853:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3853) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3712 + 32
                                        while _3712 + _3853 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3853 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3853:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3853) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3712 + 32
                                        while _3712 + _3853 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3853 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3053 + _2021 + _2039 + 32] = 0
                                _3713 = mem[64]
                                mem[mem[64]] = _3053 + _2021 + _2039 - mem[64]
                                mem[64] = _3053 + _2021 + _2039 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3856 = mem[_3713]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3856:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3856) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3713 + 32
                                        while _3713 + _3856 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3856 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3856:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3856) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3713 + 32
                                        while _3713 + _3856 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3856 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
            if tokenCounter == -1:
                revert with 0, 17
            tokenCounter++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 30
        require stor30[msg.sender]
        if mintFee and arg1 > -1 / mintFee:
            revert with 0, 17
        require msg.value == mintFee * arg1
        if tokenCounter > !arg1:
            revert with 0, 17
        require tokenCounter + arg1 < maxMint
        if not arg1:
            revert with 0, 18
        if msg.value / arg1 < 10 * 10^18:
            revert with 0, 17
        if (msg.value / arg1) - 10 * 10^18 > 0xc9a633fcd967300c9a633fcd967300c9a633fcd967300c9a633fcd967300c9:
            revert with 0, 17
        if (msg.value / arg1) - 10 * 10^18 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if arg1 > 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0ea7cfe9:
            revert with 0, 17
        call sub_12765d6fAddress with:
           value 10 * 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (325 * msg.value / arg1) - 3250 * 10^18 / 1000 and arg1 > -1 / (325 * msg.value / arg1) - 3250 * 10^18 / 1000:
            revert with 0, 17
        call sub_a365a6f3Address with:
           value (325 * msg.value / arg1) - 3250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (325 * msg.value / arg1) - 3250 * 10^18 / 1000 and arg1 > -1 / (325 * msg.value / arg1) - 3250 * 10^18 / 1000:
            revert with 0, 17
        call sub_4a1f33dbAddress with:
           value (325 * msg.value / arg1) - 3250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (125 * msg.value / arg1) - 1250 * 10^18 / 1000 and arg1 > -1 / (125 * msg.value / arg1) - 1250 * 10^18 / 1000:
            revert with 0, 17
        call sub_1af395faAddress with:
           value (125 * msg.value / arg1) - 1250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (125 * msg.value / arg1) - 1250 * 10^18 / 1000 and arg1 > -1 / (125 * msg.value / arg1) - 1250 * 10^18 / 1000:
            revert with 0, 17
        call sub_64585740Address with:
           value (125 * msg.value / arg1) - 1250 * 10^18 / 1000 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (msg.value / arg1) - 10 * 10^18 / 10 and arg1 > -1 / (msg.value / arg1) - 10 * 10^18 / 10:
            revert with 0, 17
        call sub_f3beac73Address with:
           value (msg.value / arg1) - 10 * 10^18 / 10 * arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
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
                        _640 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_640] = 1
                        mem[_640 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        _646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_646] = 5
                        mem[_646 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _647 = mem[64]
                        s = 0
                        while s < 1:
                            mem[s + _647 + 32] = mem[s + _640 + 32]
                            s = s + 32
                            continue 
                        mem[_647 + 33] = 0
                        _1009 = mem[_646]
                        s = 0
                        while s < _1009:
                            mem[s + _647 + 33] = mem[s + _646 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1009) <= _1009:
                            _2060 = mem[64]
                            mem[mem[64]] = _1009 + _647 + -mem[64] + 1
                            mem[64] = _1009 + _647 + 33
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _2173 = mem[_2060]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2173:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2173) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2060 + 32
                                    while _2060 + _2173 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2173 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2173:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2173) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2060 + 32
                                    while _2060 + _2173 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2173 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_1009 + _647 + 33] = 0
                            _2061 = mem[64]
                            mem[mem[64]] = _1009 + _647 + -mem[64] + 1
                            mem[64] = _1009 + _647 + 33
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _2176 = mem[_2061]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2176:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2176) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2061 + 32
                                    while _2061 + _2176 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2176 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _2176:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _2176) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _2061 + 32
                                    while _2061 + _2176 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2176 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        if tokenCounter == -1:
                            revert with 0, 17
                        tokenCounter++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    _999 = mem[64]
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
                            if u - 1 >= mem[_999]:
                                revert with 0, 50
                            mem[u + _999 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2022] = 5
                        mem[_2022 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2023 = mem[64]
                        _2040 = mem[_999]
                        s = 0
                        while s < _2040:
                            mem[s + _2023 + 32] = mem[s + _999 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2040) <= _2040:
                            _3054 = mem[_2022]
                            s = 0
                            while s < _3054:
                                mem[s + _2023 + _2040 + 32] = mem[s + _2022 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3054) <= _3054:
                                _3714 = mem[64]
                                mem[mem[64]] = _3054 + _2023 + _2040 - mem[64]
                                mem[64] = _3054 + _2023 + _2040 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3859 = mem[_3714]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3859:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3859) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3714 + 32
                                        while _3714 + _3859 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3859 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3859:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3859) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3714 + 32
                                        while _3714 + _3859 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3859 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3054 + _2023 + _2040 + 32] = 0
                                _3715 = mem[64]
                                mem[mem[64]] = _3054 + _2023 + _2040 - mem[64]
                                mem[64] = _3054 + _2023 + _2040 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3862 = mem[_3715]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3862:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3862) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3715 + 32
                                        while _3715 + _3862 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3862 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3862:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3862) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3715 + 32
                                        while _3715 + _3862 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3862 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2040 + _2023 + 32] = 0
                            _3055 = mem[_2022]
                            s = 0
                            while s < _3055:
                                mem[s + _2023 + _2040 + 32] = mem[s + _2022 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3055) <= _3055:
                                _3716 = mem[64]
                                mem[mem[64]] = _3055 + _2023 + _2040 - mem[64]
                                mem[64] = _3055 + _2023 + _2040 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3865 = mem[_3716]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3865:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3865) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3716 + 32
                                        while _3716 + _3865 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3865 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3865:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3865) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3716 + 32
                                        while _3716 + _3865 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3865 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3055 + _2023 + _2040 + 32] = 0
                                _3717 = mem[64]
                                mem[mem[64]] = _3055 + _2023 + _2040 - mem[64]
                                mem[64] = _3055 + _2023 + _2040 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3868 = mem[_3717]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3868:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3868) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3717 + 32
                                        while _3717 + _3868 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3868 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3868:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3868) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3717 + 32
                                        while _3717 + _3868 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3868 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        if tokenCounter == -1:
                            revert with 0, 17
                        tokenCounter++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_999 + 32 len t] = call.data[calldata.size len t]
                    u = t
                    s = tokenCounter
                    while s:
                        if 48 > !(s % 10):
                            revert with 0, 17
                        if not u:
                            revert with 0, 17
                        if u - 1 >= mem[_999]:
                            revert with 0, 50
                        mem[u + _999 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                        u = u - 1
                        s = s / 10
                        continue 
                    _2024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2024] = 5
                    mem[_2024 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _2025 = mem[64]
                    _2041 = mem[_999]
                    s = 0
                    while s < _2041:
                        mem[s + _2025 + 32] = mem[s + _999 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2041) <= _2041:
                        _3056 = mem[_2024]
                        s = 0
                        while s < _3056:
                            mem[s + _2025 + _2041 + 32] = mem[s + _2024 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3056) <= _3056:
                            _3718 = mem[64]
                            mem[mem[64]] = _3056 + _2025 + _2041 - mem[64]
                            mem[64] = _3056 + _2025 + _2041 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3871 = mem[_3718]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3871:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3871) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3718 + 32
                                    while _3718 + _3871 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3871 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3871:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3871) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3718 + 32
                            while _3718 + _3871 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3871 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            mem[_3056 + _2025 + _2041 + 32] = 0
                            _3719 = mem[64]
                            mem[mem[64]] = _3056 + _2025 + _2041 - mem[64]
                            mem[64] = _3056 + _2025 + _2041 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3874 = mem[_3719]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3874:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3874) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3719 + 32
                                    while _3719 + _3874 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3874 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3874:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3874) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3719 + 32
                            while _3719 + _3874 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3874 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[_2041 + _2025 + 32] = 0
                        _3057 = mem[_2024]
                        s = 0
                        while s < _3057:
                            mem[s + _2025 + _2041 + 32] = mem[s + _2024 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3057) <= _3057:
                            _3720 = mem[64]
                            mem[mem[64]] = _3057 + _2025 + _2041 - mem[64]
                            mem[64] = _3057 + _2025 + _2041 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3877 = mem[_3720]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3877:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3877) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3720 + 32
                                    while _3720 + _3877 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3877 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3877:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3877) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3720 + 32
                            while _3720 + _3877 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3877 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            mem[_3057 + _2025 + _2041 + 32] = 0
                            _3721 = mem[64]
                            mem[mem[64]] = _3057 + _2025 + _2041 - mem[64]
                            mem[64] = _3057 + _2025 + _2041 + 32
                            if not ownerOf[stor13]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = tokenCounter
                            mem[32] = 10
                            _3880 = mem[_3721]
                            if bool(stor10[stor13].field_0):
                                if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenCounter, 10)
                                if not _3880:
                                    stor10[stor13].field_0 = 0
                                    s = sha3(sha3(tokenCounter, 10))
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor13].field_0 = (2 * _3880) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3721 + 32
                                    while _3721 + _3880 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3880 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _3880:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                if tokenCounter == -1:
                                    revert with 0, 17
                                tokenCounter++
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor10[stor13].field_0 = (2 * _3880) + 1
                            t = sha3(sha3(tokenCounter, 10))
                            s = _3721 + 32
                            while _3721 + _3880 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3880 + 31) >> 5)
                            while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if tokenCounter == -1:
                        revert with 0, 17
                    tokenCounter++
                    if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                        revert with 0, 17
                    s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                    continue 
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
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
                    _659 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_659] = 1
                    mem[_659 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_662] = 5
                    mem[_662 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _663 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _663 + 32] = mem[s + _659 + 32]
                        s = s + 32
                        continue 
                    mem[_663 + 33] = 0
                    _1011 = mem[_662]
                    s = 0
                    while s < _1011:
                        mem[s + _663 + 33] = mem[s + _662 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1011) <= _1011:
                        _2064 = mem[64]
                        mem[mem[64]] = _1011 + _663 + -mem[64] + 1
                        mem[64] = _1011 + _663 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2185 = mem[_2064]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2185:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2185) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2064 + 32
                                while _2064 + _2185 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2185 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2185:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2185) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2064 + 32
                                while _2064 + _2185 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2185 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_1011 + _663 + 33] = 0
                        _2065 = mem[64]
                        mem[mem[64]] = _1011 + _663 + -mem[64] + 1
                        mem[64] = _1011 + _663 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2188 = mem[_2065]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2188:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2188) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2065 + 32
                                while _2065 + _2188 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2188 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2188:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2188) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2065 + 32
                                while _2065 + _2188 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2188 + 31) >> 5)
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
                    _1000 = mem[64]
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
                            if u - 1 >= mem[_1000]:
                                revert with 0, 50
                            mem[u + _1000 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2026] = 5
                        mem[_2026 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2027 = mem[64]
                        _2042 = mem[_1000]
                        s = 0
                        while s < _2042:
                            mem[s + _2027 + 32] = mem[s + _1000 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2042) <= _2042:
                            _3058 = mem[_2026]
                            s = 0
                            while s < _3058:
                                mem[s + _2027 + _2042 + 32] = mem[s + _2026 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3058) <= _3058:
                                _3722 = mem[64]
                                mem[mem[64]] = _3058 + _2027 + _2042 - mem[64]
                                mem[64] = _3058 + _2027 + _2042 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3883 = mem[_3722]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3883:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3883) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3722 + 32
                                        while _3722 + _3883 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3883 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3883:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3883) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3722 + 32
                                    while _3722 + _3883 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3883 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_3058 + _2027 + _2042 + 32] = 0
                                _3723 = mem[64]
                                mem[mem[64]] = _3058 + _2027 + _2042 - mem[64]
                                mem[64] = _3058 + _2027 + _2042 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3886 = mem[_3723]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3886:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3886) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3723 + 32
                                        while _3723 + _3886 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3886 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3886:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3886) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3723 + 32
                                    while _3723 + _3886 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3886 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_2042 + _2027 + 32] = 0
                            _3059 = mem[_2026]
                            s = 0
                            while s < _3059:
                                mem[s + _2027 + _2042 + 32] = mem[s + _2026 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3059) <= _3059:
                                _3724 = mem[64]
                                mem[mem[64]] = _3059 + _2027 + _2042 - mem[64]
                                mem[64] = _3059 + _2027 + _2042 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3889 = mem[_3724]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3889:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3889) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3724 + 32
                                        while _3724 + _3889 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3889 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3889:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3889) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3724 + 32
                                    while _3724 + _3889 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3889 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_3059 + _2027 + _2042 + 32] = 0
                                _3725 = mem[64]
                                mem[mem[64]] = _3059 + _2027 + _2042 - mem[64]
                                mem[64] = _3059 + _2027 + _2042 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3892 = mem[_3725]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3892:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3892) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3725 + 32
                                        while _3725 + _3892 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3892 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3892:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3892) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3725 + 32
                                    while _3725 + _3892 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3892 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        mem[_1000 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_1000]:
                                revert with 0, 50
                            mem[u + _1000 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2028 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2028] = 5
                        mem[_2028 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2029 = mem[64]
                        _2043 = mem[_1000]
                        s = 0
                        while s < _2043:
                            mem[s + _2029 + 32] = mem[s + _1000 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2043) <= _2043:
                            _3060 = mem[_2028]
                            s = 0
                            while s < _3060:
                                mem[s + _2029 + _2043 + 32] = mem[s + _2028 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3060) <= _3060:
                                _3726 = mem[64]
                                mem[mem[64]] = _3060 + _2029 + _2043 - mem[64]
                                mem[64] = _3060 + _2029 + _2043 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3895 = mem[_3726]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3895:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3895) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3726 + 32
                                    while _3726 + _3895 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3895 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3895:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3895) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3726 + 32
                                        while _3726 + _3895 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3895 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3060 + _2029 + _2043 + 32] = 0
                                _3727 = mem[64]
                                mem[mem[64]] = _3060 + _2029 + _2043 - mem[64]
                                mem[64] = _3060 + _2029 + _2043 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3898 = mem[_3727]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3898:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3898) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3727 + 32
                                    while _3727 + _3898 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3898 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3898:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3898) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3727 + 32
                                        while _3727 + _3898 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3898 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2043 + _2029 + 32] = 0
                            _3061 = mem[_2028]
                            s = 0
                            while s < _3061:
                                mem[s + _2029 + _2043 + 32] = mem[s + _2028 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3061) <= _3061:
                                _3728 = mem[64]
                                mem[mem[64]] = _3061 + _2029 + _2043 - mem[64]
                                mem[64] = _3061 + _2029 + _2043 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3901 = mem[_3728]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3901:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3901) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3728 + 32
                                    while _3728 + _3901 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3901 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3901:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3901) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3728 + 32
                                        while _3728 + _3901 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3901 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3061 + _2029 + _2043 + 32] = 0
                                _3729 = mem[64]
                                mem[mem[64]] = _3061 + _2029 + _2043 - mem[64]
                                mem[64] = _3061 + _2029 + _2043 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3904 = mem[_3729]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3904:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        if tokenCounter == -1:
                                            revert with 0, 17
                                        tokenCounter++
                                        if sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    stor10[stor13].field_0 = (2 * _3904) + 1
                                    t = sha3(sha3(tokenCounter, 10))
                                    s = _3729 + 32
                                    while _3729 + _3904 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3904 + 31) >> 5)
                                    while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3904:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3904) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3729 + 32
                                        while _3729 + _3904 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3904 + 31) >> 5)
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
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenCounter
                mem[32] = 2
                ownerOf[stor13] = msg.sender
                emit Transfer(0, msg.sender, tokenCounter);
                if not tokenCounter:
                    _671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_671] = 1
                    mem[_671 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    _674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_674] = 5
                    mem[_674 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    _675 = mem[64]
                    s = 0
                    while s < 1:
                        mem[s + _675 + 32] = mem[s + _671 + 32]
                        s = s + 32
                        continue 
                    mem[_675 + 33] = 0
                    _1013 = mem[_674]
                    s = 0
                    while s < _1013:
                        mem[s + _675 + 33] = mem[s + _674 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1013) <= _1013:
                        _2068 = mem[64]
                        mem[mem[64]] = _1013 + _675 + -mem[64] + 1
                        mem[64] = _1013 + _675 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2197 = mem[_2068]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2197:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2197) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2068 + 32
                                while _2068 + _2197 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2197 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2197:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2197) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2068 + 32
                                while _2068 + _2197 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2197 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[_1013 + _675 + 33] = 0
                        _2069 = mem[64]
                        mem[mem[64]] = _1013 + _675 + -mem[64] + 1
                        mem[64] = _1013 + _675 + 33
                        if not ownerOf[stor13]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = tokenCounter
                        mem[32] = 10
                        _2200 = mem[_2069]
                        if bool(stor10[stor13].field_0):
                            if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2200:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2200) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2069 + 32
                                while _2069 + _2200 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2200 + 31) >> 5)
                                while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenCounter, 10)
                            if not _2200:
                                stor10[stor13].field_0 = 0
                                s = sha3(sha3(tokenCounter, 10))
                                while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor13].field_0 = (2 * _2200) + 1
                                t = sha3(sha3(tokenCounter, 10))
                                s = _2069 + 32
                                while _2069 + _2200 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _2200 + 31) >> 5)
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
                    _1001 = mem[64]
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
                            if u - 1 >= mem[_1001]:
                                revert with 0, 50
                            mem[u + _1001 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2030 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2030] = 5
                        mem[_2030 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2031 = mem[64]
                        _2044 = mem[_1001]
                        s = 0
                        while s < _2044:
                            mem[s + _2031 + 32] = mem[s + _1001 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2044) <= _2044:
                            _3062 = mem[_2030]
                            s = 0
                            while s < _3062:
                                mem[s + _2031 + _2044 + 32] = mem[s + _2030 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3062) <= _3062:
                                _3730 = mem[64]
                                mem[mem[64]] = _3062 + _2031 + _2044 - mem[64]
                                mem[64] = _3062 + _2031 + _2044 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3907 = mem[_3730]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3907:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3907) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3730 + 32
                                        while _3730 + _3907 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3907 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3907:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3907) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3730 + 32
                                        while _3730 + _3907 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3907 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3062 + _2031 + _2044 + 32] = 0
                                _3731 = mem[64]
                                mem[mem[64]] = _3062 + _2031 + _2044 - mem[64]
                                mem[64] = _3062 + _2031 + _2044 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3910 = mem[_3731]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3910:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3910) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3731 + 32
                                        while _3731 + _3910 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3910 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3910:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3910) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3731 + 32
                                        while _3731 + _3910 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3910 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2044 + _2031 + 32] = 0
                            _3063 = mem[_2030]
                            s = 0
                            while s < _3063:
                                mem[s + _2031 + _2044 + 32] = mem[s + _2030 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3063) <= _3063:
                                _3732 = mem[64]
                                mem[mem[64]] = _3063 + _2031 + _2044 - mem[64]
                                mem[64] = _3063 + _2031 + _2044 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3913 = mem[_3732]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3913:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3913) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3732 + 32
                                        while _3732 + _3913 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3913 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3913:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3913) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3732 + 32
                                        while _3732 + _3913 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3913 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3063 + _2031 + _2044 + 32] = 0
                                _3733 = mem[64]
                                mem[mem[64]] = _3063 + _2031 + _2044 - mem[64]
                                mem[64] = _3063 + _2031 + _2044 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3916 = mem[_3733]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3916:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3916) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3733 + 32
                                        while _3733 + _3916 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3916 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3916:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3916) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3733 + 32
                                        while _3733 + _3916 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3916 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        mem[_1001 + 32 len t] = call.data[calldata.size len t]
                        u = t
                        s = tokenCounter
                        while s:
                            if 48 > !(s % 10):
                                revert with 0, 17
                            if not u:
                                revert with 0, 17
                            if u - 1 >= mem[_1001]:
                                revert with 0, 50
                            mem[u + _1001 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 1), 10))), 0) - 256
                            u = u - 1
                            s = s / 10
                            continue 
                        _2032 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2032] = 5
                        mem[_2032 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                        _2033 = mem[64]
                        _2045 = mem[_1001]
                        s = 0
                        while s < _2045:
                            mem[s + _2033 + 32] = mem[s + _1001 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2045) <= _2045:
                            _3064 = mem[_2032]
                            s = 0
                            while s < _3064:
                                mem[s + _2033 + _2045 + 32] = mem[s + _2032 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3064) <= _3064:
                                _3734 = mem[64]
                                mem[mem[64]] = _3064 + _2033 + _2045 - mem[64]
                                mem[64] = _3064 + _2033 + _2045 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3919 = mem[_3734]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3919:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3919) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3734 + 32
                                        while _3734 + _3919 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3919 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3919:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3919) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3734 + 32
                                        while _3734 + _3919 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3919 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3064 + _2033 + _2045 + 32] = 0
                                _3735 = mem[64]
                                mem[mem[64]] = _3064 + _2033 + _2045 - mem[64]
                                mem[64] = _3064 + _2033 + _2045 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3922 = mem[_3735]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3922:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3922) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3735 + 32
                                        while _3735 + _3922 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3922 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3922:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3922) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3735 + 32
                                        while _3735 + _3922 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3922 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            mem[_2045 + _2033 + 32] = 0
                            _3065 = mem[_2032]
                            s = 0
                            while s < _3065:
                                mem[s + _2033 + _2045 + 32] = mem[s + _2032 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3065) <= _3065:
                                _3736 = mem[64]
                                mem[mem[64]] = _3065 + _2033 + _2045 - mem[64]
                                mem[64] = _3065 + _2033 + _2045 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3925 = mem[_3736]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3925:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3925) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3736 + 32
                                        while _3736 + _3925 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3925 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3925:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3925) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3736 + 32
                                        while _3736 + _3925 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3925 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[_3065 + _2033 + _2045 + 32] = 0
                                _3737 = mem[64]
                                mem[mem[64]] = _3065 + _2033 + _2045 - mem[64]
                                mem[64] = _3065 + _2033 + _2045 + 32
                                if not ownerOf[stor13]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = tokenCounter
                                mem[32] = 10
                                _3928 = mem[_3737]
                                if bool(stor10[stor13].field_0):
                                    if bool(stor10[stor13].field_0) == uint255(stor10[stor13].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3928:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3928) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3737 + 32
                                        while _3737 + _3928 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3928 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + ((uint255(stor10[stor13].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor13].field_0) == stor10[stor13].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(tokenCounter, 10)
                                    if not _3928:
                                        stor10[stor13].field_0 = 0
                                        s = sha3(sha3(tokenCounter, 10))
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor13].field_0 = (2 * _3928) + 1
                                        t = sha3(sha3(tokenCounter, 10))
                                        s = _3737 + 32
                                        while _3737 + _3928 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(tokenCounter, 10)) + (Mask(251, 0, _3928 + 31) >> 5)
                                        while sha3(sha3(tokenCounter, 10)) + (stor10[stor13].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
            if tokenCounter == -1:
                revert with 0, 17
            tokenCounter++
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if tokenCounter >= whiteListEnd:
            enableWhiteList = 0
            emit 0x17a2b403: 0
            intEnableMinter = 0
            emit 0xf2df4f76: 0
    if tokenCounter >= 9300:
        mintFee = 150 * 10^18
        emit 0x2543eb3d: 150 * 10^18
    else:
        if tokenCounter >= 8300:
            mintFee = 140 * 10^18
            emit 0x2543eb3d: 140 * 10^18
        else:
            if tokenCounter >= 7300:
                mintFee = 130 * 10^18
                emit 0x2543eb3d: 130 * 10^18
            else:
                if tokenCounter >= 6300:
                    mintFee = 120 * 10^18
                    emit 0x2543eb3d: 120 * 10^18
                else:
                    if tokenCounter >= 5300:
                        mintFee = 110 * 10^18
                        emit 0x2543eb3d: 110 * 10^18
                    else:
                        if tokenCounter >= 4300:
                            mintFee = 100 * 10^18
                            emit 0x2543eb3d: 100 * 10^18
                        else:
                            if tokenCounter >= 3300:
                                mintFee = 25 * 10^15 * 3600
                                emit 0x2543eb3d: (25 * 10^15 * 3600)
}



}
