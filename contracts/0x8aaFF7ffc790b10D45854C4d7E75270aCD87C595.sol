contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor8;
array of struct baseURI;
address owner;
address stor11;
address stor12;
address stor13;
uint256 stor14;
uint256 platformFee;
address sub_3740ebb3Address;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function platformFee() {
    return platformFee
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updatePlatformFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    platformFee = arg1
    emit UpdatePlatformFee(arg1);
}

function updateFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    sub_3740ebb3Address = arg1
    emit 0x6632de8a: arg1
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor11 != arg2:
        if stor12 != arg2:
            if stor13 != arg2:
                return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isApproved(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if stor11 == arg2:
        return 1
    if stor12 == arg2:
        return 1
    if stor13 == arg2:
        return 1
    if stor5[stor2[stor3[arg1] - 1].field_256][address(arg2)]:
        return bool(stor5[stor2[stor3[arg1] - 1].field_256][address(arg2)])
    if not stor3[arg1]:
        revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
    return (approved[arg1] == arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 == msg.sender:
        approved[arg1] = 0
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[361 len 23],
                        mem[407 len 9]
    else:
        if stor11 != msg.sender:
            if stor12 != msg.sender:
                if stor13 != msg.sender:
                    if not stor5[stor2[stor3[arg1] - 1].field_256][address(msg.sender)]:
                        if not stor3[arg1]:
                            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[400 len 20]
                        if approved[arg1] != msg.sender:
                            revert with 0, 'Only garment owner or approved'
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[361 len 23],
                        mem[407 len 9]
        require stor3[arg1] - 1 < tokenByIndex.length
        approved[arg1] = 0
        if not stor3[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[457 len 23],
                        mem[503 len 9]
    ('bool', ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3))))
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, stor8[arg1].field_0 and (256 * not stor8[arg1].field_0) - 1):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] = 0
    if stor3[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor3[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor3[stor2[stor2.length - 1].field_0] = stor3[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor3[arg1] = 0
    emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor8[arg1].length) + 128] = baseURI.length
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var34001 = floor32(stor8[arg1].length) + 128
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[64] = stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        var39001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var35001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    if s:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if stor11 == msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[265 len 23],
                        mem[311 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[361 len 23],
                        mem[407 len 9]
    else:
        if stor12 == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[265 len 23],
                            mem[311 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[361 len 23],
                            mem[407 len 9]
        else:
            if stor13 == msg.sender:
                if not stor3[arg3]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[265 len 23],
                                mem[311 len 9]
                require stor3[arg3] - 1 < tokenByIndex.length
                if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                    revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
                if not arg2:
                    revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
                approved[arg3] = 0
                if not stor3[arg3]:
                    revert with 0, 
                                32,
                                41,
                                0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                mem[361 len 23],
                                mem[407 len 9]
            else:
                if stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[265 len 23],
                                    mem[311 len 9]
                    require stor3[arg3] - 1 < tokenByIndex.length
                    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
                    if not arg2:
                        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
                    approved[arg3] = 0
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[361 len 23],
                                    mem[407 len 9]
                else:
                    if not stor3[arg3]:
                        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[265 len 23],
                                    mem[311 len 9]
                    require stor3[arg3] - 1 < tokenByIndex.length
                    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
                        if not stor3[arg3]:
                            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[400 len 20]
                        if approved[arg3] != msg.sender:
                            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            49,
                                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                            mem[405 len 15]
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[361 len 23],
                                    mem[407 len 9]
                    require stor3[arg3] - 1 < tokenByIndex.length
                    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[493 len 23]
                    if not arg2:
                        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[488 len 28]
                    approved[arg3] = 0
                    if not stor3[arg3]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                                    mem[457 len 23],
                                    mem[503 len 9]
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'stor3', 3))))
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.value < platformFee:
        revert with 0, 'Insufficient funds to mint.'
    if stor14 + 1 < stor14:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor14 + 1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor14 + 1]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor14 + 1
        tokenOfOwnerByIndex[address(arg1)][1][stor14 + 1] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[stor14 + 1]:
        require stor3[stor14 + 1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor14 + 1] - 1].field_256 = arg1
        tokenByIndex[stor3[stor14 + 1] - 1].field_416 = 0
        emit Transfer(0, arg1, stor14 + 1);
        if not ext_code.size(arg1):
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg2.length) + 272 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
            call sub_3740ebb3Address with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed'
            if return_data.size:
                emit Minted(stor14 + 1, address(arg1), Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(arg2.length) + 160] = stor14 + 1
                mem[ceil32(arg2.length) + 192] = arg1
                mem[ceil32(arg2.length) + 256] = msg.sender
                mem[ceil32(arg2.length) + 224] = 128
                mem[ceil32(arg2.length) + 288] = arg2.length
                emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[arg2.length + 192 len (2 * ceil32(arg2.length)) + -arg2.length + 128],
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor14 + 1, 128, 0
            mem[608 len 4] = 0
            mem[580 len 0] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor14 + 1, 128, 0) << 1024, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[406 len 14], 0, 32, 50) >> 544
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[452]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 539 len 14]
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + ceil32(arg2.length) + 565 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
            call sub_3740ebb3Address with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed'
            if return_data.size:
                emit Minted(stor14 + 1, address(arg1), Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 453] = stor14 + 1
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 485] = arg1
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 549] = msg.sender
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 517] = 128
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 581] = arg2.length
                emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[ceil32(return_data.size) + arg2.length + 485 len (2 * ceil32(arg2.length)) + -arg2.length + 128],
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor14 + 1
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor14 + 1] = tokenByIndex.length
        emit Transfer(0, arg1, stor14 + 1);
        if not ext_code.size(arg1):
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg2.length) + 336 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
            call sub_3740ebb3Address with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed'
            if return_data.size:
                emit Minted(stor14 + 1, address(arg1), Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(arg2.length) + 224] = stor14 + 1
                mem[ceil32(arg2.length) + 256] = arg1
                mem[ceil32(arg2.length) + 320] = msg.sender
                mem[ceil32(arg2.length) + 288] = 128
                mem[ceil32(arg2.length) + 352] = arg2.length
                emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[arg2.length + 256 len (2 * ceil32(arg2.length)) + -arg2.length + 128],
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[484 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor14 + 1, 128, 0
            mem[672 len 4] = 0
            mem[644 len 0] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor14 + 1, 128, 0) << 1024, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[470 len 14], 0, 32, 50) >> 544
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[470 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 603 len 14]
            if not stor3[stor14 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + ceil32(arg2.length) + 629 len 20]
            stor8[stor14 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor14++
            call sub_3740ebb3Address with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed'
            if return_data.size:
                emit Minted(stor14 + 1, address(arg1), Array(len=arg2.length, data=arg2[all]), msg.sender);
            else:
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 517] = stor14 + 1
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 549] = arg1
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 613] = msg.sender
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 581] = 128
                mem[ceil32(return_data.size) + ceil32(arg2.length) + 645] = arg2.length
                emit Minted(uint256 arg1, address arg2, string arg3, address arg4):
                            Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                            mem[ceil32(return_data.size) + arg2.length + 549 len (2 * ceil32(arg2.length)) + -arg2.length + 128],
}



}
